"""
POC lecture mémoire de Pixel Puzzles Ultimate.
Scanne la mémoire du process GameMaker pour trouver les instances d'objets puzzle.

GameMaker stocke les instances dans une liste interne. Chaque instance contient:
- object_index (quel objet GM)
- x, y (position actuelle, float64)
- Des variables custom (piece_state, clearXtarget, clearYtarget, etc.)

Usage:
    python memory_reader.py              # Scan automatique
    python memory_reader.py --scan-xy    # Scan pour une coordonnée X/Y connue
    python memory_reader.py --dump       # Dump les régions mémoire intéressantes
"""

import sys
import struct
import ctypes
import ctypes.wintypes as wt

try:
    import pymem
    import pymem.process
except ImportError:
    print("pymem non installé. Exécuter: pip install pymem")
    sys.exit(1)

PROCESS_NAME = "Pixel Puzzles Ultimate.exe"

# Index de l'objet ob_puzzle_pieces_actual dans le data.win
OBJ_PUZZLE_PIECE_INDEX = 24
OBJ_ROOM_CONTROLLER_INDEX = 23


# --- VirtualQueryEx via ctypes (64-bit host, WoW64 target) ---

class MEMORY_BASIC_INFORMATION64(ctypes.Structure):
    _fields_ = [
        ("BaseAddress", ctypes.c_uint64),
        ("AllocationBase", ctypes.c_uint64),
        ("AllocationProtect", wt.DWORD),
        ("PartitionId", wt.WORD),
        ("RegionSize", ctypes.c_uint64),
        ("State", wt.DWORD),
        ("Protect", wt.DWORD),
        ("Type", wt.DWORD),
    ]


def enum_regions(process_handle, max_addr=0x7FFF0000):
    """Enumère les régions mémoire d'un process WoW64."""
    VirtualQueryEx = ctypes.windll.kernel32.VirtualQueryEx
    mbi = MEMORY_BASIC_INFORMATION64()
    mbi_size = ctypes.sizeof(mbi)
    address = 0

    while address < max_addr:
        result = VirtualQueryEx(
            ctypes.c_void_p(process_handle), ctypes.c_void_p(address),
            ctypes.byref(mbi), mbi_size
        )
        if result == 0:
            break

        yield mbi.BaseAddress, mbi.RegionSize, mbi.State, mbi.Protect

        next_addr = mbi.BaseAddress + mbi.RegionSize
        if next_addr <= address:
            address += 0x1000
        else:
            address = next_addr


def attach_to_game():
    """S'attache au process du jeu."""
    try:
        pm = pymem.Pymem(PROCESS_NAME)
        print(f"Attaché au process: PID={pm.process_id}")
        print(f"  Base address: 0x{pm.base_address:08X}")
        print(f"  WoW64: {pm.is_WoW64}")
        return pm
    except pymem.exception.ProcessNotFound:
        print(f"Process '{PROCESS_NAME}' non trouvé. Le jeu est-il lancé?")
        return None
    except pymem.exception.CouldNotOpenProcess:
        print(f"Impossible d'ouvrir le process. Exécuter en admin?")
        return None


def _scan_regions(pm, callback, readable_only=True):
    """Itère les régions mémoire committed et appelle callback(data, base_addr)."""
    MEM_COMMIT = 0x1000
    READABLE = {0x02, 0x04, 0x08, 0x20, 0x40, 0x80, 0x104}

    for base, size, state, protect in enum_regions(pm.process_handle):
        if state != MEM_COMMIT:
            continue
        if readable_only and protect not in READABLE:
            continue
        if size > 50_000_000:  # Skip huge regions
            continue
        try:
            data = pm.read_bytes(base, size)
            callback(data, base)
        except Exception:
            pass


