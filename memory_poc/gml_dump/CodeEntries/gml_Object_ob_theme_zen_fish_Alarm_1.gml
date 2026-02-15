if (swimming_running_holding == 2)
{
    if (shake_left_or_right == 1)
    {
        if (current_angle < target_angle)
        {
            current_angle += shake_speed;
            alarm[1] = 5;
        }
        else
        {
            shake_left_or_right = 0;
            target_angle = 265 - random(10);
            shake_speed = choose(2.6, 2.8, 3, 3.2, 3.4);
            alarm[1] = 5;
        }
    }
    else if (current_angle > target_angle)
    {
        current_angle -= shake_speed;
        alarm[1] = 5;
    }
    else
    {
        shake_left_or_right = 1;
        target_angle = 275 + random(10);
        shake_speed = choose(2.6, 2.8, 3, 3.2, 3.4);
        alarm[1] = 5;
    }
}
