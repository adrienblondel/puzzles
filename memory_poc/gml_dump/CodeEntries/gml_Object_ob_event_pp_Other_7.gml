if (ppTYPE == 0)
{
    if (sprite_index == sp_pp_celebrate_start)
    {
        sprite_index = sp_pp_celebrate_loop;
        image_index = 0;
        image_speed = 0.8;
    }
    else if (sprite_index == sp_pp_celebrate_loop)
    {
        sprite_index = sp_pp_celebrate_end;
        image_index = 0;
        image_speed = 0.6;
    }
    else if (sprite_index == sp_pp_celebrate_end)
    {
        sprite_index = sp_pp_celebrate_start;
        image_index = 0;
        image_speed = 0.8;
        alarm[0] = 1;
    }
}
