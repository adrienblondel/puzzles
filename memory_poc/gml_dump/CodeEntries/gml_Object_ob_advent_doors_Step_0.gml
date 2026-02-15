if (ob_menu_3_controller.CurrentPage != 10)
{
    instance_destroy();
}
if (place_meeting(x, y, ob_menu_cursor) && mouse_check_button_released(mb_left) && door_open == 0 && !instance_exists(ob_intro_puzzle_piece))
{
    var stat_name = "ac_" + string(doorNUM);
    if (steam_stats_ready() && steam_get_stat_int(string(stat_name)) == 0 && current_year == 2025 && current_month == 12 && current_day >= doorNUM)
    {
        var doorsopen = steam_get_stat_int("a_2025") + 1;
        steam_set_stat_int(string(stat_name), 1);
        steam_set_stat_int("a_2025", doorsopen);
        steam_upload_score("a_advent_2025", doorsopen);
        door_open = 1;
        flipOpen = 0;
        alarm[0] = 1;
        audio_play_sound(s_advent_door, 1, false);
        if (doorNUM == 1)
        {
        }
        else if (doorNUM == 2)
        {
            var Gold_Give = 20;
            var new_earned = steam_get_stat_int("gold_bits_earned") + Gold_Give;
            steam_set_stat_int("gold_bits_earned", new_earned);
            ob_menu_3_controller.gold_quantity += Gold_Give;
        }
        else if (doorNUM == 3)
        {
            var Gold_Give = 25;
            var new_earned = steam_get_stat_int("gold_bits_earned") + Gold_Give;
            steam_set_stat_int("gold_bits_earned", new_earned);
            ob_menu_3_controller.gold_quantity += Gold_Give;
        }
        else if (doorNUM == 4)
        {
            var Hint_Give = 40;
            var new_earned = steam_get_stat_int("hints_earned") + Hint_Give;
            steam_set_stat_int("hints_earned", new_earned);
            ob_menu_3_controller.hint_quantity += Hint_Give;
        }
        else if (doorNUM == 5)
        {
            var Ultimate_Give = 1;
            var new_earned = steam_get_stat_int("ultimate_pieces_earned") + Ultimate_Give;
            steam_set_stat_int("ultimate_pieces_earned", new_earned);
            ob_menu_3_controller.diamond_quantity += Ultimate_Give;
        }
        else if (doorNUM == 6)
        {
        }
        else if (doorNUM == 7)
        {
            var Gold_Give = 30;
            var new_earned = steam_get_stat_int("gold_bits_earned") + Gold_Give;
            steam_set_stat_int("gold_bits_earned", new_earned);
            ob_menu_3_controller.gold_quantity += Gold_Give;
        }
        else if (doorNUM == 8)
        {
            var Hint_Give = 50;
            var new_earned = steam_get_stat_int("hints_earned") + Hint_Give;
            steam_set_stat_int("hints_earned", new_earned);
            ob_menu_3_controller.hint_quantity += Hint_Give;
        }
        else if (doorNUM == 9)
        {
        }
        else if (doorNUM == 10)
        {
            var Gold_Give = 35;
            var new_earned = steam_get_stat_int("gold_bits_earned") + Gold_Give;
            steam_set_stat_int("gold_bits_earned", new_earned);
            ob_menu_3_controller.gold_quantity += Gold_Give;
        }
        else if (doorNUM == 11)
        {
            var Hint_Give = 50;
            var new_earned = steam_get_stat_int("hints_earned") + Hint_Give;
            steam_set_stat_int("hints_earned", new_earned);
            ob_menu_3_controller.hint_quantity += Hint_Give;
        }
        else if (doorNUM == 12)
        {
            var Ultimate_Give = 2;
            var new_earned = steam_get_stat_int("ultimate_pieces_earned") + Ultimate_Give;
            steam_set_stat_int("ultimate_pieces_earned", new_earned);
            ob_menu_3_controller.diamond_quantity += Ultimate_Give;
        }
        else if (doorNUM == 13)
        {
            var Hint_Give = 50;
            var new_earned = steam_get_stat_int("hints_earned") + Hint_Give;
            steam_set_stat_int("hints_earned", new_earned);
            ob_menu_3_controller.hint_quantity += Hint_Give;
        }
        else if (doorNUM == 14)
        {
        }
        else if (doorNUM == 15)
        {
            var Gold_Give = 50;
            var new_earned = steam_get_stat_int("gold_bits_earned") + Gold_Give;
            steam_set_stat_int("gold_bits_earned", new_earned);
            ob_menu_3_controller.gold_quantity += Gold_Give;
        }
        else if (doorNUM == 16)
        {
        }
        else if (doorNUM == 17)
        {
            var Ultimate_Give = 3;
            var new_earned = steam_get_stat_int("ultimate_pieces_earned") + Ultimate_Give;
            steam_set_stat_int("ultimate_pieces_earned", new_earned);
            ob_menu_3_controller.diamond_quantity += Ultimate_Give;
        }
        else if (doorNUM == 18)
        {
            var Gold_Give = 50;
            var new_earned = steam_get_stat_int("gold_bits_earned") + Gold_Give;
            steam_set_stat_int("gold_bits_earned", new_earned);
            ob_menu_3_controller.gold_quantity += Gold_Give;
        }
        else if (doorNUM == 19)
        {
            var Hint_Give = 75;
            var new_earned = steam_get_stat_int("hints_earned") + Hint_Give;
            steam_set_stat_int("hints_earned", new_earned);
            ob_menu_3_controller.hint_quantity += Hint_Give;
        }
        else if (doorNUM == 20)
        {
            var Ultimate_Give = 5;
            var new_earned = steam_get_stat_int("ultimate_pieces_earned") + Ultimate_Give;
            steam_set_stat_int("ultimate_pieces_earned", new_earned);
            ob_menu_3_controller.diamond_quantity += Ultimate_Give;
        }
        else if (doorNUM == 21)
        {
        }
        else if (doorNUM == 22)
        {
            var Gold_Give = 75;
            var new_earned = steam_get_stat_int("gold_bits_earned") + Gold_Give;
            steam_set_stat_int("gold_bits_earned", new_earned);
            ob_menu_3_controller.gold_quantity += Gold_Give;
        }
        else if (doorNUM == 23)
        {
            var Hint_Give = 100;
            var new_earned = steam_get_stat_int("hints_earned") + Hint_Give;
            steam_set_stat_int("hints_earned", new_earned);
            ob_menu_3_controller.hint_quantity += Hint_Give;
        }
        else if (doorNUM == 24)
        {
            var Ultimate_Give = 10;
            var new_earned = steam_get_stat_int("ultimate_pieces_earned") + Ultimate_Give;
            steam_set_stat_int("ultimate_pieces_earned", new_earned);
            ob_menu_3_controller.diamond_quantity += Ultimate_Give;
        }
        else if (doorNUM == 25)
        {
        }
    }
}
if (door_open == 1 && jigsaw > 0)
{
    if (place_meeting(x, y, ob_menu_cursor))
    {
        puzHOV = 1;
        if (mouse_check_button_pressed(mb_left) && ob_menu_3_controller.can_press_ui_buttons == 1)
        {
            global.MenuReturnPage = 10;
            var bits = 0;
            var pack_num = 5000;
            var puz_num = 0;
            if (jigsaw == 1)
            {
                puz_num = 98;
                bits = 216;
            }
            else if (jigsaw == 2)
            {
                puz_num = 99;
                bits = 96;
            }
            else if (jigsaw == 3)
            {
                puz_num = 100;
                bits = 140;
            }
            else if (jigsaw == 4)
            {
                puz_num = 101;
                bits = 96;
            }
            else if (jigsaw == 5)
            {
                puz_num = 102;
                bits = 140;
            }
            else if (jigsaw == 6)
            {
                puz_num = 103;
                bits = 96;
            }
            else if (jigsaw == 7)
            {
                puz_num = 104;
                bits = 330;
            }
            var file_name = "\misc\puzshop\p5000p" + string(puz_num);
            if (file_exists(working_directory + string(file_name) + ".png"))
            {
                ob_menu_3_controller.can_press_ui_buttons = 0;
                global.current_pack_open = pack_num;
                global.puzzle_number_to_play = puz_num;
                global.total_number_of_pieces = bits;
                global.puzzle_max_number_of_pieces = bits;
                if (global.current_puzzle_ghost_image == 0)
                {
                }
                else
                {
                    sprite_delete(global.current_puzzle_ghost_image);
                }
                global.current_puzzle_ghost_image = sprite_add(working_directory + string(file_name) + ".png", 0, false, false, 0, 0);
                var sprW = sprite_get_width(global.current_puzzle_ghost_image);
                if (sprW == 1400)
                {
                    global.level_type = 2;
                }
                else if (sprW == 1388)
                {
                    global.level_type = 1;
                }
                else if (sprW == 1880)
                {
                    global.level_type = 4;
                }
                else if (sprW == 1040)
                {
                    global.level_type = 3;
                }
                var spx = 0;
                var spy = 0;
                if (bits == 60)
                {
                    spx = 132;
                    spy = 123;
                }
                if (bits == 112)
                {
                    spx = 92;
                    spy = 90;
                }
                if (bits == 153)
                {
                    spx = 75;
                    spy = 80;
                }
                if (bits == 220)
                {
                    spx = 64;
                    spy = 64;
                }
                if (bits == 350)
                {
                    spx = 49;
                    spy = 49;
                }
                if (bits == 96)
                {
                    spx = 112;
                    spy = 108;
                }
                if (bits == 140)
                {
                    spx = 96;
                    spy = 86;
                }
                if (bits == 216)
                {
                    spx = 74;
                    spy = 71;
                }
                if (bits == 330)
                {
                    spx = 59;
                    spy = 49;
                }
                if (bits == 425)
                {
                    spx = 51;
                    spy = 49;
                }
                if (bits == 640 && global.level_type == 2)
                {
                    spx = 39;
                    spy = 41;
                }
                if (bits == 840)
                {
                    spx = 35;
                    spy = 33;
                }
                if (bits == 1410)
                {
                    spx = 26;
                    spy = 26;
                }
                if (bits == 100)
                {
                    spx = 100;
                    spy = 100;
                }
                if (bits == 169)
                {
                    spx = 76;
                    spy = 76;
                }
                if (bits == 324)
                {
                    spx = 53;
                    spy = 53;
                }
                if (bits == 400)
                {
                    spx = 48;
                    spy = 48;
                }
                if (bits == 676)
                {
                    spx = 36;
                    spy = 36;
                }
                if (bits == 841)
                {
                    spx = 30;
                    spy = 30;
                }
                if (bits == 126)
                {
                    spx = 100;
                    spy = 100;
                }
                if (bits == 168)
                {
                    spx = 85;
                    spy = 85;
                }
                if (bits == 250)
                {
                    spx = 71;
                    spy = 67;
                }
                if (bits == 455)
                {
                    spx = 49;
                    spy = 51;
                }
                if (bits == 640 && global.level_type == 4)
                {
                    spx = 42;
                    spy = 40;
                }
                if (bits == 810)
                {
                    spx = 37;
                    spy = 35;
                }
                if (bits == 1000)
                {
                    spx = 33;
                    spy = 31;
                }
                if (global.puzzle_sprite_index_to_use == 0)
                {
                }
                else
                {
                    sprite_delete(global.puzzle_sprite_index_to_use);
                }
                global.puzzle_sprite_index_to_use = sprite_add(working_directory + string(file_name) + "p.png", bits, false, false, spx, spy);
                sprite_collision_mask(global.puzzle_sprite_index_to_use, true, 1, 0, 0, 0, 0, 0, 0);
                audio_play_sound(s_normal_button_press, 10, false);
                if (ob_menu_3_controller.FadeToPuz != 1)
                {
                    ob_menu_3_controller.FadeToPuz = 1;
                }
            }
        }
    }
    else
    {
        puzHOV = 0;
    }
}
