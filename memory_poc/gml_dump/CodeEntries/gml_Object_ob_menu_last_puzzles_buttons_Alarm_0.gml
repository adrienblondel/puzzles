ini_open("ppu.ini");
if (puzzle_number == 1)
{
    puzzle_total_pieces = global.pack_4_puz_1_number_of_pieces;
    var p4x1b0 = ini_read_string("p4x1", "p4x1b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p4x1b0));
}
ini_close();
