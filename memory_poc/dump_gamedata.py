"""
Parser du fichier data.win (GameMaker IFF/FORM format).
Extrait les noms d'objets, variables, fonctions et chaînes du jeu
pour comprendre la logique interne de Pixel Puzzles Ultimate.

Usage:
    python dump_gamedata.py [chemin_vers_data.win]
"""

import struct
import sys
from pathlib import Path

DEFAULT_DATA_WIN = r"C:\Program Files (x86)\Steam\steamapps\common\Pixel Puzzles Ultimate\data.win"


def read_u32(data, offset):
    return struct.unpack_from("<I", data, offset)[0]


def read_i32(data, offset):
    return struct.unpack_from("<i", data, offset)[0]


class DataWinParser:
    def __init__(self, filepath):
        self.filepath = Path(filepath)
        with open(self.filepath, "rb") as f:
            self.data = f.read()
        self.chunks = {}
        self.strings = []          # Liste indexée
        self.str_by_offset = {}    # offset -> string (pour résoudre les pointeurs)
        self._parse_chunks()

    def _parse_chunks(self):
        """Parse le header FORM et identifie tous les chunks."""
        magic = self.data[0:4]
        if magic != b"FORM":
            raise ValueError(f"Pas un fichier FORM valide (magic: {magic})")

        form_size = read_u32(self.data, 4)
        print(f"FORM size: {form_size:,} bytes")

        offset = 8
        while offset < len(self.data):
            chunk_name = self.data[offset : offset + 4].decode("ascii", errors="replace")
            chunk_size = read_u32(self.data, offset + 4)
            self.chunks[chunk_name] = (offset + 8, chunk_size)
            print(f"  Chunk: {chunk_name}  offset=0x{offset:08X}  size={chunk_size:,}")
            offset += 8 + chunk_size

    def _resolve_str(self, name_ptr):
        """Résout un pointeur vers une chaîne STRG.
        GameMaker stocke des pointeurs vers [u32 len][bytes][null].
        Le pointeur pointe vers le début des bytes (après le u32 len),
        donc on cherche à ptr et ptr-4."""
        if name_ptr in self.str_by_offset:
            return self.str_by_offset[name_ptr]
        if name_ptr - 4 in self.str_by_offset:
            return self.str_by_offset[name_ptr - 4]
        # Fallback: lire directement comme null-terminated string
        try:
            end = self.data.index(b"\x00", name_ptr)
            return self.data[name_ptr:end].decode("utf-8", errors="replace")
        except (ValueError, IndexError):
            return f"<ptr:0x{name_ptr:X}>"

    def parse_strings(self):
        """Parse le chunk STRG — toutes les chaînes du jeu."""
        if "STRG" not in self.chunks:
            print("Chunk STRG non trouvé!")
            return

        start, size = self.chunks["STRG"]
        count = read_u32(self.data, start)
        print(f"\n=== STRINGS ({count} entrées) ===")

        for i in range(count):
            ptr = read_u32(self.data, start + 4 + i * 4)
            str_len = read_u32(self.data, ptr)
            s = self.data[ptr + 4 : ptr + 4 + str_len].decode("utf-8", errors="replace")
            self.strings.append(s)
            # Map both the length-prefixed offset and the string-data offset
            self.str_by_offset[ptr] = s      # pointe vers le u32 len
            self.str_by_offset[ptr + 4] = s  # pointe vers les bytes

        print(f"  Total: {len(self.strings)} chaînes")

    def parse_objects(self):
        """Parse le chunk OBJT — objets du jeu."""
        if "OBJT" not in self.chunks:
            print("Chunk OBJT non trouvé!")
            return []

        start, size = self.chunks["OBJT"]
        count = read_u32(self.data, start)
        print(f"\n=== OBJECTS ({count} entrées) ===")

        objects = []
        for i in range(count):
            ptr = read_u32(self.data, start + 4 + i * 4)
            name_ptr = read_u32(self.data, ptr)
            sprite_idx = read_i32(self.data, ptr + 4)
            parent_idx = read_i32(self.data, ptr + 8)

            name = self._resolve_str(name_ptr)
            objects.append({
                "index": i,
                "name": name,
                "sprite_idx": sprite_idx,
                "parent_idx": parent_idx,
            })

        return objects

    def parse_variables(self):
        """Parse le chunk VARI — noms de variables."""
        if "VARI" not in self.chunks:
            print("Chunk VARI non trouvé!")
            return []

        start, size = self.chunks["VARI"]
        print(f"\n=== VARIABLES (chunk size: {size}) ===")

        if size < 12:
            return []

        # Header: 3 x u32 metadata
        val1 = read_u32(self.data, start)
        val2 = read_u32(self.data, start + 4)
        val3 = read_u32(self.data, start + 8)
        print(f"  Header: {val1}, {val2}, {val3}")

        variables = []
        offset = start + 12
        entry_size = 20  # name_ptr(u32) + instance_type(i32) + var_id(u32) + occ_count(u32) + first_offset(u32)

        while offset + entry_size <= start + size:
            name_ptr = read_u32(self.data, offset)
            instance_type = read_i32(self.data, offset + 4)
            var_id = read_u32(self.data, offset + 8)
            occ_count = read_u32(self.data, offset + 12)

            name = self._resolve_str(name_ptr)
            # Sanity check: si le nom ressemble à du garbage, on arrête
            if not name or name.startswith("<ptr:") or not name.isprintable():
                break

            variables.append({
                "name": name,
                "instance_type": instance_type,
                "var_id": var_id,
                "occurrences": occ_count,
            })
            offset += entry_size

        return variables

    def parse_functions(self):
        """Parse le chunk FUNC — fonctions/scripts."""
        if "FUNC" not in self.chunks:
            print("Chunk FUNC non trouvé!")
            return []

        start, size = self.chunks["FUNC"]
        count = read_u32(self.data, start)
        print(f"\n=== FUNCTIONS ({count} entrées) ===")

        functions = []
        offset = start + 4
        entry_size = 12  # name_ptr(u32) + occ_count(u32) + first_offset(u32)

        for i in range(count):
            if offset + entry_size > start + size:
                break
            name_ptr = read_u32(self.data, offset)
            occ_count = read_u32(self.data, offset + 4)

            name = self._resolve_str(name_ptr)
            functions.append({"name": name, "occurrences": occ_count})
            offset += entry_size

        return functions

    def parse_code_entries(self):
        """Parse le chunk CODE — noms des blocs de code."""
        if "CODE" not in self.chunks:
            print("Chunk CODE non trouvé!")
            return []

        start, size = self.chunks["CODE"]
        count = read_u32(self.data, start)
        print(f"\n=== CODE ENTRIES ({count} entrées) ===")

        entries = []
        for i in range(count):
            ptr = read_u32(self.data, start + 4 + i * 4)
            name_ptr = read_u32(self.data, ptr)
            code_size = read_u32(self.data, ptr + 4)

            name = self._resolve_str(name_ptr)
            entries.append({"name": name, "code_size": code_size})

        return entries


