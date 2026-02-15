if (global.a_menu_overlay_is_showing == 0)
{
    if (y > 200 && y < 1200)
    {
        draw_sprite_ext(sp_stats_challenge_backing, 0, x, y, 1, 1, 0, backing_colour, image_alpha);
        draw_sprite_ext(sp_stats_challenge_topper, 0, x, y, 1, 1, 0, c_white, image_alpha);
        if (challenege_status == 1)
        {
            draw_sprite_ext(sp_stats_challenge_backing, challenege_number, x - 1, y, 1, 1, 0, c_white, image_alpha);
        }
        else if (challenege_status == 0)
        {
            draw_sprite_ext(sp_stats_challenge_backing_gray, challenege_number - 1, x - 1, y, 1, 1, 0, c_white, image_alpha);
        }
        draw_set_halign(fa_left);
        draw_set_font(global.current_font_26);
        draw_text_colour(x + 85, y + 20, string(challenege_info), c_black, c_black, c_black, c_black, image_alpha);
        draw_text_colour(x + 87, y + 18, string(challenege_info), c_white, c_white, c_white, c_white, image_alpha);
    }
}
