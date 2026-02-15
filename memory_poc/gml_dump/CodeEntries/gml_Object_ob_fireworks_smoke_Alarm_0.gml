alarm[0] = 1;
if (smoke_alpha > 0)
{
    smoke_alpha -= fade_speed;
}
else
{
    instance_destroy();
}
