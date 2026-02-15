image_angle += 2;
if (has_faded_in == 1)
{
    if (x < 1250)
    {
        if (image_alpha > 0)
        {
            image_alpha -= 0.0154;
        }
        else
        {
            instance_destroy();
        }
    }
}
else if (image_alpha < 1)
{
    image_alpha += 0.01;
}
else
{
    has_faded_in = 1;
}
