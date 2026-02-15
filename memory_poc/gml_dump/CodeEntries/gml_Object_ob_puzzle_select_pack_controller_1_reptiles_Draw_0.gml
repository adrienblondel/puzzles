if (pack_is_owned == 0)
{
    draw_set_alpha(pack_is_not_owned_backing_alpha);
    draw_rectangle_colour(407, 297, 1361, 1080, c_black, c_black, c_black, c_black, 0);
    draw_set_alpha(1);
    draw_sprite_ext(sp_puzzle_select_buy_now_dots_h, 0, 407, 297, 1, 1, 0, c_white, pack_is_not_owned_display_alpha);
    draw_sprite_ext(sp_puzzle_select_buy_now_dots_h, 0, 407, 1075, 1, 1, 0, c_white, pack_is_not_owned_display_alpha);
    draw_sprite_ext(sp_puzzle_select_buy_now_dots_v, 0, 407, 307, 1, 1, 0, c_white, pack_is_not_owned_display_alpha);
    draw_sprite_ext(sp_puzzle_select_buy_now_dots_v, 0, 1355, 307, 1, 1, 0, c_white, pack_is_not_owned_display_alpha);
    draw_sprite_ext(sp_puzzle_select_buy_now_button, 0, 198, 682, buy_button_size, buy_button_size, 0, c_white, pack_is_not_owned_display_alpha);
    draw_set_halign(fa_center);
    draw_set_font(global.current_font_26);
    draw_set_colour(c_black);
    draw_text_ext_transformed(237, 649, string(ob_language_controller.puzzle_select_title_2), 1000, 1000, buy_button_size + 0.3, buy_button_size + 0.3, 0);
    draw_set_colour(c_white);
    draw_text_ext_transformed(239, 647, string(ob_language_controller.puzzle_select_title_2), 1000, 1000, buy_button_size + 0.3, buy_button_size + 0.3, 0);
    draw_set_halign(fa_left);
}
else if (pack_is_owned == 1)
{
    if (dlc_is_installed == 0)
    {
        draw_set_alpha(0.9);
        draw_rectangle_colour(407, 297, 1361, 1080, c_black, c_black, c_black, c_black, 0);
        draw_set_alpha(1);
        draw_sprite_ext(sp_loading_bar, loading_animation, 759, 555, 1, 1, 0, c_white, 1);
        draw_set_colour(c_white);
        draw_set_halign(fa_center);
        draw_set_font(global.current_font_26);
        draw_text_ext_transformed(884, 465, string(ob_language_controller.loading_puzzles_text_1), 100, 950, 1.4, 1.4, 0);
        draw_text_ext_transformed(884, 895, string(ob_language_controller.loading_puzzles_text_2), 33, 810, 1, 1, 0);
        draw_set_halign(fa_left);
    }
}
