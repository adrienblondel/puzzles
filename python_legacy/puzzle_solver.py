"""
Pixel Puzzles Ultimate - Auto Solver V1

Usage:
    1. pip install -r requirements.txt
    2. Launch Pixel Puzzles Ultimate, navigate to a puzzle pack, select a puzzle
    3. Once pieces are visible around the board, run: python puzzle_solver.py
    4. Press ESC at any time to abort

Controls:
    ESC     - Stop the script immediately
    PAUSE   - Pause/resume the script
"""

import pyautogui
import pydirectinput
import pygetwindow as gw
import numpy as np
import cv2
import mss
import time
import keyboard
import sys
import os
import re
from dataclasses import dataclass

# Optional OCR for reading piece counts
HAS_TESSERACT = False
try:
    import pytesseract
    # Verify the Tesseract binary is actually available
    pytesseract.get_tesseract_version()
    HAS_TESSERACT = True
except Exception:
    pass

# ======================== SAFETY ========================
pyautogui.FAILSAFE = True  # Move mouse to top-left corner to abort
pyautogui.PAUSE = 0.001

# ======================== CONFIGURATION ========================

# Delays (seconds) - increase if game is sluggish
CLICK_DELAY = 0.005          # Delay after each click
MOVE_DELAY = 0.005           # Mouse move duration
DRAG_DELAY = 0.005           # Delay during drag operations
SCAN_STEP = 40              # Pixels between scan points in border areas
DETECTION_MOVE = 70         # Pixels to move for piece-on-cursor detection
DETECTION_THRESHOLD = 12    # Pixel difference threshold for detection
SNAP_CHECK_DELAY = 0.005     # Delay before checking if piece snapped

# Color ranges (HSV) for theme detection
# Board: light gray (low saturation, high value)
BOARD_HSV_LOWER = np.array([0, 0, 150])
BOARD_HSV_UPPER = np.array([180, 40, 235])

# Border background: dark gray (low saturation, medium value)
BORDER_BG_HSV_LOWER = np.array([0, 0, 40])
BORDER_BG_HSV_UPPER = np.array([180, 40, 130])

# Golden frame border
GOLD_HSV_LOWER = np.array([15, 80, 150])
GOLD_HSV_UPPER = np.array([35, 255, 255])

# Grid dimensions for known puzzle sizes (cols, rows)
PUZZLE_GRIDS = {
    60:  (10, 6),
    96:  (12, 8),
    112: (14, 8),
    140: (14, 10),
    153: (17, 9),
    169: (13, 13),
    220: (20, 11),
    330: (22, 15),
    350: (25, 14),
    425: (25, 17),
}

# ======================== DATA CLASSES ========================

@dataclass
class Rect:
    x: int
    y: int
    w: int
    h: int

    @property
    def cx(self):
        return self.x + self.w // 2

    @property
    def cy(self):
        return self.y + self.h // 2

    @property
    def right(self):
        return self.x + self.w

    @property
    def bottom(self):
        return self.y + self.h


# ======================== SOLVER ========================

GAME_WINDOW_TITLES = [
    "Pixel Puzzles Ultimate",
    "Pixel Puzzles",
    "Ultimate Jigsaw",
]


