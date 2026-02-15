if (pack_is_owned == 0)
{
    draw_set_alpha(pack_is_not_owned_backing_alpha);
    draw_rectangle_colour(407, 297, 1361, 1080, c_black, c_black, c_black, c_black, 0);
    draw_set_alpha(1);
    draw_sprite_ext(sp_puzzle_select_buy_now_dots_h, 0, 407, 297, 1, 1, 0, c_white, pack_is_not_owned_display_alpha);
    draw_sprite_ext(sp_puzzle_select_buy_now_dots_h, 0, 407, 1075, 1, 1, 0, c_white, pack_is_not_owned_display_alpha);
    draw_sprite_ext(sp_puzzle_select_buy_now_dots_v, 0, 407, 307, 1, 1, 0, c_white, pack_is_not_owned_display_alpha);
    draw_sprite_ext(sp_puzzle_select_buy_now_dots_v, 0, 1355, 307, 1, 1, 0, c_white, pack_is_not_owned_display_alpha);
    draw_sprite_ext(sp_puzzle_select_buy_now_button, 0, 883, 675, buy_button_size, buy_button_size, 0, c_white, pack_is_not_owned_display_alpha);
}
