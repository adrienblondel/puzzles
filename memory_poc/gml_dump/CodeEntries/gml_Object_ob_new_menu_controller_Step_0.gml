if (global.nm_block_for_intro == 0)
{
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 93, 196, 381, 358))
    {
        if (mouse_check_button_released(mb_left))
        {
            steam_activate_overlay_browser("https://steamcommunity.com/groups/ThePuzzleClub");
            audio_play_sound(s_button_pressed_accepted, 1, false);
        }
        if (mouse_check_button(mb_left))
        {
            featured_button_scale = 0.99;
        }
        else
        {
            featured_button_scale = 1.01;
        }
    }
    else
    {
        featured_button_scale = 1;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 86, 675, 390, 992))
    {
        news_pause_slideshow = 1;
    }
    else
    {
        news_pause_slideshow = 0;
    }
    if (news_page_alpha < 1)
    {
        news_page_alpha += 0.02;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 95, 684, 383, 943))
    {
        if (mouse_check_button_released(mb_left))
        {
            if (news_pages == 0)
            {
                if (current_menu_page == 3)
                {
                }
                else
                {
                    audio_play_sound(s_normal_button_press, 1, false);
                    if (current_menu_page == 2 || current_menu_page == 3 || current_menu_page == 4 || current_menu_page == 5 || current_menu_page == 6 || current_menu_page == 7 || current_menu_page == 8 || current_menu_page == 9 || current_menu_page == 10 || current_menu_page == 11 || current_menu_page == 14 || current_menu_page == 15)
                    {
                    }
                    else
                    {
                        p_ttm = 0;
                        alarm[4] = 2;
                        tags_menu_open = 0;
                    }
                    current_menu_page = 3;
                    page_content_alpha = 0;
                    button_id = instance_create(1112, 620, ob_new_menu_generic_button);
                    button_id.button_number = 12;
                    button_id.sprite_index = sp_new_menu_colour_buttons;
                    button_id.image_index = 0;
                    button_id.image_alpha = 0;
                    button_id = instance_create(755, 967, ob_new_menu_generic_button);
                    button_id.button_number = 13;
                    button_id.sprite_index = sp_new_menu_next_button;
                    button_id = instance_create(1468, 967, ob_new_menu_generic_button);
                    button_id.button_number = 14;
                    button_id.sprite_index = sp_new_menu_next_button;
                    kiosk_current_page = 0;
                    kiosk_total_pages = 10;
                    global.menu_return_to = 1;
                    var puz_list = ds_list_create();
                    ds_list_add(puz_list, 86, 85, 84, 83, 82, 81, 80, 79, 78, 77, 76, 75, 74, 73, 72, 71, 70, 69, 68, 67, 66, 65);
                    ds_list_add(puz_list, 64, 63, 62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 52, 51, 50, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1);
                    ds_list_sort(puz_list, 1);
                    puz_remaining = ds_list_size(puz_list);
                    puz_remaining -= 1;
                    var p_l_num = puz_remaining;
                    var puz_x = 827;
                    var puz_y = 763;
                    var puz_but = 0;
                    var s_l = 0;
                    var s_s = 0;
                    var s_p = 0;
                    var s_pp = 0;
                    var a_c = 0;
                    ini_open("ppu.ini");
                    puz_but = instance_create(puz_x, puz_y, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 191, puz_y, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 382, puz_y, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 573, puz_y, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x, puz_y + 116, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 191, puz_y + 116, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 382, puz_y + 116, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 573, puz_y + 116, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x, puz_y + 232, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 191, puz_y + 232, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 382, puz_y + 232, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 573, puz_y + 232, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x, puz_y + 348, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 191, puz_y + 348, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 382, puz_y + 348, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 573, puz_y + 348, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x, puz_y + 464, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 191, puz_y + 464, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 382, puz_y + 464, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 573, puz_y + 464, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x, puz_y + 580, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 191, puz_y + 580, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 382, puz_y + 580, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 573, puz_y + 580, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x, puz_y + 696, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 191, puz_y + 696, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 382, puz_y + 696, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 573, puz_y + 696, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x, puz_y + 812, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 191, puz_y + 812, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 382, puz_y + 812, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 573, puz_y + 812, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x, puz_y + 928, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 191, puz_y + 928, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 382, puz_y + 928, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 573, puz_y + 928, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x, puz_y + 1044, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 191, puz_y + 1044, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 382, puz_y + 1044, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 573, puz_y + 1044, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x, puz_y + 1160, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 191, puz_y + 1160, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 382, puz_y + 1160, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 573, puz_y + 1160, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x, puz_y + 1276, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 191, puz_y + 1276, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 382, puz_y + 1276, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 573, puz_y + 1276, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x, puz_y + 1392, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 191, puz_y + 1392, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 382, puz_y + 1392, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 573, puz_y + 1392, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x, puz_y + 1508, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 191, puz_y + 1508, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 382, puz_y + 1508, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 573, puz_y + 1508, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x, puz_y + 1624, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 191, puz_y + 1624, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 382, puz_y + 1624, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 573, puz_y + 1624, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x, puz_y + 1740, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 191, puz_y + 1740, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 382, puz_y + 1740, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 573, puz_y + 1740, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x, puz_y + 1856, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 191, puz_y + 1856, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 382, puz_y + 1856, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 573, puz_y + 1856, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x, puz_y + 1972, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 191, puz_y + 1972, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 382, puz_y + 1972, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 573, puz_y + 1972, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x, puz_y + 2088, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 191, puz_y + 2088, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 382, puz_y + 2088, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 573, puz_y + 2088, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x, puz_y + 2204, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 191, puz_y + 2204, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 382, puz_y + 2204, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 573, puz_y + 2204, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x, puz_y + 2320, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 191, puz_y + 2320, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 382, puz_y + 2320, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 573, puz_y + 2320, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x, puz_y + 2436, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 191, puz_y + 2436, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 382, puz_y + 2436, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    puz_but = instance_create(puz_x + 573, puz_y + 2436, ob_new_menu_kiosk_puz);
                    if (p_l_num > -1)
                    {
                        puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                        s_l = "p5000x" + string(p_l_num + 1);
                        s_s = "p5000x" + string(p_l_num + 1) + "b0";
                        s_p = ini_read_string(s_l, s_s, 0);
                        s_pp = real(base64_decode(s_p));
                        puz_but.pieces_placed = s_pp;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                        puz_but.puz_type = 1;
                        p_l_num -= 1;
                    }
                    else
                    {
                        puz_but.puz_num = 0;
                        puz_but.maxy_vis = 900;
                        puz_but.miny_vis = 720;
                    }
                    ds_list_destroy(puz_list);
                    ini_close();
                }
            }
            else if (news_pages == 1)
            {
                steam_activate_overlay_browser("https://store.steampowered.com/bundle/1437/");
                audio_play_sound(s_button_pressed_accepted, 1, false);
            }
            else if (news_pages == 2)
            {
                steam_activate_overlay_browser("https://www.instagram.com/pixel_puzzles/");
                audio_play_sound(s_button_pressed_accepted, 1, false);
            }
            else if (news_pages == 3)
            {
                steam_activate_overlay_browser("https://steamcommunity.com/app/351030/discussions/0/1480982338963635670/");
                audio_play_sound(s_button_pressed_accepted, 1, false);
            }
        }
    }
}
if (global.nm_block_for_intro == 0)
{
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 892, 86, 1050, 107))
    {
        hover_bar_max_scale = 0.89;
        hover_bar_grow_speed = 0.03;
        if (mouse_check_button_pressed(mb_left))
        {
            if (current_menu_page == 1)
            {
            }
            else
            {
                current_menu_page = 1;
                page_content_alpha = 0;
                button_id = instance_create(755, 967, ob_new_menu_generic_button);
                button_id.button_number = 16;
                button_id.sprite_index = sp_new_menu_next_button;
                button_id = instance_create(1468, 967, ob_new_menu_generic_button);
                button_id.button_number = 17;
                button_id.sprite_index = sp_new_menu_next_button;
                audio_play_sound(s_normal_button_press, 1, false);
                with (ob_puz_pac_but)
                {
                    alarm[5] = 1;
                }
                with (ob_puz_pac_but)
                {
                    alarm[11] = 1;
                }
                current_generic_page = 0;
                max_generic_pages = 7;
                p_ttm = 1;
                alarm[4] = 1;
                if (tags_menu_open == 0)
                {
                    tags_menu_open = 1;
                    ob_puz_pac_but.alarm[10] = 1;
                    button_id = instance_create(502, 1016, ob_new_menu_generic_button);
                    button_id.button_number = 96;
                    button_id.sprite_index = sp_applytags_nm;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 281, ob_new_menu_generic_button);
                    button_id.button_number = 23;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 316, ob_new_menu_generic_button);
                    button_id.button_number = 24;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 211, ob_new_menu_generic_button);
                    button_id.button_number = 25;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 246, ob_new_menu_generic_button);
                    button_id.button_number = 26;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 351, ob_new_menu_generic_button);
                    button_id.button_number = 27;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 386, ob_new_menu_generic_button);
                    button_id.button_number = 28;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 421, ob_new_menu_generic_button);
                    button_id.button_number = 29;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 456, ob_new_menu_generic_button);
                    button_id.button_number = 30;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 491, ob_new_menu_generic_button);
                    button_id.button_number = 32;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 526, ob_new_menu_generic_button);
                    button_id.button_number = 33;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 561, ob_new_menu_generic_button);
                    button_id.button_number = 34;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 596, ob_new_menu_generic_button);
                    button_id.button_number = 35;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 631, ob_new_menu_generic_button);
                    button_id.button_number = 36;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 666, ob_new_menu_generic_button);
                    button_id.button_number = 37;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 701, ob_new_menu_generic_button);
                    button_id.button_number = 38;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 736, ob_new_menu_generic_button);
                    button_id.button_number = 39;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 771, ob_new_menu_generic_button);
                    button_id.button_number = 40;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 806, ob_new_menu_generic_button);
                    button_id.button_number = 41;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 841, ob_new_menu_generic_button);
                    button_id.button_number = 42;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 876, ob_new_menu_generic_button);
                    button_id.button_number = 43;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 911, ob_new_menu_generic_button);
                    button_id.button_number = 44;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 946, ob_new_menu_generic_button);
                    button_id.button_number = 45;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 981, ob_new_menu_generic_button);
                    button_id.button_number = 46;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                }
                if (global.p_t_free == 1 || global.p_t_1000_plus == 1 || global.p_t_animals == 1 || global.p_t_artwork == 1 || global.p_t_food == 1 || global.p_t_geography == 1 || global.p_t_history == 1 || global.p_t_holidays == 1 || global.p_t_landscapes == 1 || global.p_t_legacy == 1 || global.p_t_misc == 1 || global.p_t_nature == 1 || global.p_t_paintings == 1 || global.p_t_seasonal == 1 || global.p_t_space == 1 || global.p_t_sport == 1 || global.p_t_variety == 1 || global.p_t_vehicle == 1 || global.p_t_video_games == 1)
                {
                    global.p_t_notags = 0;
                }
                else
                {
                    global.p_t_notags = 1;
                }
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1278, 86, 1381, 107))
    {
        hover_bar_max_scale = 0.67;
        hover_bar_grow_speed = 0.03;
        if (mouse_check_button_pressed(mb_left))
        {
            if (current_menu_page == 4)
            {
            }
            else
            {
                audio_play_sound(s_normal_button_press, 1, false);
                with (ob_new_menu_puz_button)
                {
                    instance_destroy();
                }
                if (current_menu_page == 2 || current_menu_page == 3 || current_menu_page == 4 || current_menu_page == 5 || current_menu_page == 6 || current_menu_page == 7 || current_menu_page == 8 || current_menu_page == 9 || current_menu_page == 10 || current_menu_page == 11 || current_menu_page == 14 || current_menu_page == 15)
                {
                }
                else if (tags_menu_open == 1)
                {
                    p_ttm = 0;
                    alarm[4] = 2;
                    tags_menu_open = 0;
                }
                current_menu_page = 4;
                pack_to_open = 75;
                current_generic_page = 0;
                max_generic_pages = 0;
                pack_open_total_puzzles = 15;
                page_content_alpha = 0;
                button_id = instance_create(755, 967, ob_new_menu_generic_button);
                button_id.button_number = 21;
                button_id.sprite_index = sp_new_menu_next_button;
                button_id = instance_create(1468, 967, ob_new_menu_generic_button);
                button_id.button_number = 22;
                button_id.sprite_index = sp_new_menu_next_button;
                alarm[5] = 1;
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1424, 86, 1577, 107))
    {
        hover_bar_max_scale = 1;
        hover_bar_grow_speed = 0.03;
        if (mouse_check_button_pressed(mb_left))
        {
            if (current_menu_page == 5)
            {
            }
            else
            {
                audio_play_sound(s_normal_button_press, 1, false);
                with (ob_new_menu_puz_button)
                {
                    instance_destroy();
                }
                if (current_menu_page == 2 || current_menu_page == 3 || current_menu_page == 4 || current_menu_page == 5 || current_menu_page == 6 || current_menu_page == 7 || current_menu_page == 8 || current_menu_page == 9 || current_menu_page == 10 || current_menu_page == 11 || current_menu_page == 14 || current_menu_page == 15)
                {
                }
                else if (tags_menu_open == 1)
                {
                    p_ttm = 0;
                    alarm[4] = 2;
                    tags_menu_open = 0;
                }
                current_menu_page = 5;
                pack_to_open = 126;
                current_generic_page = 0;
                max_generic_pages = 0;
                pack_open_total_puzzles = 19;
                page_content_alpha = 0;
                button_id = instance_create(755, 967, ob_new_menu_generic_button);
                button_id.button_number = 21;
                button_id.sprite_index = sp_new_menu_next_button;
                button_id = instance_create(1468, 967, ob_new_menu_generic_button);
                button_id.button_number = 22;
                button_id.sprite_index = sp_new_menu_next_button;
                alarm[5] = 1;
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1619, 86, 1727, 107))
    {
        hover_bar_max_scale = 0.7;
        hover_bar_grow_speed = 0.03;
        if (mouse_check_button_pressed(mb_left))
        {
            if (current_menu_page == 6)
            {
            }
            else
            {
                audio_play_sound(s_normal_button_press, 1, false);
                if (current_menu_page == 2 || current_menu_page == 3 || current_menu_page == 4 || current_menu_page == 5 || current_menu_page == 6 || current_menu_page == 7 || current_menu_page == 8 || current_menu_page == 9 || current_menu_page == 10 || current_menu_page == 11 || current_menu_page == 14 || current_menu_page == 15)
                {
                }
                else if (tags_menu_open == 1)
                {
                    p_ttm = 0;
                    alarm[4] = 2;
                    tags_menu_open = 0;
                }
                current_menu_page = 6;
                page_content_alpha = 0;
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1768, 86, 1835, 107))
    {
        hover_bar_max_scale = 0.44;
        hover_bar_grow_speed = 0.015;
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1093, 86, 1236, 107))
    {
        hover_bar_max_scale = 0.93;
        hover_bar_grow_speed = 0.03;
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1227, 10, 1310, 26))
    {
        hover_bar_max_scale = 0.53;
        hover_bar_grow_speed = 0.02;
        if (mouse_check_button_pressed(mb_left))
        {
            if (current_menu_page == 8)
            {
            }
            else
            {
                if (current_menu_page == 2 || current_menu_page == 3 || current_menu_page == 4 || current_menu_page == 5 || current_menu_page == 6 || current_menu_page == 7 || current_menu_page == 8 || current_menu_page == 9 || current_menu_page == 10 || current_menu_page == 11 || current_menu_page == 14 || current_menu_page == 15)
                {
                }
                else if (tags_menu_open == 1)
                {
                    p_ttm = 0;
                    alarm[4] = 2;
                    tags_menu_open = 0;
                }
                current_menu_page = 8;
                page_content_alpha = 0;
                audio_play_sound(s_normal_button_press, 1, false);
                button_id = instance_create(848, 257, ob_new_menu_generic_button);
                button_id.button_number = 51;
                button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                button_id.image_alpha = 0;
                button_id = instance_create(1112, 257, ob_new_menu_generic_button);
                button_id.button_number = 52;
                button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                button_id.image_alpha = 0;
                button_id = instance_create(1376, 257, ob_new_menu_generic_button);
                button_id.button_number = 53;
                button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                button_id.image_alpha = 0;
                button_id = instance_create(1112, 367, ob_new_menu_generic_button);
                button_id.button_number = 57;
                button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                button_id.image_alpha = 0;
                button_id = instance_create(1112, 402, ob_new_menu_generic_button);
                button_id.button_number = 58;
                button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                button_id.image_alpha = 0;
                button_id = instance_create(1112, 438, ob_new_menu_generic_button);
                button_id.button_number = 59;
                button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                button_id.image_alpha = 0;
                button_id = instance_create(1112, 472, ob_new_menu_generic_button);
                button_id.button_number = 60;
                button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                button_id.image_alpha = 0;
                button_id = instance_create(1376, 367, ob_new_menu_generic_button);
                button_id.button_number = 63;
                button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                button_id.image_alpha = 0;
                button_id = instance_create(848, 582, ob_new_menu_generic_button);
                button_id.button_number = 64;
                button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                button_id.image_alpha = 0;
                button_id = instance_create(1112, 582, ob_new_menu_generic_button);
                button_id.button_number = 65;
                button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                button_id.image_alpha = 0;
                button_id = instance_create(1376, 582, ob_new_menu_generic_button);
                button_id.button_number = 66;
                button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                button_id.image_alpha = 0;
                button_id = instance_create(848, 618, ob_new_menu_generic_button);
                button_id.button_number = 97;
                button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                button_id.image_alpha = 0;
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1340, 10, 1457, 26))
    {
        hover_bar_max_scale = 0.76;
        hover_bar_grow_speed = 0.02;
        if (mouse_check_button_pressed(mb_left))
        {
            if (current_menu_page == 9)
            {
            }
            else
            {
                audio_play_sound(s_normal_button_press, 1, false);
                if (current_menu_page == 2 || current_menu_page == 3 || current_menu_page == 4 || current_menu_page == 5 || current_menu_page == 6 || current_menu_page == 7 || current_menu_page == 8 || current_menu_page == 9 || current_menu_page == 10 || current_menu_page == 11 || current_menu_page == 14 || current_menu_page == 15)
                {
                }
                else if (tags_menu_open == 1)
                {
                    p_ttm = 0;
                    alarm[4] = 2;
                    tags_menu_open = 0;
                }
                current_menu_page = 9;
                page_content_alpha = 0;
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1142, 10, 1198, 26))
    {
        hover_bar_max_scale = 0.35;
        hover_bar_grow_speed = 0.013;
        if (mouse_check_button_pressed(mb_left))
        {
            if (current_menu_page == 15)
            {
            }
            else if (steam_initialised())
            {
                if (steam_stats_ready())
                {
                    if (current_menu_page == 2 || current_menu_page == 3 || current_menu_page == 4 || current_menu_page == 5 || current_menu_page == 6 || current_menu_page == 7 || current_menu_page == 8 || current_menu_page == 9 || current_menu_page == 10 || current_menu_page == 11 || current_menu_page == 14 || current_menu_page == 15)
                    {
                    }
                    else if (tags_menu_open == 1)
                    {
                        p_ttm = 0;
                        alarm[4] = 2;
                        tags_menu_open = 0;
                    }
                    audio_play_sound(s_normal_button_press, 1, false);
                    current_menu_page = 15;
                    page_content_alpha = 0;
                    total_pieces_placed = steam_get_stat_int("pieces_placed");
                    total_packs_complete = steam_get_stat_int("total_packs_complete");
                    regulars_beat = steam_get_stat_int("total_normal_puzzles_beat");
                    uniques_beat = steam_get_stat_int("total_uniques_beat");
                    total_ultimate_complete = steam_get_stat_int("ultimate_puzzles_complete");
                    total_puzzles_complete = regulars_beat + uniques_beat + total_ultimate_complete;
                    challenges_beat = steam_get_stat_int("comps_won");
                    gold_earned = steam_get_stat_int("gold_bits_earned");
                    gold_spent = steam_get_stat_int("gold_bits_used");
                    total_current_gold = gold_earned - gold_spent;
                    hints_earned = steam_get_stat_int("hints_earned");
                    hints_spent = steam_get_stat_int("hints_used");
                    total_current_hints = hints_earned - hints_spent;
                    ultimates_earned = steam_get_stat_int("ultimate_pieces_earned");
                    ultimates_spent = steam_get_stat_int("ultimate_pieces_used");
                    total_current_ultimates = ultimates_earned - ultimates_spent;
                    ghost_hints_used = steam_get_stat_int("ghost_hints_used");
                    angle_hints_used = steam_get_stat_int("angle_hints_used");
                    location_hints_used = steam_get_stat_int("location_hints_used");
                }
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1487, 10, 1610, 26))
    {
        hover_bar_max_scale = 0.82;
        hover_bar_grow_speed = 0.02;
        if (mouse_check_button_pressed(mb_left))
        {
            audio_play_sound(s_button_pressed_accepted, 1, false);
            steam_activate_overlay(ov_achievements);
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1644, 10, 1744, 26))
    {
        hover_bar_max_scale = 0.64;
        hover_bar_grow_speed = 0.02;
        if (mouse_check_button_pressed(mb_left))
        {
            audio_play_sound(s_button_pressed_accepted, 1, false);
            steam_activate_overlay(ov_community);
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1774, 10, 1845, 26))
    {
        hover_bar_max_scale = 0.46;
        hover_bar_grow_speed = 0.015;
        if (mouse_check_button_pressed(mb_left))
        {
            if (current_menu_page == 10)
            {
            }
            else
            {
                if (current_menu_page == 2 || current_menu_page == 3 || current_menu_page == 4 || current_menu_page == 5 || current_menu_page == 6 || current_menu_page == 7 || current_menu_page == 8 || current_menu_page == 9 || current_menu_page == 10 || current_menu_page == 11 || current_menu_page == 14 || current_menu_page == 15)
                {
                }
                else if (tags_menu_open == 1)
                {
                    p_ttm = 0;
                    alarm[4] = 2;
                    tags_menu_open = 0;
                }
                audio_play_sound(s_normal_button_press, 1, false);
                current_menu_page = 10;
                page_content_alpha = 0;
                button_id = instance_create(926, 883, ob_new_menu_generic_button);
                button_id.button_number = 68;
                button_id.sprite_index = sp_new_menu_wide_thin_box_short;
                button_id.mask_index = sp_new_menu_wide_thin_box_short;
                button_id = instance_create(926, 926, ob_new_menu_generic_button);
                button_id.button_number = 69;
                button_id.sprite_index = sp_new_menu_wide_thin_box_short;
                button_id.mask_index = sp_new_menu_wide_thin_box_short;
                button_id = instance_create(926, 969, ob_new_menu_generic_button);
                button_id.button_number = 70;
                button_id.sprite_index = sp_new_menu_wide_thin_box_short;
                button_id.mask_index = sp_new_menu_wide_thin_box_short;
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1875, 10, 1912, 26))
    {
        hover_bar_max_scale = 0.23;
        hover_bar_grow_speed = 0.01;
        if (mouse_check_button_pressed(mb_left))
        {
            if (current_menu_page == 11)
            {
                game_end();
            }
            else
            {
                audio_play_sound(s_normal_button_press, 1, false);
                if (current_menu_page == 2 || current_menu_page == 3 || current_menu_page == 4 || current_menu_page == 5 || current_menu_page == 6 || current_menu_page == 7 || current_menu_page == 8 || current_menu_page == 9 || current_menu_page == 10 || current_menu_page == 11 || current_menu_page == 14 || current_menu_page == 15)
                {
                }
                else if (tags_menu_open == 1)
                {
                    p_ttm = 0;
                    alarm[4] = 2;
                    tags_menu_open = 0;
                }
                current_menu_page = 11;
                page_content_alpha = 0;
                button_id = instance_create(1112, 595, ob_new_menu_generic_button);
                button_id.button_number = 11;
                button_id.sprite_index = sp_new_menu_colour_buttons;
                button_id.image_index = 1;
                button_id.image_alpha = 0;
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 10, 10, 166, 26))
    {
        hover_bar_max_scale = 1.13;
        hover_bar_grow_speed = 0.03;
        if (mouse_check_button_pressed(mb_left))
        {
            audio_play_sound(s_button_pressed_accepted, 1, false);
            steam_activate_overlay_browser("http://pixelpuzzles.co.uk/");
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 47, 1055, 350, 1072))
    {
        hover_bar_max_scale = 2.32;
        hover_bar_grow_speed = 0.06;
        if (mouse_check_button_pressed(mb_left))
        {
            audio_play_sound(s_button_pressed_accepted, 1, false);
            steam_activate_overlay_browser("https://discord.gg/TkV7FzSp8Y");
        }
    }
    else
    {
        hover_bar_scale = 0;
        hover_bar_max_scale = 0;
    }
    if (hover_bar_scale < hover_bar_max_scale)
    {
        hover_bar_scale += hover_bar_grow_speed;
    }
    else
    {
        hover_bar_scale = 0;
    }
}
if (global.nm_block_for_intro == 0)
{
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1093, 86, 1236, 107))
    {
        if (mouse_check_button_pressed(mb_left))
        {
            if (current_menu_page == 3)
            {
            }
            else
            {
                audio_play_sound(s_normal_button_press, 1, false);
                if (current_menu_page == 2 || current_menu_page == 3 || current_menu_page == 4 || current_menu_page == 5 || current_menu_page == 6 || current_menu_page == 7 || current_menu_page == 8 || current_menu_page == 9 || current_menu_page == 10 || current_menu_page == 11 || current_menu_page == 14 || current_menu_page == 15)
                {
                }
                else if (tags_menu_open == 1)
                {
                    p_ttm = 0;
                    alarm[4] = 2;
                    tags_menu_open = 0;
                }
                current_menu_page = 3;
                page_content_alpha = 0;
                page_content_alpha = 0;
                button_id = instance_create(1112, 620, ob_new_menu_generic_button);
                button_id.button_number = 12;
                button_id.sprite_index = sp_new_menu_colour_buttons;
                button_id.image_index = 0;
                button_id.image_alpha = 0;
                button_id = instance_create(755, 967, ob_new_menu_generic_button);
                button_id.button_number = 13;
                button_id.sprite_index = sp_new_menu_next_button;
                button_id = instance_create(1468, 967, ob_new_menu_generic_button);
                button_id.button_number = 14;
                button_id.sprite_index = sp_new_menu_next_button;
                kiosk_current_page = 0;
                kiosk_total_pages = 10;
                global.menu_return_to = 1;
                var puz_list = ds_list_create();
                ds_list_add(puz_list, 86, 85, 84, 83, 82, 81, 80, 79, 78, 77, 76, 75, 74, 73, 72, 71, 70, 69, 68, 67, 66, 65);
                ds_list_add(puz_list, 64, 63, 62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 52, 51, 50, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1);
                ds_list_sort(puz_list, 1);
                puz_remaining = ds_list_size(puz_list);
                puz_remaining -= 1;
                var p_l_num = puz_remaining;
                var puz_x = 827;
                var puz_y = 763;
                var puz_but = 0;
                var s_l = 0;
                var s_s = 0;
                var s_p = 0;
                var s_pp = 0;
                var a_c = 0;
                ini_open("ppu.ini");
                puz_but = instance_create(puz_x, puz_y, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 191, puz_y, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 382, puz_y, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 573, puz_y, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x, puz_y + 116, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 191, puz_y + 116, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 382, puz_y + 116, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 573, puz_y + 116, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x, puz_y + 232, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 191, puz_y + 232, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 382, puz_y + 232, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 573, puz_y + 232, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x, puz_y + 348, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 191, puz_y + 348, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 382, puz_y + 348, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 573, puz_y + 348, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x, puz_y + 464, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 191, puz_y + 464, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 382, puz_y + 464, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 573, puz_y + 464, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x, puz_y + 580, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 191, puz_y + 580, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 382, puz_y + 580, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 573, puz_y + 580, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x, puz_y + 696, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 191, puz_y + 696, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 382, puz_y + 696, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 573, puz_y + 696, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x, puz_y + 812, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 191, puz_y + 812, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 382, puz_y + 812, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 573, puz_y + 812, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x, puz_y + 928, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 191, puz_y + 928, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 382, puz_y + 928, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 573, puz_y + 928, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x, puz_y + 1044, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 191, puz_y + 1044, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 382, puz_y + 1044, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 573, puz_y + 1044, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x, puz_y + 1160, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 191, puz_y + 1160, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 382, puz_y + 1160, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 573, puz_y + 1160, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x, puz_y + 1276, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 191, puz_y + 1276, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 382, puz_y + 1276, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 573, puz_y + 1276, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x, puz_y + 1392, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 191, puz_y + 1392, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 382, puz_y + 1392, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 573, puz_y + 1392, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x, puz_y + 1508, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 191, puz_y + 1508, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 382, puz_y + 1508, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 573, puz_y + 1508, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x, puz_y + 1624, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 191, puz_y + 1624, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 382, puz_y + 1624, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 573, puz_y + 1624, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x, puz_y + 1740, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 191, puz_y + 1740, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 382, puz_y + 1740, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 573, puz_y + 1740, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x, puz_y + 1856, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 191, puz_y + 1856, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 382, puz_y + 1856, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 573, puz_y + 1856, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x, puz_y + 1972, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 191, puz_y + 1972, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 382, puz_y + 1972, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 573, puz_y + 1972, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x, puz_y + 2088, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 191, puz_y + 2088, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 382, puz_y + 2088, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 573, puz_y + 2088, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x, puz_y + 2204, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 191, puz_y + 2204, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 382, puz_y + 2204, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 573, puz_y + 2204, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x, puz_y + 2320, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 191, puz_y + 2320, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 382, puz_y + 2320, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 573, puz_y + 2320, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x, puz_y + 2436, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 191, puz_y + 2436, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 382, puz_y + 2436, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                puz_but = instance_create(puz_x + 573, puz_y + 2436, ob_new_menu_kiosk_puz);
                if (p_l_num > -1)
                {
                    puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                    s_l = "p5000x" + string(p_l_num + 1);
                    s_s = "p5000x" + string(p_l_num + 1) + "b0";
                    s_p = ini_read_string(s_l, s_s, 0);
                    s_pp = real(base64_decode(s_p));
                    puz_but.pieces_placed = s_pp;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                    puz_but.puz_type = 1;
                    p_l_num -= 1;
                }
                else
                {
                    puz_but.puz_num = 0;
                    puz_but.maxy_vis = 900;
                    puz_but.miny_vis = 720;
                }
                ds_list_destroy(puz_list);
                ini_close();
            }
        }
    }
}
if (global.nm_block_for_intro == 0)
{
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1768, 86, 1835, 107))
    {
        if (mouse_check_button_pressed(mb_left))
        {
            if (current_menu_page == 7)
            {
            }
            else if (steam_initialised())
            {
                if (steam_user_owns_dlc(1952658))
                {
                    if (steam_user_installed_dlc(1952658))
                    {
                        audio_play_sound(s_normal_button_press, 1, false);
                        current_menu_page = 7;
                        page_content_alpha = 0;
                        kiosk_items_showing = 0;
                        button_id = instance_create(850, 970, ob_new_menu_generic_button);
                        button_id.button_number = 71;
                        button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                        button_id.image_alpha = 0;
                        button_id = instance_create(1112, 970, ob_new_menu_generic_button);
                        button_id.button_number = 72;
                        button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                        button_id.image_alpha = 0;
                        button_id = instance_create(1374, 970, ob_new_menu_generic_button);
                        button_id.button_number = 73;
                        button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                        button_id.image_alpha = 0;
                        button_id = instance_create(825, 687, ob_new_menu_generic_button);
                        button_id.button_number = 74;
                        button_id.sprite_index = sp_new_menu_puzzle_button_blank;
                        button_id.image_alpha = 0;
                        button_id = instance_create(1017, 687, ob_new_menu_generic_button);
                        button_id.button_number = 75;
                        button_id.sprite_index = sp_new_menu_puzzle_button_blank;
                        button_id.image_alpha = 0;
                        button_id = instance_create(1209, 687, ob_new_menu_generic_button);
                        button_id.button_number = 76;
                        button_id.sprite_index = sp_new_menu_puzzle_button_blank;
                        button_id.image_alpha = 0;
                        button_id = instance_create(1401, 687, ob_new_menu_generic_button);
                        button_id.button_number = 77;
                        button_id.sprite_index = sp_new_menu_puzzle_button_blank;
                        button_id.image_alpha = 0;
                        button_id = instance_create(825, 811, ob_new_menu_generic_button);
                        button_id.button_number = 78;
                        button_id.sprite_index = sp_new_menu_puzzle_button_blank;
                        button_id.image_alpha = 0;
                        button_id = instance_create(1017, 811, ob_new_menu_generic_button);
                        button_id.button_number = 79;
                        button_id.sprite_index = sp_new_menu_puzzle_button_blank;
                        button_id.image_alpha = 0;
                        button_id = instance_create(1209, 811, ob_new_menu_generic_button);
                        button_id.button_number = 80;
                        button_id.sprite_index = sp_new_menu_puzzle_button_blank;
                        button_id.image_alpha = 0;
                        button_id = instance_create(1401, 811, ob_new_menu_generic_button);
                        button_id.button_number = 81;
                        button_id.sprite_index = sp_new_menu_puzzle_button_blank;
                        button_id.image_alpha = 0;
                        p_ttm = 0;
                        alarm[4] = 2;
                        tags_menu_open = 0;
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
if (current_menu_page == 6)
{
    if (puz_shop_page == 0)
    {
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 734, 522, 907, 985))
        {
            kiosk_but_1_scale = 1.01;
            if (mouse_check_button_pressed(mb_left))
            {
                audio_play_sound(s_hint_ghost, 1, false);
                kiosk_current_page = 0;
                kiosk_total_pages = 3;
                puz_shop_page = 1;
                total_puz_number = kiosk_1_total_puz;
                page_content_alpha = 0;
                can_make_shop_buts = 1;
                button_id = instance_create(755, 223, ob_new_menu_generic_button);
                button_id.button_number = 15;
                button_id.sprite_index = sp_new_menu_next_button;
                button_id.image_alpha = 0;
            }
        }
        else
        {
            kiosk_but_1_scale = 1;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 927, 522, 1100, 985))
        {
        }
        else
        {
            kiosk_but_2_scale = 1;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1120, 522, 1293, 985))
        {
            kiosk_but_3_scale = 1.01;
            if (mouse_check_button_pressed(mb_left))
            {
                audio_play_sound(s_hint_ghost, 1, false);
                kiosk_current_page = 0;
                kiosk_total_pages = 0;
                puz_shop_page = 3;
                total_puz_number = kiosk_3_total_puz;
                page_content_alpha = 0;
                can_make_shop_buts = 1;
                button_id = instance_create(755, 223, ob_new_menu_generic_button);
                button_id.button_number = 15;
                button_id.sprite_index = sp_new_menu_next_button;
                button_id.image_alpha = 0;
            }
        }
        else
        {
            kiosk_but_3_scale = 1;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1319, 522, 1492, 985))
        {
            kiosk_but_4_scale = 1.01;
            if (mouse_check_button_pressed(mb_left))
            {
                audio_play_sound(s_hint_ghost, 1, false);
                kiosk_current_page = 0;
                kiosk_total_pages = 0;
                puz_shop_page = 4;
                total_puz_number = kiosk_4_total_puz;
                page_content_alpha = 0;
                can_make_shop_buts = 1;
                button_id = instance_create(755, 223, ob_new_menu_generic_button);
                button_id.button_number = 15;
                button_id.sprite_index = sp_new_menu_next_button;
                button_id.image_alpha = 0;
            }
        }
        else
        {
            kiosk_but_4_scale = 1;
        }
        if (can_make_shop_buts == 1)
        {
            can_make_shop_buts = 0;
            button_id = instance_create(755, 967, ob_new_menu_generic_button);
            button_id.button_number = 13;
            button_id.sprite_index = sp_new_menu_next_button;
            button_id = instance_create(1468, 967, ob_new_menu_generic_button);
            button_id.button_number = 14;
            button_id.sprite_index = sp_new_menu_next_button;
            var p_s_n = 0;
            var puz_list = ds_list_create();
            if (puz_shop_page == 1)
            {
                ds_list_add(puz_list, 78, 77, 76, 75, 74, 73, 72, 71, 70, 69, 68, 67, 66, 65, 64, 63, 62, 61, 60, 59, 58, 57, 56, 55, 54, 53, 52, 51, 50, 49, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1);
            }
            if (puz_shop_page == 2)
            {
                ds_list_add(puz_list, 0);
            }
            if (puz_shop_page == 3)
            {
                ds_list_add(puz_list, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1);
            }
            if (puz_shop_page == 4)
            {
                ds_list_add(puz_list, 14, 13, 12, 11, 10, 9, 7, 6, 5, 2, 1);
            }
            ds_list_sort(puz_list, 0);
            puz_remaining = ds_list_size(puz_list);
            puz_remaining -= 1;
            var p_l_num = puz_remaining;
            var puz_x = 827;
            var puz_y = 307;
            var puz_but = 0;
            var s_l = 0;
            var s_s = 0;
            var s_p = 0;
            var s_pp = 0;
            var a_c = 0;
            var ps_p = puz_shop_page;
            var puz_num = 0;
            ini_open("ppu.ini");
            puz_but = instance_create(puz_x, puz_y, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 191, puz_y, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 382, puz_y, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 573, puz_y, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x, puz_y + 116, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 191, puz_y + 116, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 382, puz_y + 116, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 573, puz_y + 116, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x, puz_y + 232, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 191, puz_y + 232, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 382, puz_y + 232, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 573, puz_y + 232, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x, puz_y + 348, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 191, puz_y + 348, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 382, puz_y + 348, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 573, puz_y + 348, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x, puz_y + 464, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 191, puz_y + 464, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 382, puz_y + 464, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 573, puz_y + 464, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x, puz_y + 580, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 191, puz_y + 580, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 382, puz_y + 580, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 573, puz_y + 580, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x, puz_y + 696, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 191, puz_y + 696, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 382, puz_y + 696, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 573, puz_y + 696, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x, puz_y + 812, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 191, puz_y + 812, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 382, puz_y + 812, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 573, puz_y + 812, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x, puz_y + 928, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 191, puz_y + 928, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 382, puz_y + 928, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 573, puz_y + 928, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x, puz_y + 1044, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 191, puz_y + 1044, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 382, puz_y + 1044, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 573, puz_y + 1044, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x, puz_y + 1160, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 191, puz_y + 1160, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 382, puz_y + 1160, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 573, puz_y + 1160, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x, puz_y + 1276, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 191, puz_y + 1276, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 382, puz_y + 1276, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 573, puz_y + 1276, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x, puz_y + 1392, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 191, puz_y + 1392, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 382, puz_y + 1392, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 573, puz_y + 1392, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x, puz_y + 1508, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 191, puz_y + 1508, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 382, puz_y + 1508, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 573, puz_y + 1508, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x, puz_y + 1624, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 191, puz_y + 1624, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 382, puz_y + 1624, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 573, puz_y + 1624, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x, puz_y + 1740, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 191, puz_y + 1740, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 382, puz_y + 1740, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 573, puz_y + 1740, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x, puz_y + 1856, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 191, puz_y + 1856, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 382, puz_y + 1856, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 573, puz_y + 1856, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x, puz_y + 1972, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 191, puz_y + 1972, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 382, puz_y + 1972, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 573, puz_y + 1972, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x, puz_y + 2088, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 191, puz_y + 2088, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 382, puz_y + 2088, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 573, puz_y + 2088, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x, puz_y + 2204, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 191, puz_y + 2204, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 382, puz_y + 2204, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 573, puz_y + 2204, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x, puz_y + 2320, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 191, puz_y + 2320, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 382, puz_y + 2320, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 573, puz_y + 2320, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x, puz_y + 2436, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 191, puz_y + 2436, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 382, puz_y + 2436, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 573, puz_y + 2436, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x, puz_y + 2552, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 191, puz_y + 2552, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 382, puz_y + 2552, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 573, puz_y + 2552, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x, puz_y + 2668, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 191, puz_y + 2668, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 382, puz_y + 2668, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(puz_x + 573, puz_y + 2668, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.puz_num = puz_num;
                if (ps_p == 1)
                {
                    p_s_n = 5000 + puz_num;
                }
                if (ps_p == 2)
                {
                    p_s_n = 7000 + puz_num;
                }
                if (ps_p == 3)
                {
                    p_s_n = 100 + puz_num;
                }
                if (ps_p == 4)
                {
                    p_s_n = 1000 + puz_num;
                }
                s_l = "p5000x" + string(p_s_n);
                s_s = "p5000x" + string(p_s_n) + "b0";
                s_p = ini_read_string(s_l, s_s, 0);
                s_pp = real(base64_decode(s_p));
                puz_but.pieces_placed = s_pp;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = puz_shop_page + 1;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            ds_list_destroy(puz_list);
            ini_close();
        }
    }
    else if (puz_shop_page == 1 || puz_shop_page == 2 || puz_shop_page == 3 || puz_shop_page == 4)
    {
        if (keyboard_check_pressed(vk_backspace) || keyboard_check_pressed(vk_escape))
        {
            puz_shop_page = 0;
            page_content_alpha = 0;
            total_puz_number = kiosk_1_total_puz + kiosk_2_total_puz + kiosk_3_total_puz + kiosk_4_total_puz;
        }
    }
}
else
{
    puz_shop_page = 0;
}
if (current_menu_page == 10)
{
    credit_logo_angle += 3;
    credit_logo_angle2 -= 4;
}
if (current_menu_page == 2 || current_menu_page == 4 || current_menu_page == 5)
{
}
else
{
    pack_to_open = 0;
}
if (page_content_alpha < 1)
{
    page_content_alpha += 0.05;
}
if (global.nm_block_for_intro == 0)
{
    if (current_menu_page == 0)
    {
        if (type_of_special_page == 2)
        {
            if (mouse_check_button_pressed(mb_left))
            {
                if (steam_stats_ready())
                {
                    if (current_month == 12)
                    {
                        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 725, 268, 872, 393))
                        {
                            if (current_day > 0)
                            {
                                if (adv_d1 == 0)
                                {
                                    audio_play_sound(s_click_hint_token, 1, false);
                                    var a_advent_2023 = steam_get_stat_int("a_advent_2023") + 1;
                                    steam_set_stat_int("a_advent_2023", a_advent_2023);
                                    steam_upload_score("a_advent_2023", a_advent_2023);
                                    adv_d1 = steam_get_stat_int("adv_d1") + 1;
                                    steam_set_stat_int("adv_d1", adv_d1);
                                    if (!steam_get_achievement("kioskpuzzles61"))
                                    {
                                        steam_set_achievement("kioskpuzzles61");
                                    }
                                }
                                else if (adv_d1 == 1)
                                {
                                    if (steam_user_owns_dlc(1952658))
                                    {
                                        if (steam_user_installed_dlc(1952658))
                                        {
                                            global.menu_return_to = 6;
                                            var load_from = "puzshop";
                                            global.use_special_puz_controller = 2;
                                            global.puzzle_number_to_play = 5061;
                                            global.total_number_of_pieces = 96;
                                            global.puzzle_max_number_of_pieces = 96;
                                            global.level_type = 2;
                                            global.puzzle_pieces_to_use = ob_puzzle_pieces;
                                            global.current_pack_open = 5000;
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
                                            if (global.total_number_of_pieces == 96)
                                            {
                                                sprite_x = 112;
                                                sprite_y = 108;
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
                                }
                            }
                        }
                        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 882, 268, 1029, 393))
                        {
                            if (current_day > 1)
                            {
                                if (adv_d2 == 0)
                                {
                                    audio_play_sound(s_click_hint_token, 1, false);
                                    var a_advent_2023 = steam_get_stat_int("a_advent_2023") + 1;
                                    steam_set_stat_int("a_advent_2023", a_advent_2023);
                                    steam_upload_score("a_advent_2023", a_advent_2023);
                                    adv_d2 = steam_get_stat_int("adv_d2") + 1;
                                    steam_set_stat_int("adv_d2", adv_d2);
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    var gold_pieces_earned = steam_get_stat_int("gold_bits_earned") + 3;
                                    steam_set_stat_int("gold_bits_earned", gold_pieces_earned);
                                }
                            }
                        }
                        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1039, 268, 1186, 393))
                        {
                            if (current_day > 2)
                            {
                                if (adv_d3 == 0)
                                {
                                    audio_play_sound(s_click_hint_token, 1, false);
                                    var a_advent_2023 = steam_get_stat_int("a_advent_2023") + 1;
                                    steam_set_stat_int("a_advent_2023", a_advent_2023);
                                    steam_upload_score("a_advent_2023", a_advent_2023);
                                    adv_d3 = steam_get_stat_int("adv_d3") + 1;
                                    steam_set_stat_int("adv_d3", adv_d3);
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_menu_new_hint;
                                    ob_gift_id.image_xscale = 0.5;
                                    ob_gift_id.image_yscale = 0.5;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_menu_new_hint;
                                    ob_gift_id.image_xscale = 0.5;
                                    ob_gift_id.image_yscale = 0.5;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_menu_new_hint;
                                    ob_gift_id.image_xscale = 0.5;
                                    ob_gift_id.image_yscale = 0.5;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_menu_new_hint;
                                    ob_gift_id.image_xscale = 0.5;
                                    ob_gift_id.image_yscale = 0.5;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_menu_new_hint;
                                    ob_gift_id.image_xscale = 0.5;
                                    ob_gift_id.image_yscale = 0.5;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_menu_new_hint;
                                    ob_gift_id.image_xscale = 0.5;
                                    ob_gift_id.image_yscale = 0.5;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_menu_new_hint;
                                    ob_gift_id.image_xscale = 0.5;
                                    ob_gift_id.image_yscale = 0.5;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_menu_new_hint;
                                    ob_gift_id.image_xscale = 0.5;
                                    ob_gift_id.image_yscale = 0.5;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_menu_new_hint;
                                    ob_gift_id.image_xscale = 0.5;
                                    ob_gift_id.image_yscale = 0.5;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_menu_new_hint;
                                    ob_gift_id.image_xscale = 0.5;
                                    ob_gift_id.image_yscale = 0.5;
                                    var hints_earn = steam_get_stat_int("hints_earned") + 10;
                                    steam_set_stat_int("hints_earned", hints_earn);
                                }
                            }
                        }
                        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1196, 268, 1343, 393))
                        {
                            if (current_day > 3)
                            {
                                if (adv_d4 == 0)
                                {
                                    audio_play_sound(s_click_hint_token, 1, false);
                                    var a_advent_2023 = steam_get_stat_int("a_advent_2023") + 1;
                                    steam_set_stat_int("a_advent_2023", a_advent_2023);
                                    steam_upload_score("a_advent_2023", a_advent_2023);
                                    adv_d4 = steam_get_stat_int("adv_d4") + 1;
                                    steam_set_stat_int("adv_d4", adv_d4);
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    var gold_pieces_earned = steam_get_stat_int("gold_bits_earned") + 3;
                                    steam_set_stat_int("gold_bits_earned", gold_pieces_earned);
                                }
                            }
                        }
                        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1353, 268, 1500, 393))
                        {
                            if (current_day > 4)
                            {
                                if (adv_d5 == 0)
                                {
                                    audio_play_sound(s_click_hint_token, 1, false);
                                    var a_advent_2023 = steam_get_stat_int("a_advent_2023") + 1;
                                    steam_set_stat_int("a_advent_2023", a_advent_2023);
                                    steam_upload_score("a_advent_2023", a_advent_2023);
                                    adv_d5 = steam_get_stat_int("adv_d5") + 1;
                                    steam_set_stat_int("adv_d5", adv_d5);
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_kiosk_uktimate_piece;
                                    ob_gift_id.image_xscale = 0.5;
                                    ob_gift_id.image_yscale = 0.5;
                                    var ultimate_pieces_earned = steam_get_stat_int("ultimate_pieces_earned") + 1;
                                    steam_set_stat_int("ultimate_pieces_earned", ultimate_pieces_earned);
                                }
                            }
                        }
                        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 725, 403, 872, 528))
                        {
                            if (current_day > 5)
                            {
                                if (adv_d6 == 0)
                                {
                                    audio_play_sound(s_click_hint_token, 1, false);
                                    var a_advent_2023 = steam_get_stat_int("a_advent_2023") + 1;
                                    steam_set_stat_int("a_advent_2023", a_advent_2023);
                                    steam_upload_score("a_advent_2023", a_advent_2023);
                                    adv_d6 = steam_get_stat_int("adv_d6") + 1;
                                    steam_set_stat_int("adv_d6", adv_d6);
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    var gold_pieces_earned = steam_get_stat_int("gold_bits_earned") + 3;
                                    steam_set_stat_int("gold_bits_earned", gold_pieces_earned);
                                }
                            }
                        }
                        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 882, 403, 1029, 528))
                        {
                            if (current_day > 6)
                            {
                                if (adv_d7 == 0)
                                {
                                    audio_play_sound(s_click_hint_token, 1, false);
                                    var a_advent_2023 = steam_get_stat_int("a_advent_2023") + 1;
                                    steam_set_stat_int("a_advent_2023", a_advent_2023);
                                    steam_upload_score("a_advent_2023", a_advent_2023);
                                    adv_d7 = steam_get_stat_int("adv_d7") + 1;
                                    steam_set_stat_int("adv_d7", adv_d7);
                                    if (!steam_get_achievement("kioskpuzzles62"))
                                    {
                                        steam_set_achievement("kioskpuzzles62");
                                    }
                                }
                                else if (adv_d7 == 1)
                                {
                                    if (steam_user_owns_dlc(1952658))
                                    {
                                        if (steam_user_installed_dlc(1952658))
                                        {
                                            global.menu_return_to = 6;
                                            var load_from = "puzshop";
                                            global.use_special_puz_controller = 2;
                                            global.puzzle_number_to_play = 5062;
                                            global.total_number_of_pieces = 140;
                                            global.puzzle_max_number_of_pieces = 140;
                                            global.level_type = 2;
                                            global.puzzle_pieces_to_use = ob_puzzle_pieces;
                                            global.current_pack_open = 5000;
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
                                            if (global.total_number_of_pieces == 140)
                                            {
                                                sprite_x = 96;
                                                sprite_y = 86;
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
                                }
                            }
                        }
                        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1039, 403, 1186, 528))
                        {
                            if (current_day > 7)
                            {
                                if (adv_d8 == 0)
                                {
                                    audio_play_sound(s_click_hint_token, 1, false);
                                    var a_advent_2023 = steam_get_stat_int("a_advent_2023") + 1;
                                    steam_set_stat_int("a_advent_2023", a_advent_2023);
                                    steam_upload_score("a_advent_2023", a_advent_2023);
                                    adv_d8 = steam_get_stat_int("adv_d8") + 1;
                                    steam_set_stat_int("adv_d8", adv_d8);
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_kiosk_uktimate_piece;
                                    ob_gift_id.image_xscale = 0.5;
                                    ob_gift_id.image_yscale = 0.5;
                                    var ultimate_pieces_earned = steam_get_stat_int("ultimate_pieces_earned") + 1;
                                    steam_set_stat_int("ultimate_pieces_earned", ultimate_pieces_earned);
                                }
                            }
                        }
                        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1196, 403, 1343, 528))
                        {
                            if (current_day > 8)
                            {
                                if (adv_d9 == 0)
                                {
                                    audio_play_sound(s_click_hint_token, 1, false);
                                    var a_advent_2023 = steam_get_stat_int("a_advent_2023") + 1;
                                    steam_set_stat_int("a_advent_2023", a_advent_2023);
                                    steam_upload_score("a_advent_2023", a_advent_2023);
                                    adv_d9 = steam_get_stat_int("adv_d9") + 1;
                                    steam_set_stat_int("adv_d9", adv_d9);
                                    if (!steam_get_achievement("kioskcursor25"))
                                    {
                                        steam_set_achievement("kioskcursor25");
                                    }
                                }
                            }
                        }
                        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1353, 403, 1500, 528))
                        {
                            if (current_day > 9)
                            {
                                if (adv_d10 == 0)
                                {
                                    audio_play_sound(s_click_hint_token, 1, false);
                                    var a_advent_2023 = steam_get_stat_int("a_advent_2023") + 1;
                                    steam_set_stat_int("a_advent_2023", a_advent_2023);
                                    steam_upload_score("a_advent_2023", a_advent_2023);
                                    adv_d10 = steam_get_stat_int("adv_d10") + 1;
                                    steam_set_stat_int("adv_d10", adv_d10);
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    var gold_pieces_earned = steam_get_stat_int("gold_bits_earned") + 3;
                                    steam_set_stat_int("gold_bits_earned", gold_pieces_earned);
                                }
                            }
                        }
                        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 725, 538, 872, 663))
                        {
                            if (current_day > 10)
                            {
                                if (adv_d11 == 0)
                                {
                                    audio_play_sound(s_click_hint_token, 1, false);
                                    var a_advent_2023 = steam_get_stat_int("a_advent_2023") + 1;
                                    steam_set_stat_int("a_advent_2023", a_advent_2023);
                                    steam_upload_score("a_advent_2023", a_advent_2023);
                                    adv_d11 = steam_get_stat_int("adv_d11") + 1;
                                    steam_set_stat_int("adv_d11", adv_d11);
                                    if (!steam_get_achievement("kiosktoolbar28"))
                                    {
                                        steam_set_achievement("kiosktoolbar28");
                                    }
                                }
                            }
                        }
                        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 882, 538, 1029, 663))
                        {
                            if (current_day > 11)
                            {
                                if (adv_d12 == 0)
                                {
                                    audio_play_sound(s_click_hint_token, 1, false);
                                    var a_advent_2023 = steam_get_stat_int("a_advent_2023") + 1;
                                    steam_set_stat_int("a_advent_2023", a_advent_2023);
                                    steam_upload_score("a_advent_2023", a_advent_2023);
                                    adv_d12 = steam_get_stat_int("adv_d12") + 1;
                                    steam_set_stat_int("adv_d12", adv_d12);
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_kiosk_uktimate_piece;
                                    ob_gift_id.image_xscale = 0.5;
                                    ob_gift_id.image_yscale = 0.5;
                                    var ultimate_pieces_earned = steam_get_stat_int("ultimate_pieces_earned") + 1;
                                    steam_set_stat_int("ultimate_pieces_earned", ultimate_pieces_earned);
                                }
                            }
                        }
                        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1039, 538, 1186, 663))
                        {
                            if (current_day > 12)
                            {
                                if (adv_d13 == 0)
                                {
                                    audio_play_sound(s_click_hint_token, 1, false);
                                    var a_advent_2023 = steam_get_stat_int("a_advent_2023") + 1;
                                    steam_set_stat_int("a_advent_2023", a_advent_2023);
                                    steam_upload_score("a_advent_2023", a_advent_2023);
                                    adv_d13 = steam_get_stat_int("adv_d13") + 1;
                                    steam_set_stat_int("adv_d13", adv_d13);
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    var gold_pieces_earned = steam_get_stat_int("gold_bits_earned") + 3;
                                    steam_set_stat_int("gold_bits_earned", gold_pieces_earned);
                                }
                            }
                        }
                        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1196, 538, 1343, 663))
                        {
                            if (current_day > 13)
                            {
                                if (adv_d14 == 0)
                                {
                                    audio_play_sound(s_click_hint_token, 1, false);
                                    var a_advent_2023 = steam_get_stat_int("a_advent_2023") + 1;
                                    steam_set_stat_int("a_advent_2023", a_advent_2023);
                                    steam_upload_score("a_advent_2023", a_advent_2023);
                                    adv_d14 = steam_get_stat_int("adv_d14") + 1;
                                    steam_set_stat_int("adv_d14", adv_d14);
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    var gold_pieces_earned = steam_get_stat_int("gold_bits_earned") + 5;
                                    steam_set_stat_int("gold_bits_earned", gold_pieces_earned);
                                }
                            }
                        }
                        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1353, 538, 1500, 663))
                        {
                            if (current_day > 14)
                            {
                                if (adv_d15 == 0)
                                {
                                    audio_play_sound(s_click_hint_token, 1, false);
                                    var a_advent_2023 = steam_get_stat_int("a_advent_2023") + 1;
                                    steam_set_stat_int("a_advent_2023", a_advent_2023);
                                    steam_upload_score("a_advent_2023", a_advent_2023);
                                    adv_d15 = steam_get_stat_int("adv_d15") + 1;
                                    steam_set_stat_int("adv_d15", adv_d15);
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_menu_new_hint;
                                    ob_gift_id.image_xscale = 0.5;
                                    ob_gift_id.image_yscale = 0.5;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_menu_new_hint;
                                    ob_gift_id.image_xscale = 0.5;
                                    ob_gift_id.image_yscale = 0.5;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_menu_new_hint;
                                    ob_gift_id.image_xscale = 0.5;
                                    ob_gift_id.image_yscale = 0.5;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_menu_new_hint;
                                    ob_gift_id.image_xscale = 0.5;
                                    ob_gift_id.image_yscale = 0.5;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_menu_new_hint;
                                    ob_gift_id.image_xscale = 0.5;
                                    ob_gift_id.image_yscale = 0.5;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_menu_new_hint;
                                    ob_gift_id.image_xscale = 0.5;
                                    ob_gift_id.image_yscale = 0.5;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_menu_new_hint;
                                    ob_gift_id.image_xscale = 0.5;
                                    ob_gift_id.image_yscale = 0.5;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_menu_new_hint;
                                    ob_gift_id.image_xscale = 0.5;
                                    ob_gift_id.image_yscale = 0.5;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_menu_new_hint;
                                    ob_gift_id.image_xscale = 0.5;
                                    ob_gift_id.image_yscale = 0.5;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_menu_new_hint;
                                    ob_gift_id.image_xscale = 0.5;
                                    ob_gift_id.image_yscale = 0.5;
                                    var hints_earn = steam_get_stat_int("hints_earned") + 10;
                                    steam_set_stat_int("hints_earned", hints_earn);
                                }
                            }
                        }
                        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 725, 673, 872, 798))
                        {
                            if (current_day > 15)
                            {
                                if (adv_d16 == 0)
                                {
                                    audio_play_sound(s_click_hint_token, 1, false);
                                    var a_advent_2023 = steam_get_stat_int("a_advent_2023") + 1;
                                    steam_set_stat_int("a_advent_2023", a_advent_2023);
                                    steam_upload_score("a_advent_2023", a_advent_2023);
                                    adv_d16 = steam_get_stat_int("adv_d16") + 1;
                                    steam_set_stat_int("adv_d16", adv_d16);
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    var gold_pieces_earned = steam_get_stat_int("gold_bits_earned") + 5;
                                    steam_set_stat_int("gold_bits_earned", gold_pieces_earned);
                                }
                            }
                        }
                        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 882, 673, 1029, 798))
                        {
                            if (current_day > 16)
                            {
                                if (adv_d17 == 0)
                                {
                                    audio_play_sound(s_click_hint_token, 1, false);
                                    var a_advent_2023 = steam_get_stat_int("a_advent_2023") + 1;
                                    steam_set_stat_int("a_advent_2023", a_advent_2023);
                                    steam_upload_score("a_advent_2023", a_advent_2023);
                                    adv_d17 = steam_get_stat_int("adv_d17") + 1;
                                    steam_set_stat_int("adv_d17", adv_d17);
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_menu_new_hint;
                                    ob_gift_id.image_xscale = 0.5;
                                    ob_gift_id.image_yscale = 0.5;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_menu_new_hint;
                                    ob_gift_id.image_xscale = 0.5;
                                    ob_gift_id.image_yscale = 0.5;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_menu_new_hint;
                                    ob_gift_id.image_xscale = 0.5;
                                    ob_gift_id.image_yscale = 0.5;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_menu_new_hint;
                                    ob_gift_id.image_xscale = 0.5;
                                    ob_gift_id.image_yscale = 0.5;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_menu_new_hint;
                                    ob_gift_id.image_xscale = 0.5;
                                    ob_gift_id.image_yscale = 0.5;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_menu_new_hint;
                                    ob_gift_id.image_xscale = 0.5;
                                    ob_gift_id.image_yscale = 0.5;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_menu_new_hint;
                                    ob_gift_id.image_xscale = 0.5;
                                    ob_gift_id.image_yscale = 0.5;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_menu_new_hint;
                                    ob_gift_id.image_xscale = 0.5;
                                    ob_gift_id.image_yscale = 0.5;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_menu_new_hint;
                                    ob_gift_id.image_xscale = 0.5;
                                    ob_gift_id.image_yscale = 0.5;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_menu_new_hint;
                                    ob_gift_id.image_xscale = 0.5;
                                    ob_gift_id.image_yscale = 0.5;
                                    var hints_earn = steam_get_stat_int("hints_earned") + 10;
                                    steam_set_stat_int("hints_earned", hints_earn);
                                }
                            }
                        }
                        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1039, 673, 1186, 798))
                        {
                            if (current_day > 17)
                            {
                                if (adv_d18 == 0)
                                {
                                    audio_play_sound(s_click_hint_token, 1, false);
                                    var a_advent_2023 = steam_get_stat_int("a_advent_2023") + 1;
                                    steam_set_stat_int("a_advent_2023", a_advent_2023);
                                    steam_upload_score("a_advent_2023", a_advent_2023);
                                    adv_d18 = steam_get_stat_int("adv_d18") + 1;
                                    steam_set_stat_int("adv_d18", adv_d18);
                                    if (!steam_get_achievement("kioskpuzzles63"))
                                    {
                                        steam_set_achievement("kioskpuzzles63");
                                    }
                                }
                                else if (adv_d18 == 1)
                                {
                                    if (steam_user_owns_dlc(1952658))
                                    {
                                        if (steam_user_installed_dlc(1952658))
                                        {
                                            global.menu_return_to = 6;
                                            var load_from = "puzshop";
                                            global.use_special_puz_controller = 2;
                                            global.puzzle_number_to_play = 5063;
                                            global.total_number_of_pieces = 96;
                                            global.puzzle_max_number_of_pieces = 96;
                                            global.level_type = 2;
                                            global.puzzle_pieces_to_use = ob_puzzle_pieces;
                                            global.current_pack_open = 5000;
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
                                            if (global.total_number_of_pieces == 96)
                                            {
                                                sprite_x = 112;
                                                sprite_y = 108;
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
                                }
                            }
                        }
                        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1196, 673, 1343, 798))
                        {
                            if (current_day > 18)
                            {
                                if (adv_d19 == 0)
                                {
                                    audio_play_sound(s_click_hint_token, 1, false);
                                    var a_advent_2023 = steam_get_stat_int("a_advent_2023") + 1;
                                    steam_set_stat_int("a_advent_2023", a_advent_2023);
                                    steam_upload_score("a_advent_2023", a_advent_2023);
                                    adv_d19 = steam_get_stat_int("adv_d19") + 1;
                                    steam_set_stat_int("adv_d19", adv_d19);
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_kiosk_uktimate_piece;
                                    ob_gift_id.image_xscale = 0.5;
                                    ob_gift_id.image_yscale = 0.5;
                                    var ultimate_pieces_earned = steam_get_stat_int("ultimate_pieces_earned") + 1;
                                    steam_set_stat_int("ultimate_pieces_earned", ultimate_pieces_earned);
                                }
                            }
                        }
                        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1353, 673, 1500, 798))
                        {
                            if (current_day > 19)
                            {
                                if (adv_d20 == 0)
                                {
                                    audio_play_sound(s_click_hint_token, 1, false);
                                    var a_advent_2023 = steam_get_stat_int("a_advent_2023") + 1;
                                    steam_set_stat_int("a_advent_2023", a_advent_2023);
                                    steam_upload_score("a_advent_2023", a_advent_2023);
                                    adv_d20 = steam_get_stat_int("adv_d20") + 1;
                                    steam_set_stat_int("adv_d20", adv_d20);
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    var gold_pieces_earned = steam_get_stat_int("gold_bits_earned") + 5;
                                    steam_set_stat_int("gold_bits_earned", gold_pieces_earned);
                                }
                            }
                        }
                        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 725, 808, 872, 933))
                        {
                            if (current_day > 20)
                            {
                                if (adv_d21 == 0)
                                {
                                    audio_play_sound(s_click_hint_token, 1, false);
                                    var a_advent_2023 = steam_get_stat_int("a_advent_2023") + 1;
                                    steam_set_stat_int("a_advent_2023", a_advent_2023);
                                    steam_upload_score("a_advent_2023", a_advent_2023);
                                    adv_d21 = steam_get_stat_int("adv_d21") + 1;
                                    steam_set_stat_int("adv_d21", adv_d21);
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    var gold_pieces_earned = steam_get_stat_int("gold_bits_earned") + 10;
                                    steam_set_stat_int("gold_bits_earned", gold_pieces_earned);
                                }
                            }
                        }
                        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 882, 808, 1029, 933))
                        {
                            if (current_day > 21)
                            {
                                if (adv_d22 == 0)
                                {
                                    audio_play_sound(s_click_hint_token, 1, false);
                                    var a_advent_2023 = steam_get_stat_int("a_advent_2023") + 1;
                                    steam_set_stat_int("a_advent_2023", a_advent_2023);
                                    steam_upload_score("a_advent_2023", a_advent_2023);
                                    adv_d22 = steam_get_stat_int("adv_d22") + 1;
                                    steam_set_stat_int("adv_d22", adv_d22);
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_kiosk_uktimate_piece;
                                    ob_gift_id.image_xscale = 0.5;
                                    ob_gift_id.image_yscale = 0.5;
                                    var ultimate_pieces_earned = steam_get_stat_int("ultimate_pieces_earned") + 1;
                                    steam_set_stat_int("ultimate_pieces_earned", ultimate_pieces_earned);
                                }
                            }
                        }
                        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1039, 808, 1186, 933))
                        {
                            if (current_day > 22)
                            {
                                if (adv_d23 == 0)
                                {
                                    audio_play_sound(s_click_hint_token, 1, false);
                                    var a_advent_2023 = steam_get_stat_int("a_advent_2023") + 1;
                                    steam_set_stat_int("a_advent_2023", a_advent_2023);
                                    steam_upload_score("a_advent_2023", a_advent_2023);
                                    adv_d23 = steam_get_stat_int("adv_d23") + 1;
                                    steam_set_stat_int("adv_d23", adv_d23);
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    ob_gift_id = instance_create(mouse_x, mouse_y, ob_nm_hal_gift);
                                    ob_gift_id.sprite_index = sp_new_menu_uz_but_beat_coin;
                                    var gold_pieces_earned = steam_get_stat_int("gold_bits_earned") + 10;
                                    steam_set_stat_int("gold_bits_earned", gold_pieces_earned);
                                }
                            }
                        }
                        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1196, 808, 1343, 933))
                        {
                            if (current_day > 23)
                            {
                                if (adv_d24 == 0)
                                {
                                    audio_play_sound(s_click_hint_token, 1, false);
                                    var a_advent_2023 = steam_get_stat_int("a_advent_2023") + 1;
                                    steam_set_stat_int("a_advent_2023", a_advent_2023);
                                    steam_upload_score("a_advent_2023", a_advent_2023);
                                    adv_d24 = steam_get_stat_int("adv_d24") + 1;
                                    steam_set_stat_int("adv_d24", adv_d24);
                                    if (!steam_get_achievement("kioskpuzzles64"))
                                    {
                                        steam_set_achievement("kioskpuzzles64");
                                    }
                                }
                                else if (adv_d24 == 1)
                                {
                                    if (steam_user_owns_dlc(1952658))
                                    {
                                        if (steam_user_installed_dlc(1952658))
                                        {
                                            global.menu_return_to = 6;
                                            var load_from = "puzshop";
                                            global.use_special_puz_controller = 2;
                                            global.puzzle_number_to_play = 5064;
                                            global.total_number_of_pieces = 216;
                                            global.puzzle_max_number_of_pieces = 216;
                                            global.level_type = 2;
                                            global.puzzle_pieces_to_use = ob_puzzle_pieces;
                                            global.current_pack_open = 5000;
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
                                            if (global.total_number_of_pieces == 216)
                                            {
                                                sprite_x = 74;
                                                sprite_y = 71;
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
                                }
                            }
                        }
                        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1353, 808, 1500, 933))
                        {
                            if (current_day > 24)
                            {
                                if (adv_d25 == 0)
                                {
                                    audio_play_sound(s_click_hint_token, 1, false);
                                    var a_advent_2023 = steam_get_stat_int("a_advent_2023") + 1;
                                    steam_set_stat_int("a_advent_2023", a_advent_2023);
                                    steam_upload_score("a_advent_2023", a_advent_2023);
                                    adv_d25 = steam_get_stat_int("adv_d25") + 1;
                                    steam_set_stat_int("adv_d25", adv_d25);
                                    if (!steam_get_achievement("kioskpuzzles65"))
                                    {
                                        steam_set_achievement("kioskpuzzles65");
                                    }
                                }
                                else if (adv_d25 == 1)
                                {
                                    if (steam_user_owns_dlc(1952658))
                                    {
                                        if (steam_user_installed_dlc(1952658))
                                        {
                                            global.menu_return_to = 6;
                                            var load_from = "puzshop";
                                            global.use_special_puz_controller = 2;
                                            global.puzzle_number_to_play = 5065;
                                            global.total_number_of_pieces = 330;
                                            global.puzzle_max_number_of_pieces = 330;
                                            global.level_type = 2;
                                            global.puzzle_pieces_to_use = ob_puzzle_pieces;
                                            global.current_pack_open = 5000;
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
                                            if (global.total_number_of_pieces == 330)
                                            {
                                                sprite_x = 59;
                                                sprite_y = 49;
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
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
