if (can_show_puzzle_backing == 1)
{
    draw_sprite_ext(sp_intro_flag, 0, 960, 540, 1, 1, 0, c_white, 1);
    draw_set_alpha(black_fade_alpha);
    draw_rectangle_colour(0, 0, 1920, 1080, c_black, c_black, c_black, c_black, 0);
    draw_set_alpha(1);
}
