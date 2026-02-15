alarm[0] = 2;
if (particle_alpha > 0)
{
    particle_alpha -= fade_speed;
}
else
{
    instance_destroy();
}
