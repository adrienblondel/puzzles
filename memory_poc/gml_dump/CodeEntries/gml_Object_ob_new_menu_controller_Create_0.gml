draw_texture_flush();
open_pack_name_to_display = "";
page_content_alpha = 0;
if (global.game_has_just_launched == 1)
{
    if (!steam_get_achievement("first_time_launch"))
    {
        steam_set_achievement("first_time_launch");
        global.p_t_owned = 1;
        ini_open("ppu.ini");
        var p0x1u7p703 = base64_encode(string(global.p_t_owned));
        ini_write_string("save", "p0x1u7p703", p0x1u7p703);
        ini_close();
    }
    global.user_id_name = steam_get_persona_name();
    global.game_has_just_launched = 0;
    global.nm_block_for_intro = 0;
    current_menu_page = 1;
    if (current_menu_page == 0)
    {
        type_of_special_page = 2;
        p_ttm = 0;
        alarm[4] = 1;
        tags_menu_open = 0;
    }
    else if (current_menu_page == 1)
    {
        current_generic_page = 0;
        max_generic_pages = 7;
        p_ttm = 1;
        alarm[4] = 1;
        pack_to_open = 0;
        pack_open_total_puzzles = 0;
        page_content_alpha = 1;
        tags_menu_open = 1;
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
        button_id = instance_create(755, 967, ob_new_menu_generic_button);
        button_id.button_number = 16;
        button_id.sprite_index = sp_new_menu_next_button;
        button_id = instance_create(1468, 967, ob_new_menu_generic_button);
        button_id.button_number = 17;
        button_id.sprite_index = sp_new_menu_next_button;
    }
}
else
{
    current_menu_page = global.menu_return_to;
    if (global.menu_return_to == 1 || global.menu_return_to == 6)
    {
        current_menu_page = 1;
        global.nm_block_for_intro = 0;
        current_generic_page = 0;
        max_generic_pages = 7;
        p_ttm = 1;
        alarm[4] = 1;
        pack_to_open = 0;
        pack_open_total_puzzles = 0;
        page_content_alpha = 1;
        tags_menu_open = 1;
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
        button_id = instance_create(755, 967, ob_new_menu_generic_button);
        button_id.button_number = 16;
        button_id.sprite_index = sp_new_menu_next_button;
        button_id = instance_create(1468, 967, ob_new_menu_generic_button);
        button_id.button_number = 17;
        button_id.sprite_index = sp_new_menu_next_button;
    }
    else if (global.menu_return_to == 4)
    {
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
        p_ttm = 0;
        alarm[4] = 1;
        tags_menu_open = 0;
    }
    else if (global.menu_return_to == 5)
    {
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
        p_ttm = 0;
        alarm[4] = 1;
        tags_menu_open = 0;
    }
    else if (global.menu_return_to == 2)
    {
        current_menu_page = 2;
        pack_to_open = global.menu_return_to___pack_to_open;
        open_pack_name_to_display = global.menu_return_to___pack_name;
        current_generic_page = 0;
        max_generic_pages = 7;
        pack_open_total_puzzles = global.menu_return_to___pack_open_total_puzzles;
        page_content_alpha = 0;
        button_id = instance_create(755, 967, ob_new_menu_generic_button);
        button_id.button_number = 21;
        button_id.sprite_index = sp_new_menu_next_button;
        button_id = instance_create(1468, 967, ob_new_menu_generic_button);
        button_id.button_number = 22;
        button_id.sprite_index = sp_new_menu_next_button;
        alarm[5] = 1;
        p_ttm = 0;
        alarm[4] = 1;
        tags_menu_open = 0;
    }
    else if (global.menu_return_to == 3)
    {
        current_menu_page = 3;
        pack_to_open = 0;
        pack_open_total_puzzles = 0;
        current_generic_page = 0;
        max_generic_pages = 0;
        page_content_alpha = 0;
        p_ttm = 0;
        alarm[4] = 1;
        tags_menu_open = 0;
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
        fncbwr = kiosk_total_pages;
        can_fix_chal_next_error = 1;
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
    if (global.current_puzzle_ghost_image == 0)
    {
    }
    else
    {
        sprite_delete(global.current_puzzle_ghost_image);
    }
    if (global.puzzle_sprite_index_to_use == 0)
    {
    }
    else
    {
        sprite_delete(global.puzzle_sprite_index_to_use);
    }
}
can_enter_pop_sound = 1;
pack_open_total_puzzles_beat = 0;
kiosk_items_showing = 0;
alarm[8] = 100 + random(200);
credit_logo_angle = 0;
credit_logo_angle2 = 180;
total_pack_buttons = 0;
current_showing_pack_buttons = 0;
image_alpha = 1;
alarm[0] = 1;
num_gold_make = 0;
pk_tr = 0;
p_t_r = 0;
s_t_r = 0;
c_b_u = 0;
show_theme_chooser = 0;
theme_choose_alpha = 0;
exit_door_animation = 0;
hover_bar_x = 0;
hover_bar_scale = 0;
hover_bar_max_scale = 0;
hover_bar_grow = 0;
hover_bar_grow_speed = 0.05;
button_id = instance_create(1682, 210, ob_new_menu_generic_button);
button_id.button_number = 1;
button_id.sprite_index = sp_new_menu_wide_thin_box_short;
button_id = instance_create(1682, 245, ob_new_menu_generic_button);
button_id.button_number = 2;
button_id.sprite_index = sp_new_menu_wide_thin_box_short;
button_id = instance_create(1682, 280, ob_new_menu_generic_button);
button_id.button_number = 3;
button_id.sprite_index = sp_new_menu_wide_thin_box_short;
button_id = instance_create(1682, 315, ob_new_menu_generic_button);
button_id.button_number = 4;
button_id.sprite_index = sp_new_menu_wide_thin_box_short;
button_id = instance_create(1682, 350, ob_new_menu_generic_button);
button_id.button_number = 5;
button_id.sprite_index = sp_new_menu_wide_thin_box_short;
button_id = instance_create(1682, 385, ob_new_menu_generic_button);
button_id.button_number = 6;
button_id.sprite_index = sp_new_menu_wide_thin_box_short;
button_id = instance_create(1682, 420, ob_new_menu_generic_button);
button_id.button_number = 7;
button_id.sprite_index = sp_new_menu_wide_thin_box_short;
button_id = instance_create(1682, 455, ob_new_menu_generic_button);
button_id.button_number = 8;
button_id.sprite_index = sp_new_menu_wide_thin_box_short;
stat_puzzles_complete = 0;
stat_gold_owned = 0;
stat_hints_owned = 0;
stat_ultimates_owned = 0;
if (steam_stats_ready())
{
    var regulars_beat1 = steam_get_stat_int("total_normal_puzzles_beat");
    var uniques_beat1 = steam_get_stat_int("total_uniques_beat");
    var total_ultimate_complete1 = steam_get_stat_int("ultimate_puzzles_complete");
    stat_puzzles_complete = regulars_beat1 + uniques_beat1 + total_ultimate_complete1;
    var gold_earned1 = steam_get_stat_int("gold_bits_earned");
    var gold_spent1 = steam_get_stat_int("gold_bits_used");
    stat_gold_owned = gold_earned1 - gold_spent1;
    var hints_earned1 = steam_get_stat_int("hints_earned");
    var hints_spent1 = steam_get_stat_int("hints_used");
    stat_hints_owned = hints_earned1 - hints_spent1;
    var ultimates_earned1 = steam_get_stat_int("ultimate_pieces_earned");
    var ultimates_spent1 = steam_get_stat_int("ultimate_pieces_used");
    stat_ultimates_owned = ultimates_earned1 - ultimates_spent1;
}
button_id = instance_create(1616, 940, ob_new_menu_generic_button);
button_id.button_number = 85;
button_id.sprite_index = sp_nm_quick_select;
button_id.image_index = 0;
button_id = instance_create(1748, 940, ob_new_menu_generic_button);
button_id.button_number = 86;
button_id.sprite_index = sp_nm_quick_select;
button_id.image_index = 1;
button_id = instance_create(1616, 620, ob_new_menu_generic_button);
button_id.button_number = 87;
button_id.sprite_index = sp_new_menu_puzzle_button_blank;
button_id = instance_create(1748, 620, ob_new_menu_generic_button);
button_id.button_number = 88;
button_id.sprite_index = sp_new_menu_puzzle_button_blank;
button_id = instance_create(1616, 700, ob_new_menu_generic_button);
button_id.button_number = 89;
button_id.sprite_index = sp_new_menu_puzzle_button_blank;
button_id = instance_create(1748, 700, ob_new_menu_generic_button);
button_id.button_number = 90;
button_id.sprite_index = sp_new_menu_puzzle_button_blank;
button_id = instance_create(1616, 780, ob_new_menu_generic_button);
button_id.button_number = 91;
button_id.sprite_index = sp_new_menu_puzzle_button_blank;
button_id = instance_create(1748, 780, ob_new_menu_generic_button);
button_id.button_number = 92;
button_id.sprite_index = sp_new_menu_puzzle_button_blank;
button_id = instance_create(1616, 860, ob_new_menu_generic_button);
button_id.button_number = 93;
button_id.sprite_index = sp_new_menu_puzzle_button_blank;
button_id = instance_create(1748, 860, ob_new_menu_generic_button);
button_id.button_number = 94;
button_id.sprite_index = sp_new_menu_puzzle_button_blank;
button_id = instance_create(570, 211, ob_new_menu_generic_button);
button_id.button_number = 18;
button_id.sprite_index = sp_new_menu_wide_thin_box_arrows;
button_id = instance_create(570, 981, ob_new_menu_generic_button);
button_id.button_number = 19;
button_id.sprite_index = sp_new_menu_wide_thin_box_arrows;
button_id.image_index = 1;
button_id = instance_create(423, 164, ob_new_menu_generic_button);
button_id.button_number = 20;
button_id.sprite_index = sp_nm_tags_button;
button_id = instance_create(870, 93, ob_new_menu_generic_button);
button_id.button_number = 47;
button_id.sprite_index = sp_nm_fav_but;
button_id.alarm[2] = 1;
button_id.mask_index = sp_nm_fav_but;
button_id = instance_create(36, 92, ob_new_menu_generic_button);
button_id.button_number = 67;
button_id.sprite_index = sp_new_menu_gold_bit_big;
button_id.mask_index = sp_new_menu_gold_bit_big;
instance_create(0, 0, ob_menu_backing);
if (global.menu_seasonal_decor == 2)
{
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
    instance_create(0 + random(1920), 0 + random(1080), ob_menu_xmas_snow);
}
news_prev_scale = 1;
news_next_scale = 1;
news_pip_x = 160;
news_pip_x_max = 308;
news_pages = choose(0, 1, 2, 3);
news_pages_total = 3;
news_pause_slideshow = 0;
news_page_alpha = 1;
button_id = instance_create(123, 967, ob_new_menu_generic_button);
button_id.button_number = 9;
button_id.sprite_index = sp_new_menu_next_button;
button_id = instance_create(351, 967, ob_new_menu_generic_button);
button_id.button_number = 10;
button_id.sprite_index = sp_new_menu_next_button;
featured_button_scale = 1;
can_make_shop_buts = 0;
can_make_buttons = 0;
kiosk_total_pages = 0;
kiosk_current_page = 0;
can_make_shop_buts = 0;
puz_shop_page = 0;
kiosk_1_total_puz = 78;
kiosk_2_total_puz = 0;
kiosk_3_total_puz = 19;
kiosk_4_total_puz = 11;
total_puz_number = kiosk_1_total_puz + kiosk_2_total_puz + kiosk_3_total_puz + kiosk_4_total_puz;
total_puz_complete = 0;
kiosk_but_1_scale = 1;
kiosk_but_2_scale = 1;
kiosk_but_3_scale = 1;
kiosk_but_4_scale = 1;
kiosk_but_1_ani = 0;
kiosk_but_2_ani = 0;
kiosk_but_3_ani = 0;
kiosk_but_4_ani = 0;
kiosk_but_1_total_complete = 0;
kiosk_but_2_total_complete = 0;
kiosk_but_3_total_complete = 0;
kiosk_but_4_total_complete = 0;
if (steam_get_achievement("uniques_5001"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5002"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5003"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5004"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5005"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5006"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5007"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5008"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5009"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5010"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5011"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5012"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5013"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5014"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5015"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5016"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5017"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5018"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5019"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5020"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5021"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5022"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5023"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5024"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5025"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5026"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5027"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5028"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5029"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5030"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5031"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5032"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5033"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5034"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5035"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5036"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5037"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5038"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5039"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5040"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5041"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5042"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5043"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5044"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5045"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5046"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5047"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5048"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5049"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5050"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5051"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5052"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5053"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5054"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5055"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5056"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5057"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5058"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5059"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5060"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5061"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5062"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5063"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5064"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5065"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5066"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5067"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5068"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5069"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5070"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5071"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5072"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5073"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5074"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5075"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5076"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5077"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_5078"))
{
    kiosk_but_1_total_complete += 1;
}
if (steam_get_achievement("uniques_101"))
{
    kiosk_but_3_total_complete += 1;
}
if (steam_get_achievement("uniques_102"))
{
    kiosk_but_3_total_complete += 1;
}
if (steam_get_achievement("uniques_103"))
{
    kiosk_but_3_total_complete += 1;
}
if (steam_get_achievement("uniques_104"))
{
    kiosk_but_3_total_complete += 1;
}
if (steam_get_achievement("uniques_105"))
{
    kiosk_but_3_total_complete += 1;
}
if (steam_get_achievement("uniques_106"))
{
    kiosk_but_3_total_complete += 1;
}
if (steam_get_achievement("uniques_107"))
{
    kiosk_but_3_total_complete += 1;
}
if (steam_get_achievement("uniques_108"))
{
    kiosk_but_3_total_complete += 1;
}
if (steam_get_achievement("uniques_109"))
{
    kiosk_but_3_total_complete += 1;
}
if (steam_get_achievement("uniques_110"))
{
    kiosk_but_3_total_complete += 1;
}
if (steam_get_achievement("uniques_111"))
{
    kiosk_but_3_total_complete += 1;
}
if (steam_get_achievement("uniques_112"))
{
    kiosk_but_3_total_complete += 1;
}
if (steam_get_achievement("uniques_113"))
{
    kiosk_but_3_total_complete += 1;
}
if (steam_get_achievement("uniques_114"))
{
    kiosk_but_3_total_complete += 1;
}
if (steam_get_achievement("uniques_115"))
{
    kiosk_but_3_total_complete += 1;
}
if (steam_get_achievement("uniques_116"))
{
    kiosk_but_3_total_complete += 1;
}
if (steam_get_achievement("uniques_117"))
{
    kiosk_but_3_total_complete += 1;
}
if (steam_get_achievement("uniques_118"))
{
    kiosk_but_3_total_complete += 1;
}
if (steam_get_achievement("uniques_119"))
{
    kiosk_but_3_total_complete += 1;
}
if (steam_get_achievement("uniques_1001"))
{
    kiosk_but_4_total_complete += 1;
}
if (steam_get_achievement("uniques_1002"))
{
    kiosk_but_4_total_complete += 1;
}
if (steam_get_achievement("uniques_1005"))
{
    kiosk_but_4_total_complete += 1;
}
if (steam_get_achievement("uniques_1006"))
{
    kiosk_but_4_total_complete += 1;
}
if (steam_get_achievement("uniques_1007"))
{
    kiosk_but_4_total_complete += 1;
}
if (steam_get_achievement("uniques_1009"))
{
    kiosk_but_4_total_complete += 1;
}
if (steam_get_achievement("uniques_1010"))
{
    kiosk_but_4_total_complete += 1;
}
if (steam_get_achievement("uniques_1011"))
{
    kiosk_but_4_total_complete += 1;
}
if (steam_get_achievement("uniques_1012"))
{
    kiosk_but_4_total_complete += 1;
}
if (steam_get_achievement("uniques_1013"))
{
    kiosk_but_4_total_complete += 1;
}
if (steam_get_achievement("uniques_1014"))
{
    kiosk_but_4_total_complete += 1;
}
current_challenge_number = 87;
global.current_challenge_number = 87;
challenge_pieces_total = 330;
global.current_challenge_pieces = 330;
challenge_is_beat = 0;
var achive_use = "challenge_" + string(global.current_challenge_number);
if (steam_get_achievement(string(achive_use)))
{
    challenge_is_beat = 1;
}
ini_open("ppu.ini");
var save_use1 = "p5000x" + string(global.current_challenge_number);
var save_use2 = "p5000x" + string(global.current_challenge_number) + "b0";
var pieces_placed = ini_read_string(string(save_use1), string(save_use2), 0);
challenge_pieces_placed = real(base64_decode(pieces_placed));
ini_close();
current_challenge_month_letter_1 = "";
current_challenge_month_letter_2 = "";
current_challenge_month_letter_3 = "";
current_challenge_month_letter_4 = "";
current_challenge_month_letter_5 = "";
current_challenge_month_letter_6 = "J";
current_challenge_month_letter_7 = "U";
current_challenge_month_letter_8 = "L";
current_challenge_month_letter_9 = "Y";
total_challenges_complete = 0;
if (steam_get_achievement("challenge_87"))
{
    total_challenges_complete += 1;
    steam_set_achievement("kioskchallenges87");
}
if (steam_get_achievement("challenge_86"))
{
    total_challenges_complete += 1;
    steam_set_achievement("kioskchallenges86");
}
if (steam_get_achievement("challenge_85"))
{
    total_challenges_complete += 1;
    steam_set_achievement("kioskchallenges85");
}
if (steam_get_achievement("challenge_84"))
{
    total_challenges_complete += 1;
    steam_set_achievement("kioskchallenges84");
}
if (steam_get_achievement("challenge_83"))
{
    total_challenges_complete += 1;
    steam_set_achievement("kioskchallenges83");
}
if (steam_get_achievement("challenge_82"))
{
    total_challenges_complete += 1;
    steam_set_achievement("kioskchallenges82");
}
if (steam_get_achievement("challenge_81"))
{
    total_challenges_complete += 1;
    steam_set_achievement("kioskchallenges81");
}
if (steam_get_achievement("challenge_80"))
{
    total_challenges_complete += 1;
    steam_set_achievement("kioskchallenges80");
}
if (steam_get_achievement("challenge_79"))
{
    total_challenges_complete += 1;
    steam_set_achievement("kioskchallenges79");
}
if (steam_get_achievement("challenge_78"))
{
    total_challenges_complete += 1;
    steam_set_achievement("kioskchallenges78");
}
if (steam_get_achievement("challenge_77"))
{
    total_challenges_complete += 1;
    steam_set_achievement("kioskchallenges77");
}
if (steam_get_achievement("challenge_76"))
{
    total_challenges_complete += 1;
    steam_set_achievement("kioskchallenges76");
}
if (steam_get_achievement("challenge_75"))
{
    total_challenges_complete += 1;
    steam_set_achievement("kioskchallenges75");
}
if (steam_get_achievement("challenge_74"))
{
    total_challenges_complete += 1;
    steam_set_achievement("kioskchallenges74");
}
if (steam_get_achievement("challenge_73"))
{
    total_challenges_complete += 1;
    steam_set_achievement("kioskchallenges73");
}
if (steam_get_achievement("challenge_72"))
{
    total_challenges_complete += 1;
    steam_set_achievement("kioskchallenges72");
}
if (steam_get_achievement("challenge_71"))
{
    total_challenges_complete += 1;
    steam_set_achievement("kioskchallenges71");
}
if (steam_get_achievement("challenge_70"))
{
    total_challenges_complete += 1;
    steam_set_achievement("kioskchallenges70");
}
if (steam_get_achievement("challenge_69"))
{
    total_challenges_complete += 1;
    steam_set_achievement("kioskchallenges69");
}
if (steam_get_achievement("challenge_68"))
{
    total_challenges_complete += 1;
    steam_set_achievement("kioskchallenges68");
}
if (steam_get_achievement("challenge_67"))
{
    total_challenges_complete += 1;
    steam_set_achievement("kioskchallenges67");
}
if (steam_get_achievement("challenge_66"))
{
    total_challenges_complete += 1;
    steam_set_achievement("kioskchallenges66");
}
if (steam_get_achievement("challenge_65"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_64"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_63"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_62"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_61"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_60"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_59"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_58"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_57"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_56"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_55"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_54"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_53"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_52"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_51"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_50"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_49"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_48"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_47"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_46"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_45"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_44"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_43"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_42"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_41"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_40"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_39"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_38"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_37"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_36"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_35"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_34"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_33"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_32"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_31"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_30"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_29"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_28"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_27"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_26"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_25"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_24"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_23"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_22"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_21"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_20"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_19"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_18"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_17"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_16"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_15"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_14"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_13"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_12"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_11"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_10"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_9"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_8"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_7"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_6"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_5"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_4"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_3"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_2"))
{
    total_challenges_complete += 1;
}
if (steam_get_achievement("challenge_1"))
{
    total_challenges_complete += 1;
}
total_pieces_placed = 0;
total_packs_complete = 0;
regulars_beat = 0;
uniques_beat = 0;
total_ultimate_complete = 0;
total_puzzles_complete = 0;
gold_earned = 0;
gold_spent = 0;
total_current_gold = 0;
hints_earned = 0;
hints_spent = 0;
total_current_hints = 0;
ultimates_earned = 0;
ultimates_spent = 0;
total_current_ultimates = 0;
ghost_hints_used = 0;
angle_hints_used = 0;
location_hints_used = 0;
total_pieces_placed = steam_get_stat_int("pieces_placed");
total_packs_complete = steam_get_stat_int("total_packs_complete");
regulars_beat = steam_get_stat_int("total_normal_puzzles_beat");
uniques_beat = steam_get_stat_int("total_uniques_beat");
total_ultimate_complete = steam_get_stat_int("ultimate_puzzles_complete");
total_puzzles_complete = regulars_beat + uniques_beat + total_ultimate_complete;
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
var fav_to_check = 0;
ini_open("ppu.ini");
fav_to_check = ini_read_string("p6004x0", "p6000x1", 0);
fav_1 = real(base64_decode(fav_to_check));
fav_to_check = ini_read_string("p6004x0", "p6000x2", 0);
fav_2 = real(base64_decode(fav_to_check));
fav_to_check = ini_read_string("p6004x0", "p6000x3", 0);
fav_3 = real(base64_decode(fav_to_check));
fav_to_check = ini_read_string("p6004x0", "p6000x4", 0);
fav_4 = real(base64_decode(fav_to_check));
fav_to_check = ini_read_string("p6004x0", "p6000x5", 0);
fav_5 = real(base64_decode(fav_to_check));
fav_to_check = ini_read_string("p6004x0", "p6000x6", 0);
fav_6 = real(base64_decode(fav_to_check));
fav_to_check = ini_read_string("p6004x0", "p6000x7", 0);
fav_7 = real(base64_decode(fav_to_check));
fav_to_check = ini_read_string("p6004x0", "p6000x8", 0);
fav_8 = real(base64_decode(fav_to_check));
fav_to_check = ini_read_string("p6004x0", "p6000x9", 0);
fav_9 = real(base64_decode(fav_to_check));
fav_to_check = ini_read_string("p6004x0", "p6000x10", 0);
fav_10 = real(base64_decode(fav_to_check));
fav_to_check = ini_read_string("p6004x0", "p6000x11", 0);
fav_11 = real(base64_decode(fav_to_check));
fav_to_check = ini_read_string("p6004x0", "p6000x12", 0);
fav_12 = real(base64_decode(fav_to_check));
fav_to_check = ini_read_string("p6004x0", "p6000x13", 0);
fav_13 = real(base64_decode(fav_to_check));
fav_to_check = ini_read_string("p6004x0", "p6000x14", 0);
fav_14 = real(base64_decode(fav_to_check));
fav_to_check = ini_read_string("p6004x0", "p6000x15", 0);
fav_15 = real(base64_decode(fav_to_check));
fav_to_check = ini_read_string("p6004x0", "p6000x16", 0);
fav_16 = real(base64_decode(fav_to_check));
fav_to_check = ini_read_string("p6004x0", "p6000x17", 0);
fav_17 = real(base64_decode(fav_to_check));
fav_to_check = ini_read_string("p6004x0", "p6000x18", 0);
fav_18 = real(base64_decode(fav_to_check));
fav_to_check = ini_read_string("p6004x0", "p6000x19", 0);
fav_19 = real(base64_decode(fav_to_check));
fav_to_check = ini_read_string("p6004x0", "p6000x20", 0);
fav_20 = real(base64_decode(fav_to_check));
fav_to_check = ini_read_string("p6004x0", "p6000x21", 0);
fav_21 = real(base64_decode(fav_to_check));
fav_to_check = ini_read_string("p6004x0", "p6000x22", 0);
fav_22 = real(base64_decode(fav_to_check));
fav_to_check = ini_read_string("p6004x0", "p6000x23", 0);
fav_23 = real(base64_decode(fav_to_check));
fav_to_check = ini_read_string("p6004x0", "p6000x24", 0);
fav_24 = real(base64_decode(fav_to_check));
fav_to_check = ini_read_string("p6004x0", "p6000x25", 0);
fav_25 = real(base64_decode(fav_to_check));
ini_close();
if (global.game_has_just_launched == 1)
{
    global.game_has_just_launched = 0;
    piece_1_id = instance_create(176, 224, ob_intro_puzzle_piece);
    piece_1_id.bit_number = 1;
    piece_1_id.sprite_index = sp_intro_puzzle_bits;
    piece_1_id.image_index = 0;
    piece_1_id.speed = 0;
    piece_1_id.direction = 140;
    piece_1_id.depth = -10000006;
    piece_1_id.rotation_direction = 0;
    piece_1_id.rotation_amount = choose(1, 2, 3);
    piece_1_id.alarm[2] = 1;
    piece_2_id = instance_create(560, 232, ob_intro_puzzle_piece);
    piece_2_id.bit_number = 2;
    piece_2_id.sprite_index = sp_intro_puzzle_bits;
    piece_2_id.image_index = 1;
    piece_2_id.speed = 0;
    piece_2_id.direction = 160;
    piece_2_id.depth = -100000011;
    piece_2_id.rotation_direction = 0;
    piece_2_id.rotation_amount = choose(1, 2, 3);
    piece_2_id.alarm[2] = 1;
    piece_3_id = instance_create(956, 225, ob_intro_puzzle_piece);
    piece_3_id.bit_number = 3;
    piece_3_id.sprite_index = sp_intro_puzzle_bits;
    piece_3_id.image_index = 2;
    piece_3_id.speed = 0;
    piece_3_id.direction = 45;
    piece_3_id.depth = -100000010;
    piece_3_id.rotation_direction = 1;
    piece_3_id.rotation_amount = choose(1, 2, 3);
    piece_3_id.alarm[2] = 1;
    piece_4_id = instance_create(1360, 218, ob_intro_puzzle_piece);
    piece_4_id.bit_number = 4;
    piece_4_id.sprite_index = sp_intro_puzzle_bits;
    piece_4_id.image_index = 3;
    piece_4_id.speed = 0;
    piece_4_id.direction = 30;
    piece_4_id.depth = -100000013;
    piece_4_id.rotation_direction = 1;
    piece_4_id.rotation_amount = choose(1, 2, 3);
    piece_4_id.alarm[2] = 1;
    piece_5_id = instance_create(1747, 233, ob_intro_puzzle_piece);
    piece_5_id.bit_number = 5;
    piece_5_id.sprite_index = sp_intro_puzzle_bits;
    piece_5_id.image_index = 4;
    piece_5_id.speed = 0;
    piece_5_id.direction = 40;
    piece_5_id.depth = -10000003;
    piece_5_id.rotation_direction = 1;
    piece_5_id.rotation_amount = choose(1, 2, 3);
    piece_5_id.alarm[2] = 1;
    piece_6_id = instance_create(187, 541, ob_intro_puzzle_piece);
    piece_6_id.bit_number = 6;
    piece_6_id.sprite_index = sp_intro_puzzle_bits;
    piece_6_id.image_index = 5;
    piece_6_id.speed = 0;
    piece_6_id.direction = 170;
    piece_6_id.depth = -10000002;
    piece_6_id.rotation_direction = 0;
    piece_6_id.rotation_amount = choose(1, 2, 3);
    piece_6_id.alarm[2] = 1;
    piece_7_id = instance_create(559, 523, ob_intro_puzzle_piece);
    piece_7_id.bit_number = 7;
    piece_7_id.sprite_index = sp_intro_puzzle_bits;
    piece_7_id.image_index = 6;
    piece_7_id.speed = 0;
    piece_7_id.direction = 190;
    piece_7_id.depth = -100000014;
    piece_7_id.rotation_direction = 0;
    piece_7_id.rotation_amount = choose(1, 2, 3);
    piece_7_id.alarm[2] = 1;
    piece_8_id = instance_create(991, 509, ob_intro_puzzle_piece);
    piece_8_id.bit_number = 8;
    piece_8_id.sprite_index = sp_intro_puzzle_bits;
    piece_8_id.image_index = 7;
    piece_8_id.speed = 0;
    piece_8_id.direction = 100;
    piece_8_id.depth = -10000009;
    piece_8_id.rotation_direction = 0;
    piece_8_id.rotation_amount = choose(1, 2, 3);
    piece_8_id.alarm[2] = 1;
    piece_9_id = instance_create(1358, 530, ob_intro_puzzle_piece);
    piece_9_id.bit_number = 9;
    piece_9_id.sprite_index = sp_intro_puzzle_bits;
    piece_9_id.image_index = 8;
    piece_9_id.speed = 0;
    piece_9_id.direction = 60;
    piece_9_id.depth = -100000015;
    piece_9_id.rotation_direction = 1;
    piece_9_id.rotation_amount = choose(1, 2, 3);
    piece_9_id.alarm[2] = 1;
    piece_10_id = instance_create(1728, 546, ob_intro_puzzle_piece);
    piece_10_id.bit_number = 10;
    piece_10_id.sprite_index = sp_intro_puzzle_bits;
    piece_10_id.image_index = 9;
    piece_10_id.speed = 0;
    piece_10_id.direction = 50;
    piece_10_id.depth = -10000005;
    piece_10_id.rotation_direction = 1;
    piece_10_id.rotation_amount = choose(1, 2, 3);
    piece_10_id.alarm[2] = 1;
    piece_11_id = instance_create(191, 885, ob_intro_puzzle_piece);
    piece_11_id.bit_number = 11;
    piece_11_id.sprite_index = sp_intro_puzzle_bits;
    piece_11_id.image_index = 10;
    piece_11_id.speed = 0;
    piece_11_id.direction = 180;
    piece_11_id.depth = -10000004;
    piece_11_id.rotation_direction = 0;
    piece_11_id.rotation_amount = choose(1, 2, 3);
    piece_11_id.alarm[2] = 1;
    piece_12_id = instance_create(567, 877, ob_intro_puzzle_piece);
    piece_12_id.bit_number = 12;
    piece_12_id.sprite_index = sp_intro_puzzle_bits;
    piece_12_id.image_index = 11;
    piece_12_id.speed = 0;
    piece_12_id.direction = 200;
    piece_12_id.depth = -100000012;
    piece_12_id.rotation_direction = 0;
    piece_12_id.rotation_amount = choose(1, 2, 3);
    piece_12_id.alarm[2] = 1;
    piece_13_id = instance_create(959, 890, ob_intro_puzzle_piece);
    piece_13_id.bit_number = 13;
    piece_13_id.sprite_index = sp_intro_puzzle_bits;
    piece_13_id.image_index = 12;
    piece_13_id.speed = 0;
    piece_13_id.direction = 240;
    piece_13_id.depth = -10000007;
    piece_13_id.rotation_direction = 0;
    piece_13_id.rotation_amount = choose(1, 2, 3);
    piece_13_id.alarm[2] = 1;
    piece_14_id = instance_create(1367, 895, ob_intro_puzzle_piece);
    piece_14_id.bit_number = 14;
    piece_14_id.sprite_index = sp_intro_puzzle_bits;
    piece_14_id.image_index = 13;
    piece_14_id.speed = 0;
    piece_14_id.direction = 330;
    piece_14_id.depth = -10000008;
    piece_14_id.rotation_direction = 1;
    piece_14_id.rotation_amount = choose(1, 2, 3);
    piece_14_id.alarm[2] = 1;
    piece_15_id = instance_create(1737, 875, ob_intro_puzzle_piece);
    piece_15_id.bit_number = 15;
    piece_15_id.sprite_index = sp_intro_puzzle_bits;
    piece_15_id.image_index = 14;
    piece_15_id.speed = 0;
    piece_15_id.direction = 350;
    piece_15_id.depth = -10000001;
    piece_15_id.rotation_direction = 1;
    piece_15_id.rotation_amount = choose(1, 2, 3);
    piece_15_id.alarm[2] = 1;
}
if (global.dev_tools_are_active == 0)
{
    if (steam_stats_ready())
    {
        var new_regular_puzzles_beat = steam_get_stat_int("total_normal_puzzles_beat");
        var new_uniques_puzzles_beat = steam_get_stat_int("total_uniques_beat");
        var new_challenges_beat = steam_get_stat_int("challenges_complete");
        var new_packs_beat = steam_get_stat_int("total_packs_complete");
        var new_gold_pieces_earned = steam_get_stat_int("gold_bits_earned");
        var new_pieces_clicked_in = steam_get_stat_int("pieces_placed");
        var new_challenge_puzzles_beat = steam_get_stat_int("comps_won");
        steam_upload_score("number_of_puzzles_completed", new_regular_puzzles_beat);
        steam_upload_score("number_of_uniques_complete", new_uniques_puzzles_beat);
        steam_upload_score("challenges_complete", new_challenges_beat);
        steam_upload_score("number_of_packs_complete", new_packs_beat);
        steam_upload_score("most_gold_earned", new_gold_pieces_earned);
        steam_upload_score("pieces_placed_in", new_pieces_clicked_in);
        steam_upload_score("challenge_puzzles_complete", new_challenge_puzzles_beat);
    }
}
