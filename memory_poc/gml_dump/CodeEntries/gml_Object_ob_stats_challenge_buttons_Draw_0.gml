if (challenge_is_beat == 1)
{
    draw_sprite_ext(sp_stats_menu_challenge_buttons, image_index_to_use, x, y, image_scale, image_scale, 0, c_white, 1);
    draw_sprite_ext(sp_stats_menu_challenge_buttons_piece, 0, x, y, image_scale, image_scale, 0, c_white, 1);
}
else
{
    draw_sprite_ext(sp_stats_menu_challenge_buttons_dead, image_index_to_use, x, y, image_scale, image_scale, 0, c_white, 1);
}
