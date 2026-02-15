if (direction_to_spin == 1)
{
    image_angle += spin_speed;
}
else
{
    image_angle -= spin_speed;
}
image_alpha = ob_puzzles_generic_room_controller.ZenLotus;
if (global.level_type == 1)
{
    if (point_in_rectangle(x, y, 0, 933, 1920, 1080))
    {
        direction = 45 + random(90);
        direction_to_spin = choose(1, 0);
        spin_speed = choose(0.02, 0.04, 0.06, 0.08, 0.1, 0.12, 0.14, 0.16, 0.18);
    }
    if (point_in_rectangle(x, y, 246, 0, 1674, 801))
    {
        if (y > 796)
        {
            direction = 225 + random(90);
            direction_to_spin = choose(1, 0);
            spin_speed = choose(0.02, 0.04, 0.06, 0.08, 0.1, 0.12, 0.14, 0.16, 0.18);
        }
        else if (x < 960)
        {
            direction = 135 + random(90);
            direction_to_spin = choose(1, 0);
            spin_speed = choose(0.02, 0.04, 0.06, 0.08, 0.1, 0.12, 0.14, 0.16, 0.18);
        }
        else
        {
            direction = 45 - random(90);
            direction_to_spin = choose(1, 0);
            spin_speed = choose(0.02, 0.04, 0.06, 0.08, 0.1, 0.12, 0.14, 0.16, 0.18);
        }
    }
    if (x < 10)
    {
        direction = 45 - random(90);
        direction_to_spin = choose(1, 0);
        spin_speed = choose(0.02, 0.04, 0.06, 0.08, 0.1, 0.12, 0.14, 0.16, 0.18);
    }
    if (x > 1910)
    {
        direction = 135 + random(90);
        direction_to_spin = choose(1, 0);
        spin_speed = choose(0.02, 0.04, 0.06, 0.08, 0.1, 0.12, 0.14, 0.16, 0.18);
    }
    if (y < 10)
    {
        direction = 225 + random(90);
        direction_to_spin = choose(1, 0);
        spin_speed = choose(0.02, 0.04, 0.06, 0.08, 0.1, 0.12, 0.14, 0.16, 0.18);
    }
}
else if (global.level_type == 2)
{
    if (point_in_rectangle(x, y, 240, 0, 1680, 1080))
    {
        if (x < 960)
        {
            direction = 135 + random(90);
            direction_to_spin = choose(1, 0);
            spin_speed = choose(0.02, 0.04, 0.06, 0.08, 0.1, 0.12, 0.14, 0.16, 0.18);
        }
        else
        {
            direction = 45 - random(90);
            direction_to_spin = choose(1, 0);
            spin_speed = choose(0.02, 0.04, 0.06, 0.08, 0.1, 0.12, 0.14, 0.16, 0.18);
        }
    }
    if (x < 10)
    {
        direction = 45 - random(90);
        direction_to_spin = choose(1, 0);
        spin_speed = choose(0.02, 0.04, 0.06, 0.08, 0.1, 0.12, 0.14, 0.16, 0.18);
    }
    if (x > 1910)
    {
        direction = 135 + random(90);
        direction_to_spin = choose(1, 0);
        spin_speed = choose(0.02, 0.04, 0.06, 0.08, 0.1, 0.12, 0.14, 0.16, 0.18);
    }
    if (y < 10)
    {
        direction = 225 + random(90);
        direction_to_spin = choose(1, 0);
        spin_speed = choose(0.02, 0.04, 0.06, 0.08, 0.1, 0.12, 0.14, 0.16, 0.18);
    }
    if (y > 1070)
    {
        direction = 45 + random(90);
        direction_to_spin = choose(1, 0);
        spin_speed = choose(0.02, 0.04, 0.06, 0.08, 0.1, 0.12, 0.14, 0.16, 0.18);
    }
}
else if (global.level_type == 3)
{
    if (point_in_rectangle(x, y, 0, 0, 1373, 1080))
    {
        direction = 45 - random(90);
        direction_to_spin = choose(1, 0);
        spin_speed = choose(0.02, 0.04, 0.06, 0.08, 0.1, 0.12, 0.14, 0.16, 0.18);
    }
    if (x > 1910)
    {
        direction = 135 + random(90);
        direction_to_spin = choose(1, 0);
        spin_speed = choose(0.02, 0.04, 0.06, 0.08, 0.1, 0.12, 0.14, 0.16, 0.18);
    }
    if (y < 10)
    {
        direction = 225 + random(90);
        direction_to_spin = choose(1, 0);
        spin_speed = choose(0.02, 0.04, 0.06, 0.08, 0.1, 0.12, 0.14, 0.16, 0.18);
    }
    if (y > 1070)
    {
        direction = 45 + random(90);
        direction_to_spin = choose(1, 0);
        spin_speed = choose(0.02, 0.04, 0.06, 0.08, 0.1, 0.12, 0.14, 0.16, 0.18);
    }
}
else if (global.level_type == 4)
{
    if (point_in_rectangle(x, y, 0, 227, 1920, 1080))
    {
        direction = 45 + random(90);
        direction_to_spin = choose(1, 0);
        spin_speed = choose(0.02, 0.04, 0.06, 0.08, 0.1, 0.12, 0.14, 0.16, 0.18);
    }
    if (x < 10)
    {
        direction = 45 - random(90);
        direction_to_spin = choose(1, 0);
        spin_speed = choose(0.02, 0.04, 0.06, 0.08, 0.1, 0.12, 0.14, 0.16, 0.18);
    }
    if (x > 1910)
    {
        direction = 135 + random(90);
        direction_to_spin = choose(1, 0);
        spin_speed = choose(0.02, 0.04, 0.06, 0.08, 0.1, 0.12, 0.14, 0.16, 0.18);
    }
    if (y < 10)
    {
        direction = 225 + random(90);
        direction_to_spin = choose(1, 0);
        spin_speed = choose(0.02, 0.04, 0.06, 0.08, 0.1, 0.12, 0.14, 0.16, 0.18);
    }
}
