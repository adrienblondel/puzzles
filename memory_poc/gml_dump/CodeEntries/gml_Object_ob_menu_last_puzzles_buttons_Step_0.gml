if (toolbar_button_number == 1)
{
    if (global.last_puzzle_button_1_is_open == 1)
    {
        if (x > open_position_x)
        {
            x -= 3;
        }
        else
        {
            x = open_position_x;
        }
        if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
        {
            alarm[1] = 1;
        }
    }
    else if (x < closed_position_x)
    {
        x += 3;
    }
    else
    {
        x = closed_position_x;
    }
}
else if (toolbar_button_number == 2)
{
    if (global.last_puzzle_button_2_is_open == 1)
    {
        if (x > open_position_x)
        {
            x -= 3;
        }
        else
        {
            x = open_position_x;
        }
        if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
        {
            alarm[1] = 1;
        }
    }
    else if (x < closed_position_x)
    {
        x += 3;
    }
    else
    {
        x = closed_position_x;
    }
}
else if (toolbar_button_number == 3)
{
    if (global.last_puzzle_button_3_is_open == 1)
    {
        if (x > open_position_x)
        {
            x -= 3;
        }
        else
        {
            x = open_position_x;
        }
        if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
        {
            alarm[1] = 1;
        }
    }
    else if (x < closed_position_x)
    {
        x += 3;
    }
    else
    {
        x = closed_position_x;
    }
}
else if (toolbar_button_number == 4)
{
    if (global.last_puzzle_button_4_is_open == 1)
    {
        if (x > open_position_x)
        {
            x -= 3;
        }
        else
        {
            x = open_position_x;
        }
        if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
        {
            alarm[1] = 1;
        }
    }
    else if (x < closed_position_x)
    {
        x += 3;
    }
    else
    {
        x = closed_position_x;
    }
}
else if (toolbar_button_number == 5)
{
    if (global.last_puzzle_button_5_is_open == 1)
    {
        if (x > open_position_x)
        {
            x -= 3;
        }
        else
        {
            x = open_position_x;
        }
        if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
        {
            alarm[1] = 1;
        }
    }
    else if (x < closed_position_x)
    {
        x += 3;
    }
    else
    {
        x = closed_position_x;
    }
}
else if (toolbar_button_number == 6)
{
    if (global.last_puzzle_button_6_is_open == 1)
    {
        if (x > open_position_x)
        {
            x -= 3;
        }
        else
        {
            x = open_position_x;
        }
        if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
        {
            alarm[1] = 1;
        }
    }
    else if (x < closed_position_x)
    {
        x += 3;
    }
    else
    {
        x = closed_position_x;
    }
}
if (!place_meeting(x, y, ob_menu_cursor))
{
    if (toolbar_button_number == 1)
    {
        global.last_puzzle_button_1_is_open = 0;
        ob_menu_cursor.last_puzzle_hover_can_beep_1 = 1;
    }
    else if (toolbar_button_number == 2)
    {
        global.last_puzzle_button_2_is_open = 0;
        ob_menu_cursor.last_puzzle_hover_can_beep_2 = 1;
    }
    else if (toolbar_button_number == 3)
    {
        global.last_puzzle_button_3_is_open = 0;
        ob_menu_cursor.last_puzzle_hover_can_beep_3 = 1;
    }
    else if (toolbar_button_number == 4)
    {
        global.last_puzzle_button_4_is_open = 0;
        ob_menu_cursor.last_puzzle_hover_can_beep_4 = 1;
    }
    else if (toolbar_button_number == 5)
    {
        global.last_puzzle_button_5_is_open = 0;
        ob_menu_cursor.last_puzzle_hover_can_beep_5 = 1;
    }
    else if (toolbar_button_number == 6)
    {
        global.last_puzzle_button_6_is_open = 0;
        ob_menu_cursor.last_puzzle_hover_can_beep_6 = 1;
    }
}
if (global.last_puzzle_button_1_is_open == 1)
{
    ob_menu_cursor.last_puzzle_hover_can_beep_2 = 1;
    ob_menu_cursor.last_puzzle_hover_can_beep_3 = 1;
    ob_menu_cursor.last_puzzle_hover_can_beep_4 = 1;
    ob_menu_cursor.last_puzzle_hover_can_beep_5 = 1;
    ob_menu_cursor.last_puzzle_hover_can_beep_6 = 1;
}
else if (global.last_puzzle_button_2_is_open == 1)
{
    ob_menu_cursor.last_puzzle_hover_can_beep_1 = 1;
    ob_menu_cursor.last_puzzle_hover_can_beep_3 = 1;
    ob_menu_cursor.last_puzzle_hover_can_beep_4 = 1;
    ob_menu_cursor.last_puzzle_hover_can_beep_5 = 1;
    ob_menu_cursor.last_puzzle_hover_can_beep_6 = 1;
}
else if (global.last_puzzle_button_3_is_open == 1)
{
    ob_menu_cursor.last_puzzle_hover_can_beep_1 = 1;
    ob_menu_cursor.last_puzzle_hover_can_beep_2 = 1;
    ob_menu_cursor.last_puzzle_hover_can_beep_4 = 1;
    ob_menu_cursor.last_puzzle_hover_can_beep_5 = 1;
    ob_menu_cursor.last_puzzle_hover_can_beep_6 = 1;
}
else if (global.last_puzzle_button_4_is_open == 1)
{
    ob_menu_cursor.last_puzzle_hover_can_beep_1 = 1;
    ob_menu_cursor.last_puzzle_hover_can_beep_2 = 1;
    ob_menu_cursor.last_puzzle_hover_can_beep_3 = 1;
    ob_menu_cursor.last_puzzle_hover_can_beep_5 = 1;
    ob_menu_cursor.last_puzzle_hover_can_beep_6 = 1;
}
else if (global.last_puzzle_button_5_is_open == 1)
{
    ob_menu_cursor.last_puzzle_hover_can_beep_1 = 1;
    ob_menu_cursor.last_puzzle_hover_can_beep_2 = 1;
    ob_menu_cursor.last_puzzle_hover_can_beep_3 = 1;
    ob_menu_cursor.last_puzzle_hover_can_beep_4 = 1;
    ob_menu_cursor.last_puzzle_hover_can_beep_6 = 1;
}
else if (global.last_puzzle_button_6_is_open == 1)
{
    ob_menu_cursor.last_puzzle_hover_can_beep_1 = 1;
    ob_menu_cursor.last_puzzle_hover_can_beep_2 = 1;
    ob_menu_cursor.last_puzzle_hover_can_beep_3 = 1;
    ob_menu_cursor.last_puzzle_hover_can_beep_4 = 1;
    ob_menu_cursor.last_puzzle_hover_can_beep_5 = 1;
}
