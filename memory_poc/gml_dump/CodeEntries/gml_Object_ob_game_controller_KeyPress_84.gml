if (global.dev_tools_are_active == 1)
{
    if (global.theme_to_use < 9)
    {
        global.theme_to_use += 1;
    }
    else
    {
        global.theme_to_use = 0;
    }
    ob_puzzles_generic_room_controller.alarm[4] = 1;
}
