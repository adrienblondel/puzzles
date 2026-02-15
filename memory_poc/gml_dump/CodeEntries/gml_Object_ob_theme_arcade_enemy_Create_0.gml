enemy_type = choose(1, 2, 3, 1, 2, 3, 1, 2, 3, 0);
if (enemy_type == 1)
{
    sprite_index = sp_theme_arcade_enemy;
}
else if (enemy_type == 2)
{
    sprite_index = sp_theme_arcade_enemy_2;
}
else if (enemy_type == 3)
{
    sprite_index = sp_theme_arcade_enemy_3;
}
else if (enemy_type == 0)
{
    sprite_index = sp_theme_arcade_mothership;
}
if (enemy_type == 0)
{
}
else
{
    alarm[0] = 1;
}
image_speed = 0;
spawn_left_or_right = choose(1, 0);
if (spawn_left_or_right == 0)
{
    if (enemy_type == 0)
    {
        x = -141;
        y = 40 + random(300);
        direction = 0;
        speed = 6 + random(4);
    }
    else
    {
        x = -75;
        y = 50 + random(700);
        direction = 0;
        speed = 3 + random(3);
    }
}
else if (enemy_type == 0)
{
    x = 2063;
    y = 40 + random(300);
    direction = 180;
    speed = 6 + random(4);
}
else
{
    x = 1992;
    y = 50 + random(700);
    direction = 180;
    speed = 3 + random(3);
}
