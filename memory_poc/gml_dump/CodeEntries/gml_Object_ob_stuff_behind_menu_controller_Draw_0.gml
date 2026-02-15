if (room == r_options)
{
    draw_rectangle_colour(0, 295, 478, 1080, options_1_background_colour, options_1_background_colour, options_1_background_colour, options_1_background_colour, 0);
    draw_rectangle_colour(478, 295, 960, 640, options_2_background_colour, options_2_background_colour, options_2_background_colour, options_2_background_colour, 0);
    draw_rectangle_colour(960, 295, 1442, 576, options_3_background_colour, options_3_background_colour, options_3_background_colour, options_3_background_colour, 0);
    draw_rectangle_colour(1442, 295, 1920, 459, options_4_background_colour, options_4_background_colour, options_4_background_colour, options_4_background_colour, 0);
    draw_rectangle_colour(478, 640, 960, 787, options_5_background_colour, options_5_background_colour, options_5_background_colour, options_5_background_colour, 0);
    draw_rectangle_colour(478, 787, 960, 1080, options_6_background_colour, options_6_background_colour, options_6_background_colour, options_6_background_colour, 0);
    draw_rectangle_colour(960, 575, 1439, 1080, options_7_background_colour, options_7_background_colour, options_7_background_colour, options_7_background_colour, 0);
    draw_rectangle_colour(1442, 459, 1920, 555, options_8_background_colour, options_8_background_colour, options_8_background_colour, options_8_background_colour, 0);
    draw_rectangle_colour(1442, 555, 1920, 774, options_9_background_colour, options_9_background_colour, options_9_background_colour, options_9_background_colour, 0);
    draw_rectangle_colour(1442, 775, 1920, 933, options_10_background_colour, options_10_background_colour, options_10_background_colour, options_10_background_colour, 0);
    draw_rectangle_colour(1442, 933, 1920, 1080, options_11_background_colour, options_11_background_colour, options_11_background_colour, options_11_background_colour, 0);
}
else if (room == r_stats)
{
    draw_rectangle_colour(0, 295, 477, 1080, stats_1_background_colour, stats_1_background_colour, stats_1_background_colour, stats_1_background_colour, 0);
    draw_rectangle_colour(477, 295, 959, 1080, stats_5_background_colour, stats_5_background_colour, stats_5_background_colour, stats_5_background_colour, 0);
    draw_rectangle_colour(959, 295, 1443, 1080, stats_6_background_colour, stats_6_background_colour, stats_6_background_colour, stats_6_background_colour, 0);
    draw_rectangle_colour(1443, 295, 1920, 1080, stats_7_background_colour, stats_7_background_colour, stats_7_background_colour, stats_7_background_colour, 0);
}
else if (room == r_uniques_select)
{
    draw_rectangle_colour(0, 292, 1365, 1080, stats_1_background_colour, stats_1_background_colour, stats_1_background_colour, stats_1_background_colour, 0);
}
else if (room == r_posts)
{
    draw_rectangle_colour(0, 294, 1510, 1080, stats_1_background_colour, stats_1_background_colour, stats_1_background_colour, stats_1_background_colour, 0);
    draw_rectangle_colour(1510, 294, 1920, 1080, stats_2_background_colour, stats_2_background_colour, stats_2_background_colour, stats_2_background_colour, 0);
}
else
{
    draw_sprite_ext(sp_menu_backing, 0, 280, 297, 5, 5, 0, make_colour_rgb(global.menu_background_colour_r, global.menu_background_colour_g, global.menu_background_colour_b), 1);
}
if (room == r_main_menu)
{
    draw_sprite_ext(sp_menu_backing_design_new, 0, 0, 0, 1, 1, 0, c_white, 0.5);
}
