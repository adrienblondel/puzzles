if (place_meeting(x, y, ob_menu_cursor))
{
    if (mouse_check_button_pressed(mb_left) || gamepad_button_check_pressed(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (image_alpha == 1)
            {
                if (ob_menu_cursor.y > 300)
                {
                    if (global.theme_chooser_is_open == 0)
                    {
                        if (puzzle_number > 0)
                        {
                            global.puzzle_number_to_play = puzzle_number;
                            global.level_type = puzzle_level_type;
                            global.puzzle_pieces_to_use = ob_puzzle_pieces;
                            global.current_pack_open = 5000;
                            global.total_number_of_pieces = puzzle_number_of_pieces;
                            global.current_puzzle_global_puzzle_number = 100000;
                            global.puzzle_controller_to_use = ob_uniques_puzzle_controller;
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_button, 1, false);
                            }
                            room_goto(r_puzzle_room);
                        }
                    }
                }
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        if (puzzle_number > 0)
        {
            button_size = 0.98;
        }
        else
        {
            button_size = 1.02;
        }
    }
    else
    {
        button_size = 1.02;
    }
}
else
{
    button_size = 1;
}
