"""
Décompileur basique du bytecode GML (GameMaker).
Désassemble les code entries du data.win pour comprendre la logique du jeu.

Usage:
    python decompile_gml.py [chemin_vers_data.win] [filtre]
    python decompile_gml.py  -- dump tout
    python decompile_gml.py "" puzzle_pieces_actual  -- filtre sur les pièces
"""

import struct
import sys
from pathlib import Path

DEFAULT_DATA_WIN = r"C:\Program Files (x86)\Steam\steamapps\common\Pixel Puzzles Ultimate\data.win"


def read_u32(data, offset):
    return struct.unpack_from("<I", data, offset)[0]

def read_i32(data, offset):
    return struct.unpack_from("<i", data, offset)[0]

def read_u16(data, offset):
    return struct.unpack_from("<H", data, offset)[0]

def read_i16(data, offset):
    return struct.unpack_from("<h", data, offset)[0]

def read_f32(data, offset):
    return struct.unpack_from("<f", data, offset)[0]

def read_f64(data, offset):
    return struct.unpack_from("<d", data, offset)[0]


# Opcodes GameMaker VM (version GMS2 / récent)
OPCODES = {
    0x00: "conv",      # Convert types
    0x01: "mul",
    0x02: "div",
    0x03: "rem",       # Remainder
    0x04: "mod",
    0x05: "add",
    0x06: "sub",
    0x07: "and",
    0x08: "or",
    0x09: "xor",
    0x0A: "neg",
    0x0B: "not",
    0x0C: "shl",
    0x0D: "shr",
    0x0F: "cmp",       # Compare (sets flags) — GMS2
    0x10: "set",       # Set <  (older)
    0x11: "slt",       # Set < (older)
    0x12: "sle",       # Set <=
    0x13: "seq",       # Set ==
    0x14: "sne",       # Set !=
    0x15: "sge",       # Set >=
    0x16: "sgt",       # Set >
    0x17: "pop",       # Pop and store
    0x41: "dup",       # Duplicate (also 0xC1 sometimes)
    0x45: "ret",       # Return
    0x69: "exit",      # Exit script
    0x82: "popz",      # Pop and discard
    0x9D: "b",         # Branch (unconditional)
    0x9E: "bt",        # Branch if true
    0x9F: "bf",        # Branch if false
    0xB7: "pushenv",   # Push environment (with)
    0xB8: "popenv",    # Pop environment
    0xBB: "pushglb",   # Push global
    0xC0: "push.i",    # Push immediate i16
    0xC1: "push.v",    # Push variable
    0xDA: "pushvar",   # Push variable (alternative)
    0xD9: "pushvar2",
    0xFF: "break",     # Break / special
}

# Types de données
DTYPES = {
    0x0: "f64",   # Double
    0x1: "f32",   # Float
    0x2: "i32",   # Int32
    0x3: "i64",   # Int64
    0x4: "bool",  # Boolean
    0x5: "var",   # Variable
    0x6: "str",   # String
    0xF: "i16",   # Int16 (short)
}

# Instance types
INSTANCE_TYPES = {
    -1: "self",
    -2: "other",
    -5: "global",
    -7: "local",
    -6: "builtin",
}


