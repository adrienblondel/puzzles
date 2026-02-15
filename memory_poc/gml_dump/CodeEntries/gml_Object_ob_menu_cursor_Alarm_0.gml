alarm[0] = 30;
if (global.using_a_gamepad == 1)
{
    if (mouse_x < current_mouse_position_x || mouse_x > current_mouse_position_x)
    {
        global.using_a_gamepad = 0;
    }
}
