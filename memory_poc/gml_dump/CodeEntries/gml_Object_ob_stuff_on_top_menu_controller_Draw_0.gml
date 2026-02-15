if (room == r_main_menu)
{
    draw_sprite_ext(sp_menu_sidebar_devider, 0, 0, 286, 1, 1, 0, c_white, 1);
    draw_set_halign(fa_center);
    draw_set_font(global.current_font_22);
    draw_set_colour(c_black);
    draw_text_ext_transformed(29, 609, ob_language_controller.main_menu_flag_2, 2000, 2000, 0.7, 0.7, 45);
    draw_set_colour(c_white);
    draw_text_ext_transformed(29, 607, ob_language_controller.main_menu_flag_2, 2000, 2000, 0.7, 0.7, 45);
    draw_text_ext_transformed(134, 1055, ob_language_controller.main_menu_button_5 + " " + ob_language_controller.main_menu_button_5a + " " + ob_language_controller.main_menu_button_5b, 2000, 2000, 0.75, 0.75, 0);
    draw_set_halign(fa_left);
    draw_sprite_ext(sp_menu_backing_side_fav, 0, 280, 304, 1, 1, 0, make_colour_rgb(global.menu_background_colour_r, global.menu_background_colour_g, global.menu_background_colour_b), 1);
    draw_sprite_ext(sp_menu_backing_side_fav, 0, 1641, 304, -1, 1, 0, make_colour_rgb(global.menu_background_colour_r, global.menu_background_colour_g, global.menu_background_colour_b), 1);
    draw_set_alpha(global.no_favs_display_backing_alpha);
    draw_rectangle_colour(280, 298, 1640, 493, c_black, c_black, c_black, c_black, 0);
    draw_set_alpha(1);
    draw_set_alpha(global.no_favs_display_alpha);
    draw_set_halign(fa_center);
    draw_set_font(global.current_font_22);
    draw_set_colour(c_black);
    draw_text_ext_transformed(960, 377, add_a_fav_text, 2000, 2000, 1.15, 1.15, 0);
    draw_set_colour(c_white);
    draw_text_ext_transformed(960, 375, add_a_fav_text, 2000, 2000, 1.15, 1.15, 0);
    draw_set_halign(fa_left);
    draw_set_alpha(1);
    draw_sprite_ext(sp_menu_scroll_bar_backing, 0, 1639, 294, 1, 1, 0, c_white, 1);
    draw_set_halign(fa_center);
    draw_set_font(global.current_font_22);
    draw_set_colour(c_black);
    draw_text_ext_transformed(1879, 523, ob_language_controller.main_menu_flag_4, 2000, 2000, 0.6, 0.6, -45);
    draw_set_colour(c_white);
    draw_text_ext_transformed(1879, 521, ob_language_controller.main_menu_flag_4, 2000, 2000, 0.6, 0.6, -45);
    draw_set_halign(fa_left);
    draw_sprite_ext(sp_active_challenge_button, 0, 1786, 386, active_comp_button_scale, active_comp_button_scale, 0, c_white, 1);
    if (challenge_is_beat == 1)
    {
        draw_sprite_ext(sp_active_challenge_button, 1, 1786, 386, active_comp_button_scale, active_comp_button_scale, 0, c_white, 1);
    }
    draw_set_halign(fa_center);
    draw_set_colour(c_white);
    draw_set_font(global.current_font_26);
    draw_text_ext_transformed(1785, 298, string(challenge_button_title) + " " + string(challenge_button_number), 2000, 2000, 1, 1, 0);
    draw_set_font(global.current_font_22);
    draw_text_ext_transformed(1785, 438, string(challenge_pieces_placed) + "/" + string(challenge_button_total_pieces) + " - " + string(challenge_end_word) + ": " + string(challenge_button_end_date), 2000, 2000, 0.7, 0.7, 0);
    draw_set_halign(fa_left);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_alpha(1);
    draw_sprite_ext(sp_beta_news_topper, 0, 134, 475, news_scale, news_scale, 0, c_white, 1);
    draw_sprite_ext(sp_menu_all_steam_dlc, 0, 1785, 1058, all_dlc_button_scale, all_dlc_button_scale, 0, c_white, 1);
    draw_set_halign(fa_center);
    draw_set_font(global.current_font_22);
    draw_set_colour(c_black);
    draw_text_ext_transformed(1802, 1045, ob_language_controller.main_menu_button_2, 2000, 2000, all_dlc_button_scale - 0.16, all_dlc_button_scale - 0.16, 0);
    draw_set_colour(c_white);
    draw_text_ext_transformed(1804, 1043, ob_language_controller.main_menu_button_2, 2000, 2000, all_dlc_button_scale - 0.16, all_dlc_button_scale - 0.16, 0);
    draw_set_halign(fa_left);
    if (global.game_current_language == 0)
    {
        draw_sprite(sp_menu_language_changer_flags_backing, 0, 850, 250);
        language_flag_highlight_x = 849;
    }
    if (global.game_current_language == 1)
    {
        draw_sprite(sp_menu_language_changer_flags_backing, 0, 925, 250);
        language_flag_highlight_x = 924;
    }
    if (global.game_current_language == 2)
    {
        draw_sprite(sp_menu_language_changer_flags_backing, 0, 1000, 250);
        language_flag_highlight_x = 999;
    }
    if (global.game_current_language == 20)
    {
        draw_sprite(sp_menu_language_changer_flags_backing, 0, 1075, 250);
        language_flag_highlight_x = 1074;
    }
    draw_sprite(sp_menu_language_changer_flags, 1, 855, 255);
    draw_sprite(sp_menu_language_changer_flags, 2, 930, 255);
    draw_sprite(sp_menu_language_changer_flags, 3, 1005, 255);
    draw_sprite(sp_menu_language_changer_flags, 4, 1080, 255);
}
if (global.dev_tools_are_active == 1)
{
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_font(f_22px_title_text);
    draw_set_colour(c_black);
    draw_text(8, 30, "FPS=" + string(fps));
    draw_set_colour(c_white);
    draw_text(10, 32, "FPS=" + string(fps));
}
draw_set_halign(fa_left);
draw_set_font(global.current_font_22);
draw_set_colour(c_black);
draw_text_ext_transformed(1, 0, "Ver: 2.10.69.504", 1000, 1000, 0.65, 0.65, 1);
draw_set_colour(c_white);
draw_text_ext_transformed(2, -1, "Ver: 2.10.69.504", 1000, 1000, 0.65, 0.65, 1);
