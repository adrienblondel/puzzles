if (swimming_running_holding == 1)
{
    if (ob_puzzles_generic_room_controller.ZenFish == 1)
    {
        if (global.level_type == 1)
        {
            if (point_in_rectangle(x, y, 303, 48, 1577, 717))
            {
                instance_create(x, y, ob_theme_zen_fish_drip);
                alarm[0] = 20;
            }
        }
        else if (global.level_type == 2)
        {
            if (point_in_rectangle(x, y, 321, 0, 1600, 1080))
            {
                instance_create(x, y, ob_theme_zen_fish_drip);
                alarm[0] = 20;
            }
        }
        else if (global.level_type == 3)
        {
            if (point_in_rectangle(x, y, 0, 0, 1278, 1080))
            {
                instance_create(x, y, ob_theme_zen_fish_drip);
                alarm[0] = 20;
            }
        }
        else if (global.level_type == 4)
        {
            if (point_in_rectangle(x, y, 0, 315, 1278, 1080))
            {
                instance_create(x, y, ob_theme_zen_fish_drip);
                alarm[0] = 20;
            }
        }
    }
}
