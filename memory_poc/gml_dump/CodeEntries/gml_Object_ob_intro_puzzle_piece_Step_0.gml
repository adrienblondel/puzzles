if (can_fade_in == 1)
{
    if (image_alpha < 1)
    {
        image_alpha += 0.1;
    }
}
if (can_fly_away == 1)
{
    image_xscale += 0.03;
    image_yscale = image_xscale;
    image_alpha -= 0.01;
    if (rotation_direction == 0)
    {
        image_angle += 2;
    }
    else
    {
        image_angle -= 2;
    }
    if (image_alpha < 0)
    {
        instance_destroy();
    }
}
