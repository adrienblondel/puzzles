speed = choose(0.05, 0.07, 0.09, 0.11, 0.13, 0.15, 0.17, 0.19, 0.21);
sprite_index = sp_theme_japan_lily;
image_angle = choose(360);
direction_to_spin = choose(1, 0);
spin_speed = choose(0.02, 0.04, 0.06, 0.08, 0.1, 0.12, 0.14, 0.16, 0.18);
if (global.level_type == 1)
{
    direction = random(360);
    pond_rotation_left_or_right = choose(0, 1);
    pond_location_to_jump_to = choose(1, 2, 3);
    if (pond_location_to_jump_to == 1)
    {
        x = 27 + random(147);
        y = 15 + random(844);
    }
    else if (pond_location_to_jump_to == 2)
    {
        x = 1747 + random(147);
        y = 15 + random(844);
    }
    else if (pond_location_to_jump_to == 3)
    {
        x = 27 + random(1859);
        y = 855 + random(20);
    }
}
else if (global.level_type == 2)
{
    direction = random(360);
    pond_rotation_left_or_right = choose(0, 1);
    pond_location_to_jump_to = choose(1, 2);
    if (pond_location_to_jump_to == 1)
    {
        x = 27 + random(180);
        y = 15 + random(1045);
    }
    else if (pond_location_to_jump_to == 2)
    {
        x = 1700 + random(200);
        y = 15 + random(1045);
    }
}
else if (global.level_type == 3)
{
    direction = random(360);
    pond_rotation_left_or_right = choose(0, 1);
    x = 1395 + random(500);
    y = 15 + random(1045);
}
else if (global.level_type == 4)
{
    direction = random(360);
    pond_rotation_left_or_right = choose(0, 1);
    x = 27 + random(1860);
    y = 15 + random(192);
}
else if (global.level_type == 5)
{
    direction = random(360);
    pond_rotation_left_or_right = choose(0, 1);
    x = 350 + random(1500);
    y = 15 + random(1045);
}
