if (global.theme_to_use == 2)
{
    alarm[2] = 100 + random(300);
    if (ArcadeAliens == 1)
    {
        instance_create(0, 0, ob_theme_arcade_enemy);
    }
}
