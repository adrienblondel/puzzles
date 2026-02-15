if (global.dev_tools_are_active == 1)
{
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_font(f_main_20);
    draw_set_colour(c_black);
    draw_text(8, 30, "FPS=" + string(fps));
    draw_set_colour(c_white);
    draw_text(10, 32, "FPS=" + string(fps));
}
