if (room == r_options)
{
    alarm[0] = 1;
    colour_set_to_use = 0;
    options_1_background_colour = 0;
    options_2_background_colour = 0;
    options_3_background_colour = 0;
    options_4_background_colour = 0;
    options_5_background_colour = 0;
    options_6_background_colour = 0;
    options_7_background_colour = 0;
    options_8_background_colour = 0;
    options_9_background_colour = 0;
    options_10_background_colour = 0;
    options_11_background_colour = 0;
}
else if (room == r_stats)
{
    alarm[1] = 1;
    colour_set_to_use = 0;
    stats_1_background_colour = 0;
    stats_5_background_colour = 0;
    stats_6_background_colour = 0;
    stats_7_background_colour = 0;
}
else if (room == r_posts)
{
    stats_1_background_colour = make_colour_rgb(15 + random(240), 0 + random(240), 0 + random(240));
    stats_2_background_colour = make_colour_rgb(15 + random(240), 0 + random(240), 0 + random(240));
}
else if (room == r_uniques_select)
{
    stats_1_background_colour = make_colour_rgb(15 + random(240), 0 + random(240), 0 + random(240));
}
else if (global.puzzle_favorites_can_fade_in == 1)
{
    global.menu_background_colour_r = 0 + random(255);
    global.menu_background_colour_g = 0 + random(255);
    global.menu_background_colour_b = 0 + random(255);
}
