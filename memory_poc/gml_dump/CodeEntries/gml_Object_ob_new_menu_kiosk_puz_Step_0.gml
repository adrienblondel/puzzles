if (ob_new_menu_controller.current_menu_page == 3)
{
    if (puz_type == 1)
    {
    }
    else
    {
        instance_destroy();
    }
}
else if (ob_new_menu_controller.current_menu_page == 7)
{
    if (ob_new_menu_controller.kiosk_items_showing == 1 || ob_new_menu_controller.kiosk_items_showing == 2 || ob_new_menu_controller.kiosk_items_showing == 3 || ob_new_menu_controller.kiosk_items_showing == 4 || ob_new_menu_controller.kiosk_items_showing == 5 || ob_new_menu_controller.kiosk_items_showing == 6 || ob_new_menu_controller.kiosk_items_showing == 7 || ob_new_menu_controller.kiosk_items_showing == 8)
    {
    }
    else
    {
        ob_new_menu_controller.kiosk_items_showing = 0;
        instance_destroy();
    }
}
else if (ob_new_menu_controller.current_menu_page == 6)
{
    if (ob_new_menu_controller.puz_shop_page == 1 || ob_new_menu_controller.puz_shop_page == 2 || ob_new_menu_controller.puz_shop_page == 3 || ob_new_menu_controller.puz_shop_page == 4)
    {
    }
    else
    {
        puz_shop_page = 0;
        instance_destroy();
    }
}
else
{
    instance_destroy();
}
if (puz_num > 0)
{
    if (y < maxy_vis && y > miny_vis)
    {
        if (button_locked == 1)
        {
            if (trade_open == 1)
            {
                if (trade_alpha < 1)
                {
                    trade_alpha += 0.05;
                }
                if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x - 32, y + 26, x + 33, y + 48))
                {
                    if (mouse_check_button(mb_left))
                    {
                        cancel_trade_scale = 0.98;
                    }
                    else
                    {
                        cancel_trade_scale = 1.02;
                    }
                    if (mouse_check_button_pressed(mb_left))
                    {
                        if (can_click_button == 1)
                        {
                            audio_play_sound(s_ui_x_button, 1, false);
                            trade_open = 0;
                            can_click_button = 0;
                            alarm[1] = 10;
                        }
                    }
                }
                else
                {
                    cancel_trade_scale = 1;
                }
                if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x - 80, y - 48, x - 5, y - 28))
                {
                    if (mouse_check_button(mb_left))
                    {
                        trade_scale = 0.89;
                    }
                    else
                    {
                        trade_scale = 1.02;
                    }
                    if (mouse_check_button_pressed(mb_left))
                    {
                        if (can_click_button == 1)
                        {
                            can_click_button = 0;
                            alarm[1] = 10;
                            if (steam_stats_ready())
                            {
                                var achievemnet_to_set = 0;
                                if (puz_type == 1)
                                {
                                    achievemnet_to_set = "kioskchallenges" + string(puz_num);
                                }
                                if (puz_type == 2)
                                {
                                    achievemnet_to_set = "kioskpuzzles" + string(puz_num);
                                }
                                if (puz_type == 3)
                                {
                                    achievemnet_to_set = "kioskxxl" + string(puz_num);
                                }
                                if (puz_type == 4)
                                {
                                    achievemnet_to_set = "kioskfigurals" + string(puz_num);
                                }
                                if (puz_type == 5)
                                {
                                    achievemnet_to_set = "kioskexperimentals" + string(puz_num);
                                }
                                if (puz_type == 6)
                                {
                                    achievemnet_to_set = "kioskcursor" + string(puz_num);
                                }
                                if (puz_type == 7)
                                {
                                    achievemnet_to_set = "kiosktheme" + string(puz_num);
                                }
                                if (puz_type == 8)
                                {
                                    achievemnet_to_set = "kiosktoolbar" + string(puz_num);
                                }
                                if (puz_type == 9)
                                {
                                    achievemnet_to_set = "kioskmusic" + string(puz_num);
                                }
                                var total_gold_earned = steam_get_stat_int("gold_bits_earned");
                                var total_gold_spent = steam_get_stat_int("gold_bits_used");
                                var item_priced = item_price;
                                var current_gold = total_gold_earned - total_gold_spent;
                                if (current_gold >= item_priced)
                                {
                                    audio_play_sound(s_load_packs_long, 1, false);
                                    steam_set_achievement(achievemnet_to_set);
                                    var new_total_gold_spent = steam_get_stat_int("gold_bits_used") + item_priced;
                                    steam_set_stat_int("gold_bits_used", new_total_gold_spent);
                                    trade_open = 0;
                                    button_locked = 0;
                                    ob_new_menu_controller.alarm[1] = 1;
                                    ob_new_menu_controller.alarm[3] = 1;
                                    ob_new_menu_controller.num_gold_make = item_priced;
                                }
                            }
                        }
                    }
                }
                else
                {
                    trade_scale = 1;
                }
                if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x + 6, y - 48, x + 82, y - 28))
                {
                    if (mouse_check_button(mb_left))
                    {
                        trade_u_scale = 0.89;
                    }
                    else
                    {
                        trade_u_scale = 1.02;
                    }
                    if (mouse_check_button_pressed(mb_left))
                    {
                        if (can_click_button == 1)
                        {
                            can_click_button = 0;
                            alarm[1] = 10;
                            if (steam_stats_ready())
                            {
                                var achievemnet_to_set = 0;
                                if (puz_type == 1)
                                {
                                    achievemnet_to_set = "kioskchallenges" + string(puz_num);
                                }
                                if (puz_type == 2)
                                {
                                    achievemnet_to_set = "kioskpuzzles" + string(puz_num);
                                }
                                if (puz_type == 3)
                                {
                                    achievemnet_to_set = "kioskxxl" + string(puz_num);
                                }
                                if (puz_type == 4)
                                {
                                    achievemnet_to_set = "kioskfigurals" + string(puz_num);
                                }
                                if (puz_type == 5)
                                {
                                    achievemnet_to_set = "kioskexperimentals" + string(puz_num);
                                }
                                if (puz_type == 6)
                                {
                                    achievemnet_to_set = "kioskcursor" + string(puz_num);
                                }
                                if (puz_type == 7)
                                {
                                    achievemnet_to_set = "kiosktheme" + string(puz_num);
                                }
                                if (puz_type == 8)
                                {
                                    achievemnet_to_set = "kiosktoolbar" + string(puz_num);
                                }
                                if (puz_type == 9)
                                {
                                    achievemnet_to_set = "kioskmusic" + string(puz_num);
                                }
                                var total_gold_earned = steam_get_stat_int("ultimate_pieces_earned");
                                var total_gold_spent = steam_get_stat_int("ultimate_pieces_used");
                                var item_priced = 1;
                                var current_gold = total_gold_earned - total_gold_spent;
                                if (current_gold >= item_priced)
                                {
                                    audio_play_sound(s_load_packs_short, 1, false);
                                    steam_set_achievement(achievemnet_to_set);
                                    var new_total_gold_spent = steam_get_stat_int("ultimate_pieces_used") + item_priced;
                                    steam_set_stat_int("ultimate_pieces_used", new_total_gold_spent);
                                    trade_open = 0;
                                    button_locked = 0;
                                    ob_new_menu_controller.alarm[1] = 1;
                                    ob_new_menu_controller.alarm[1] = 1;
                                    ob_new_menu_controller.alarm[3] = 1;
                                    ob_new_menu_controller.num_gold_make = 10000000;
                                }
                            }
                        }
                    }
                }
                else
                {
                    trade_u_scale = 1;
                }
            }
            else
            {
                trade_alpha = 0;
                if (place_meeting(x, y, ob_menu_cursor))
                {
                    if (mouse_check_button_pressed(mb_left))
                    {
                        if (can_click_button == 1)
                        {
                            with (ob_new_menu_kiosk_puz)
                            {
                                trade_open = 0;
                            }
                            if (steam_stats_ready())
                            {
                                audio_play_sound(s_menu_toolbar_button_drop, 1, false);
                                trade_open = 1;
                                can_click_button = 0;
                                alarm[1] = 10;
                            }
                        }
                    }
                }
            }
        }
        else if (button_locked == 0)
        {
            if (puz_type == 1 || puz_type == 2 || puz_type == 3 || puz_type == 4 || puz_type == 5)
            {
                if (puz_options_open == 0)
                {
                    options_open_alpha = 0;
                    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x + 48, y - 53, x + 88, y - 13))
                    {
                        if (mouse_check_button(mb_left))
                        {
                            options_open_scale = 0.89;
                        }
                        else
                        {
                            options_open_scale = 1.03;
                        }
                        if (mouse_check_button_pressed(mb_left))
                        {
                            if (can_click_button == 1)
                            {
                                audio_play_sound(s_menu_toolbar_button_drop, 1, false);
                                with (ob_new_menu_kiosk_puz)
                                {
                                    puz_options_open = 0;
                                }
                                puz_options_open = 1;
                                can_click_button = 0;
                                alarm[1] = 10;
                            }
                        }
                        else
                        {
                            options_open_scale = 1;
                        }
                    }
                    else if (place_meeting(x, y, ob_menu_cursor))
                    {
                        if (mouse_check_button_pressed(mb_left))
                        {
                            if (can_click_button == 1)
                            {
                                if (puz_type == 1)
                                {
                                    if (ob_new_menu_controller.current_menu_page == 3)
                                    {
                                        global.menu_return_to = 3;
                                    }
                                    var load_from = "puzshop";
                                    global.use_special_puz_controller = 2;
                                    global.puzzle_number_to_play = puz_num;
                                    load_from = "challenge";
                                    global.level_type = puzzle_level_type;
                                    global.puzzle_pieces_to_use = ob_puzzle_pieces;
                                    global.current_pack_open = 5000;
                                    global.total_number_of_pieces = puzzle_number_of_pieces;
                                    global.puzzle_max_number_of_pieces = puzzle_number_of_pieces;
                                    global.current_puzzle_global_puzzle_number = 100000;
                                    global.puzzle_controller_to_use = ob_uniques_puzzle_controller;
                                    if (global.current_puzzle_ghost_image == 0)
                                    {
                                    }
                                    else
                                    {
                                        sprite_delete(global.current_puzzle_ghost_image);
                                    }
                                    var ghost_to_use = "misc\" + string(load_from) + "\p5000p" + string(global.puzzle_number_to_play) + ".png";
                                    global.current_puzzle_ghost_image = sprite_add(working_directory + string(ghost_to_use), 0, false, false, 0, 0);
                                    var sprite_x = 0;
                                    var sprite_y = 0;
                                    if (global.total_number_of_pieces == 60)
                                    {
                                        sprite_x = 132;
                                        sprite_y = 123;
                                    }
                                    if (global.total_number_of_pieces == 112)
                                    {
                                        sprite_x = 92;
                                        sprite_y = 90;
                                    }
                                    if (global.total_number_of_pieces == 153)
                                    {
                                        sprite_x = 75;
                                        sprite_y = 80;
                                    }
                                    if (global.total_number_of_pieces == 220)
                                    {
                                        sprite_x = 64;
                                        sprite_y = 64;
                                    }
                                    if (global.total_number_of_pieces == 350)
                                    {
                                        sprite_x = 49;
                                        sprite_y = 49;
                                    }
                                    if (global.total_number_of_pieces == 96)
                                    {
                                        sprite_x = 112;
                                        sprite_y = 108;
                                    }
                                    if (global.total_number_of_pieces == 140)
                                    {
                                        sprite_x = 96;
                                        sprite_y = 86;
                                    }
                                    if (global.total_number_of_pieces == 216)
                                    {
                                        sprite_x = 74;
                                        sprite_y = 71;
                                    }
                                    if (global.total_number_of_pieces == 330)
                                    {
                                        sprite_x = 59;
                                        sprite_y = 49;
                                    }
                                    if (global.total_number_of_pieces == 425)
                                    {
                                        sprite_x = 51;
                                        sprite_y = 49;
                                    }
                                    if (global.total_number_of_pieces == 640 && puzzle_level_type == 2)
                                    {
                                        sprite_x = 39;
                                        sprite_y = 41;
                                    }
                                    if (global.total_number_of_pieces == 840)
                                    {
                                        sprite_x = 35;
                                        sprite_y = 33;
                                    }
                                    if (global.total_number_of_pieces == 1410)
                                    {
                                        sprite_x = 26;
                                        sprite_y = 26;
                                    }
                                    if (global.total_number_of_pieces == 100)
                                    {
                                        sprite_x = 100;
                                        sprite_y = 100;
                                    }
                                    if (global.total_number_of_pieces == 169)
                                    {
                                        sprite_x = 76;
                                        sprite_y = 76;
                                    }
                                    if (global.total_number_of_pieces == 324)
                                    {
                                        sprite_x = 53;
                                        sprite_y = 53;
                                    }
                                    if (global.total_number_of_pieces == 400)
                                    {
                                        sprite_x = 48;
                                        sprite_y = 48;
                                    }
                                    if (global.total_number_of_pieces == 676)
                                    {
                                        sprite_x = 36;
                                        sprite_y = 36;
                                    }
                                    if (global.total_number_of_pieces == 841)
                                    {
                                        sprite_x = 30;
                                        sprite_y = 30;
                                    }
                                    if (global.total_number_of_pieces == 126)
                                    {
                                        sprite_x = 100;
                                        sprite_y = 100;
                                    }
                                    if (global.total_number_of_pieces == 168)
                                    {
                                        sprite_x = 85;
                                        sprite_y = 85;
                                    }
                                    if (global.total_number_of_pieces == 250)
                                    {
                                        sprite_x = 71;
                                        sprite_y = 67;
                                    }
                                    if (global.total_number_of_pieces == 455)
                                    {
                                        sprite_x = 49;
                                        sprite_y = 51;
                                    }
                                    if (global.total_number_of_pieces == 640 && puzzle_level_type == 4)
                                    {
                                        sprite_x = 42;
                                        sprite_y = 40;
                                    }
                                    if (global.total_number_of_pieces == 810)
                                    {
                                        sprite_x = 37;
                                        sprite_y = 35;
                                    }
                                    if (global.total_number_of_pieces == 1000)
                                    {
                                        sprite_x = 33;
                                        sprite_y = 31;
                                    }
                                    if (global.puzzle_sprite_index_to_use == 0)
                                    {
                                    }
                                    else
                                    {
                                        sprite_delete(global.puzzle_sprite_index_to_use);
                                    }
                                    var sprite_use = "misc\" + string(load_from) + "\p5000p" + string(global.puzzle_number_to_play) + "p.png";
                                    global.puzzle_sprite_index_to_use = sprite_add(working_directory + string(sprite_use), global.total_number_of_pieces, false, false, sprite_x, sprite_y);
                                    sprite_collision_mask(global.puzzle_sprite_index_to_use, true, 1, 0, 0, 0, 0, 0, 0);
                                    if (global.audio_menu_effects_0_is_on == 0)
                                    {
                                        audio_play_sound(global.sound_click_puzzle_button, 1, false);
                                    }
                                    room_goto(r_puzzle_room);
                                }
                                else if (steam_initialised())
                                {
                                    if (steam_user_owns_dlc(1952658))
                                    {
                                        if (steam_user_installed_dlc(1952658))
                                        {
                                            global.menu_return_to = 6;
                                            var load_from = "puzshop";
                                            global.use_special_puz_controller = 2;
                                            if (puz_type == 2)
                                            {
                                                global.puzzle_number_to_play = puz_num + 5000;
                                            }
                                            if (puz_type == 3)
                                            {
                                                global.puzzle_number_to_play = puz_num + 7000;
                                            }
                                            if (puz_type == 4)
                                            {
                                                global.puzzle_number_to_play = puz_num + 100;
                                            }
                                            if (puz_type == 5)
                                            {
                                                global.puzzle_number_to_play = puz_num + 1000;
                                            }
                                            global.level_type = puzzle_level_type;
                                            global.puzzle_pieces_to_use = ob_puzzle_pieces;
                                            global.current_pack_open = 5000;
                                            global.total_number_of_pieces = puzzle_number_of_pieces;
                                            global.puzzle_max_number_of_pieces = puzzle_number_of_pieces;
                                            global.current_puzzle_global_puzzle_number = 100000;
                                            global.puzzle_controller_to_use = ob_uniques_puzzle_controller;
                                            if (global.current_puzzle_ghost_image == 0)
                                            {
                                            }
                                            else
                                            {
                                                sprite_delete(global.current_puzzle_ghost_image);
                                            }
                                            var ghost_to_use = "misc\" + string(load_from) + "\p5000p" + string(global.puzzle_number_to_play) + ".png";
                                            global.current_puzzle_ghost_image = sprite_add(working_directory + string(ghost_to_use), 0, false, false, 0, 0);
                                            var sprite_x = 0;
                                            var sprite_y = 0;
                                            if (global.total_number_of_pieces == 60)
                                            {
                                                sprite_x = 132;
                                                sprite_y = 123;
                                            }
                                            if (global.total_number_of_pieces == 112)
                                            {
                                                sprite_x = 92;
                                                sprite_y = 90;
                                            }
                                            if (global.total_number_of_pieces == 153)
                                            {
                                                sprite_x = 75;
                                                sprite_y = 80;
                                            }
                                            if (global.total_number_of_pieces == 220)
                                            {
                                                sprite_x = 64;
                                                sprite_y = 64;
                                            }
                                            if (global.total_number_of_pieces == 350)
                                            {
                                                sprite_x = 49;
                                                sprite_y = 49;
                                            }
                                            if (global.total_number_of_pieces == 96)
                                            {
                                                sprite_x = 112;
                                                sprite_y = 108;
                                            }
                                            if (global.total_number_of_pieces == 140)
                                            {
                                                sprite_x = 96;
                                                sprite_y = 86;
                                            }
                                            if (global.total_number_of_pieces == 216)
                                            {
                                                sprite_x = 74;
                                                sprite_y = 71;
                                            }
                                            if (global.total_number_of_pieces == 330)
                                            {
                                                sprite_x = 59;
                                                sprite_y = 49;
                                            }
                                            if (global.total_number_of_pieces == 425)
                                            {
                                                sprite_x = 51;
                                                sprite_y = 49;
                                            }
                                            if (global.total_number_of_pieces == 640 && puzzle_level_type == 2)
                                            {
                                                sprite_x = 39;
                                                sprite_y = 41;
                                            }
                                            if (global.total_number_of_pieces == 840)
                                            {
                                                sprite_x = 35;
                                                sprite_y = 33;
                                            }
                                            if (global.total_number_of_pieces == 1410)
                                            {
                                                sprite_x = 26;
                                                sprite_y = 26;
                                            }
                                            if (global.total_number_of_pieces == 100)
                                            {
                                                sprite_x = 100;
                                                sprite_y = 100;
                                            }
                                            if (global.total_number_of_pieces == 169)
                                            {
                                                sprite_x = 76;
                                                sprite_y = 76;
                                            }
                                            if (global.total_number_of_pieces == 324)
                                            {
                                                sprite_x = 53;
                                                sprite_y = 53;
                                            }
                                            if (global.total_number_of_pieces == 400)
                                            {
                                                sprite_x = 48;
                                                sprite_y = 48;
                                            }
                                            if (global.total_number_of_pieces == 676)
                                            {
                                                sprite_x = 36;
                                                sprite_y = 36;
                                            }
                                            if (global.total_number_of_pieces == 841)
                                            {
                                                sprite_x = 30;
                                                sprite_y = 30;
                                            }
                                            if (global.total_number_of_pieces == 126)
                                            {
                                                sprite_x = 100;
                                                sprite_y = 100;
                                            }
                                            if (global.total_number_of_pieces == 168)
                                            {
                                                sprite_x = 85;
                                                sprite_y = 85;
                                            }
                                            if (global.total_number_of_pieces == 250)
                                            {
                                                sprite_x = 71;
                                                sprite_y = 67;
                                            }
                                            if (global.total_number_of_pieces == 455)
                                            {
                                                sprite_x = 49;
                                                sprite_y = 51;
                                            }
                                            if (global.total_number_of_pieces == 640 && puzzle_level_type == 4)
                                            {
                                                sprite_x = 42;
                                                sprite_y = 40;
                                            }
                                            if (global.total_number_of_pieces == 810)
                                            {
                                                sprite_x = 37;
                                                sprite_y = 35;
                                            }
                                            if (global.total_number_of_pieces == 1000)
                                            {
                                                sprite_x = 33;
                                                sprite_y = 31;
                                            }
                                            if (global.puzzle_number_to_play == 101)
                                            {
                                                sprite_x = 118;
                                                sprite_y = 131;
                                            }
                                            if (global.puzzle_number_to_play == 102)
                                            {
                                                sprite_x = 172;
                                                sprite_y = 143;
                                            }
                                            if (global.puzzle_number_to_play == 103)
                                            {
                                                sprite_x = 140;
                                                sprite_y = 174;
                                            }
                                            if (global.puzzle_number_to_play == 104)
                                            {
                                                sprite_x = 132;
                                                sprite_y = 110;
                                            }
                                            if (global.puzzle_number_to_play == 105)
                                            {
                                                sprite_x = 92;
                                                sprite_y = 95;
                                            }
                                            if (global.puzzle_number_to_play == 106)
                                            {
                                                sprite_x = 64;
                                                sprite_y = 64;
                                            }
                                            if (global.puzzle_number_to_play == 107)
                                            {
                                                sprite_x = 68;
                                                sprite_y = 81;
                                            }
                                            if (global.puzzle_number_to_play == 108)
                                            {
                                                sprite_x = 86;
                                                sprite_y = 81;
                                            }
                                            if (global.puzzle_number_to_play == 109)
                                            {
                                                sprite_x = 110;
                                                sprite_y = 130;
                                            }
                                            if (global.puzzle_number_to_play == 110)
                                            {
                                                sprite_x = 77;
                                                sprite_y = 81;
                                            }
                                            if (global.puzzle_number_to_play == 111)
                                            {
                                                sprite_x = 77;
                                                sprite_y = 79;
                                            }
                                            if (global.puzzle_number_to_play == 112)
                                            {
                                                sprite_x = 83;
                                                sprite_y = 81;
                                            }
                                            if (global.puzzle_number_to_play == 113)
                                            {
                                                sprite_x = 140;
                                                sprite_y = 111;
                                            }
                                            if (global.puzzle_number_to_play == 114)
                                            {
                                                sprite_x = 112;
                                                sprite_y = 97;
                                            }
                                            if (global.puzzle_number_to_play == 115)
                                            {
                                                sprite_x = 120;
                                                sprite_y = 121;
                                            }
                                            if (global.puzzle_number_to_play == 116)
                                            {
                                                sprite_x = 117;
                                                sprite_y = 109;
                                            }
                                            if (global.puzzle_number_to_play == 117)
                                            {
                                                sprite_x = 97;
                                                sprite_y = 107;
                                            }
                                            if (global.puzzle_number_to_play == 118)
                                            {
                                                sprite_x = 83;
                                                sprite_y = 83;
                                            }
                                            if (global.puzzle_number_to_play == 119)
                                            {
                                                sprite_x = 190;
                                                sprite_y = 165;
                                            }
                                            if (global.puzzle_sprite_index_to_use == 0)
                                            {
                                            }
                                            else
                                            {
                                                sprite_delete(global.puzzle_sprite_index_to_use);
                                            }
                                            var sprite_use = "misc\" + string(load_from) + "\p5000p" + string(global.puzzle_number_to_play) + "p.png";
                                            global.puzzle_sprite_index_to_use = sprite_add(working_directory + string(sprite_use), global.total_number_of_pieces, false, false, sprite_x, sprite_y);
                                            sprite_collision_mask(global.puzzle_sprite_index_to_use, true, 1, 0, 0, 0, 0, 0, 0);
                                            if (global.audio_menu_effects_0_is_on == 0)
                                            {
                                                audio_play_sound(global.sound_click_puzzle_button, 1, false);
                                            }
                                            room_goto(r_puzzle_room);
                                        }
                                    }
                                    else
                                    {
                                        steam_activate_overlay_store(1952658);
                                    }
                                }
                            }
                        }
                    }
                }
                else
                {
                    if (options_open_alpha < 1)
                    {
                        options_open_alpha += 0.05;
                    }
                    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x + 48, y - 53, x + 88, y - 13))
                    {
                        if (mouse_check_button(mb_left))
                        {
                            options_open_scale = 0.89;
                        }
                        else
                        {
                            options_open_scale = 1.03;
                        }
                        if (mouse_check_button_pressed(mb_left))
                        {
                            if (can_click_button == 1)
                            {
                                audio_play_sound(s_ui_x_button, 1, false);
                                puz_options_open = 0;
                                can_click_button = 0;
                                alarm[1] = 10;
                            }
                        }
                    }
                    else
                    {
                        options_open_scale = 1;
                    }
                    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x - 87, y - 20, x + 33, y - 2))
                    {
                        if (mouse_check_button(mb_left))
                        {
                            options_leaderboard_button_scale = 0.89;
                        }
                        else
                        {
                            options_leaderboard_button_scale = 1.02;
                        }
                        if (mouse_check_button_pressed(mb_left))
                        {
                            if (can_click_button == 1)
                            {
                                audio_play_sound(s_button_pressed_accepted, 1, false);
                                if (puz_type == 1)
                                {
                                    steam_activate_overlay_browser(chal_lb);
                                    puz_options_open = 0;
                                    can_click_button = 0;
                                    alarm[1] = 10;
                                }
                            }
                        }
                    }
                    else
                    {
                        options_leaderboard_button_scale = 1;
                    }
                    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x - 87, y + 6, x + 33, y + 24))
                    {
                        if (mouse_check_button(mb_left))
                        {
                            options_reset_button_scale = 0.89;
                        }
                        else
                        {
                            options_reset_button_scale = 1.02;
                        }
                        if (mouse_check_button_pressed(mb_left))
                        {
                            if (can_click_button == 1)
                            {
                                audio_play_sound(s_remove_fav, 1, false);
                                var puzzle_to_reset = 0;
                                var new_puz_num = 0;
                                if (puz_type == 1)
                                {
                                    new_puz_num = puz_num;
                                }
                                if (puz_type == 2)
                                {
                                    new_puz_num = puz_num + 5000;
                                }
                                if (puz_type == 3)
                                {
                                    new_puz_num = puz_num + 7000;
                                }
                                if (puz_type == 4)
                                {
                                    new_puz_num = puz_num + 100;
                                }
                                if (puz_type == 5)
                                {
                                    new_puz_num = puz_num + 1000;
                                }
                                puzzle_to_reset = "p5000x" + string(new_puz_num);
                                ini_open("ppu.ini");
                                ini_section_delete(puzzle_to_reset);
                                ini_close();
                                pieces_placed = 0;
                                puz_options_open = 0;
                                can_click_button = 0;
                                alarm[1] = 10;
                            }
                        }
                    }
                    else
                    {
                        options_reset_button_scale = 1;
                    }
                    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x - 87, y + 32, x + 33, y + 50))
                    {
                        if (mouse_check_button(mb_left))
                        {
                            options_build_button_scale = 0.89;
                        }
                        else
                        {
                            options_build_button_scale = 1.02;
                        }
                        if (mouse_check_button_pressed(mb_left))
                        {
                            if (can_click_button == 1)
                            {
                                if (puz_beat == 1)
                                {
                                    audio_play_sound(s_add_fav, 1, false);
                                    if (puz_type == 1)
                                    {
                                        ob_new_menu_controller.p_t_r = puz_num;
                                    }
                                    if (puz_type == 2)
                                    {
                                        ob_new_menu_controller.p_t_r = puz_num + 5000;
                                    }
                                    if (puz_type == 3)
                                    {
                                        ob_new_menu_controller.p_t_r = puz_num + 7000;
                                    }
                                    if (puz_type == 4)
                                    {
                                        ob_new_menu_controller.p_t_r = puz_num + 100;
                                    }
                                    if (puz_type == 5)
                                    {
                                        ob_new_menu_controller.p_t_r = puz_num + 1000;
                                    }
                                    ob_new_menu_controller.pk_tr = 5000;
                                    ob_new_menu_controller.s_t_r = puzzle_number_of_pieces;
                                    ob_new_menu_controller.c_b_u = id;
                                    ob_new_menu_controller.alarm[2] = 1;
                                }
                                puz_options_open = 0;
                                can_click_button = 0;
                                alarm[1] = 10;
                            }
                        }
                    }
                    else
                    {
                        options_build_button_scale = 1;
                    }
                }
            }
            else if (puz_type == 6 || puz_type == 7 || puz_type == 8 || puz_type == 9)
            {
                if (place_meeting(x, y, ob_menu_cursor))
                {
                    if (mouse_check_button_pressed(mb_left))
                    {
                        if (can_click_button == 1)
                        {
                            if (steam_user_owns_dlc(1952658))
                            {
                                if (steam_user_installed_dlc(1952658))
                                {
                                    if (puz_type == 6)
                                    {
                                        audio_play_sound(s_option_button_press, 1, false);
                                        global.kiosk_item_current_cursor = puz_num - 1;
                                        ini_open("ppu.ini");
                                        var p0x197p64 = base64_encode(string(global.kiosk_item_current_cursor));
                                        ini_write_string("save", "p0x197p64", p0x197p64);
                                        ini_close();
                                        if (global.audio_menu_effects_0_is_on == 0)
                                        {
                                            audio_play_sound(global.sound_top_buttons_click, 1, false);
                                        }
                                    }
                                    if (puz_type == 8)
                                    {
                                        var backgroud_use = "\menubg\defaultbacking" + string(puz_num) + ".png";
                                        if (file_exists(working_directory + string(backgroud_use)))
                                        {
                                            audio_play_sound(s_option_button_press, 1, false);
                                            ob_menu_backing.show_black_or_backing = 0;
                                            sprite_delete(global.current_menu_backing);
                                            global.current_menu_backing = sprite_add(working_directory + string(backgroud_use), 0, false, false, 0, 0);
                                            ob_menu_backing.alarm[0] = 2;
                                            ini_open("ppu.ini");
                                            var p0x175p3365 = base64_encode(string(puz_num));
                                            ini_write_string("save", "p0x175p3365", p0x175p3365);
                                            ini_close();
                                            if (global.audio_menu_effects_0_is_on == 0)
                                            {
                                                audio_play_sound(global.sound_top_buttons_click, 1, false);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
if (y < maxy_vis && y > miny_vis)
{
    if (puz_num > 0)
    {
        if (trade_open == 1 || puz_options_open == 1)
        {
            button_scale = 1;
        }
        else if (place_meeting(x, y, ob_menu_cursor))
        {
            if (mouse_check_button(mb_left))
            {
                button_scale = 0.99;
            }
            else
            {
                button_scale = 1.01;
            }
        }
        else
        {
            button_scale = 1;
        }
    }
    if (image_alpha < 1)
    {
        image_alpha += 0.05;
    }
}
else
{
    image_alpha = 0;
}
