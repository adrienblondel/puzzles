if (ob_puzzles_generic_room_controller.LinesMove == 1)
{
    alarm[0] = 3;
    if (pollution_1_y < 1078)
    {
        pollution_1_y += 2;
    }
    else
    {
        pollution_1_y = -1080;
    }
    if (pollution_2_y < 1078)
    {
        pollution_2_y += 2;
    }
    else
    {
        pollution_2_y = -1080;
    }
}