def filter_related(items, name_key="name"):
    """Filtre les éléments liés aux puzzles."""
    keywords = [
        "piece", "puzzle", "snap", "place", "grid", "board", "drag",
        "drop", "slot", "tile", "jigsaw", "position", "target",
        "match", "lock", "correct", "solve", "cell", "hint",
    ]
    return [item for item in items if any(kw in item[name_key].lower() for kw in keywords)]


def main():
    filepath = sys.argv[1] if len(sys.argv) > 1 else DEFAULT_DATA_WIN

    if not Path(filepath).exists():
        print(f"Fichier non trouvé: {filepath}")
        sys.exit(1)

    print(f"Parsing: {filepath}")
    print(f"Taille: {Path(filepath).stat().st_size:,} bytes\n")

    parser = DataWinParser(filepath)

    # 1. Strings
    parser.parse_strings()

    puzzle_strings = [s for s in parser.strings if any(
        kw in s.lower() for kw in ["piece", "puzzle", "snap", "place", "grid", "board",
                                      "drag", "drop", "slot", "tile", "jigsaw", "solve",
                                      "target", "lock", "correct", "cell", "hint"]
    )]
    print(f"\n--- Chaînes liées aux puzzles ({len(puzzle_strings)}) ---")
    for s in sorted(set(puzzle_strings))[:80]:
        print(f"  {s}")
    if len(puzzle_strings) > 80:
        print(f"  ... et {len(puzzle_strings) - 80} de plus")

    # 2. Objects
    objects = parser.parse_objects()
    print(f"  Total: {len(objects)} objets")

    puzzle_objects = filter_related(objects)
    print(f"\n--- Objets liés aux puzzles ({len(puzzle_objects)}) ---")
    for obj in puzzle_objects:
        print(f"  [{obj['index']:3d}] {obj['name']}  (sprite={obj['sprite_idx']}, parent={obj['parent_idx']})")

    print(f"\n--- Tous les objets ---")
    for obj in objects:
        print(f"  [{obj['index']:3d}] {obj['name']}")

    # 3. Variables
    variables = parser.parse_variables()
    print(f"  Total: {len(variables)} variables")

    puzzle_vars = filter_related(variables)
    print(f"\n--- Variables liées aux puzzles ({len(puzzle_vars)}) ---")
    for var in puzzle_vars:
        print(f"  {var['name']}  (type={var['instance_type']}, id={var['var_id']}, occ={var['occurrences']})")

    # 4. Functions
    functions = parser.parse_functions()
    print(f"  Total: {len(functions)} fonctions")

    puzzle_funcs = filter_related(functions)
    print(f"\n--- Fonctions liées aux puzzles ({len(puzzle_funcs)}) ---")
    for func in puzzle_funcs:
        print(f"  {func['name']}  (occ={func['occurrences']})")

    # 5. Code entries
    code_entries = parser.parse_code_entries()
    print(f"  Total: {len(code_entries)} code entries")

    puzzle_code = filter_related(code_entries)
    print(f"\n--- Code entries liées aux puzzles ({len(puzzle_code)}) ---")
    for entry in puzzle_code:
        print(f"  {entry['name']}  (size={entry['code_size']})")

    # Dump complet des variables
    print(f"\n--- Toutes les variables ({len(variables)}) ---")
    for var in variables:
        print(f"  {var['name']}  (type={var['instance_type']}, id={var['var_id']})")


if __name__ == "__main__":
    main()
