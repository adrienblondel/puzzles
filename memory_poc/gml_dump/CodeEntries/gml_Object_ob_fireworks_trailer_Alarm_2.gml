alarm[2] = 2;
if (trailer_alpha > 0)
{
    trailer_alpha -= fade_speed;
}
else
{
    instance_destroy();
}
