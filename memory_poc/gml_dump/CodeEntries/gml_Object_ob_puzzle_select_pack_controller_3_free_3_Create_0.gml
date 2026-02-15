global.puzzle_preview_sprite_index = sp_dummy_invisable_image;
global.puzzle_1_puzzle_preview_sprite_index = sprite_add(working_directory + "\puzpreview\puzzles\bearsredkoala.png", 0, false, false, 0, 0);
global.puzzle_2_puzzle_preview_sprite_index = sprite_add(working_directory + "\puzpreview\puzzles\bearsgrizzlies.png", 0, false, false, 0, 0);
global.puzzle_3_puzzle_preview_sprite_index = sprite_add(working_directory + "\puzpreview\puzzles\bearsredpanda.png", 0, false, false, 0, 0);
global.puzzle_4_puzzle_preview_sprite_index = sprite_add(working_directory + "\puzpreview\puzzles\bearsblackbear.png", 0, false, false, 0, 0);
global.puzzle_5_puzzle_preview_sprite_index = 0;
global.puzzle_6_puzzle_preview_sprite_index = 0;
global.puzzle_7_puzzle_preview_sprite_index = 0;
global.puzzle_8_puzzle_preview_sprite_index = 0;
global.puzzle_9_puzzle_preview_sprite_index = 0;
global.puzzle_10_puzzle_preview_sprite_index = 0;
global.puzzle_11_puzzle_preview_sprite_index = 0;
global.puzzle_12_puzzle_preview_sprite_index = 0;
global.puzzle_13_puzzle_preview_sprite_index = 0;
global.puzzle_14_puzzle_preview_sprite_index = 0;
global.puzzle_15_puzzle_preview_sprite_index = 0;
global.puzzle_16_puzzle_preview_sprite_index = 0;
global.puzzle_17_puzzle_preview_sprite_index = 0;
global.puzzle_18_puzzle_preview_sprite_index = 0;
global.puzzle_19_puzzle_preview_sprite_index = 0;
global.puzzle_20_puzzle_preview_sprite_index = 0;
global.puzzle_21_puzzle_preview_sprite_index = 0;
global.puzzle_22_puzzle_preview_sprite_index = 0;
global.puzzle_23_puzzle_preview_sprite_index = 0;
global.puzzle_24_puzzle_preview_sprite_index = 0;
global.puzzle_25_puzzle_preview_sprite_index = 0;
global.current_pack_open_number_of_puzzles_complete = global.puzzle_pack_3_puzzle_1_complete + global.puzzle_pack_3_puzzle_2_complete + global.puzzle_pack_3_puzzle_3_complete + global.puzzle_pack_3_puzzle_4_complete;
global.current_pack_open_number_of_puzzles = global.puzzle_pack_3_number_of_puzzles;
if (global.current_pack_open_number_of_puzzles_complete == global.current_pack_open_number_of_puzzles)
{
    if (!steam_get_achievement("complete_pack_3"))
    {
        steam_set_achievement("complete_pack_3");
        var new_packs_beat = steam_get_stat_int("total_packs_complete") + 1;
        steam_set_stat_int("total_packs_complete", new_packs_beat);
        if (global.dev_tools_are_active == 0)
        {
            steam_upload_score("number_of_packs_complete", new_packs_beat);
        }
    }
}
can_keep_checking = 0;
pack_is_owned = 0;
alarm[0] = 2;
ob_menu_controller.alarm[4] = 1;
pack_is_not_owned_display_alpha = 0;
pack_is_not_owned_backing_alpha = 0;
buy_button_size = 1;
global.current_pack_open = 3;
global.puzzle_controller_to_use = global.puzzle_pack_3_in_puzzle_controller;
alarm[2] = 1;
global.puzzle_pack_sprite_index = global.puzzle_pack_3_sprite_index;
global.current_pack_open_colour_set = global.puzzle_pack_3_colour_set;
global.current_pack_open_dead_colour_set = global.puzzle_pack_3_dead_colour_set;
global.puzzle_1_title = global.pack_3_puz_1_title;
global.puzzle_1_image_index = global.pack_3_puz_1_image_index;
global.puzzle_1_number_of_pieces = global.pack_3_puz_1_number_of_pieces;
global.puzzle_1_room_type = global.pack_3_puz_1_room_type;
global.puzzle_1_puzzle_preview_level_type = global.pack_3_puz_1_room_type;
global.puzzle_1_puzzle_global_puzzple_number = global.pack_3_puz_1_global_puzzple_number;
global.puzzle_2_title = global.pack_3_puz_2_title;
global.puzzle_2_image_index = global.pack_3_puz_2_image_index;
global.puzzle_2_number_of_pieces = global.pack_3_puz_2_number_of_pieces;
global.puzzle_2_room_type = global.pack_3_puz_2_room_type;
global.puzzle_2_puzzle_preview_level_type = global.pack_3_puz_2_room_type;
global.puzzle_2_puzzle_global_puzzple_number = global.pack_3_puz_2_global_puzzple_number;
global.puzzle_3_title = global.pack_3_puz_3_title;
global.puzzle_3_image_index = global.pack_3_puz_3_image_index;
global.puzzle_3_number_of_pieces = global.pack_3_puz_3_number_of_pieces;
global.puzzle_3_room_type = global.pack_3_puz_3_room_type;
global.puzzle_3_puzzle_preview_level_type = global.pack_3_puz_3_room_type;
global.puzzle_3_puzzle_global_puzzple_number = global.pack_3_puz_3_global_puzzple_number;
global.puzzle_4_title = global.pack_3_puz_4_title;
global.puzzle_4_image_index = global.pack_3_puz_4_image_index;
global.puzzle_4_number_of_pieces = global.pack_3_puz_4_number_of_pieces;
global.puzzle_4_room_type = global.pack_3_puz_4_room_type;
global.puzzle_4_puzzle_preview_level_type = global.pack_3_puz_4_room_type;
global.puzzle_4_puzzle_global_puzzple_number = global.pack_3_puz_4_global_puzzple_number;
ini_open("ppu.ini");
global.puzzle_1_is_complete = global.puzzle_pack_3_puzzle_1_complete;
var p3x1b0 = ini_read_string("p3x1", "p3x1b0", 0);
global.puzzle_1_pieces_placed = real(base64_decode(p3x1b0));
global.puzzle_2_is_complete = global.puzzle_pack_3_puzzle_2_complete;
var p3x2b0 = ini_read_string("p3x2", "p3x2b0", 0);
global.puzzle_2_pieces_placed = real(base64_decode(p3x2b0));
global.puzzle_3_is_complete = global.puzzle_pack_3_puzzle_3_complete;
var p3x3b0 = ini_read_string("p3x3", "p3x3b0", 0);
global.puzzle_3_pieces_placed = real(base64_decode(p3x3b0));
global.puzzle_4_is_complete = global.puzzle_pack_3_puzzle_4_complete;
var p3x4b0 = ini_read_string("p3x4", "p3x4b0", 0);
global.puzzle_4_pieces_placed = real(base64_decode(p3x4b0));
ini_close();
