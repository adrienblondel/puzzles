if (token_has_been_clicked == 0)
{
    alarm[2] = 5;
    if (growing_or_shrinking_x == 0)
    {
        if (hint_glow_scale < 1)
        {
            hint_glow_scale += 0.03;
        }
        else
        {
            growing_or_shrinking_x = 1;
        }
    }
    else if (growing_or_shrinking_x == 1)
    {
        if (hint_glow_scale > 0.85)
        {
            hint_glow_scale -= 0.04;
        }
        else
        {
            growing_or_shrinking_x = 0;
        }
    }
}
