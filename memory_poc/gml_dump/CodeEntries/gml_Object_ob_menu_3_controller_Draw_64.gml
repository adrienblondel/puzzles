if (FadeIn != 0)
{
    draw_set_alpha(FadeIn);
    draw_rectangle_colour(0, 0, 1920, 1080, c_black, c_black, c_black, c_black, 0);
    draw_set_alpha(1);
}
if (FadeOut != 0)
{
    draw_set_alpha(FadeOut);
    draw_rectangle_colour(0, 0, 1920, 1080, c_black, c_black, c_black, c_black, 0);
    draw_set_alpha(1);
}
