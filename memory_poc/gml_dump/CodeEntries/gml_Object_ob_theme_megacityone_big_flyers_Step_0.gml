image_alpha = ob_puzzles_generic_room_controller.ShowAircraft;
if (big_flyer == 1)
{
    if (image_xscale < 1)
    {
        image_xscale += 0.002;
        image_yscale = image_xscale;
    }
    if (y > 1224)
    {
        instance_destroy();
    }
}
else if (big_flyer == 2)
{
    if (x > 2083)
    {
        instance_destroy();
    }
}
else if (big_flyer == 3)
{
    if (x < -144)
    {
        instance_destroy();
    }
}
else if (big_flyer == 4)
{
    if (x < -150)
    {
        instance_destroy();
    }
}
else if (big_flyer == 5)
{
    if (y < -138)
    {
        instance_destroy();
    }
}
else if (big_flyer == 6)
{
    if (y < -138)
    {
        instance_destroy();
    }
}
else if (big_flyer == 7)
{
    if (y < -100)
    {
        instance_destroy();
    }
}
else if (big_flyer == 8)
{
    if (y < -100)
    {
        instance_destroy();
    }
}
