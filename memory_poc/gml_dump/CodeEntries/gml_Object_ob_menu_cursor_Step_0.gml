if (x > 1920)
{
    x = 1920;
}
if (x < 0)
{
    x = 0;
}
if (y > 1080)
{
    y = 1080;
}
if (y < 0)
{
    y = 0;
}
if (global.using_a_gamepad == 0)
{
    current_mouse_position_x = mouse_x;
    if (mouse_check_button(mb_left))
    {
        cursorScale = 0.95;
    }
    else
    {
        cursorScale = 1;
    }
}
else if (global.using_a_gamepad == 1)
{
    haxis = gamepad_axis_value(0, gp_axislh);
    vaxis = gamepad_axis_value(0, gp_axislv);
    gamepad_set_axis_deadzone(0, 0.4);
    direction = point_direction(0, 0, haxis, vaxis);
    speed = point_distance(0, 0, haxis, vaxis) * global.cursor_speed;
    global.gamepad_x_position = x;
    global.gamepad_y_position = y;
    if (gamepad_button_check(0, gp_face1))
    {
        cursorScale = 0.9;
    }
    else
    {
        cursorScale = 1;
    }
}
if (global.using_a_gamepad == 0)
{
    if (gamepad_axis_value(0, gp_axislh) > 0 || gamepad_axis_value(0, gp_axislh) < 0 || gamepad_axis_value(0, gp_axislv) > 0 || gamepad_axis_value(0, gp_axislv) < 0)
    {
        global.using_a_gamepad = 1;
    }
}
if (HUQalpha > 0)
{
    HUQalpha -= 0.01;
    HUQy -= 0.5;
}
