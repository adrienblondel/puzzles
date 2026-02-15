alarm[2] = 5;
if (favorite_hilight_alpha_up_or_down == 0)
{
    if (favorite_hilight_alpha < 1)
    {
        favorite_hilight_alpha += 0.12;
    }
    else
    {
        favorite_hilight_alpha_up_or_down = 1;
    }
}
else if (favorite_hilight_alpha_up_or_down == 1)
{
    if (favorite_hilight_alpha > 0.5)
    {
        favorite_hilight_alpha -= 0.12;
    }
    else
    {
        favorite_hilight_alpha_up_or_down = 0;
    }
}
