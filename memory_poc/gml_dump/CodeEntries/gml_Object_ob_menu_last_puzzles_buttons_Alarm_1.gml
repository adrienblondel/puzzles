if (puzzle_number == 5)
{
    global.current_pack_open = 3;
    global.puzzle_number_to_play = 1;
    global.total_number_of_pieces = puzzle_total_pieces;
    global.puzzle_pieces_to_use = ob_puzzle_pieces;
    global.level_type = global.pack_3_puz_1_room_type;
    global.current_puzzle_global_puzzle_number = global.pack_3_puz_1_global_puzzple_number;
    global.puzzle_controller_to_use = global.puzzle_pack_3_in_puzzle_controller;
    global.puzzle_pack_controller_to_spawn = global.puzzle_pack_3_selection_puzzle_controller;
    room_goto(r_puzzle_room);
}
else if (puzzle_number == 6)
{
    if (steam_user_owns_dlc(global.pack_17_dlc_appid))
    {
        if (file_exists(working_directory + "\icons\packicon17.png"))
        {
            global.current_pack_open = 17;
            global.puzzle_number_to_play = 1;
            global.total_number_of_pieces = puzzle_total_pieces;
            global.puzzle_pieces_to_use = ob_puzzle_pieces;
            global.level_type = global.pack_17_puz_1_room_type;
            global.current_puzzle_global_puzzle_number = global.pack_17_puz_1_global_puzzple_number;
            global.puzzle_controller_to_use = global.puzzle_pack_17_in_puzzle_controller;
            global.puzzle_pack_controller_to_spawn = global.puzzle_pack_17_selection_puzzle_controller;
            room_goto(r_puzzle_room);
        }
    }
}
