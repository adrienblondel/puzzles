alarm[0] = 5;
if (image_xscale < medium_size)
{
    image_xscale += fast_grow_speed;
}
else if (image_alpha > 0)
{
    image_xscale += slow_grow_speed;
    image_alpha -= fade_out_speed;
}
else
{
    instance_destroy();
}
