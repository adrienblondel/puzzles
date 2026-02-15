swimming_running_holding = 0;
looking_right_or_left = 0;
shake_left_or_right = 0;
target_angle = 265 - random(10);
shake_speed = choose(2.6, 2.8, 3, 3.2, 3.4);
current_angle = 270;
pond_scale = choose(0.6, 0.65, 0.7, 0.75, 0.8, 0.85, 0.9, 0.95, 1);
speed = choose(0.5, 0.6, 0.7, 0.8, 0.9, 1, 1.1, 1.2, 1.3, 1.4, 1.5);
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
else if (global.level_type == 3 || global.level_type == 5)
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
    y = 15 + random(192);
}
