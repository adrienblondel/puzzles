if (kiosk_info_is_showing == 1)
{
    draw_set_alpha(0.98);
    draw_rectangle_colour(0, 298, 1920, 1080, c_black, c_black, c_black, c_black, 0);
    draw_set_alpha(1);
    draw_set_font(global.current_font_26);
    draw_set_halign(fa_center);
    draw_set_colour(c_white);
    draw_text_ext_transformed(960, 350, kiosk_first_launch_info_a, 35, 1500, 1.3, 1.3, 0);
    draw_text_ext_transformed(960, 500, kiosk_first_launch_info_b, 35, 1500, 1, 1, 0);
    draw_text_ext_transformed(960, 650, kiosk_first_launch_info_c, 35, 1500, 1, 1, 0);
    draw_set_font(global.current_font_22);
    draw_text_ext_transformed(960, 1045, kiosk_first_launch_info_d, 1000, 1500, 0.8, 0.8, 0);
    draw_set_halign(fa_left);
    draw_sprite(sp_first_time_gold, 0, 960, 860);
}
