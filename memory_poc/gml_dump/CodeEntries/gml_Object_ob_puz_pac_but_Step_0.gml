if (side_button_or_icon == 1)
{
    if (ob_new_menu_controller.current_menu_page == 1 || ob_new_menu_controller.current_menu_page == 14)
    {
    }
    else
    {
        instance_destroy();
    }
}
if (y < maxy_vis && y > miny_vis)
{
    if (image_alpha < 1)
    {
        image_alpha += 0.05;
    }
}
else
{
    image_alpha = 0;
}
if (global.nm_block_for_intro == 0)
{
    if (place_meeting(x, y, ob_menu_cursor))
    {
        if (mouse_check_button(mb_left))
        {
            button_scale = 0.99;
        }
        else
        {
            button_scale = 1.02;
        }
        if (y < maxy_vis && y > miny_vis)
        {
            if (pack_num > 0)
            {
                if (mouse_check_button_released(mb_left))
                {
                    if (pack_owned == 0)
                    {
                        if (global.audio_menu_effects_0_is_on == 0)
                        {
                            audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                        }
                        if (side_button_or_icon == 0)
                        {
                            steam_activate_overlay_store(appid);
                            audio_play_sound(s_button_pressed_accepted, 1, false);
                        }
                        else
                        {
                            steam_activate_overlay_store(appid);
                            audio_play_sound(s_button_pressed_accepted, 1, false);
                        }
                    }
                    else if (pack_owned == 1)
                    {
                        if (pack_num == ob_new_menu_controller.pack_to_open)
                        {
                        }
                        else
                        {
                            var check_file = "\misc\content\p" + string(pack_num) + "p1b.png";
                            if (file_exists(working_directory + string(check_file)))
                            {
                                audio_play_sound(s_hint_ghost, 1, false);
                                if (side_button_or_icon == 0)
                                {
                                    with (ob_new_menu_puz_button)
                                    {
                                        instance_destroy();
                                    }
                                    ob_new_menu_controller.open_pack_name_to_display = pack_name;
                                    ob_new_menu_controller.current_menu_page = 2;
                                    ob_new_menu_controller.pack_open_total_puzzles_beat = puzzles_beat;
                                    ob_new_menu_controller.pack_to_open = pack_num;
                                    ob_new_menu_controller.current_generic_page = 0;
                                    ob_new_menu_controller.max_generic_pages = 1;
                                    ob_new_menu_controller.pack_open_total_puzzles = pack_qnt;
                                    button_id = instance_create(755, 967, ob_new_menu_generic_button);
                                    button_id.button_number = 21;
                                    button_id.sprite_index = sp_new_menu_next_button;
                                    button_id = instance_create(1468, 967, ob_new_menu_generic_button);
                                    button_id.button_number = 22;
                                    button_id.sprite_index = sp_new_menu_next_button;
                                    ob_new_menu_controller.alarm[5] = 1;
                                }
                                else
                                {
                                    with (ob_new_menu_puz_button)
                                    {
                                        instance_destroy();
                                    }
                                    ob_new_menu_controller.open_pack_name_to_display = pack_name;
                                    ob_new_menu_controller.current_menu_page = 2;
                                    ob_new_menu_controller.pack_open_total_puzzles_beat = puzzles_beat;
                                    ob_new_menu_controller.pack_to_open = pack_num;
                                    ob_new_menu_controller.current_generic_page = 0;
                                    ob_new_menu_controller.max_generic_pages = 1;
                                    ob_new_menu_controller.pack_open_total_puzzles = pack_qnt;
                                    button_id = instance_create(755, 967, ob_new_menu_generic_button);
                                    button_id.button_number = 21;
                                    button_id.sprite_index = sp_new_menu_next_button;
                                    button_id = instance_create(1468, 967, ob_new_menu_generic_button);
                                    button_id.button_number = 22;
                                    button_id.sprite_index = sp_new_menu_next_button;
                                    ob_new_menu_controller.alarm[5] = 1;
                                    ob_new_menu_controller.tags_menu_open = 0;
                                    ob_new_menu_controller.p_ttm = 0;
                                    ob_new_menu_controller.alarm[4] = 1;
                                }
                            }
                            else if (side_button_or_icon == 1)
                            {
                                if (show_loading_icon == 0)
                                {
                                    show_loading_icon = 1;
                                    alarm[1] = 1;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    else
    {
        button_scale = 1;
    }
}
if (mouse_check_button_pressed(mb_right))
{
    if (global.nm_block_for_intro == 0)
    {
        if (place_meeting(x, y, ob_menu_cursor))
        {
            if (y < maxy_vis && y > miny_vis)
            {
                if (pack_num > 0)
                {
                    if (pack_is_fav == 0)
                    {
                        audio_play_sound(s_add_fav, 1, false);
                        with (ob_puz_pac_but)
                        {
                            alarm[2] = 1;
                        }
                        var fav_slot_to_use = 0;
                        var fav_save = 0;
                        var save_fav = 0;
                        ini_open("ppu.ini");
                        if (ob_new_menu_controller.fav_1 == 0)
                        {
                            pack_is_fav = 1;
                            ob_new_menu_controller.fav_1 = pack_num;
                            fav_slot_to_use = "p6000x1";
                            fav_save = pack_num;
                            save_fav = base64_encode(string(fav_save));
                            ini_write_string("p6004x0", fav_slot_to_use, save_fav);
                        }
                        else if (ob_new_menu_controller.fav_2 == 0)
                        {
                            pack_is_fav = 1;
                            ob_new_menu_controller.fav_2 = pack_num;
                            fav_slot_to_use = "p6000x2";
                            fav_save = pack_num;
                            save_fav = base64_encode(string(fav_save));
                            ini_write_string("p6004x0", fav_slot_to_use, save_fav);
                        }
                        else if (ob_new_menu_controller.fav_3 == 0)
                        {
                            pack_is_fav = 1;
                            ob_new_menu_controller.fav_3 = pack_num;
                            fav_slot_to_use = "p6000x3";
                            fav_save = pack_num;
                            save_fav = base64_encode(string(fav_save));
                            ini_write_string("p6004x0", fav_slot_to_use, save_fav);
                        }
                        else if (ob_new_menu_controller.fav_4 == 0)
                        {
                            pack_is_fav = 1;
                            ob_new_menu_controller.fav_4 = pack_num;
                            fav_slot_to_use = "p6000x4";
                            fav_save = pack_num;
                            save_fav = base64_encode(string(fav_save));
                            ini_write_string("p6004x0", fav_slot_to_use, save_fav);
                        }
                        else if (ob_new_menu_controller.fav_5 == 0)
                        {
                            pack_is_fav = 1;
                            ob_new_menu_controller.fav_5 = pack_num;
                            fav_slot_to_use = "p6000x5";
                            fav_save = pack_num;
                            save_fav = base64_encode(string(fav_save));
                            ini_write_string("p6004x0", fav_slot_to_use, save_fav);
                        }
                        else if (ob_new_menu_controller.fav_6 == 0)
                        {
                            pack_is_fav = 1;
                            ob_new_menu_controller.fav_6 = pack_num;
                            fav_slot_to_use = "p6000x6";
                            fav_save = pack_num;
                            save_fav = base64_encode(string(fav_save));
                            ini_write_string("p6004x0", fav_slot_to_use, save_fav);
                        }
                        else if (ob_new_menu_controller.fav_7 == 0)
                        {
                            pack_is_fav = 1;
                            ob_new_menu_controller.fav_7 = pack_num;
                            fav_slot_to_use = "p6000x7";
                            fav_save = pack_num;
                            save_fav = base64_encode(string(fav_save));
                            ini_write_string("p6004x0", fav_slot_to_use, save_fav);
                        }
                        else if (ob_new_menu_controller.fav_8 == 0)
                        {
                            pack_is_fav = 1;
                            ob_new_menu_controller.fav_8 = pack_num;
                            fav_slot_to_use = "p6000x8";
                            fav_save = pack_num;
                            save_fav = base64_encode(string(fav_save));
                            ini_write_string("p6004x0", fav_slot_to_use, save_fav);
                        }
                        else if (ob_new_menu_controller.fav_9 == 0)
                        {
                            pack_is_fav = 1;
                            ob_new_menu_controller.fav_9 = pack_num;
                            fav_slot_to_use = "p6000x9";
                            fav_save = pack_num;
                            save_fav = base64_encode(string(fav_save));
                            ini_write_string("p6004x0", fav_slot_to_use, save_fav);
                        }
                        else if (ob_new_menu_controller.fav_10 == 0)
                        {
                            pack_is_fav = 1;
                            ob_new_menu_controller.fav_10 = pack_num;
                            fav_slot_to_use = "p6000x10";
                            fav_save = pack_num;
                            save_fav = base64_encode(string(fav_save));
                            ini_write_string("p6004x0", fav_slot_to_use, save_fav);
                        }
                        else if (ob_new_menu_controller.fav_11 == 0)
                        {
                            pack_is_fav = 1;
                            ob_new_menu_controller.fav_11 = pack_num;
                            fav_slot_to_use = "p6000x11";
                            fav_save = pack_num;
                            save_fav = base64_encode(string(fav_save));
                            ini_write_string("p6004x0", fav_slot_to_use, save_fav);
                        }
                        else if (ob_new_menu_controller.fav_12 == 0)
                        {
                            pack_is_fav = 1;
                            ob_new_menu_controller.fav_12 = pack_num;
                            fav_slot_to_use = "p6000x12";
                            fav_save = pack_num;
                            save_fav = base64_encode(string(fav_save));
                            ini_write_string("p6004x0", fav_slot_to_use, save_fav);
                        }
                        else if (ob_new_menu_controller.fav_13 == 0)
                        {
                            pack_is_fav = 1;
                            ob_new_menu_controller.fav_13 = pack_num;
                            fav_slot_to_use = "p6000x13";
                            fav_save = pack_num;
                            save_fav = base64_encode(string(fav_save));
                            ini_write_string("p6004x0", fav_slot_to_use, save_fav);
                        }
                        else if (ob_new_menu_controller.fav_14 == 0)
                        {
                            pack_is_fav = 1;
                            ob_new_menu_controller.fav_14 = pack_num;
                            fav_slot_to_use = "p6000x14";
                            fav_save = pack_num;
                            save_fav = base64_encode(string(fav_save));
                            ini_write_string("p6004x0", fav_slot_to_use, save_fav);
                        }
                        else if (ob_new_menu_controller.fav_15 == 0)
                        {
                            pack_is_fav = 1;
                            ob_new_menu_controller.fav_15 = pack_num;
                            fav_slot_to_use = "p6000x15";
                            fav_save = pack_num;
                            save_fav = base64_encode(string(fav_save));
                            ini_write_string("p6004x0", fav_slot_to_use, save_fav);
                        }
                        else if (ob_new_menu_controller.fav_16 == 0)
                        {
                            pack_is_fav = 1;
                            ob_new_menu_controller.fav_16 = pack_num;
                            fav_slot_to_use = "p6000x16";
                            fav_save = pack_num;
                            save_fav = base64_encode(string(fav_save));
                            ini_write_string("p6004x0", fav_slot_to_use, save_fav);
                        }
                        else if (ob_new_menu_controller.fav_17 == 0)
                        {
                            pack_is_fav = 1;
                            ob_new_menu_controller.fav_17 = pack_num;
                            fav_slot_to_use = "p6000x17";
                            fav_save = pack_num;
                            save_fav = base64_encode(string(fav_save));
                            ini_write_string("p6004x0", fav_slot_to_use, save_fav);
                        }
                        else if (ob_new_menu_controller.fav_18 == 0)
                        {
                            pack_is_fav = 1;
                            ob_new_menu_controller.fav_18 = pack_num;
                            fav_slot_to_use = "p6000x18";
                            fav_save = pack_num;
                            save_fav = base64_encode(string(fav_save));
                            ini_write_string("p6004x0", fav_slot_to_use, save_fav);
                        }
                        else if (ob_new_menu_controller.fav_19 == 0)
                        {
                            pack_is_fav = 1;
                            ob_new_menu_controller.fav_19 = pack_num;
                            fav_slot_to_use = "p6000x19";
                            fav_save = pack_num;
                            save_fav = base64_encode(string(fav_save));
                            ini_write_string("p6004x0", fav_slot_to_use, save_fav);
                        }
                        else if (ob_new_menu_controller.fav_20 == 0)
                        {
                            pack_is_fav = 1;
                            ob_new_menu_controller.fav_20 = pack_num;
                            fav_slot_to_use = "p6000x20";
                            fav_save = pack_num;
                            save_fav = base64_encode(string(fav_save));
                            ini_write_string("p6004x0", fav_slot_to_use, save_fav);
                        }
                        else if (ob_new_menu_controller.fav_21 == 0)
                        {
                            pack_is_fav = 1;
                            ob_new_menu_controller.fav_21 = pack_num;
                            fav_slot_to_use = "p6000x21";
                            fav_save = pack_num;
                            save_fav = base64_encode(string(fav_save));
                            ini_write_string("p6004x0", fav_slot_to_use, save_fav);
                        }
                        else if (ob_new_menu_controller.fav_22 == 0)
                        {
                            pack_is_fav = 1;
                            ob_new_menu_controller.fav_22 = pack_num;
                            fav_slot_to_use = "p6000x22";
                            fav_save = pack_num;
                            save_fav = base64_encode(string(fav_save));
                            ini_write_string("p6004x0", fav_slot_to_use, save_fav);
                        }
                        else if (ob_new_menu_controller.fav_23 == 0)
                        {
                            pack_is_fav = 1;
                            ob_new_menu_controller.fav_23 = pack_num;
                            fav_slot_to_use = "p6000x23";
                            fav_save = pack_num;
                            save_fav = base64_encode(string(fav_save));
                            ini_write_string("p6004x0", fav_slot_to_use, save_fav);
                        }
                        else if (ob_new_menu_controller.fav_24 == 0)
                        {
                            pack_is_fav = 1;
                            ob_new_menu_controller.fav_24 = pack_num;
                            fav_slot_to_use = "p6000x24";
                            fav_save = pack_num;
                            save_fav = base64_encode(string(fav_save));
                            ini_write_string("p6004x0", fav_slot_to_use, save_fav);
                        }
                        else if (ob_new_menu_controller.fav_25 == 0)
                        {
                            pack_is_fav = 1;
                            ob_new_menu_controller.fav_25 = pack_num;
                            fav_slot_to_use = "p6000x25";
                            fav_save = pack_num;
                            save_fav = base64_encode(string(fav_save));
                            ini_write_string("p6004x0", fav_slot_to_use, save_fav);
                        }
                        ini_close();
                        if (ob_new_menu_controller.current_menu_page == 14)
                        {
                            with (ob_puz_pac_but)
                            {
                                alarm[5] = 1;
                            }
                            var p_l = ds_list_create();
                            if (ob_new_menu_controller.fav_1 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_1);
                            }
                            if (ob_new_menu_controller.fav_2 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_2);
                            }
                            if (ob_new_menu_controller.fav_3 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_3);
                            }
                            if (ob_new_menu_controller.fav_4 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_4);
                            }
                            if (ob_new_menu_controller.fav_5 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_5);
                            }
                            if (ob_new_menu_controller.fav_6 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_6);
                            }
                            if (ob_new_menu_controller.fav_7 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_7);
                            }
                            if (ob_new_menu_controller.fav_8 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_8);
                            }
                            if (ob_new_menu_controller.fav_9 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_9);
                            }
                            if (ob_new_menu_controller.fav_10 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_10);
                            }
                            if (ob_new_menu_controller.fav_11 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_11);
                            }
                            if (ob_new_menu_controller.fav_12 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_12);
                            }
                            if (ob_new_menu_controller.fav_13 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_13);
                            }
                            if (ob_new_menu_controller.fav_14 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_14);
                            }
                            if (ob_new_menu_controller.fav_15 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_15);
                            }
                            if (ob_new_menu_controller.fav_16 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_16);
                            }
                            if (ob_new_menu_controller.fav_17 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_17);
                            }
                            if (ob_new_menu_controller.fav_18 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_18);
                            }
                            if (ob_new_menu_controller.fav_19 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_19);
                            }
                            if (ob_new_menu_controller.fav_20 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_20);
                            }
                            if (ob_new_menu_controller.fav_21 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_21);
                            }
                            if (ob_new_menu_controller.fav_22 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_22);
                            }
                            if (ob_new_menu_controller.fav_23 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_23);
                            }
                            if (ob_new_menu_controller.fav_24 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_24);
                            }
                            if (ob_new_menu_controller.fav_25 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_25);
                            }
                            puz_remaining = ds_list_size(p_l);
                            puz_remaining -= 1;
                            var p_l_num = puz_remaining;
                            var puz_x = 799;
                            var puz_y = 271;
                            var puz_x_plus = 157;
                            var puz_y_plus = 148;
                            var y_times = 0;
                            ini_open("ppu.ini");
                            puz_but = instance_create(puz_x, puz_y, ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (1 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (2 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (3 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (4 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            y_times += 1;
                            puz_but = instance_create(puz_x, puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (1 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (2 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (3 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (4 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            y_times += 1;
                            puz_but = instance_create(puz_x, puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (1 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (2 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (3 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (4 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            y_times += 1;
                            puz_but = instance_create(puz_x, puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (1 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (2 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (3 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (4 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            y_times += 1;
                            puz_but = instance_create(puz_x, puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (1 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (2 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (3 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (4 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            y_times += 1;
                            ds_list_destroy(p_l);
                            ini_close();
                        }
                    }
                    else
                    {
                        audio_play_sound(s_remove_fav, 1, false);
                        with (ob_puz_pac_but)
                        {
                            alarm[2] = 1;
                        }
                        ini_open("ppu.ini");
                        if (ob_new_menu_controller.fav_1 == pack_num)
                        {
                            pack_is_fav = 0;
                            ini_key_delete("p6004x0", "p6000x1");
                            ob_new_menu_controller.fav_1 = 0;
                        }
                        else if (ob_new_menu_controller.fav_2 == pack_num)
                        {
                            pack_is_fav = 0;
                            ini_key_delete("p6004x0", "p6000x2");
                            ob_new_menu_controller.fav_2 = 0;
                        }
                        else if (ob_new_menu_controller.fav_3 == pack_num)
                        {
                            pack_is_fav = 0;
                            ini_key_delete("p6004x0", "p6000x3");
                            ob_new_menu_controller.fav_3 = 0;
                        }
                        else if (ob_new_menu_controller.fav_4 == pack_num)
                        {
                            pack_is_fav = 0;
                            ini_key_delete("p6004x0", "p6000x4");
                            ob_new_menu_controller.fav_4 = 0;
                        }
                        else if (ob_new_menu_controller.fav_5 == pack_num)
                        {
                            pack_is_fav = 0;
                            ini_key_delete("p6004x0", "p6000x5");
                            ob_new_menu_controller.fav_5 = 0;
                        }
                        else if (ob_new_menu_controller.fav_6 == pack_num)
                        {
                            pack_is_fav = 0;
                            ini_key_delete("p6004x0", "p6000x6");
                            ob_new_menu_controller.fav_6 = 0;
                        }
                        else if (ob_new_menu_controller.fav_7 == pack_num)
                        {
                            pack_is_fav = 0;
                            ini_key_delete("p6004x0", "p6000x7");
                            ob_new_menu_controller.fav_7 = 0;
                        }
                        else if (ob_new_menu_controller.fav_8 == pack_num)
                        {
                            pack_is_fav = 0;
                            ini_key_delete("p6004x0", "p6000x8");
                            ob_new_menu_controller.fav_8 = 0;
                        }
                        else if (ob_new_menu_controller.fav_9 == pack_num)
                        {
                            pack_is_fav = 0;
                            ini_key_delete("p6004x0", "p6000x9");
                            ob_new_menu_controller.fav_9 = 0;
                        }
                        else if (ob_new_menu_controller.fav_10 == pack_num)
                        {
                            pack_is_fav = 0;
                            ini_key_delete("p6004x0", "p6000x10");
                            ob_new_menu_controller.fav_10 = 0;
                        }
                        else if (ob_new_menu_controller.fav_11 == pack_num)
                        {
                            pack_is_fav = 0;
                            ini_key_delete("p6004x0", "p6000x11");
                            ob_new_menu_controller.fav_11 = 0;
                        }
                        else if (ob_new_menu_controller.fav_12 == pack_num)
                        {
                            pack_is_fav = 0;
                            ini_key_delete("p6004x0", "p6000x12");
                            ob_new_menu_controller.fav_12 = 0;
                        }
                        else if (ob_new_menu_controller.fav_13 == pack_num)
                        {
                            pack_is_fav = 0;
                            ini_key_delete("p6004x0", "p6000x13");
                            ob_new_menu_controller.fav_13 = 0;
                        }
                        else if (ob_new_menu_controller.fav_14 == pack_num)
                        {
                            pack_is_fav = 0;
                            ini_key_delete("p6004x0", "p6000x14");
                            ob_new_menu_controller.fav_14 = 0;
                        }
                        else if (ob_new_menu_controller.fav_15 == pack_num)
                        {
                            pack_is_fav = 0;
                            ini_key_delete("p6004x0", "p6000x15");
                            ob_new_menu_controller.fav_15 = 0;
                        }
                        else if (ob_new_menu_controller.fav_16 == pack_num)
                        {
                            pack_is_fav = 0;
                            ini_key_delete("p6004x0", "p6000x16");
                            ob_new_menu_controller.fav_16 = 0;
                        }
                        else if (ob_new_menu_controller.fav_17 == pack_num)
                        {
                            pack_is_fav = 0;
                            ini_key_delete("p6004x0", "p6000x17");
                            ob_new_menu_controller.fav_17 = 0;
                        }
                        else if (ob_new_menu_controller.fav_18 == pack_num)
                        {
                            pack_is_fav = 0;
                            ini_key_delete("p6004x0", "p6000x18");
                            ob_new_menu_controller.fav_18 = 0;
                        }
                        else if (ob_new_menu_controller.fav_19 == pack_num)
                        {
                            pack_is_fav = 0;
                            ini_key_delete("p6004x0", "p6000x19");
                            ob_new_menu_controller.fav_19 = 0;
                        }
                        else if (ob_new_menu_controller.fav_20 == pack_num)
                        {
                            pack_is_fav = 0;
                            ini_key_delete("p6004x0", "p6000x20");
                            ob_new_menu_controller.fav_20 = 0;
                        }
                        else if (ob_new_menu_controller.fav_21 == pack_num)
                        {
                            pack_is_fav = 0;
                            ini_key_delete("p6004x0", "p6000x21");
                            ob_new_menu_controller.fav_21 = 0;
                        }
                        else if (ob_new_menu_controller.fav_22 == pack_num)
                        {
                            pack_is_fav = 0;
                            ini_key_delete("p6004x0", "p6000x22");
                            ob_new_menu_controller.fav_22 = 0;
                        }
                        else if (ob_new_menu_controller.fav_23 == pack_num)
                        {
                            pack_is_fav = 0;
                            ini_key_delete("p6004x0", "p6000x23");
                            ob_new_menu_controller.fav_23 = 0;
                        }
                        else if (ob_new_menu_controller.fav_24 == pack_num)
                        {
                            pack_is_fav = 0;
                            ini_key_delete("p6004x0", "p6000x24");
                            ob_new_menu_controller.fav_24 = 0;
                        }
                        else if (ob_new_menu_controller.fav_25 == pack_num)
                        {
                            pack_is_fav = 0;
                            ini_key_delete("p6004x0", "p6000x25");
                            ob_new_menu_controller.fav_25 = 0;
                        }
                        ini_close();
                        if (ob_new_menu_controller.current_menu_page == 14)
                        {
                            with (ob_puz_pac_but)
                            {
                                alarm[5] = 1;
                            }
                            var p_l = ds_list_create();
                            if (ob_new_menu_controller.fav_1 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_1);
                            }
                            if (ob_new_menu_controller.fav_2 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_2);
                            }
                            if (ob_new_menu_controller.fav_3 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_3);
                            }
                            if (ob_new_menu_controller.fav_4 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_4);
                            }
                            if (ob_new_menu_controller.fav_5 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_5);
                            }
                            if (ob_new_menu_controller.fav_6 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_6);
                            }
                            if (ob_new_menu_controller.fav_7 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_7);
                            }
                            if (ob_new_menu_controller.fav_8 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_8);
                            }
                            if (ob_new_menu_controller.fav_9 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_9);
                            }
                            if (ob_new_menu_controller.fav_10 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_10);
                            }
                            if (ob_new_menu_controller.fav_11 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_11);
                            }
                            if (ob_new_menu_controller.fav_12 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_12);
                            }
                            if (ob_new_menu_controller.fav_13 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_13);
                            }
                            if (ob_new_menu_controller.fav_14 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_14);
                            }
                            if (ob_new_menu_controller.fav_15 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_15);
                            }
                            if (ob_new_menu_controller.fav_16 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_16);
                            }
                            if (ob_new_menu_controller.fav_17 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_17);
                            }
                            if (ob_new_menu_controller.fav_18 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_18);
                            }
                            if (ob_new_menu_controller.fav_19 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_19);
                            }
                            if (ob_new_menu_controller.fav_20 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_20);
                            }
                            if (ob_new_menu_controller.fav_21 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_21);
                            }
                            if (ob_new_menu_controller.fav_22 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_22);
                            }
                            if (ob_new_menu_controller.fav_23 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_23);
                            }
                            if (ob_new_menu_controller.fav_24 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_24);
                            }
                            if (ob_new_menu_controller.fav_25 > 0)
                            {
                                ds_list_add(p_l, ob_new_menu_controller.fav_25);
                            }
                            puz_remaining = ds_list_size(p_l);
                            puz_remaining -= 1;
                            var p_l_num = puz_remaining;
                            var puz_x = 799;
                            var puz_y = 271;
                            var puz_x_plus = 157;
                            var puz_y_plus = 148;
                            var y_times = 0;
                            ini_open("ppu.ini");
                            puz_but = instance_create(puz_x, puz_y, ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (1 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (2 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (3 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (4 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            y_times += 1;
                            puz_but = instance_create(puz_x, puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (1 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (2 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (3 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (4 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            y_times += 1;
                            puz_but = instance_create(puz_x, puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (1 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (2 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (3 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (4 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            y_times += 1;
                            puz_but = instance_create(puz_x, puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (1 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (2 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (3 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (4 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            y_times += 1;
                            puz_but = instance_create(puz_x, puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (1 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (2 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (3 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            puz_but = instance_create(puz_x + (4 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                            puz_but.side_button_or_icon = 1;
                            puz_but.pack_is_fav = 1;
                            if (p_l_num > -1)
                            {
                                puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                                p_l_num -= 1;
                            }
                            y_times += 1;
                            ds_list_destroy(p_l);
                            ini_close();
                        }
                    }
                }
            }
        }
    }
}