class PuzzleSolver:
    def __init__(self):
        self.sct = mss.mss()
        self.board: Rect = None
        self.game_window: Rect = None   # game window position & size
        self.game_monitor: dict = None  # mss monitor dict for screenshots
        self.screen_bounds: Rect = None # bounds to clamp mouse to
        self.grid_positions: list[tuple[int, int]] = []
        self.placed: set[int] = set()
        self.paused = False
        self.running = True
        self.piece_count = 0
        self.pieces_placed = 0
        self._debug = False
        self._dbg_counter = 0
        self._blacklisted: list[tuple[int, int]] = []  # failed grab positions

    def _dbg(self, msg: str):
        """Print a message only in debug mode."""
        if self._debug:
            print(f"      [DBG] {msg}")

    def _dbg_save(self, label: str, img: np.ndarray):
        """Save a debug image to ./debug/ with an incrementing counter."""
        if not self._debug or img is None:
            return
        os.makedirs("debug", exist_ok=True)
        self._dbg_counter += 1
        path = f"debug/{self._dbg_counter:04d}_{label}.png"
        cv2.imwrite(path, img)
        self._dbg(f"saved {path}")

    def _find_game_window(self) -> bool:
        """
        Find the Pixel Puzzles game window using pygetwindow.
        Sets self.game_window, self.game_monitor, and self.screen_bounds.
        Uses the client area (excludes title bar and window borders).
        Returns True if found.
        """
        import ctypes
        import ctypes.wintypes

        for title_pattern in GAME_WINDOW_TITLES:
            windows = gw.getWindowsWithTitle(title_pattern)
            for win in windows:
                if win.width > 200 and win.height > 200 and win.visible:
                    # Use win32 API to get the actual client area
                    # (excludes title bar and borders)
                    hwnd = win._hWnd
                    client_rect = ctypes.wintypes.RECT()
                    ctypes.windll.user32.GetClientRect(hwnd, ctypes.byref(client_rect))

                    # Convert client (0,0) to screen coordinates
                    point = ctypes.wintypes.POINT(0, 0)
                    ctypes.windll.user32.ClientToScreen(hwnd, ctypes.byref(point))

                    cx = point.x
                    cy = point.y
                    cw = client_rect.right
                    ch = client_rect.bottom

                    self.game_window = Rect(cx, cy, cw, ch)
                    self.game_monitor = {
                        "left": cx, "top": cy, "width": cw, "height": ch
                    }
                    self.screen_bounds = Rect(cx, cy, cw, ch)

                    print(f"[+] Game window found: \"{win.title}\"")
                    print(f"    Window: ({win.left}, {win.top}) {win.width}x{win.height}")
                    print(f"    Client: ({cx}, {cy}) {cw}x{ch}")

                    # Bring window to foreground
                    try:
                        win.activate()
                        time.sleep(0.3)
                    except Exception:
                        pass

                    return True

        # Fallback: list all windows for debugging
        print("[!] Game window not found. Looking for windows with these titles:")
        for t in GAME_WINDOW_TITLES:
            print(f"    - \"{t}\"")
        print()
        print("[i] Open windows:")
        all_windows = gw.getAllWindows()
        for win in all_windows:
            if win.width > 200 and win.height > 200 and win.visible and win.title:
                print(f"    - \"{win.title}\" ({win.width}x{win.height})")
        return False

    def _find_game_window_or_fallback(self):
        """Find game window, or fall back to manual screen bounds."""
        if self._find_game_window():
            return

        print()
        print("[!] Could not find game window automatically.")
        print("    Please enter the game window title (or part of it):")
        try:
            custom_title = input("    Window title: ").strip()
        except (EOFError, KeyboardInterrupt):
            custom_title = ""

        if custom_title:
            windows = gw.getWindowsWithTitle(custom_title)
            for win in windows:
                if win.width > 200 and win.height > 200:
                    # Use same client area detection as _find_game_window
                    import ctypes
                    import ctypes.wintypes
                    hwnd = win._hWnd
                    client_rect = ctypes.wintypes.RECT()
                    ctypes.windll.user32.GetClientRect(hwnd, ctypes.byref(client_rect))
                    point = ctypes.wintypes.POINT(0, 0)
                    ctypes.windll.user32.ClientToScreen(hwnd, ctypes.byref(point))
                    cx, cy = point.x, point.y
                    cw, ch = client_rect.right, client_rect.bottom
                    self.game_window = Rect(cx, cy, cw, ch)
                    self.game_monitor = {
                        "left": cx, "top": cy, "width": cw, "height": ch
                    }
                    self.screen_bounds = Rect(cx, cy, cw, ch)
                    print(f"[+] Found: \"{win.title}\" client ({cx},{cy}) {cw}x{ch}")
                    return

        # Last fallback: use primary monitor
        print("[!] Falling back to primary monitor.")
        mon = self.sct.monitors[1] if len(self.sct.monitors) > 1 else self.sct.monitors[0]
        self.game_monitor = mon
        self.screen_bounds = Rect(mon["left"], mon["top"], mon["width"], mon["height"])

    def _clamp_to_screen(self, x: int, y: int) -> tuple[int, int]:
        """Clamp coordinates to stay within the game monitor bounds."""
        if not self.screen_bounds:
            return (x, y)
        sb = self.screen_bounds
        margin = 5  # Stay 5px from edges to avoid failsafe
        cx = max(sb.x + margin, min(x, sb.right - margin))
        cy = max(sb.y + margin, min(y, sb.bottom - margin))
        return (cx, cy)

    def _di_move(self, x: int, y: int, duration: float = 0):
        """Move mouse using DirectInput. Interpolates if duration > 0."""
        if duration <= 0.01:
            pydirectinput.moveTo(x, y)
            return
        start_x, start_y = pyautogui.position()
        steps = max(2, int(duration / 0.01))
        for i in range(1, steps + 1):
            t = i / steps
            ix = int(start_x + (x - start_x) * t)
            iy = int(start_y + (y - start_y) * t)
            pydirectinput.moveTo(ix, iy)
            time.sleep(duration / steps)

    def _safe_move(self, x: int, y: int, duration: float = MOVE_DELAY):
        """Move mouse to (x, y) clamped to screen bounds."""
        sx, sy = self._clamp_to_screen(x, y)
        self._di_move(sx, sy, duration)

    # ---------- Screenshots ----------

    def screenshot(self, region: tuple = None) -> np.ndarray:
        """Take a screenshot. region=(x, y, w, h) or None for game monitor.
        Returns BGR numpy array."""
        if region:
            x, y, w, h = region
            monitor = {"left": x, "top": y, "width": w, "height": h}
        elif self.game_monitor:
            monitor = self.game_monitor
        else:
            # Before game monitor is detected, use primary monitor
            monitor = self.sct.monitors[1] if len(self.sct.monitors) > 1 else self.sct.monitors[0]
        img = self.sct.grab(monitor)
        # mss returns BGRA, convert to BGR
        frame = np.array(img)
        return frame[:, :, :3]

    def screenshot_rgb(self, region: tuple = None) -> np.ndarray:
        """Same as screenshot but returns RGB."""
        bgr = self.screenshot(region)
        return cv2.cvtColor(bgr, cv2.COLOR_BGR2RGB)

    # ---------- Board Detection ----------

    def detect_board_auto(self) -> Rect:
        """
        Auto-detect the puzzle board by finding the large light-colored rectangle.
        Works with different themes (beige, gray, etc.) by detecting low-saturation
        high-value areas.
        """
        print("[*] Auto-detecting board...")
        # Use game window for detection
        mon = self.game_monitor or (
            self.sct.monitors[1] if len(self.sct.monitors) > 1 else self.sct.monitors[0]
        )
        mon_x, mon_y = mon["left"], mon["top"]

        screen = self.screenshot()
        hsv = cv2.cvtColor(screen, cv2.COLOR_BGR2HSV)

        # Board: light area with low saturation (works for beige and gray themes)
        mask = cv2.inRange(hsv, BOARD_HSV_LOWER, BOARD_HSV_UPPER)

        # Morphological operations to clean up
        kernel = cv2.getStructuringElement(cv2.MORPH_RECT, (15, 15))
        mask = cv2.morphologyEx(mask, cv2.MORPH_CLOSE, kernel)
        mask = cv2.morphologyEx(mask, cv2.MORPH_OPEN, kernel)

        # Find contours
        contours, _ = cv2.findContours(mask, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
        if not contours:
            return None

        # Find the largest contour (should be the board)
        largest = max(contours, key=cv2.contourArea)
        x, y, w, h = cv2.boundingRect(largest)

        # Sanity check: board should be at least 15% of monitor
        screen_h, screen_w = screen.shape[:2]
        if w * h < screen_w * screen_h * 0.15:
            return None

        # Convert image coords to screen coords
        return Rect(x + mon_x, y + mon_y, w, h)

    def detect_board(self) -> Rect:
        """Auto-detect the board. Retries a few times if needed."""
        for attempt in range(5):
            board = self.detect_board_auto()
            if board:
                print(f"[+] Board detected: x={board.x}, y={board.y}, "
                      f"w={board.w}, h={board.h}")
                return board
            if attempt < 4:
                print(f"[*] Board not detected, retrying ({attempt + 1}/5)...")
                time.sleep(1)

        print("[!] Could not auto-detect the board after 5 attempts.")
        print("    Make sure the puzzle board is fully visible on screen.")
        return None

    def _detect_colors(self):
        """
        Sample the actual board and border background colors from the screen.
        Updates the HSV ranges used for detection based on real pixel data.
        """
        global BOARD_HSV_LOWER, BOARD_HSV_UPPER
        global BORDER_BG_HSV_LOWER, BORDER_BG_HSV_UPPER

        b = self.board
        sb = self.screen_bounds

        # --- Board color: sample center of the board ---
        sample_size = 40
        board_cx, board_cy = b.cx, b.cy
        try:
            board_patch = self.screenshot((
                board_cx - sample_size // 2, board_cy - sample_size // 2,
                sample_size, sample_size
            ))
            board_hsv = cv2.cvtColor(board_patch, cv2.COLOR_BGR2HSV)
            board_h = np.median(board_hsv[:, :, 0])
            board_s = np.median(board_hsv[:, :, 1])
            board_v = np.median(board_hsv[:, :, 2])
            board_bgr = board_patch[sample_size // 2, sample_size // 2]
            print(f"[+] Board color: HSV=({board_h:.0f},{board_s:.0f},{board_v:.0f}) "
                  f"BGR=({board_bgr[0]},{board_bgr[1]},{board_bgr[2]})")

            # Update board HSV range around detected color
            margin_h, margin_s, margin_v = 15, 30, 40
            BOARD_HSV_LOWER = np.array([
                max(0, board_h - margin_h),
                max(0, board_s - margin_s),
                max(0, board_v - margin_v)
            ])
            BOARD_HSV_UPPER = np.array([
                min(180, board_h + margin_h),
                min(255, board_s + margin_s),
                min(255, board_v + margin_v)
            ])
            self._dbg(f"board HSV range: {BOARD_HSV_LOWER} - {BOARD_HSV_UPPER}")
            self._dbg_save("color_board_sample", board_patch)
        except Exception as e:
            print(f"[!] Could not sample board color: {e}")

        # --- Border color: sample a point in the border area ---
        # Try left border center, then bottom border center
        border_samples = []
        if b.x > sb.x + 30:
            # Left border exists
            bx = sb.x + (b.x - sb.x) // 2
            by = b.cy
            border_samples.append((bx, by, "left"))
        if b.bottom < sb.bottom - 30:
            # Bottom border exists
            bx = b.cx
            by = b.bottom + (sb.bottom - b.bottom) // 2
            border_samples.append((bx, by, "bottom"))

        for bx, by, label in border_samples:
            try:
                border_patch = self.screenshot((
                    bx - sample_size // 2, by - sample_size // 2,
                    sample_size, sample_size
                ))
                border_hsv = cv2.cvtColor(border_patch, cv2.COLOR_BGR2HSV)
                border_h = np.median(border_hsv[:, :, 0])
                border_s = np.median(border_hsv[:, :, 1])
                border_v = np.median(border_hsv[:, :, 2])
                border_bgr = border_patch[sample_size // 2, sample_size // 2]
                print(f"[+] Border color ({label}): "
                      f"HSV=({border_h:.0f},{border_s:.0f},{border_v:.0f}) "
                      f"BGR=({border_bgr[0]},{border_bgr[1]},{border_bgr[2]})")

                # Update border HSV range
                BORDER_BG_HSV_LOWER = np.array([
                    max(0, border_h - margin_h),
                    max(0, border_s - margin_s),
                    max(0, border_v - margin_v)
                ])
                BORDER_BG_HSV_UPPER = np.array([
                    min(180, border_h + margin_h),
                    min(255, border_s + margin_s),
                    min(255, border_v + margin_v)
                ])
                self._dbg(f"border HSV range: {BORDER_BG_HSV_LOWER} - {BORDER_BG_HSV_UPPER}")
                self._dbg_save(f"color_border_{label}_sample", border_patch)
                break  # One good sample is enough
            except Exception:
                continue

    # ---------- Grid Calculation ----------

    def _detect_board_inner(self) -> tuple[int, int, int, int]:
        """
        Detect the inner board area (excluding the golden frame).
        Returns (x, y, w, h) of the playable area inside the golden border.
        """
        b = self.board
        # Sample horizontal and vertical lines through the board center
        # to find where the golden frame ends and the gray board begins.
        try:
            board_img = self.screenshot((b.x, b.y, b.w, b.h))
        except Exception:
            # Fallback: use a fixed margin to skip the golden frame
            margin = int(min(b.w, b.h) * 0.02)
            return (b.x + margin, b.y + margin, b.w - 2 * margin, b.h - 2 * margin)

        hsv = cv2.cvtColor(board_img, cv2.COLOR_BGR2HSV)
        h, w = hsv.shape[:2]

        # Scan from each edge inward along center lines to find the board area
        mid_y = h // 2
        mid_x = w // 2

        def is_board_pixel(px_hsv):
            """Check if a pixel is board-colored (light gray, low saturation)."""
            return px_hsv[1] < 40 and px_hsv[2] > 150

        # Find left edge of inner board
        left = 0
        for x in range(w // 2):
            if is_board_pixel(hsv[mid_y, x]):
                left = x
                break

        # Find right edge
        right = w - 1
        for x in range(w - 1, w // 2, -1):
            if is_board_pixel(hsv[mid_y, x]):
                right = x
                break

        # Find top edge
        top = 0
        for y in range(h // 2):
            if is_board_pixel(hsv[y, mid_x]):
                top = y
                break

        # Find bottom edge
        bottom = h - 1
        for y in range(h - 1, h // 2, -1):
            if is_board_pixel(hsv[y, mid_x]):
                bottom = y
                break

        # Small inward padding to avoid edge artifacts
        pad = 3
        inner_x = b.x + left + pad
        inner_y = b.y + top + pad
        inner_w = (right - left) - 2 * pad
        inner_h = (bottom - top) - 2 * pad

        self._dbg(f"board_inner: frame thickness L={left} R={w-1-right} T={top} B={h-1-bottom}")
        self._dbg(f"board_inner: inner=({inner_x},{inner_y}) {inner_w}x{inner_h}")
        return (inner_x, inner_y, inner_w, inner_h)

    def calculate_grid(self, cols: int, rows: int):
        """Calculate grid positions inside the board (excluding golden frame)."""
        ix, iy, iw, ih = self._detect_board_inner()

        cell_w = iw / cols
        cell_h = ih / rows

        self.grid_positions = []
        for row in range(rows):
            for col in range(cols):
                x = ix + cell_w * (col + 0.5)
                y = iy + cell_h * (row + 0.5)
                self.grid_positions.append((int(x), int(y)))

        self._dbg(f"grid: cell_size={cell_w:.1f}x{cell_h:.1f}")
        self._dbg(f"grid: top-left=({self.grid_positions[0]}) "
                   f"bottom-right=({self.grid_positions[-1]})")
        print(f"[+] Grid: {cols}x{rows} = {len(self.grid_positions)} positions "
              f"(cell {cell_w:.0f}x{cell_h:.0f}px)")

    def detect_occupied_cells(self):
        """
        Scan the board to find grid cells that already have pieces on them.
        Compares each cell to the expected empty board color (light gray).
        Populates self.placed with the indices of occupied cells.
        """
        print("[*] Scanning board for already-placed pieces...")
        cap_size = 20
        occupied = 0

        for idx, (gx, gy) in enumerate(self.grid_positions):
            region = (gx - cap_size // 2, gy - cap_size // 2, cap_size, cap_size)
            try:
                patch = self.screenshot(region)
                hsv = cv2.cvtColor(patch, cv2.COLOR_BGR2HSV)
                # Empty board = light gray: low saturation, high value
                board_mask = cv2.inRange(hsv, BOARD_HSV_LOWER, BOARD_HSV_UPPER)
                board_ratio = np.count_nonzero(board_mask) / board_mask.size
                # If less than 50% of the cell looks like empty board, it's occupied
                if board_ratio < 0.5:
                    self.placed.add(idx)
                    occupied += 1
                    self._dbg(f"detect_occupied: grid[{idx}] ({gx},{gy}) "
                              f"occupied (board_ratio={board_ratio:.2f})")
            except Exception:
                pass

        if occupied > 0:
            self.pieces_placed = occupied
            print(f"[+] Found {occupied} cells already occupied, "
                  f"{len(self.grid_positions) - occupied} remaining")
        else:
            print("[+] Board is empty, starting fresh")

    # ---------- Border Scanning ----------

    def get_border_scan_positions(self) -> list[tuple[int, int]]:
        """
        Generate a list of positions to scan in the border areas (around the board).
        Scans left, right, bottom, and top borders within the game monitor only.
        """
        sb = self.screen_bounds
        margin = 10
        sx, sy = sb.x + margin, sb.y + margin
        sw, sh = sb.right - margin, sb.bottom - margin

        bx, by, bw, bh = self.board.x, self.board.y, self.board.w, self.board.h
        step = SCAN_STEP
        positions = []

        # Left border
        for y in range(by, by + bh, step):
            for x in range(sx, bx - 5, step):
                positions.append((x, y))

        # Right border
        for y in range(by, by + bh, step):
            for x in range(bx + bw + 5, sw, step):
                positions.append((x, y))

        # Bottom border
        for y in range(by + bh + 5, sh, step):
            for x in range(sx, sw, step):
                positions.append((x, y))

        # Top border (if any space above board)
        if by - sy > 30:
            for y in range(sy, by - 5, step):
                for x in range(sx, sw, step):
                    positions.append((x, y))

        return positions

    def find_pieces_visual(self) -> list[tuple[int, int]]:
        """
        Find pieces in border areas using visual detection.
        Takes multiple snapshots to handle floating/moving pieces,
        then merges detections.
        Returns list of (x, y) piece center positions.
        """
        all_detections = []

        # Offset: when using game_monitor, image coords start at 0 but
        # screen coords start at monitor.left/top
        mon_offset_x = self.game_monitor["left"] if self.game_monitor else 0
        mon_offset_y = self.game_monitor["top"] if self.game_monitor else 0

        # Take 2 snapshots spaced 300ms apart to catch moving pieces
        for snap in range(2):
            if snap > 0:
                time.sleep(0.3)

            screen = self.screenshot()
            hsv = cv2.cvtColor(screen, cv2.COLOR_BGR2HSV)
            screen_h, screen_w = screen.shape[:2]

            # Board coords in image space (subtract monitor offset)
            bx = self.board.x - mon_offset_x
            by = self.board.y - mon_offset_y
            bw, bh = self.board.w, self.board.h

            # Border background (dark gray)
            bg_mask = cv2.inRange(hsv, BORDER_BG_HSV_LOWER, BORDER_BG_HSV_UPPER)

            # Board area (light gray)
            board_mask = cv2.inRange(hsv, BOARD_HSV_LOWER, BOARD_HSV_UPPER)

            # Golden frame
            gold_mask = cv2.inRange(hsv, GOLD_HSV_LOWER, GOLD_HSV_UPPER)

            # Pieces = NOT background AND NOT board AND NOT golden frame
            all_bg = cv2.bitwise_or(bg_mask, board_mask)
            all_bg = cv2.bitwise_or(all_bg, gold_mask)
            piece_mask = cv2.bitwise_not(all_bg)

            # Zero out the board area + frame border (we only want border pieces)
            frame_margin = 15
            piece_mask[max(0,by-frame_margin):by+bh+frame_margin,
                       max(0,bx-frame_margin):bx+bw+frame_margin] = 0

            # Zero out screen edges and UI corners
            piece_mask[:8, :] = 0
            piece_mask[-8:, :] = 0
            piece_mask[:, :8] = 0
            piece_mask[:, -8:] = 0
            ui = 50
            piece_mask[:ui, -ui:] = 0   # top-right menu
            piece_mask[:ui, :ui] = 0    # top-left
            piece_mask[-ui:, :ui] = 0   # bottom-left
            piece_mask[-ui:, -ui:] = 0  # bottom-right

            # Morphological cleanup
            kernel = cv2.getStructuringElement(cv2.MORPH_ELLIPSE, (5, 5))
            piece_mask = cv2.morphologyEx(piece_mask, cv2.MORPH_OPEN, kernel)
            kernel_close = cv2.getStructuringElement(cv2.MORPH_ELLIPSE, (9, 9))
            piece_mask = cv2.morphologyEx(piece_mask, cv2.MORPH_CLOSE, kernel_close)

            # Find contours (pieces)
            contours, _ = cv2.findContours(piece_mask, cv2.RETR_EXTERNAL,
                                            cv2.CHAIN_APPROX_SIMPLE)

            min_area = 150   # Minimum contour area to be a piece
            max_area = 80000  # Maximum (filter out large false positives)

            for cnt in contours:
                area = cv2.contourArea(cnt)
                if min_area < area < max_area:
                    M = cv2.moments(cnt)
                    if M["m00"] > 0:
                        # Convert image coords back to screen coords
                        cx = int(M["m10"] / M["m00"]) + mon_offset_x
                        cy = int(M["m01"] / M["m00"]) + mon_offset_y
                        all_detections.append((cx, cy))

        # Merge nearby detections (same piece seen in multiple snapshots)
        pieces = self._merge_nearby_points(all_detections, merge_dist=40)

        # Filter to screen bounds (critical for multi-monitor setups)
        if self.screen_bounds:
            sb = self.screen_bounds
            pieces = [(x, y) for x, y in pieces
                      if sb.x < x < sb.right and sb.y < y < sb.bottom]

        # Sort: bottom pieces first, then left to right
        pieces.sort(key=lambda p: (-p[1], p[0]))
        print(f"    (visual scan found {len(pieces)} pieces within screen bounds)")
        return pieces

    def _merge_nearby_points(self, points: list, merge_dist: int = 40) -> list:
        """Merge points that are within merge_dist pixels of each other."""
        if not points:
            return []

        merged = []
        used = [False] * len(points)

        for i, (x1, y1) in enumerate(points):
            if used[i]:
                continue

            cluster_x = [x1]
            cluster_y = [y1]
            used[i] = True

            for j, (x2, y2) in enumerate(points):
                if used[j]:
                    continue
                if abs(x1 - x2) < merge_dist and abs(y1 - y2) < merge_dist:
                    cluster_x.append(x2)
                    cluster_y.append(y2)
                    used[j] = True

            merged.append((int(np.mean(cluster_x)), int(np.mean(cluster_y))))

        return merged

    # ---------- Piece Interaction ----------

    def is_piece_on_cursor(self) -> bool:
        """
        Check if a piece is currently attached to the cursor.
        Method: take screenshot near cursor, move cursor, compare same area.
        If pixels changed → piece moved with cursor → still attached.
        """
        cx, cy = pyautogui.position()

        # Capture area around cursor
        cap_size = 30
        region = (cx - cap_size//2, cy - cap_size//2, cap_size, cap_size)

        try:
            before = self.screenshot(region).astype(np.float32)
        except Exception:
            return False

        # Move cursor slightly (clamped to screen)
        move_dx = DETECTION_MOVE
        tx, ty = self._clamp_to_screen(cx + move_dx, cy)
        actual_dx = tx - cx
        if abs(actual_dx) < 20:
            # Too close to right edge, move left instead
            tx, ty = self._clamp_to_screen(cx - move_dx, cy)
            actual_dx = tx - cx
        self._di_move(tx, ty, duration=0.03)
        time.sleep(0.05)

        try:
            after = self.screenshot(region).astype(np.float32)
        except Exception:
            self._di_move(cx, cy, duration=0.03)
            return False

        # Move cursor back
        self._di_move(cx, cy, duration=0.03)

        # Compare: if area changed, piece moved away from that spot
        diff = np.mean(np.abs(before - after))
        return diff > DETECTION_THRESHOLD

    def _is_piece_pixel(self, bgr_pixel) -> bool:
        """Check if a BGR pixel is NOT background (= likely a piece)."""
        hsv = cv2.cvtColor(np.uint8([[bgr_pixel]]), cv2.COLOR_BGR2HSV)[0][0]
        h, s, v = int(hsv[0]), int(hsv[1]), int(hsv[2])
        # Very dark = not a piece
        if v < 35:
            return False
        # Border background
        if (BORDER_BG_HSV_LOWER[0] <= h <= BORDER_BG_HSV_UPPER[0] and
            BORDER_BG_HSV_LOWER[1] <= s <= BORDER_BG_HSV_UPPER[1] and
            BORDER_BG_HSV_LOWER[2] <= v <= BORDER_BG_HSV_UPPER[2]):
            return False
        # Board background
        if (BOARD_HSV_LOWER[0] <= h <= BOARD_HSV_UPPER[0] and
            BOARD_HSV_LOWER[1] <= s <= BOARD_HSV_UPPER[1] and
            BOARD_HSV_LOWER[2] <= v <= BOARD_HSV_UPPER[2]):
            return False
        return True

    def _refine_piece_pos(self, x: int, y: int) -> tuple[int, int]:
        """
        Screenshot around (x,y), find non-background pixels, return centroid.
        """
        scan_size = 80
        half = scan_size // 2
        rx, ry = x - half, y - half
        try:
            patch = self.screenshot((rx, ry, scan_size, scan_size))
        except Exception:
            return self._clamp_to_screen(x, y)

        hsv = cv2.cvtColor(patch, cv2.COLOR_BGR2HSV)

        # Build mask: non-background pixels using vectorized operations
        bg = cv2.inRange(hsv, BORDER_BG_HSV_LOWER, BORDER_BG_HSV_UPPER)
        board = cv2.inRange(hsv, BOARD_HSV_LOWER, BOARD_HSV_UPPER)
        dark = cv2.inRange(hsv, np.array([0, 0, 0]), np.array([180, 255, 35]))
        all_bg = cv2.bitwise_or(cv2.bitwise_or(bg, board), dark)
        piece_mask = cv2.bitwise_not(all_bg)

        # Get coordinates of piece pixels
        ys, xs = np.where(piece_mask > 0)
        if len(xs) == 0:
            self._dbg(f"_refine: no piece pixel near ({x},{y})")
            return self._clamp_to_screen(x, y)

        cx = rx + int(np.mean(xs))
        cy = ry + int(np.mean(ys))
        self._dbg(f"_refine: ({x},{y}) -> ({cx},{cy}) [{len(xs)} px]")
        return self._clamp_to_screen(cx, cy)

    def pick_up_piece(self, x: int, y: int) -> tuple[bool, float]:
        """
        Attempt to pick up a piece at (x, y) using mouseDown.
        Refines position to piece center before clicking.
        Verifies by comparing the source area before/after dragging away.
        Returns (grabbed: bool, diff: float).
        """
        # Refine position to actual piece center
        sx, sy = self._refine_piece_pos(x, y)
        self._dbg(f"pick_up_piece: target=({x},{y}) refined=({sx},{sy})")

        # Screenshot the source area BEFORE picking up
        cap_size = 50
        src_region = (sx - cap_size // 2, sy - cap_size // 2, cap_size, cap_size)
        try:
            before = self.screenshot(src_region).astype(np.float32)
        except Exception:
            self._dbg(f"pick_up_piece: failed to capture before screenshot")
            before = None
        self._dbg_save(f"pick_{sx}_{sy}_before", before)

        self._safe_move(sx, sy)
        time.sleep(0.02)
        pydirectinput.mouseDown()
        time.sleep(0.06)

        # Move away from source toward the board center
        bx_center = self.board.cx
        by_center = self.board.cy
        dx = 1 if bx_center > sx else -1
        dy = 1 if by_center > sy else -1
        test_x = sx + dx * 80
        test_y = sy + dy * 40
        self._di_move(test_x, test_y, duration=0.03)
        time.sleep(0.05)
        self._dbg(f"pick_up_piece: dragged to ({test_x},{test_y})")

        # Screenshot the source area AFTER dragging away
        grabbed = False
        pick_diff = 0.0
        if before is not None:
            try:
                after = self.screenshot(src_region).astype(np.float32)
                pick_diff = np.mean(np.abs(before - after))
                grabbed = pick_diff > DETECTION_THRESHOLD
                self._dbg(f"pick_up_piece: source diff={pick_diff:.1f} threshold={DETECTION_THRESHOLD} grabbed={grabbed}")
                self._dbg_save(f"pick_{sx}_{sy}_after_diff{pick_diff:.0f}_{'OK' if grabbed else 'FAIL'}", after)
            except Exception:
                self._dbg(f"pick_up_piece: failed to capture after screenshot")

        if not grabbed:
            pydirectinput.mouseUp()
            time.sleep(CLICK_DELAY)
            return False, pick_diff

        return True, pick_diff

    def drop_piece(self, x: int, y: int):
        """Release the piece at (x, y)."""
        self._dbg(f"drop_piece: releasing at ({x},{y})")
        self._safe_move(x, y)
        time.sleep(DRAG_DELAY)
        pydirectinput.mouseUp()
        time.sleep(CLICK_DELAY)

    def _get_parking_pos(self) -> tuple[int, int]:
        """Get a neutral cursor parking position (bottom-left of board)."""
        b = self.board
        return self._clamp_to_screen(b.x + 20, b.bottom - 20)

    def _cell_has_piece(self, gx: int, gy: int) -> bool:
        """Check if a grid cell has a piece by sampling pixels at/around center."""
        offsets = [(0, 0), (-5, -5), (5, 5), (-5, 5), (5, -5)]
        piece_count = 0
        for dx, dy in offsets:
            px = self.screenshot((gx + dx, gy + dy, 1, 1))[0][0]
            if self._is_piece_pixel(px):
                piece_count += 1
        result = piece_count >= 3
        self._dbg(f"_cell_has_piece: ({gx},{gy}) piece_pixels={piece_count}/5 → {result}")
        return result

    def _holding_piece(self) -> bool:
        """Check pixels around cursor — if all board-colored, we're not holding a piece.
        Samples at offsets to avoid the cursor arrow graphic itself."""
        x, y = pyautogui.position()
        offsets = [(12, 12), (-12, 12), (12, -12), (-12, -12)]
        piece_count = 0
        colors = []
        for dx, dy in offsets:
            px = self.screenshot((x + dx, y + dy, 1, 1))[0][0]
            colors.append(px.tolist())
            if self._is_piece_pixel(px):
                piece_count += 1
        result = piece_count >= 2
        self._dbg(f"_holding_piece: ({x},{y}) piece={piece_count}/4 → {'YES' if result else 'NO'} {colors}")
        return result

    def try_place_at(self, grid_idx: int) -> tuple[bool, str]:
        """
        Drop piece at grid cell, then re-grab+drag to verify.
        Keeps mouseDown during drag (no mouseUp until verified).
        Returns (placed: bool, log: str).
        """
        gx, gy = self.grid_positions[grid_idx]
        self._dbg(f"try_place_at: grid[{grid_idx}] pos=({gx},{gy})")

        # Drop piece at cell
        self._safe_move(gx, gy)
        pydirectinput.mouseUp()
        time.sleep(SNAP_CHECK_DELAY)

        # 1st grab: mouseDown at cell, drag away, KEEP HOLDING
        pydirectinput.mouseDown()
        time.sleep(0.10)
        offset = 140
        tx1, ty1 = self._clamp_to_screen(gx + offset, gy)
        if abs(tx1 - gx) < 40:
            tx1, ty1 = self._clamp_to_screen(gx - offset, gy)
        self._di_move(tx1, ty1, duration=0.06)
        time.sleep(0.04)
        # Still holding mouseDown — check cell with cursor parked at drag dest
        still_1 = self._cell_has_piece(gx, gy)
        log = f"grid[{grid_idx}] ({gx},{gy}) grab1→({tx1},{ty1}) still={still_1}"

        if not still_1:
            # Cell empty → we dragged the piece away → not placed, still holding
            self._dbg(f"try_place_at: not placed, holding piece at ({tx1},{ty1})")
            return False, log

        # Piece still in cell after 1st grab → snapped or grab failed
        # Release and try 2nd grab in opposite direction
        pydirectinput.mouseUp()
        time.sleep(0.04)
        self._di_move(gx, gy)
        time.sleep(0.02)
        pydirectinput.mouseDown()
        time.sleep(0.10)
        tx2, ty2 = self._clamp_to_screen(gx - offset, gy)
        if abs(tx2 - gx) < 40:
            tx2, ty2 = self._clamp_to_screen(gx + offset, gy)
        self._di_move(tx2, ty2, duration=0.06)
        time.sleep(0.04)
        # Still holding — check cell
        still_2 = self._cell_has_piece(gx, gy)
        log += f" → grab2→({tx2},{ty2}) still={still_2}"

        if still_2:
            # Two grabs couldn't move it → snapped → placed!
            pydirectinput.mouseUp()
            self._dbg(f"try_place_at: PLACED at grid[{grid_idx}] ({gx},{gy})")
            return True, log
        else:
            # 2nd grab moved it → not snapped, we're holding it
            self._dbg(f"try_place_at: grid[{grid_idx}] not snapped, holding from 2nd grab")
            return False, log

    # ---------- Main Solve Loop ----------

    def solve_piece(self, piece_x: int, piece_y: int) -> bool:
        """
        Pick up a single piece and try to place it on the board.
        Iterates through all unoccupied grid positions.
        Returns True if piece was placed, False if skipped/failed.
        Returns None if debug auto-stop was triggered (caller should stop).
        """
        self._dbg(f"solve_piece: starting at ({piece_x},{piece_y})")

        # Pick up the piece (includes verification for floating pieces)
        grabbed, pick_diff = self.pick_up_piece(piece_x, piece_y)
        if not grabbed:
            self._dbg(f"solve_piece: no grab at ({piece_x},{piece_y}) diff={pick_diff:.1f}")
            return False

        # Log for anomaly tracking
        grab_pos = pyautogui.position()
        action_log = [f"grabbed at ({piece_x},{piece_y}) diff={pick_diff:.1f}, cursor=({grab_pos.x},{grab_pos.y})"]

        # Try each grid position
        attempts = 0
        total_unplaced = len(self.grid_positions) - len(self.placed)
        self._dbg(f"solve_piece: {total_unplaced} grid positions to try")

        for idx in range(len(self.grid_positions)):
            # Check for pause/stop
            self._check_controls()
            if not self.running:
                pydirectinput.mouseUp()
                return False

            if idx in self.placed:
                continue

            # Verify we're still holding a piece before trying
            if not self._holding_piece():
                cx, cy = pyautogui.position()
                action_log.append(f"LOST before grid[{idx}] cursor=({cx},{cy})")
                print(f"    [!] ANOMALY: piece lost — not under cursor")
                print(f"    [!] Action log:")
                for entry in action_log:
                    print(f"        {entry}")
                return False

            attempts += 1
            if attempts % 20 == 0:
                print(f"    Trying position {attempts}/{total_unplaced}...", end='\r')

            placed, log = self.try_place_at(idx)
            action_log.append(log)

            if placed:
                self.placed.add(idx)
                self.pieces_placed += 1
                return True

        # Could not place this piece - drop it in a safe area
        # Drop it on the bottom border
        sb = self.screen_bounds
        drop_x = sb.cx
        drop_y = self.board.bottom + (sb.bottom - self.board.bottom) // 2
        self.drop_piece(drop_x, drop_y)
        self._dbg(f"solve_piece: dropped unplaced piece at ({drop_x},{drop_y})")
        print(f"    [!] Could not place piece from ({piece_x}, {piece_y}) - dropped aside")
        return False

    def _find_one_piece(self) -> tuple[int, int] | None:
        """
        Find a single piece in the border areas by screenshot + pixel scan.
        Returns (x, y) screen coords of a piece, or None.
        """
        mon = self.game_monitor
        if not mon:
            return None

        mon_x, mon_y = mon["left"], mon["top"]
        screen = self.screenshot()
        hsv = cv2.cvtColor(screen, cv2.COLOR_BGR2HSV)

        # Board coords in image space
        bx = self.board.x - mon_x
        by = self.board.y - mon_y
        bw, bh = self.board.w, self.board.h

        # Build background mask
        bg = cv2.inRange(hsv, BORDER_BG_HSV_LOWER, BORDER_BG_HSV_UPPER)
        board = cv2.inRange(hsv, BOARD_HSV_LOWER, BOARD_HSV_UPPER)
        gold = cv2.inRange(hsv, GOLD_HSV_LOWER, GOLD_HSV_UPPER)
        dark = cv2.inRange(hsv, np.array([0, 0, 0]), np.array([180, 255, 35]))
        all_bg = cv2.bitwise_or(cv2.bitwise_or(bg, board), cv2.bitwise_or(gold, dark))

        # Zero out the board area (we only want border pieces)
        margin = 30
        all_bg[max(0, by - margin):by + bh + margin,
               max(0, bx - margin):bx + bw + margin] = 255

        # Zero out screen edges (UI)
        all_bg[:10, :] = 255
        all_bg[-10:, :] = 255
        all_bg[:, :10] = 255
        all_bg[:, -10:] = 255

        # Zero out UI corners (menu icon top-right, button bottom-left)
        ui_size = 50
        all_bg[:ui_size, -ui_size:] = 255   # top-right menu
        all_bg[:ui_size, :ui_size] = 255     # top-left (FPS counter etc)
        all_bg[-ui_size:, :ui_size] = 255    # bottom-left button
        all_bg[-ui_size:, -ui_size:] = 255   # bottom-right

        # piece_mask = non-background
        piece_mask = cv2.bitwise_not(all_bg)

        # Light cleanup to remove noise
        kernel = cv2.getStructuringElement(cv2.MORPH_ELLIPSE, (3, 3))
        piece_mask = cv2.morphologyEx(piece_mask, cv2.MORPH_OPEN, kernel)

        self._dbg_save("piece_mask", piece_mask)

        # Find any non-zero pixel cluster (at least a few pixels together)
        # Use a coarse scan with step to find a region, then centroid
        h, w = piece_mask.shape
        step = 15
        for y in range(0, h, step):
            for x in range(0, w, step):
                if piece_mask[y, x] > 0:
                    # Found a piece pixel — get centroid of nearby piece pixels
                    r = 40
                    y1, y2 = max(0, y - r), min(h, y + r)
                    x1, x2 = max(0, x - r), min(w, x + r)
                    local = piece_mask[y1:y2, x1:x2]
                    ys, xs = np.where(local > 0)
                    if len(xs) < 10:
                        continue  # Too small, probably noise
                    cx = x1 + int(np.mean(xs)) + mon_x
                    cy = y1 + int(np.mean(ys)) + mon_y
                    # Skip blacklisted positions (within 60px)
                    if any(abs(cx - bx) < 60 and abs(cy - by) < 60
                           for bx, by in self._blacklisted):
                        continue
                    # Verify it's within screen bounds
                    if self.screen_bounds:
                        sb = self.screen_bounds
                        if not (sb.x < cx < sb.right and sb.y < cy < sb.bottom):
                            continue
                    count = len(xs)
                    self._dbg(f"_find_one_piece: found at ({cx},{cy}) [{count} px]")
                    return (cx, cy)

        return None

    def solve(self):
        """
        Main solving loop: find one piece at a time, place it, repeat.
        Re-scans after each piece since pieces are stacked and new ones
        become visible as we remove them.
        """
        consecutive_fails = 0
        max_fails = 20  # Stop after N consecutive failures to find/place

        while self.running:
            self._check_controls()
            if not self.running:
                break

            if self.pieces_placed >= self.piece_count:
                print(f"\n[+] All {self.piece_count} pieces placed! Puzzle complete!")
                break

            remaining = self.piece_count - self.pieces_placed
            print(f"\n[{self.pieces_placed}/{self.piece_count}] "
                  f"Scanning for next piece ({remaining} remaining)...")

            piece = self._find_one_piece()
            if not piece:
                consecutive_fails += 1
                if consecutive_fails >= max_fails:
                    print(f"[!] No pieces found after {max_fails} scans. "
                          f"Puzzle may be complete or pieces are hidden.")
                    break
                print(f"    No piece found (attempt {consecutive_fails}/{max_fails}), "
                      f"retrying in 1s...")
                time.sleep(1)
                continue

            px, py = piece
            print(f"    Found piece at ({px}, {py})")

            if self.solve_piece(px, py):
                print(f"    -> Placed! ({self.pieces_placed}/{self.piece_count})")
                consecutive_fails = 0
                self._blacklisted.clear()  # reset on success
            else:
                # Blacklist this position so we try elsewhere next scan
                self._blacklisted.append((px, py))
                self._dbg(f"blacklisted ({px},{py}), total={len(self._blacklisted)}")
                consecutive_fails += 1
                if consecutive_fails >= max_fails:
                    print(f"[!] {max_fails} consecutive failures. Stopping.")
                    break

    def _systematic_border_scan(self) -> list[tuple[int, int]]:
        """
        Fallback: systematically click in border areas to find pieces.
        Returns positions where a piece was detected.
        """
        positions = self.get_border_scan_positions()
        found = []

        for x, y in positions:
            self._check_controls()
            if not self.running:
                break

            self._safe_move(x, y, duration=0.01)
            time.sleep(0.02)

            # Quick check: take small screenshot around this position
            # and look for piece-colored pixels
            try:
                region = (x - 15, y - 15, 30, 30)
                patch = self.screenshot(region)
                hsv = cv2.cvtColor(patch, cv2.COLOR_BGR2HSV)

                # Check if there are non-background pixels here
                bg_mask = cv2.inRange(hsv, BORDER_BG_HSV_LOWER, BORDER_BG_HSV_UPPER)
                board_mask = cv2.inRange(hsv, BOARD_HSV_LOWER, BOARD_HSV_UPPER)
                gold_mask = cv2.inRange(hsv, GOLD_HSV_LOWER, GOLD_HSV_UPPER)
                combined_bg = cv2.bitwise_or(bg_mask, board_mask)
                combined_bg = cv2.bitwise_or(combined_bg, gold_mask)
                non_bg_ratio = 1.0 - np.count_nonzero(combined_bg) / combined_bg.size

                if non_bg_ratio > 0.3:  # At least 30% non-background pixels
                    found.append((x, y))
            except Exception:
                continue

            if len(found) >= 50:  # Don't find too many at once
                break

        return found

    # ---------- Controls ----------

    def _setup_hotkeys(self):
        """Register global hotkeys for stop/pause (work even when game has focus)."""
        keyboard.on_press_key('escape', lambda _: self._on_stop())
        keyboard.on_press_key('F12', lambda _: self._on_stop())
        keyboard.on_press_key('pause', lambda _: self._on_pause())
        self._dbg("hotkeys registered: ESC/F12=stop, PAUSE=pause/resume")

    def _on_stop(self):
        """Called by hotkey: stop the solver."""
        self.running = False
        print("\n[!] Stop requested...")
        try:
            pydirectinput.mouseUp()
        except Exception:
            pass

    def _on_pause(self):
        """Called by hotkey: toggle pause."""
        self.paused = not self.paused

    def _check_controls(self):
        """Handle pause state (hotkeys set flags asynchronously)."""
        if not self.running:
            return

        if self.paused:
            pydirectinput.mouseUp()
            print("\n[||] Paused - press PAUSE to resume, ESC to stop...")
            while self.paused and self.running:
                time.sleep(0.1)
            if self.running:
                print("[>] Resumed")

    # ---------- Puzzle Selection Screen ----------

    def detect_thumbnails(self) -> list[tuple[int, int, int, int, int]]:
        """
        Detect puzzle thumbnails on the selection screen.
        Returns list of (x, y, w, h, piece_count) in screen coords.
        piece_count is 0 if OCR failed.
        """
        mon = self.game_monitor or (
            self.sct.monitors[1] if len(self.sct.monitors) > 1 else self.sct.monitors[0]
        )
        mon_x, mon_y = mon["left"], mon["top"]
        mon_w, mon_h = mon["width"], mon["height"]

        # Capture game monitor
        screen = self.sct.grab(mon)
        screen = np.array(screen)[:, :, :3]  # BGR

        # Thumbnails can appear anywhere vertically (often centered)
        # Search the full screen height
        hsv = cv2.cvtColor(screen, cv2.COLOR_BGR2HSV)

        # Thumbnails are colorful images, NOT the dark gray background
        # Mask: border background + very dark pixels + board area
        bg_mask = cv2.inRange(hsv, BORDER_BG_HSV_LOWER, BORDER_BG_HSV_UPPER)
        dark_mask = cv2.inRange(hsv, np.array([0, 0, 0]), np.array([180, 255, 40]))
        board_mask = cv2.inRange(hsv, BOARD_HSV_LOWER, BOARD_HSV_UPPER)
        combined_bg = cv2.bitwise_or(bg_mask, dark_mask)
        combined_bg = cv2.bitwise_or(combined_bg, board_mask)

        thumb_mask = cv2.bitwise_not(combined_bg)

        # Clean up
        kernel = cv2.getStructuringElement(cv2.MORPH_RECT, (15, 15))
        thumb_mask = cv2.morphologyEx(thumb_mask, cv2.MORPH_CLOSE, kernel)
        thumb_mask = cv2.morphologyEx(thumb_mask, cv2.MORPH_OPEN, kernel)

        # Debug: save mask for troubleshooting
        cv2.imwrite("_debug_thumb_mask.png", thumb_mask)

        # Find contours
        contours, _ = cv2.findContours(thumb_mask, cv2.RETR_EXTERNAL,
                                        cv2.CHAIN_APPROX_SIMPLE)

        thumbnails = []
        min_thumb_area = mon_w * mon_h * 0.001  # At least 0.1% of screen
        max_thumb_area = mon_w * mon_h * 0.08   # At most 8% of screen

        for cnt in contours:
            x, y, w, h = cv2.boundingRect(cnt)
            area = w * h
            aspect = w / h if h > 0 else 0

            if min_thumb_area < area < max_thumb_area and 0.5 < aspect < 3.0:
                thumbnails.append((x, y, w, h))

        # Sort left to right
        thumbnails.sort(key=lambda t: t[0])

        # Try to read piece count for each thumbnail
        results = []
        for tx, ty, tw, th in thumbnails:
            piece_count = self._read_piece_count(screen, tx, ty, tw, th)
            # Convert to screen coords
            results.append((tx + mon_x, ty + mon_y, tw, th, piece_count))

        return results

    def _read_piece_count(self, screen: np.ndarray, tx: int, ty: int,
                          tw: int, th: int) -> int:
        """
        Try to read the piece count (e.g., "0/330") from below a thumbnail.
        Returns the total piece count, or 0 if reading failed.
        """
        # The text "0/XXX" appears below or overlapping the bottom of the thumbnail
        # Look in a region below the thumbnail
        img_h, img_w = screen.shape[:2]
        text_y1 = min(ty + th - 5, img_h - 1)
        text_y2 = min(ty + th + 40, img_h)
        text_x1 = max(tx - 10, 0)
        text_x2 = min(tx + tw + 10, img_w)

        if text_y2 <= text_y1 or text_x2 <= text_x1:
            return 0

        text_region = screen[text_y1:text_y2, text_x1:text_x2]

        # Convert to grayscale and threshold to isolate white/bright text
        gray = cv2.cvtColor(text_region, cv2.COLOR_BGR2GRAY)

        # The text is white/light on a dark background
        _, thresh = cv2.threshold(gray, 160, 255, cv2.THRESH_BINARY)

        # Scale up for better OCR
        scale = 3
        thresh_big = cv2.resize(thresh, None, fx=scale, fy=scale,
                                interpolation=cv2.INTER_NEAREST)

        # Try pytesseract if available
        if HAS_TESSERACT:
            try:
                text = pytesseract.image_to_string(
                    thresh_big,
                    config='--psm 7 -c tessedit_char_whitelist=0123456789/'
                )
                # Look for pattern like "0/330" or just "330"
                match = re.search(r'/(\d{2,4})', text)
                if match:
                    count = int(match.group(1))
                    if count in PUZZLE_GRIDS:
                        return count
                # Try just digits
                match = re.search(r'(\d{2,4})', text)
                if match:
                    count = int(match.group(1))
                    if count in PUZZLE_GRIDS:
                        return count
            except Exception:
                pass

        # Fallback: try to estimate from digit count in the thresholded image
        # Count bright regions (digits) after the "/" position
        contours, _ = cv2.findContours(thresh, cv2.RETR_EXTERNAL,
                                        cv2.CHAIN_APPROX_SIMPLE)
        # Filter for digit-sized contours
        digit_contours = []
        for cnt in contours:
            x, y, w, h = cv2.boundingRect(cnt)
            if h > 5 and 0.2 < w/h < 1.5:  # Digit-like proportions
                digit_contours.append((x, y, w, h))

        digit_contours.sort(key=lambda d: d[0])  # Left to right

        # If we found digits, try to estimate the count
        # Look for "/" separator (gap in contours or thin contour)
        if len(digit_contours) >= 3:
            # Assume format "X/YYY" - take the last 2-3 digits
            n_digits_after_slash = len(digit_contours) - 1  # rough guess
            if n_digits_after_slash == 2:
                # Could be 60, 96
                return 96  # Most common 2-digit
            elif n_digits_after_slash == 3:
                return 330  # Most common 3-digit

        return 0

    def select_puzzle(self, puzzle_index: int = 0) -> int:
        """
        From the puzzle selection screen, detect thumbnails, click the
        specified puzzle, and wait for the board to load.
        Returns detected piece count (0 if unknown).
        """
        print("[*] Detecting puzzle thumbnails...")
        thumbnails = self.detect_thumbnails()

        if not thumbnails:
            print("[!] No thumbnails found. Are you on the puzzle selection screen?")
            return 0

        print(f"[+] Found {len(thumbnails)} thumbnails:")
        for i, (tx, ty, tw, th, pc) in enumerate(thumbnails):
            count_str = f"{pc} pieces" if pc > 0 else "unknown size"
            marker = " <--" if i == puzzle_index else ""
            print(f"    [{i}] at ({tx}, {ty}) {tw}x{th} - {count_str}{marker}")

        if puzzle_index >= len(thumbnails):
            print(f"[!] Puzzle index {puzzle_index} out of range, using 0")
            puzzle_index = 0

        tx, ty, tw, th, piece_count = thumbnails[puzzle_index]
        click_x = tx + tw // 2
        click_y = ty + th // 2

        print(f"[*] Clicking puzzle {puzzle_index} at ({click_x}, {click_y})...")
        self._safe_move(click_x, click_y, duration=0.1)
        time.sleep(0.2)
        pydirectinput.click(click_x, click_y)

        # Wait for puzzle to load (board appears)
        print("[*] Waiting for puzzle to load...")
        for attempt in range(20):  # Wait up to 10 seconds
            time.sleep(0.5)
            board = self.detect_board_auto()
            if board:
                print("[+] Puzzle loaded!")
                return piece_count
            # Sometimes need a second click
            if attempt == 3:
                pydirectinput.click(click_x, click_y)

        print("[!] Puzzle didn't load after 10s. Proceeding anyway.")
        return piece_count

    # ---------- Entry Point ----------

    def run(self):
        """Main entry point."""
        print("=" * 55)
        print("  Pixel Puzzles Ultimate - Auto Solver V1")
        print("=" * 55)
        print()
        print("Controls:")
        print("  ESC / F12 - Stop the script")
        print("  PAUSE     - Pause/resume")
        print("  Move mouse to top-left screen corner = emergency stop")
        print()

        if not HAS_TESSERACT:
            print("[i] pytesseract not available - piece count OCR disabled.")
            print("    Install Tesseract OCR for auto piece count detection.")
            print()

        # Step 0: Register hotkeys and find the game window
        self._setup_hotkeys()
        self._find_game_window_or_fallback()
        print()

        # Step 1: Detect board (assumes puzzle is already open)
        print("[*] Starting in 3 seconds... Make sure the puzzle is visible!")
        for i in range(3, 0, -1):
            print(f"    {i}...")
            time.sleep(1)

        detected_pieces = 0
        self.board = self.detect_board()
        if not self.board:
            return

        print(f"[+] Board: ({self.board.x}, {self.board.y}) "
              f"{self.board.w}x{self.board.h}")
        if self._debug:
            print("[i] Debug mode ON - screenshots saved to ./debug/")
        else:
            print("[i] Debug mode OFF (use --debug to enable)")

        # Detect actual colors of board and border
        self._detect_colors()
        print()

        # Step 2: Get puzzle size
        if detected_pieces > 0 and detected_pieces in PUZZLE_GRIDS:
            print(f"[+] Auto-detected: {detected_pieces} pieces")
            self.piece_count = detected_pieces
        else:
            if detected_pieces > 0:
                print(f"[i] Detected {detected_pieces} pieces but not in known grids.")
            try:
                piece_input = input("Enter total piece count (e.g., 330): ").strip()
                self.piece_count = int(piece_input)
            except (ValueError, EOFError):
                print("[!] Invalid input. Defaulting to 330.")
                self.piece_count = 330

        if self.piece_count in PUZZLE_GRIDS:
            cols, rows = PUZZLE_GRIDS[self.piece_count]
            print(f"[+] Grid: {cols}x{rows}")
        else:
            print(f"[!] Unknown piece count {self.piece_count}.")
            try:
                cols = int(input("Enter grid columns: ").strip())
                rows = int(input("Enter grid rows: ").strip())
            except (ValueError, EOFError):
                print("[!] Invalid input. Aborting.")
                return

        self.calculate_grid(cols, rows)
        self.detect_occupied_cells()
        print()

        # Step 3: Solve
        print("[*] Solving...")
        try:
            self.solve()
        except KeyboardInterrupt:
            print("\n[!] Interrupted by user")
            try:
                pydirectinput.mouseUp()
            except Exception:
                pass
        except pyautogui.FailSafeException:
            print("\n[!] Failsafe triggered (mouse moved to corner)")
        finally:
            try:
                pydirectinput.mouseUp()
            except Exception:
                pass
            print()
            print(f"[*] Done. Placed {self.pieces_placed}/{self.piece_count} pieces.")


# ======================== MAIN ========================

if __name__ == "__main__":
    solver = PuzzleSolver()
    if "--debug" in sys.argv:
        os.makedirs("debug", exist_ok=True)
        solver._debug = True
    solver.run()