def scan_for_float64(pm, value, tolerance=0.5):
    """Scanne la mémoire pour une valeur float64 (double)."""
    print(f"\nScan pour float64 ~{value} (tolérance: ±{tolerance})")
    low, high = value - tolerance, value + tolerance
    results = []

    def cb(data, base):
        for offset in range(0, len(data) - 8, 4):
            val = struct.unpack_from("<d", data, offset)[0]
            if low <= val <= high:
                addr = base + offset
                results.append((addr, val))
                if len(results) <= 20:
                    print(f"  Trouvé: 0x{addr:08X} = {val:.6f}")

    _scan_regions(pm, cb)
    print(f"  Total: {len(results)} résultats")
    return results


def scan_for_i32(pm, value):
    """Scanne la mémoire pour une valeur int32."""
    print(f"\nScan pour int32 = {value}")
    target_bytes = struct.pack("<i", value)
    results = []

    def cb(data, base):
        pos = 0
        while True:
            idx = data.find(target_bytes, pos)
            if idx == -1:
                break
            if idx % 4 == 0:
                addr = base + idx
                results.append(addr)
                if len(results) <= 30:
                    print(f"  Trouvé: 0x{addr:08X}")
            pos = idx + 4

    _scan_regions(pm, cb)
    print(f"  Total: {len(results)} résultats")
    return results


def scan_for_string(pm, text):
    """Scanne la mémoire pour une chaîne de texte."""
    print(f"\nScan pour string: '{text}'")
    target = text.encode("utf-8")
    results = []

    def cb(data, base):
        pos = 0
        while True:
            idx = data.find(target, pos)
            if idx == -1:
                break
            addr = base + idx
            results.append(addr)
            if len(results) <= 20:
                ctx_start = max(0, idx - 8)
                ctx_end = min(len(data), idx + len(target) + 16)
                ctx = data[ctx_start:ctx_end]
                print(f"  Trouvé: 0x{addr:08X}  ctx={ctx!r}")
            pos = idx + len(target)

    _scan_regions(pm, cb)
    print(f"  Total: {len(results)} résultats")
    return results


def dump_region(pm, address, size=256):
    """Dump une région mémoire en hex + ascii."""
    try:
        data = pm.read_bytes(address, size)
    except Exception as e:
        print(f"  Impossible de lire 0x{address:08X}: {e}")
        return

    for i in range(0, len(data), 16):
        hex_part = " ".join(f"{b:02X}" for b in data[i:i+16])
        ascii_part = "".join(chr(b) if 32 <= b < 127 else "." for b in data[i:i+16])
        print(f"  0x{address+i:08X}  {hex_part:<48s}  {ascii_part}")


def explore_gm_instance(pm, addr):
    """Essaie de lire une instance GameMaker à une adresse donnée.
    Structure typique d'une instance GM (varie selon la version):
    +0x00: vptr or id
    +0x04: object_index
    +0x08: sprite_index
    +0x0C: ? (depth, visible, etc.)
    +0x10-0x30: x, y (float64), xstart, ystart, etc.

    Les offsets exacts dépendent de la version du runner."""
    print(f"\n--- Instance @ 0x{addr:08X} ---")
    try:
        data = pm.read_bytes(addr, 256)
    except Exception:
        print("  Lecture impossible")
        return

    # Dump raw
    for i in range(0, min(128, len(data)), 4):
        i32 = struct.unpack_from("<i", data, i)[0]
        u32 = struct.unpack_from("<I", data, i)[0]
        f64 = struct.unpack_from("<d", data, i)[0] if i + 8 <= len(data) else 0

        # Est-ce que ça ressemble à un float raisonnable pour une position écran?
        is_coord = isinstance(f64, float) and 0 < abs(f64) < 10000

        extra = ""
        if is_coord:
            extra = f"  (f64={f64:.2f})"
        if 0 < u32 < 1000:
            extra += f"  (small int={u32})"

        print(f"  +0x{i:02X}: i32={i32:10d}  u32=0x{u32:08X}{extra}")


