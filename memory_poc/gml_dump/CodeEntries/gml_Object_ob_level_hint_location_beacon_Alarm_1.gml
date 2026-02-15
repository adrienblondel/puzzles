if (location_hint_alpha > 0)
{
    location_hint_alpha -= 0.05;
    alarm[1] = 2;
}
else
{
    instance_destroy();
}
