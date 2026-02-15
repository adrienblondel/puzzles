"""
Quick launcher for Pixel Puzzles Ultimate Auto Solver.

Usage:
    python run_solver.py              # Interactive mode (prompts for everything)
    python run_solver.py --pieces 330 # Skip piece count prompt
    python run_solver.py --debug      # Save debug screenshots to ./debug/

Before first run:
    pip install -r requirements.txt
"""

import argparse
import sys
import os


def check_dependencies():
    """Check that all required packages are installed."""
    missing = []
    for pkg, import_name in [
        ("pyautogui", "pyautogui"),
        ("pydirectinput", "pydirectinput"),
        ("mss", "mss"),
        ("numpy", "numpy"),
        ("Pillow", "PIL"),
        ("opencv-python", "cv2"),
        ("keyboard", "keyboard"),
    ]:
        try:
            __import__(import_name)
        except ImportError:
            missing.append(pkg)

    if missing:
        print("[!] Missing packages: " + ", ".join(missing))
        print("    Run: pip install -r requirements.txt")
        return False
    return True


def main():
    parser = argparse.ArgumentParser(description="Pixel Puzzles Ultimate Auto Solver")
    parser.add_argument("--pieces", type=int, help="Total piece count (e.g., 330)")
    parser.add_argument("--cols", type=int, help="Grid columns (auto if --pieces is known)")
    parser.add_argument("--rows", type=int, help="Grid rows (auto if --pieces is known)")
    parser.add_argument("--debug", action="store_true", help="Save debug screenshots")
    parser.add_argument("--delay", type=float, default=None,
                        help="Override action delay in seconds (default 0.08)")
    args = parser.parse_args()

    if not check_dependencies():
        sys.exit(1)

    # Import after dependency check
    import puzzle_solver as ps

    # Apply overrides
    if args.delay is not None:
        ps.ACTION_DELAY = args.delay
        ps.CLICK_DELAY = args.delay
        print(f"[*] Action delay set to {args.delay}s")

    solver = ps.PuzzleSolver()

    # Debug mode: save screenshots
    if args.debug:
        os.makedirs("debug", exist_ok=True)
        solver._debug = True
    else:
        solver._debug = False

    # Override piece count if provided
    if args.pieces:
        solver._preset_pieces = args.pieces
    if args.cols and args.rows:
        solver._preset_grid = (args.cols, args.rows)

    solver.run()


if __name__ == "__main__":
    main()
