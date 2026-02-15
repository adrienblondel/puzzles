if (room == r_main_menu)
{
    draw_sprite_ext(sp_menu_backing_fav, 0, 280, 297, 5, 5, 0, make_colour_rgb(global.menu_background_colour_r, global.menu_background_colour_g, global.menu_background_colour_b), 1);
    draw_sprite_ext(sp_menu_filers_buttons_backing, 0, 279, 493, 1, 1, 0, c_white, 1);
    draw_sprite_ext(sp_menu_filers_buttons, filer_1_on_or_off, 298, 503, 1, 1, 0, c_white, 1);
    if (global.game_current_language == 0)
    {
        draw_sprite_ext(sp_menu_filers_buttons, filer_2_on_or_off, 464, 503, 1, 1, 0, c_white, 1);
    }
    draw_sprite_ext(sp_menu_filers_buttons, filer_3_on_or_off, 630, 503, 1, 1, 0, c_white, 1);
    draw_sprite_ext(sp_menu_filers_buttons, filer_4_on_or_off, 796, 503, 1, 1, 0, c_white, 1);
    draw_sprite_ext(sp_menu_filers_buttons, filer_5_on_or_off, 962, 503, 1, 1, 0, c_white, 1);
    draw_sprite_ext(sp_menu_filers_buttons, filer_6_on_or_off, 1128, 503, 1, 1, 0, c_white, 1);
    draw_sprite_ext(sp_menu_filers_buttons, filer_7_on_or_off, 1294, 503, 1, 1, 0, c_white, 1);
    draw_sprite_ext(sp_menu_filers_buttons, filer_8_on_or_off, 1460, 503, 1, 1, 0, c_white, 1);
    draw_set_halign(fa_center);
    draw_set_colour(c_black);
    draw_set_font(global.current_font_26);
    draw_text_ext_transformed(378, 506, ob_language_controller.main_menu_filter_1, 1000, 1000, 0.6, 0.6, 0);
    if (global.game_current_language == 0)
    {
        if (global.pack_filer_using == 1)
        {
            draw_text_ext_transformed(544, 506, ob_language_controller.main_menu_filter_2, 1000, 1000, 0.6, 0.6, 0);
        }
        else if (global.pack_filer_using == 2)
        {
            draw_text_ext_transformed(544, 506, ob_language_controller.main_menu_filter_2a, 1000, 1000, 0.6, 0.6, 0);
        }
        else
        {
            draw_text_ext_transformed(544, 506, ob_language_controller.main_menu_filter_2, 1000, 1000, 0.6, 0.6, 0);
        }
    }
    if (global.pack_filer_using == 3)
    {
        draw_text_ext_transformed(710, 506, ob_language_controller.main_menu_filter_3b, 1000, 1000, 0.6, 0.6, 0);
    }
    else if (global.pack_filer_using == 4)
    {
        draw_text_ext_transformed(710, 506, ob_language_controller.main_menu_filter_3a, 1000, 1000, 0.6, 0.6, 0);
    }
    else
    {
        draw_text_ext_transformed(710, 506, ob_language_controller.main_menu_filter_3, 1000, 1000, 0.6, 0.6, 0);
    }
    draw_text_ext_transformed(876, 506, ob_language_controller.main_menu_filter_4, 1000, 1000, 0.6, 0.6, 0);
    draw_text_ext_transformed(1042, 506, ob_language_controller.main_menu_filter_5, 1000, 1000, 0.6, 0.6, 0);
    draw_text_ext_transformed(1208, 506, ob_language_controller.main_menu_filter_6, 1000, 1000, 0.6, 0.6, 0);
    draw_text_ext_transformed(1374, 506, ob_language_controller.main_menu_filter_7, 1000, 1000, 0.6, 0.6, 0);
    draw_text_ext_transformed(1540, 506, ob_language_controller.main_menu_filter_8, 1000, 1000, 0.6, 0.6, 0);
    draw_set_colour(c_white);
    draw_text_ext_transformed(379, 504, ob_language_controller.main_menu_filter_1, 1000, 1000, 0.6, 0.6, 0);
    if (global.game_current_language == 0)
    {
        if (global.pack_filer_using == 1)
        {
            draw_text_ext_transformed(545, 504, ob_language_controller.main_menu_filter_2, 1000, 1000, 0.6, 0.6, 0);
        }
        else if (global.pack_filer_using == 2)
        {
            draw_text_ext_transformed(545, 504, ob_language_controller.main_menu_filter_2a, 1000, 1000, 0.6, 0.6, 0);
        }
        else
        {
            draw_text_ext_transformed(545, 504, ob_language_controller.main_menu_filter_2, 1000, 1000, 0.6, 0.6, 0);
        }
    }
    if (global.pack_filer_using == 3)
    {
        draw_text_ext_transformed(711, 504, ob_language_controller.main_menu_filter_3b, 1000, 1000, 0.6, 0.6, 0);
    }
    else if (global.pack_filer_using == 4)
    {
        draw_text_ext_transformed(711, 504, ob_language_controller.main_menu_filter_3a, 1000, 1000, 0.6, 0.6, 0);
    }
    else
    {
        draw_text_ext_transformed(711, 504, ob_language_controller.main_menu_filter_3, 1000, 1000, 0.6, 0.6, 0);
    }
    draw_text_ext_transformed(877, 504, ob_language_controller.main_menu_filter_4, 1000, 1000, 0.6, 0.6, 0);
    draw_text_ext_transformed(1043, 504, ob_language_controller.main_menu_filter_5, 1000, 1000, 0.6, 0.6, 0);
    draw_text_ext_transformed(1209, 504, ob_language_controller.main_menu_filter_6, 1000, 1000, 0.6, 0.6, 0);
    draw_text_ext_transformed(1375, 504, ob_language_controller.main_menu_filter_7, 1000, 1000, 0.6, 0.6, 0);
    draw_text_ext_transformed(1541, 504, ob_language_controller.main_menu_filter_8, 1000, 1000, 0.6, 0.6, 0);
    draw_set_halign(fa_left);
}
if (room == r_puzzle_select || room == r_uniques_select)
{
    draw_rectangle_colour(1369, 295, 1920, 679, puz_select_options_backing_colour_1, puz_select_options_backing_colour_1, puz_select_options_backing_colour_1, puz_select_options_backing_colour_1, 0);
    draw_rectangle_colour(1369, 680, 1920, 1080, puz_select_options_backing_colour_1, puz_select_options_backing_colour_1, puz_select_options_backing_colour_1, puz_select_options_backing_colour_1, 0);
    if (global.puzzle_preview_level_type == 2)
    {
        draw_sprite_ext(sp_puzzle_select_theme_preview_rectangle, global.theme_to_use, 1388, 766, 1, 1, 0, c_white, 1);
    }
    else if (global.puzzle_preview_level_type == 3)
    {
        draw_sprite_ext(sp_puzzle_select_theme_preview_square, global.theme_to_use, 1388, 766, 1, 1, 0, c_white, 1);
    }
    else if (global.puzzle_preview_level_type == 4)
    {
        draw_sprite_ext(sp_puzzle_select_theme_preview_panorama, global.theme_to_use, 1388, 766, 1, 1, 0, c_white, 1);
    }
    else if (global.puzzle_preview_level_type == 5)
    {
        draw_sprite_ext(sp_puzzle_select_theme_preview_unique, global.theme_to_use, 1388, 766, 1, 1, 0, c_white, 1);
    }
    else
    {
        draw_sprite_ext(sp_puzzle_select_theme_preview, global.theme_to_use, 1388, 766, 1, 1, 0, c_white, 1);
    }
    draw_sprite_ext(global.puzzle_preview_sprite_index, 0, 1388, 766, 1, 1, 0, c_white, global.puzzle_preview_image_alpha);
    draw_sprite_ext(sp_puzzle_select_options_menu, 0, 1370, 297, 1, 1, 0, c_white, 1);
    draw_sprite_ext(sp_menu_devider, 0, 1359, 292, 1, 1, 0, c_white, 1);
    draw_sprite_ext(sp_puzzle_select_theme_arrow, 0, 1428, 424, float_rotation_arrow_scale_left_x, float_rotation_arrow_scale_left_y, 0, c_white, 1);
    draw_sprite_ext(sp_puzzle_select_theme_arrow, 0, 1862, 424, float_rotation_arrow_scale_right, float_rotation_arrow_scale_right, 0, c_white, 1);
    draw_sprite_ext(sp_puzzle_select_theme_arrow, 0, 1428, 473, float_speed_arrow_scale_left_x, float_speed_arrow_scale_left_y, 0, c_white, 1);
    draw_sprite_ext(sp_puzzle_select_theme_arrow, 0, 1862, 473, float_speed_arrow_scale_right, float_speed_arrow_scale_right, 0, c_white, 1);
    draw_sprite_ext(sp_puzzle_select_theme_arrow, 0, 1428, 326, piece_rotation_arrow_scale_left_x, piece_rotation_arrow_scale_left_y, 0, c_white, 1);
    draw_sprite_ext(sp_puzzle_select_theme_arrow, 0, 1862, 326, piece_rotation_arrow_scale_right, piece_rotation_arrow_scale_right, 0, c_white, 1);
    draw_sprite_ext(sp_puzzle_select_theme_arrow, 0, 1428, 375, piece_snap_arrow_scale_left_x, piece_snap_fade_arrow_scale_left_y, 0, c_white, 1);
    draw_sprite_ext(sp_puzzle_select_theme_arrow, 0, 1862, 375, piece_snap_fade_arrow_scale_right, piece_snap_fade_arrow_scale_right, 0, c_white, 1);
    draw_sprite_ext(sp_puzzle_select_theme_arrow, 0, 1428, 522, preview_fade_arrow_scale_left_x, preview_fade_arrow_scale_left_y, 0, c_white, 1);
    draw_sprite_ext(sp_puzzle_select_theme_arrow, 0, 1862, 522, preview_fade_arrow_scale_right, preview_fade_arrow_scale_right, 0, c_white, 1);
    draw_sprite_ext(sp_puzzle_select_theme_arrow, 0, 1428, 571, right_mouse_removes_arrow_scale_left_x, right_mouse_removes_fade_arrow_scale_left_y, 0, c_white, 1);
    draw_sprite_ext(sp_puzzle_select_theme_arrow, 0, 1862, 571, right_mouse_removes_fade_arrow_scale_right, right_mouse_removes_fade_arrow_scale_right, 0, c_white, 1);
    draw_sprite_ext(sp_puzzle_select_theme_arrow, 0, 1428, 620, highlight_arrow_scale_left_x, highlight_fade_arrow_scale_left_y, 0, c_white, 1);
    draw_sprite_ext(sp_puzzle_select_theme_arrow, 0, 1862, 620, highlight_fade_arrow_scale_right, highlight_fade_arrow_scale_right, 0, c_white, 1);
    draw_sprite_ext(sp_puzzle_select_theme_arrow, 0, 1428, 669, referance_arrow_scale_left_x, referance_fade_arrow_scale_left_y, 0, c_white, 1);
    draw_sprite_ext(sp_puzzle_select_theme_arrow, 0, 1862, 669, referance_fade_arrow_scale_right, referance_fade_arrow_scale_right, 0, c_white, 1);
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 1437, 733, 1, 1, 0, c_white, theme_chooser_hover_icon_alpha);
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 1854, 733, -1, 1, 0, c_white, theme_chooser_hover_icon_alpha);
    draw_set_halign(fa_center);
    draw_set_colour(c_white);
    draw_set_font(global.current_font_22);
    if (global.theme_to_use == 1)
    {
        draw_text(1645, 715, text_for_theme_title + ": " + text_for_theme_simple);
    }
    else if (global.theme_to_use == 2)
    {
        draw_text(1645, 715, text_for_theme_title + ": " + text_for_theme_arcade);
    }
    else if (global.theme_to_use == 3)
    {
        draw_text(1645, 715, text_for_theme_title + ": " + text_for_theme_window);
    }
    else if (global.theme_to_use == 4)
    {
        draw_text(1645, 715, text_for_theme_title + ": " + text_for_theme_megacityone);
    }
    else if (global.theme_to_use == 5)
    {
        draw_text(1645, 715, text_for_theme_title + ": " + text_for_theme_lines);
    }
    else if (global.theme_to_use == 6)
    {
        draw_text(1645, 715, text_for_theme_title + ": " + text_for_theme_lines);
    }
    else if (global.theme_to_use == 7)
    {
        draw_text(1645, 715, text_for_theme_title + ": " + text_for_theme_rust);
    }
    else if (global.theme_to_use == 8)
    {
        draw_text(1645, 715, text_for_theme_title + ": " + text_for_theme_table);
    }
    else if (global.theme_to_use == 9)
    {
        draw_text(1645, 715, text_for_theme_title + ": " + text_for_theme_ruins);
    }
    else
    {
        draw_text(1645, 715, text_for_theme_title + ": " + text_for_theme_zen);
    }
    if (global.preview_image_off_or_on == 0)
    {
        draw_text(1645, 651, string(ob_language_controller.puzzle_select_option_8) + ": " + string(ob_language_controller.level_ui_config_10a));
    }
    else
    {
        draw_text(1645, 651, string(ob_language_controller.puzzle_select_option_8) + ": " + string(ob_language_controller.level_ui_config_10b));
    }
    if (global.can_right_click_to_remove == 0)
    {
        draw_text(1645, 553, string(ob_language_controller.puzzle_select_option_6) + ": " + string(ob_language_controller.level_ui_config_10b));
    }
    else
    {
        draw_text(1645, 553, string(ob_language_controller.puzzle_select_option_6) + ": " + string(ob_language_controller.level_ui_config_10a));
    }
    if (global.piece_snap_amount == 1)
    {
        draw_text(1645, 357, string(ob_language_controller.puzzle_select_option_2) + ": x2");
    }
    else if (global.piece_snap_amount == 2)
    {
        draw_text(1645, 357, string(ob_language_controller.puzzle_select_option_2) + ": x3");
    }
    else if (global.piece_snap_amount == 3)
    {
        draw_text(1645, 357, string(ob_language_controller.puzzle_select_option_2) + ": x4");
    }
    else if (global.piece_snap_amount == 4)
    {
        draw_text(1645, 357, string(ob_language_controller.puzzle_select_option_2) + ": x5");
    }
    else
    {
        draw_text(1645, 357, string(ob_language_controller.puzzle_select_option_2) + ": x1");
    }
    if (global.loose_piece_hilight_colour == 1)
    {
        draw_text(1645, 602, string(ob_language_controller.puzzle_select_option_7) + ": " + string(ob_language_controller.level_ui_basic_ops_2a));
    }
    else if (global.loose_piece_hilight_colour == 2)
    {
        draw_text(1645, 602, string(ob_language_controller.puzzle_select_option_7) + ": " + string(ob_language_controller.level_ui_basic_ops_2b));
    }
    else if (global.loose_piece_hilight_colour == 3)
    {
        draw_text(1645, 602, string(ob_language_controller.puzzle_select_option_7) + ": " + string(ob_language_controller.level_ui_basic_ops_2c));
    }
    else if (global.loose_piece_hilight_colour == 4)
    {
        draw_text(1645, 602, string(ob_language_controller.puzzle_select_option_7) + ": " + string(ob_language_controller.level_ui_basic_ops_2d));
    }
    else if (global.loose_piece_hilight_colour == 5)
    {
        draw_text(1645, 602, string(ob_language_controller.puzzle_select_option_7) + ": " + string(ob_language_controller.level_ui_basic_ops_2e));
    }
    else if (global.loose_piece_hilight_colour == 6)
    {
        draw_text(1645, 602, string(ob_language_controller.puzzle_select_option_7) + ": " + string(ob_language_controller.level_ui_basic_ops_2f));
    }
    else
    {
        draw_text(1645, 602, string(ob_language_controller.puzzle_select_option_7) + ": " + string(ob_language_controller.level_ui_basic_ops_2g));
    }
    if (global.intro_fade_out_speed_0is3_1is1_2is2_3is4 == 1)
    {
        draw_text(1645, 504, string(ob_language_controller.puzzle_select_option_5) + ": x1");
    }
    else if (global.intro_fade_out_speed_0is3_1is1_2is2_3is4 == 2)
    {
        draw_text(1645, 504, string(ob_language_controller.puzzle_select_option_5) + ": x2");
    }
    else if (global.intro_fade_out_speed_0is3_1is1_2is2_3is4 == 3)
    {
        draw_text(1645, 504, string(ob_language_controller.puzzle_select_option_5) + ": x4");
    }
    else
    {
        draw_text(1645, 504, string(ob_language_controller.puzzle_select_option_5) + ": x3");
    }
    if (global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 == 1)
    {
        draw_text(1645, 455, string(ob_language_controller.puzzle_select_option_4) + ": " + string(ob_language_controller.level_ui_config_10b));
    }
    else if (global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 == 2)
    {
        draw_text(1645, 455, string(ob_language_controller.puzzle_select_option_4) + ": x1");
    }
    else if (global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 == 3)
    {
        draw_text(1645, 455, string(ob_language_controller.puzzle_select_option_4) + ": x3");
    }
    else if (global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 == 4)
    {
        draw_text(1645, 455, string(ob_language_controller.puzzle_select_option_4) + ": x4");
    }
    else
    {
        draw_text(1645, 455, string(ob_language_controller.puzzle_select_option_4) + ": x2");
    }
    if (global.pieces_can_rotate_in_pond_0_is_on_1_is_off == 0)
    {
        draw_text(1645, 406, string(ob_language_controller.puzzle_select_option_3) + ": " + string(ob_language_controller.level_ui_config_10b));
    }
    else if (global.pond_rotation_speed_0_is1_1_is2_2_is3 == 1)
    {
        draw_text(1645, 406, string(ob_language_controller.puzzle_select_option_3) + ": x2");
    }
    else if (global.pond_rotation_speed_0_is1_1_is2_2_is3 == 2)
    {
        draw_text(1645, 406, string(ob_language_controller.puzzle_select_option_3) + ": x3");
    }
    else
    {
        draw_text(1645, 406, string(ob_language_controller.puzzle_select_option_3) + ": x1");
    }
    if (global.image_can_be_rotated_0_is4_1_is0_2_is8 == 1)
    {
        draw_text(1645, 308, string(ob_language_controller.puzzle_select_option_1) + ": " + string(ob_language_controller.level_ui_config_10b));
    }
    else if (global.image_can_be_rotated_0_is4_1_is0_2_is8 == 2)
    {
        draw_text(1645, 308, string(ob_language_controller.puzzle_select_option_1) + ": x8");
    }
    else
    {
        draw_text(1645, 308, string(ob_language_controller.puzzle_select_option_1) + ": x4");
    }
    draw_set_halign(fa_left);
}
if (room == r_uniques_select)
{
    draw_sprite_ext(sp_menu_devider, 0, 1359, 292, 1, 1, 0, c_white, 1);
}
if (room == r_puzzle_select)
{
    draw_rectangle_colour(0, 292, 403, 1080, puz_select_options_backing_colour_1, puz_select_options_backing_colour_1, puz_select_options_backing_colour_1, puz_select_options_backing_colour_1, 0);
    draw_sprite_ext(sp_puzzle_select_info_backing, 0, 0, 298, 4, 4, 0, c_white, 1);
    draw_set_alpha(0.6);
    draw_rectangle_colour(0, 301, 398, 347, c_black, c_black, c_black, c_black, 0);
    draw_set_alpha(1);
    draw_sprite_ext(sp_puz_select_pack_logo_back, 0, 0, 0, 1, 1, 0, c_white, 1);
    draw_sprite_ext(sp_menu_puzzle_options_h_devider, 0, 0, 296, 1, 1, 0, c_white, 1);
    draw_sprite_ext(sp_menu_puzzle_options_h_devider, 0, 0, 345, 1, 1, 0, c_white, 1);
    draw_sprite_ext(sp_menu_puzzle_pack_button_base, 0, 197, 495, 1, 1, 0, puz_select_left_pack_icon_backing, image_alpha);
    draw_sprite_ext(sp_menu_puzzle_pack_button_title_backing, 0, 197, 495, 1, 1, 0, c_white, image_alpha);
    draw_sprite_ext(global.puzzle_pack_sprite_index, 0, 197, 495, 1, 1, 0, c_white, image_alpha);
    draw_sprite_ext(global.puzzle_pack_sprite_index, 0, 197, 495, 1, 1, 0, c_white, image_alpha);
    if (global.current_pack_open == 3 || global.current_pack_open == 4 || global.current_pack_open == 6 || global.current_pack_open == 17 || global.current_pack_open == 43 || global.current_pack_open == 45 || global.current_pack_open == 75)
    {
        draw_sprite_ext(sp_menu_puzzle_pack_button_base_free, 0, 197, 495, 1, 1, 0, c_white, image_alpha);
    }
    if (global.current_pack_open_number_of_puzzles_complete == global.current_pack_open_number_of_puzzles)
    {
        draw_sprite_ext(sp_menu_all_puzzle_pack_button_puzzles_complete_icon, 0, 197, 495, 1, 1, 0, c_white, image_alpha);
    }
    draw_set_halign(fa_center);
    draw_set_font(global.current_font_22);
    draw_set_colour(c_white);
    if (global.current_pack_open == 26 || global.current_pack_open == 34)
    {
        draw_text_ext_transformed(197, 372, string(global.current_pack_open_title), 1000, 1000, 0.9, 1, 0);
    }
    else
    {
        draw_text(197, 372, string(global.current_pack_open_title));
    }
    draw_set_halign(fa_center);
    draw_set_font(global.current_font_26);
    draw_set_colour(c_black);
    draw_set_font(global.current_font_26);
    draw_text(195, 304, string(global.current_pack_open_number_of_puzzles_complete) + "/" + string(global.current_pack_open_number_of_puzzles) + " " + string(ob_language_controller.puzzle_select_title_1));
    draw_set_colour(c_white);
    draw_set_font(global.current_font_26);
    draw_text(197, 302, string(global.current_pack_open_number_of_puzzles_complete) + "/" + string(global.current_pack_open_number_of_puzzles) + " " + string(ob_language_controller.puzzle_select_title_1));
    draw_sprite_ext(sp_menu_devider, 0, 396, 292, 1, 1, 0, c_white, 1);
    if (global.a_steam_sale_on == 1)
    {
        if (sale_amount > 0)
        {
            draw_set_halign(fa_center);
            draw_set_colour(c_white);
            draw_set_font(global.current_font_26);
            draw_set_alpha(image_alpha);
            draw_sprite_ext(sp_menu_puzzle_pack_button_base_sales, 0, 197, 495, 1, 1, 0, c_white, image_alpha);
            draw_set_colour(c_black);
            draw_text_transformed(180, 506, string(ob_language_controller.main_menu_flag_5) + " " + string(sale_amount) + "% " + string(ob_language_controller.main_menu_flag_6), 1, 1, 45);
            draw_set_colour(c_white);
            draw_text_transformed(180, 503, string(ob_language_controller.main_menu_flag_5) + " " + string(sale_amount) + "% " + string(ob_language_controller.main_menu_flag_6), 1, 1, 45);
            draw_set_halign(fa_left);
            draw_set_alpha(1);
        }
    }
}
draw_sprite(sp_kiosk_avatars, global.kiosk_item_current_avatar, 0, 0);
draw_sprite_ext(sp_toolbar_backings, global.kiosk_toolbar_skins, 278, 0, 2, 2, 0, c_white, 1);
draw_sprite(sp_menu_top_bar, 0, 0, 0);
draw_set_halign(fa_left);
draw_set_colour(c_white);
draw_set_font(global.current_font_22);
if (total_hints < 1000)
{
    draw_text(218, 252, string(total_hints));
}
else
{
    draw_text(218, 252, "999");
    draw_sprite(sp_menu_hint_plus, 0, 258, 254);
}
if (total_gold_bits < 1000)
{
    draw_text(134, 252, string(total_gold_bits));
}
else
{
    draw_text(134, 252, "999");
    draw_sprite(sp_menu_hint_plus, 0, 174, 254);
}
if (total_ultimate < 1000)
{
    draw_text(43, 252, string(total_ultimate));
}
else
{
    draw_text(43, 252, "999");
    draw_sprite(sp_menu_hint_plus, 0, 83, 254);
}
draw_set_halign(fa_center);
draw_set_colour(c_white);
draw_set_font(global.current_font_22);
draw_text(137, 207, string(global.user_id_name));
draw_set_halign(fa_left);
