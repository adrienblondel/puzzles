if (place_meeting(x, y, ob_menu_cursor))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.theme_chooser_is_open == 0)
            {
                if (image_alpha == 1)
                {
                    if (ob_menu_cursor.y > 300)
                    {
                        if (dlc_is_owned == 1)
                        {
                            if (puzzle_number == 1)
                            {
                                global.puzzle_number_to_play = puzzle_number;
                                global.total_number_of_pieces = global.puzzle_1_number_of_pieces;
                                global.puzzle_pieces_to_use = ob_puzzle_pieces;
                                global.level_type = global.puzzle_1_room_type;
                                global.current_puzzle_global_puzzle_number = global.puzzle_1_puzzle_global_puzzple_number;
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_button, 1, false);
                                }
                                room_goto(r_puzzle_room);
                            }
                            else if (puzzle_number == 2)
                            {
                                global.puzzle_number_to_play = puzzle_number;
                                global.total_number_of_pieces = global.puzzle_2_number_of_pieces;
                                global.puzzle_pieces_to_use = ob_puzzle_pieces;
                                global.level_type = global.puzzle_2_room_type;
                                global.current_puzzle_global_puzzle_number = global.puzzle_2_puzzle_global_puzzple_number;
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_button, 1, false);
                                }
                                room_goto(r_puzzle_room);
                            }
                            else if (puzzle_number == 3)
                            {
                                global.puzzle_number_to_play = puzzle_number;
                                global.total_number_of_pieces = global.puzzle_3_number_of_pieces;
                                global.puzzle_pieces_to_use = ob_puzzle_pieces;
                                global.level_type = global.puzzle_3_room_type;
                                global.current_puzzle_global_puzzle_number = global.puzzle_3_puzzle_global_puzzple_number;
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_button, 1, false);
                                }
                                room_goto(r_puzzle_room);
                            }
                            else if (puzzle_number == 4)
                            {
                                global.puzzle_number_to_play = puzzle_number;
                                global.total_number_of_pieces = global.puzzle_4_number_of_pieces;
                                global.puzzle_pieces_to_use = ob_puzzle_pieces;
                                global.level_type = global.puzzle_4_room_type;
                                global.current_puzzle_global_puzzle_number = global.puzzle_4_puzzle_global_puzzple_number;
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_button, 1, false);
                                }
                                room_goto(r_puzzle_room);
                            }
                            else if (puzzle_number == 5)
                            {
                                global.puzzle_number_to_play = puzzle_number;
                                global.total_number_of_pieces = global.puzzle_5_number_of_pieces;
                                global.puzzle_pieces_to_use = ob_puzzle_pieces;
                                global.level_type = global.puzzle_5_room_type;
                                global.current_puzzle_global_puzzle_number = global.puzzle_5_puzzle_global_puzzple_number;
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_button, 1, false);
                                }
                                room_goto(r_puzzle_room);
                            }
                            else if (puzzle_number == 6)
                            {
                                global.puzzle_number_to_play = puzzle_number;
                                global.total_number_of_pieces = global.puzzle_6_number_of_pieces;
                                global.puzzle_pieces_to_use = ob_puzzle_pieces;
                                global.level_type = global.puzzle_6_room_type;
                                global.current_puzzle_global_puzzle_number = global.puzzle_6_puzzle_global_puzzple_number;
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_button, 1, false);
                                }
                                room_goto(r_puzzle_room);
                            }
                            else if (puzzle_number == 7)
                            {
                                global.puzzle_number_to_play = puzzle_number;
                                global.total_number_of_pieces = global.puzzle_7_number_of_pieces;
                                global.puzzle_pieces_to_use = ob_puzzle_pieces;
                                global.level_type = global.puzzle_7_room_type;
                                global.current_puzzle_global_puzzle_number = global.puzzle_7_puzzle_global_puzzple_number;
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_button, 1, false);
                                }
                                room_goto(r_puzzle_room);
                            }
                            else if (puzzle_number == 8)
                            {
                                global.puzzle_number_to_play = puzzle_number;
                                global.total_number_of_pieces = global.puzzle_8_number_of_pieces;
                                global.puzzle_pieces_to_use = ob_puzzle_pieces;
                                global.level_type = global.puzzle_8_room_type;
                                global.current_puzzle_global_puzzle_number = global.puzzle_8_puzzle_global_puzzple_number;
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_button, 1, false);
                                }
                                room_goto(r_puzzle_room);
                            }
                            else if (puzzle_number == 9)
                            {
                                global.puzzle_number_to_play = puzzle_number;
                                global.total_number_of_pieces = global.puzzle_9_number_of_pieces;
                                global.puzzle_pieces_to_use = ob_puzzle_pieces;
                                global.level_type = global.puzzle_9_room_type;
                                global.current_puzzle_global_puzzle_number = global.puzzle_9_puzzle_global_puzzple_number;
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_button, 1, false);
                                }
                                room_goto(r_puzzle_room);
                            }
                            else if (puzzle_number == 10)
                            {
                                global.puzzle_number_to_play = puzzle_number;
                                global.total_number_of_pieces = global.puzzle_10_number_of_pieces;
                                global.puzzle_pieces_to_use = ob_puzzle_pieces;
                                global.level_type = global.puzzle_10_room_type;
                                global.current_puzzle_global_puzzle_number = global.puzzle_10_puzzle_global_puzzple_number;
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_button, 1, false);
                                }
                                room_goto(r_puzzle_room);
                            }
                            else if (puzzle_number == 11)
                            {
                                global.puzzle_number_to_play = puzzle_number;
                                global.total_number_of_pieces = global.puzzle_11_number_of_pieces;
                                global.puzzle_pieces_to_use = ob_puzzle_pieces;
                                global.level_type = global.puzzle_11_room_type;
                                global.current_puzzle_global_puzzle_number = global.puzzle_11_puzzle_global_puzzple_number;
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_button, 1, false);
                                }
                                room_goto(r_puzzle_room);
                            }
                            else if (puzzle_number == 12)
                            {
                                global.puzzle_number_to_play = puzzle_number;
                                global.total_number_of_pieces = global.puzzle_12_number_of_pieces;
                                global.puzzle_pieces_to_use = ob_puzzle_pieces;
                                global.level_type = global.puzzle_12_room_type;
                                global.current_puzzle_global_puzzle_number = global.puzzle_12_puzzle_global_puzzple_number;
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_button, 1, false);
                                }
                                room_goto(r_puzzle_room);
                            }
                            else if (puzzle_number == 13)
                            {
                                global.puzzle_number_to_play = puzzle_number;
                                global.total_number_of_pieces = global.puzzle_13_number_of_pieces;
                                global.puzzle_pieces_to_use = ob_puzzle_pieces;
                                global.level_type = global.puzzle_13_room_type;
                                global.current_puzzle_global_puzzle_number = global.puzzle_13_puzzle_global_puzzple_number;
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_button, 1, false);
                                }
                                room_goto(r_puzzle_room);
                            }
                            else if (puzzle_number == 14)
                            {
                                global.puzzle_number_to_play = puzzle_number;
                                global.total_number_of_pieces = global.puzzle_14_number_of_pieces;
                                global.puzzle_pieces_to_use = ob_puzzle_pieces;
                                global.level_type = global.puzzle_14_room_type;
                                global.current_puzzle_global_puzzle_number = global.puzzle_14_puzzle_global_puzzple_number;
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_button, 1, false);
                                }
                                room_goto(r_puzzle_room);
                            }
                            else if (puzzle_number == 15)
                            {
                                global.puzzle_number_to_play = puzzle_number;
                                global.total_number_of_pieces = global.puzzle_15_number_of_pieces;
                                global.puzzle_pieces_to_use = ob_puzzle_pieces;
                                global.level_type = global.puzzle_15_room_type;
                                global.current_puzzle_global_puzzle_number = global.puzzle_15_puzzle_global_puzzple_number;
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_button, 1, false);
                                }
                                room_goto(r_puzzle_room);
                            }
                            else if (puzzle_number == 16)
                            {
                                global.puzzle_number_to_play = puzzle_number;
                                global.total_number_of_pieces = global.puzzle_16_number_of_pieces;
                                global.puzzle_pieces_to_use = ob_puzzle_pieces;
                                global.level_type = global.puzzle_16_room_type;
                                global.current_puzzle_global_puzzle_number = global.puzzle_16_puzzle_global_puzzple_number;
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_button, 1, false);
                                }
                                room_goto(r_puzzle_room);
                            }
                            else if (puzzle_number == 17)
                            {
                                global.puzzle_number_to_play = puzzle_number;
                                global.total_number_of_pieces = global.puzzle_17_number_of_pieces;
                                global.puzzle_pieces_to_use = ob_puzzle_pieces;
                                global.level_type = global.puzzle_17_room_type;
                                global.current_puzzle_global_puzzle_number = global.puzzle_17_puzzle_global_puzzple_number;
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_button, 1, false);
                                }
                                room_goto(r_puzzle_room);
                            }
                            else if (puzzle_number == 18)
                            {
                                global.puzzle_number_to_play = puzzle_number;
                                global.total_number_of_pieces = global.puzzle_18_number_of_pieces;
                                global.puzzle_pieces_to_use = ob_puzzle_pieces;
                                global.level_type = global.puzzle_18_room_type;
                                global.current_puzzle_global_puzzle_number = global.puzzle_18_puzzle_global_puzzple_number;
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_button, 1, false);
                                }
                                room_goto(r_puzzle_room);
                            }
                            else if (puzzle_number == 19)
                            {
                                global.puzzle_number_to_play = puzzle_number;
                                global.total_number_of_pieces = global.puzzle_19_number_of_pieces;
                                global.puzzle_pieces_to_use = ob_puzzle_pieces;
                                global.level_type = global.puzzle_19_room_type;
                                global.current_puzzle_global_puzzle_number = global.puzzle_19_puzzle_global_puzzple_number;
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_button, 1, false);
                                }
                                room_goto(r_puzzle_room);
                            }
                            else if (puzzle_number == 20)
                            {
                                global.puzzle_number_to_play = puzzle_number;
                                global.total_number_of_pieces = global.puzzle_20_number_of_pieces;
                                global.puzzle_pieces_to_use = ob_puzzle_pieces;
                                global.level_type = global.puzzle_20_room_type;
                                global.current_puzzle_global_puzzle_number = global.puzzle_20_puzzle_global_puzzple_number;
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_button, 1, false);
                                }
                                room_goto(r_puzzle_room);
                            }
                            else if (puzzle_number == 21)
                            {
                                global.puzzle_number_to_play = puzzle_number;
                                global.total_number_of_pieces = global.puzzle_21_number_of_pieces;
                                global.puzzle_pieces_to_use = ob_puzzle_pieces;
                                global.level_type = global.puzzle_21_room_type;
                                global.current_puzzle_global_puzzle_number = global.puzzle_21_puzzle_global_puzzple_number;
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_button, 1, false);
                                }
                                room_goto(r_puzzle_room);
                            }
                            else if (puzzle_number == 22)
                            {
                                global.puzzle_number_to_play = puzzle_number;
                                global.total_number_of_pieces = global.puzzle_22_number_of_pieces;
                                global.puzzle_pieces_to_use = ob_puzzle_pieces;
                                global.level_type = global.puzzle_22_room_type;
                                global.current_puzzle_global_puzzle_number = global.puzzle_22_puzzle_global_puzzple_number;
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_button, 1, false);
                                }
                                room_goto(r_puzzle_room);
                            }
                            else if (puzzle_number == 23)
                            {
                                global.puzzle_number_to_play = puzzle_number;
                                global.total_number_of_pieces = global.puzzle_23_number_of_pieces;
                                global.puzzle_pieces_to_use = ob_puzzle_pieces;
                                global.level_type = global.puzzle_23_room_type;
                                global.current_puzzle_global_puzzle_number = global.puzzle_23_puzzle_global_puzzple_number;
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_button, 1, false);
                                }
                                room_goto(r_puzzle_room);
                            }
                            else if (puzzle_number == 24)
                            {
                                global.puzzle_number_to_play = puzzle_number;
                                global.total_number_of_pieces = global.puzzle_24_number_of_pieces;
                                global.puzzle_pieces_to_use = ob_puzzle_pieces;
                                global.level_type = global.puzzle_24_room_type;
                                global.current_puzzle_global_puzzle_number = global.puzzle_24_puzzle_global_puzzple_number;
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_button, 1, false);
                                }
                                room_goto(r_puzzle_room);
                            }
                            else if (puzzle_number == 25)
                            {
                                global.puzzle_number_to_play = puzzle_number;
                                global.total_number_of_pieces = global.puzzle_25_number_of_pieces;
                                global.puzzle_pieces_to_use = ob_puzzle_pieces;
                                global.level_type = global.puzzle_25_room_type;
                                global.current_puzzle_global_puzzle_number = global.puzzle_25_puzzle_global_puzzple_number;
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
    }
    if (dlc_is_owned == 1)
    {
        if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
        {
            if (puzzle_number > 0)
            {
                button_size = 0.685;
            }
            else
            {
                button_size = 0.715;
            }
        }
        else
        {
            button_size = 0.715;
        }
    }
    else
    {
        button_size = 0.7;
    }
}
else
{
    button_size = 0.7;
}
if (place_meeting(x, y, ob_menu_cursor))
{
    if (global.theme_chooser_is_open == 0)
    {
        if (puzzle_number == 1)
        {
            global.puzzle_preview_sprite_index = global.puzzle_1_puzzle_preview_sprite_index;
            global.puzzle_preview_level_type = global.puzzle_1_puzzle_preview_level_type;
            global.puzzle_preview_image_alpha = 1;
        }
        else if (puzzle_number == 2)
        {
            global.puzzle_preview_sprite_index = global.puzzle_2_puzzle_preview_sprite_index;
            global.puzzle_preview_level_type = global.puzzle_2_puzzle_preview_level_type;
            global.puzzle_preview_image_alpha = 1;
        }
        else if (puzzle_number == 3)
        {
            global.puzzle_preview_sprite_index = global.puzzle_3_puzzle_preview_sprite_index;
            global.puzzle_preview_level_type = global.puzzle_3_puzzle_preview_level_type;
            global.puzzle_preview_image_alpha = 1;
        }
        else if (puzzle_number == 4)
        {
            global.puzzle_preview_sprite_index = global.puzzle_4_puzzle_preview_sprite_index;
            global.puzzle_preview_level_type = global.puzzle_4_puzzle_preview_level_type;
            global.puzzle_preview_image_alpha = 1;
        }
        else if (puzzle_number == 5)
        {
            global.puzzle_preview_sprite_index = global.puzzle_5_puzzle_preview_sprite_index;
            global.puzzle_preview_level_type = global.puzzle_5_puzzle_preview_level_type;
            global.puzzle_preview_image_alpha = 1;
        }
        else if (puzzle_number == 6)
        {
            global.puzzle_preview_sprite_index = global.puzzle_6_puzzle_preview_sprite_index;
            global.puzzle_preview_level_type = global.puzzle_6_puzzle_preview_level_type;
            global.puzzle_preview_image_alpha = 1;
        }
        else if (puzzle_number == 7)
        {
            global.puzzle_preview_sprite_index = global.puzzle_7_puzzle_preview_sprite_index;
            global.puzzle_preview_level_type = global.puzzle_7_puzzle_preview_level_type;
            global.puzzle_preview_image_alpha = 1;
        }
        else if (puzzle_number == 8)
        {
            global.puzzle_preview_sprite_index = global.puzzle_8_puzzle_preview_sprite_index;
            global.puzzle_preview_level_type = global.puzzle_8_puzzle_preview_level_type;
            global.puzzle_preview_image_alpha = 1;
        }
        else if (puzzle_number == 9)
        {
            global.puzzle_preview_sprite_index = global.puzzle_9_puzzle_preview_sprite_index;
            global.puzzle_preview_level_type = global.puzzle_9_puzzle_preview_level_type;
            global.puzzle_preview_image_alpha = 1;
        }
        else if (puzzle_number == 10)
        {
            global.puzzle_preview_sprite_index = global.puzzle_10_puzzle_preview_sprite_index;
            global.puzzle_preview_level_type = global.puzzle_10_puzzle_preview_level_type;
            global.puzzle_preview_image_alpha = 1;
        }
        else if (puzzle_number == 11)
        {
            global.puzzle_preview_sprite_index = global.puzzle_11_puzzle_preview_sprite_index;
            global.puzzle_preview_level_type = global.puzzle_11_puzzle_preview_level_type;
            global.puzzle_preview_image_alpha = 1;
        }
        else if (puzzle_number == 12)
        {
            global.puzzle_preview_sprite_index = global.puzzle_12_puzzle_preview_sprite_index;
            global.puzzle_preview_level_type = global.puzzle_12_puzzle_preview_level_type;
            global.puzzle_preview_image_alpha = 1;
        }
        else if (puzzle_number == 13)
        {
            global.puzzle_preview_sprite_index = global.puzzle_13_puzzle_preview_sprite_index;
            global.puzzle_preview_level_type = global.puzzle_13_puzzle_preview_level_type;
            global.puzzle_preview_image_alpha = 1;
        }
        else if (puzzle_number == 14)
        {
            global.puzzle_preview_sprite_index = global.puzzle_14_puzzle_preview_sprite_index;
            global.puzzle_preview_level_type = global.puzzle_14_puzzle_preview_level_type;
            global.puzzle_preview_image_alpha = 1;
        }
        else if (puzzle_number == 15)
        {
            global.puzzle_preview_sprite_index = global.puzzle_15_puzzle_preview_sprite_index;
            global.puzzle_preview_level_type = global.puzzle_15_puzzle_preview_level_type;
            global.puzzle_preview_image_alpha = 1;
        }
        else if (puzzle_number == 16)
        {
            global.puzzle_preview_sprite_index = global.puzzle_16_puzzle_preview_sprite_index;
            global.puzzle_preview_level_type = global.puzzle_16_puzzle_preview_level_type;
            global.puzzle_preview_image_alpha = 1;
        }
        else if (puzzle_number == 17)
        {
            global.puzzle_preview_sprite_index = global.puzzle_17_puzzle_preview_sprite_index;
            global.puzzle_preview_level_type = global.puzzle_17_puzzle_preview_level_type;
            global.puzzle_preview_image_alpha = 1;
        }
        else if (puzzle_number == 18)
        {
            global.puzzle_preview_sprite_index = global.puzzle_18_puzzle_preview_sprite_index;
            global.puzzle_preview_level_type = global.puzzle_18_puzzle_preview_level_type;
            global.puzzle_preview_image_alpha = 1;
        }
        else if (puzzle_number == 19)
        {
            global.puzzle_preview_sprite_index = global.puzzle_19_puzzle_preview_sprite_index;
            global.puzzle_preview_level_type = global.puzzle_19_puzzle_preview_level_type;
            global.puzzle_preview_image_alpha = 1;
        }
        else if (puzzle_number == 20)
        {
            global.puzzle_preview_sprite_index = global.puzzle_20_puzzle_preview_sprite_index;
            global.puzzle_preview_level_type = global.puzzle_20_puzzle_preview_level_type;
            global.puzzle_preview_image_alpha = 1;
        }
        else if (puzzle_number == 21)
        {
            global.puzzle_preview_sprite_index = global.puzzle_21_puzzle_preview_sprite_index;
            global.puzzle_preview_level_type = global.puzzle_21_puzzle_preview_level_type;
            global.puzzle_preview_image_alpha = 1;
        }
        else if (puzzle_number == 22)
        {
            global.puzzle_preview_sprite_index = global.puzzle_22_puzzle_preview_sprite_index;
            global.puzzle_preview_level_type = global.puzzle_22_puzzle_preview_level_type;
            global.puzzle_preview_image_alpha = 1;
        }
        else if (puzzle_number == 23)
        {
            global.puzzle_preview_sprite_index = global.puzzle_23_puzzle_preview_sprite_index;
            global.puzzle_preview_level_type = global.puzzle_23_puzzle_preview_level_type;
            global.puzzle_preview_image_alpha = 1;
        }
        else if (puzzle_number == 24)
        {
            global.puzzle_preview_sprite_index = global.puzzle_24_puzzle_preview_sprite_index;
            global.puzzle_preview_level_type = global.puzzle_24_puzzle_preview_level_type;
            global.puzzle_preview_image_alpha = 1;
        }
        else if (puzzle_number == 25)
        {
            global.puzzle_preview_sprite_index = global.puzzle_25_puzzle_preview_sprite_index;
            global.puzzle_preview_level_type = global.puzzle_25_puzzle_preview_level_type;
            global.puzzle_preview_image_alpha = 1;
        }
    }
}