class GMLDisassembler:
    def __init__(self, data, strings_by_offset, func_by_offset=None):
        self.data = data
        self.strings = strings_by_offset
        self.funcs = func_by_offset or {}

    def resolve_str(self, ptr):
        if ptr in self.strings:
            return self.strings[ptr]
        if ptr - 4 in self.strings:
            return self.strings[ptr - 4]
        if ptr + 4 in self.strings:
            return self.strings[ptr + 4]
        return None

    def disassemble(self, code_offset, code_size, name=""):
        """Désassemble un bloc de bytecode GML."""
        lines = []
        if name:
            lines.append(f"\n{'='*60}")
            lines.append(f"  {name}")
            lines.append(f"  Size: {code_size} bytes")
            lines.append(f"{'='*60}")

        pos = code_offset
        end = code_offset + code_size

        while pos < end:
            rel = pos - code_offset
            raw = read_u32(self.data, pos)

            # GameMaker instruction format:
            # Byte 0: opcode bits (lower 7 bits of byte 3, shifted)
            # Actually the format varies by GM version. Let's try:
            # [byte0: extra/type1] [byte1: type2/compare] [byte2: extra] [byte3: opcode]
            opcode_byte = (raw >> 24) & 0xFF
            type1 = raw & 0x0F
            type2 = (raw >> 4) & 0x0F
            extra = (raw >> 8) & 0xFFFF

            op_name = OPCODES.get(opcode_byte, f"unk_{opcode_byte:02X}")
            t1_name = DTYPES.get(type1, f"t{type1}")
            t2_name = DTYPES.get(type2, f"t{type2}")

            detail = ""

            # Instructions qui ont des données supplémentaires après
            if opcode_byte in (0x9D, 0x9E, 0x9F):
                # Branch: offset est dans les 3 bytes inférieurs (signé)
                branch_offset = raw & 0x00FFFFFF
                if branch_offset & 0x800000:
                    branch_offset -= 0x1000000
                target = rel + branch_offset * 4
                detail = f" -> @{target}"
                pos += 4

            elif opcode_byte == 0xC0:
                # Push immediate i16
                val = raw & 0xFFFF
                if val & 0x8000:
                    val -= 0x10000
                detail = f" {val}"
                pos += 4

            elif opcode_byte in (0x17, 0xC1, 0xDA, 0xD9, 0xBB):
                # Pop/Push variable: next u32 is variable reference
                # The variable name can be resolved from the occurrence table
                inst_type = extra
                if inst_type & 0x8000:
                    inst_type = inst_type - 0x10000
                inst_name = INSTANCE_TYPES.get(inst_type, f"inst({inst_type})")

                # Read the next u32 which contains the variable reference
                if pos + 4 < end:
                    var_ref = read_u32(self.data, pos + 4)
                    # Try to resolve variable name from the patch location
                    # The var_ref typically encodes: [var_id:20bits][instance:12bits]
                    var_name = self.resolve_str(var_ref)
                    if var_name:
                        detail = f" {inst_name}.{var_name}"
                    else:
                        var_id = var_ref & 0x000FFFFF
                        detail = f" {inst_name}[{var_id}]"
                pos += 8

            elif opcode_byte == 0xB7 or opcode_byte == 0xB8:
                # pushenv/popenv
                branch_offset = raw & 0x00FFFFFF
                if branch_offset & 0x800000:
                    branch_offset -= 0x1000000
                target = rel + branch_offset * 4
                detail = f" -> @{target}"
                pos += 4

            elif opcode_byte == 0x41:
                # dup
                detail = f" ({extra})"
                pos += 4

            elif opcode_byte == 0x0F:
                # cmp: comparison type in type2
                cmp_ops = {1: "<", 2: "<=", 3: "==", 4: "!=", 5: ">=", 6: ">"}
                cmp_name = cmp_ops.get(type2, f"cmp{type2}")
                detail = f" {t1_name} {cmp_name}"
                pos += 4

            elif opcode_byte <= 0x0D:
                # Arithmetic/logic: two types
                detail = f" {t1_name},{t2_name}"
                pos += 4

            elif opcode_byte in (0x0A, 0x0B):
                # Unary
                detail = f" {t1_name}"
                pos += 4

            elif opcode_byte == 0x00:
                # conv
                detail = f" {t1_name}->{t2_name}"
                pos += 4

            else:
                pos += 4

            # Push constants avec données inline
            # Certains push ont des données de 8 bytes (double)
            if opcode_byte == 0xC1 and type1 == 0x0:
                # Push double constant — next 8 bytes
                pass  # Already handled above

            line = f"  @{rel:5d}  {raw:08X}  {op_name:<10s}{detail}"
            lines.append(line)

            # Safety: si on n'avance pas, forcer
            if pos <= code_offset + rel:
                pos = code_offset + rel + 4

        return "\n".join(lines)


def main():
    filepath = sys.argv[1] if len(sys.argv) > 1 and sys.argv[1] else DEFAULT_DATA_WIN
    name_filter = sys.argv[2] if len(sys.argv) > 2 else "puzzle_pieces_actual"

    if not Path(filepath).exists():
        print(f"Fichier non trouvé: {filepath}")
        sys.exit(1)

    with open(filepath, "rb") as f:
        data = f.read()

    # Parse chunks
    chunks = {}
    offset = 8
    while offset < len(data):
        cn = data[offset:offset+4].decode("ascii", errors="replace")
        cs = struct.unpack_from("<I", data, offset + 4)[0]
        chunks[cn] = (offset + 8, cs)
        offset += 8 + cs

    # Parse strings
    str_start, str_size = chunks["STRG"]
    str_count = read_u32(data, str_start)
    strings_by_offset = {}
    for i in range(str_count):
        ptr = read_u32(data, str_start + 4 + i * 4)
        slen = read_u32(data, ptr)
        s = data[ptr + 4 : ptr + 4 + slen].decode("utf-8", errors="replace")
        strings_by_offset[ptr] = s
        strings_by_offset[ptr + 4] = s

    # Parse code entries
    code_start, code_size = chunks["CODE"]
    code_count = read_u32(data, code_start)

    disasm = GMLDisassembler(data, strings_by_offset)

    for i in range(code_count):
        ptr = read_u32(data, code_start + 4 + i * 4)
        name_ptr = read_u32(data, ptr)
        entry_code_size = read_u32(data, ptr + 4)

        name = disasm.resolve_str(name_ptr) or f"code_{i}"

        if name_filter and name_filter not in name.lower():
            continue

        # Le bytecode commence après le header de l'entry
        # Format: [name_ptr:4][size:4][locals_count:2][args_count:2][...][bytecode]
        # Le offset du bytecode est typiquement à ptr + 16 ou ptr + 20
        # Mais dans certaines versions, la taille inclut le header
        # Essayons: le bytecode est à l'offset indiqué par un champ
        locals_and_args = read_u32(data, ptr + 8)
        local_count = locals_and_args & 0xFFFF
        # Le bytecode commence souvent directement après un petit header
        # Dans GMS2: [name_ptr][code_length][local_count:2][arg_count:2][flags?:4][offset_to_code:4]
        # Simplifions: on va chercher le début du bytecode
        # Le code_size est la taille du bytecode, et il est stocké juste après le header

        # Approche pragmatique: le code entry pointe vers une structure,
        # et le bytecode est à un offset relatif.
        # Essayons offset ptr+16 comme début du bytecode
        bytecode_offset = ptr + 16
        if bytecode_offset + entry_code_size > len(data):
            bytecode_offset = ptr + 12

        result = disasm.disassemble(bytecode_offset, min(entry_code_size, 4096), name)
        print(result)
        if entry_code_size > 4096:
            print(f"  ... (tronqué, {entry_code_size} bytes total)")


if __name__ == "__main__":
    main()