def interactive_mode(pm):
    """Mode interactif pour explorer la mémoire."""
    print("\n" + "="*60)
    print("  Mode interactif")
    print("  Commandes:")
    print("    s <texte>         — Chercher une chaîne")
    print("    i <valeur>        — Chercher un int32")
    print("    f <valeur>        — Chercher un float64")
    print("    d <addr> [taille] — Dump hex à une adresse")
    print("    g <addr>          — Explorer comme instance GM")
    print("    q                 — Quitter")
    print("="*60)

    while True:
        try:
            cmd = input("\n> ").strip()
        except (EOFError, KeyboardInterrupt):
            break

        if not cmd:
            continue

        parts = cmd.split(maxsplit=1)
        op = parts[0].lower()

        if op == "q":
            break
        elif op == "s" and len(parts) > 1:
            scan_for_string(pm, parts[1])
        elif op == "i" and len(parts) > 1:
            scan_for_i32(pm, int(parts[1]))
        elif op == "f" and len(parts) > 1:
            scan_for_float64(pm, float(parts[1]))
        elif op == "d" and len(parts) > 1:
            args = parts[1].split()
            addr = int(args[0], 16) if args[0].startswith("0x") else int(args[0])
            size = int(args[1]) if len(args) > 1 else 256
            dump_region(pm, addr, size)
        elif op == "g" and len(parts) > 1:
            addr = int(parts[1], 16) if parts[1].startswith("0x") else int(parts[1])
            explore_gm_instance(pm, addr)
        else:
            print("Commande non reconnue")


def auto_scan(pm):
    """Scan automatique : cherche des indices du jeu en mémoire."""
    print("\n" + "="*60)
    print("  Scan automatique")
    print("="*60)

    # 1. Chercher la chaîne "ob_puzzle_pieces_actual" en mémoire
    # Elle devrait exister dans les données chargées du data.win
    results = scan_for_string(pm, "ob_puzzle_pieces_actual")

    # 2. Chercher "clearXtarget" — variable critique pour le snap
    results_target = scan_for_string(pm, "clearXtarget")

    # 3. Chercher "piece_state" — état de la pièce
    results_state = scan_for_string(pm, "piece_state")

    # 4. Chercher "pieces_placed" — compteur
    results_placed = scan_for_string(pm, "pieces_placed")

    # 5. Chercher "is_being_dragged"
    results_drag = scan_for_string(pm, "is_being_dragged")

    print("\n" + "="*60)
    print("  Résumé du scan")
    print("="*60)
    print(f"  'ob_puzzle_pieces_actual': {len(results)} occurrences")
    print(f"  'clearXtarget':           {len(results_target)} occurrences")
    print(f"  'piece_state':            {len(results_state)} occurrences")
    print(f"  'pieces_placed':          {len(results_placed)} occurrences")
    print(f"  'is_being_dragged':       {len(results_drag)} occurrences")

    # Dump context around first hit for object name
    if results:
        print(f"\n--- Contexte autour de 'ob_puzzle_pieces_actual' @ 0x{results[0]:08X} ---")
        dump_region(pm, results[0] - 32, 128)

    if results_target:
        print(f"\n--- Contexte autour de 'clearXtarget' @ 0x{results_target[0]:08X} ---")
        dump_region(pm, results_target[0] - 32, 128)


def main():
    pm = attach_to_game()
    if pm is None:
        sys.exit(1)

    # Infos sur les modules chargés
    print("\nModules chargés:")
    for mod in pymem.process.enum_process_module(pm.process_handle):
        name = mod.name
        if any(kw in name.lower() for kw in ["pixel", "steam", "d3d", "runner"]):
            print(f"  {name}: base=0x{mod.lpBaseOfDll:08X} size={mod.SizeOfImage:,}")

    if "--interactive" in sys.argv or "-i" in sys.argv:
        interactive_mode(pm)
    elif "--scan-xy" in sys.argv:
        # L'utilisateur fournit une coordonnée à chercher
        idx = sys.argv.index("--scan-xy")
        if idx + 1 < len(sys.argv):
            val = float(sys.argv[idx + 1])
            scan_for_float64(pm, val)
        else:
            print("Usage: --scan-xy <valeur>")
    else:
        auto_scan(pm)

    pm.close_process()
    print("\nProcess fermé.")


if __name__ == "__main__":
    main()
