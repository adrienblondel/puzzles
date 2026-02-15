if (global.can_use_ui_and_buttons_in_puzzle == 1)
{
    if (keyboard_check_pressed(ord("Z")) || gamepad_button_check_pressed(0, gp_stickl))
    {
        ob_puzzles_generic_room_controller.TrayOpen = 0;
        if (global.camera_is_zoomed_in == 1)
        {
            global.camera_is_zoomed_in = 2;
        }
        else if (global.camera_is_zoomed_in == 2)
        {
            global.camera_is_zoomed_in = 3;
        }
        else if (global.camera_is_zoomed_in == 3)
        {
            global.camera_is_zoomed_in = 4;
        }
        else if (global.camera_is_zoomed_in == 4)
        {
            global.camera_is_zoomed_in = 0;
        }
        else
        {
            global.camera_is_zoomed_in = 1;
        }
    }
    if (mouse_wheel_up())
    {
        ob_puzzles_generic_room_controller.TrayOpen = 0;
        if (global.camera_is_zoomed_in == 0)
        {
            x = ob_menu_cursor.x;
            y = ob_menu_cursor.y;
            global.camera_is_zoomed_in = 1;
        }
        else if (global.camera_is_zoomed_in == 1)
        {
            x = ob_menu_cursor.x;
            y = ob_menu_cursor.y;
            global.camera_is_zoomed_in = 2;
        }
        else if (global.camera_is_zoomed_in == 2)
        {
            x = ob_menu_cursor.x;
            y = ob_menu_cursor.y;
            global.camera_is_zoomed_in = 3;
        }
        else if (global.camera_is_zoomed_in == 3)
        {
            x = ob_menu_cursor.x;
            y = ob_menu_cursor.y;
            global.camera_is_zoomed_in = 4;
        }
    }
    if (mouse_wheel_down())
    {
        if (global.camera_is_zoomed_in == 4)
        {
            ob_puzzles_generic_room_controller.TrayOpen = 0;
            global.camera_is_zoomed_in = 3;
        }
        else if (global.camera_is_zoomed_in == 3)
        {
            ob_puzzles_generic_room_controller.TrayOpen = 0;
            global.camera_is_zoomed_in = 2;
        }
        else if (global.camera_is_zoomed_in == 2)
        {
            ob_puzzles_generic_room_controller.TrayOpen = 0;
            global.camera_is_zoomed_in = 1;
        }
        else if (global.camera_is_zoomed_in == 1)
        {
            ob_puzzles_generic_room_controller.TrayOpen = 0;
            global.camera_is_zoomed_in = 0;
        }
    }
}
if (global.camera_is_zoomed_in == 1)
{
    view_wview[0] = 1728;
    view_hview[0] = 972;
}
else if (global.camera_is_zoomed_in == 2)
{
    view_wview[0] = 1536;
    view_hview[0] = 864;
}
else if (global.camera_is_zoomed_in == 3)
{
    view_wview[0] = 1344;
    view_hview[0] = 756;
}
else if (global.camera_is_zoomed_in == 4)
{
    view_wview[0] = 1152;
    view_hview[0] = 648;
}
else
{
    x = 960;
    y = 540;
    view_wview[0] = 1920;
    view_hview[0] = 1080;
}
if (global.camera_is_zoomed_in == 1)
{
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, view_xview[0], (view_yview[0] + view_hview[0]) - 1, view_xview[0] + view_wview[0], view_yview[0] + view_hview[0]))
    {
        if (y < 599)
        {
            y += global.zoom_pan_speed;
        }
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, view_xview[0], view_yview[0], view_xview[0] + view_wview[0], view_yview[0] + 1))
    {
        if (y > 481)
        {
            y -= global.zoom_pan_speed;
        }
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, view_xview[0], view_yview[0], view_xview[0] + 1, view_yview[0] + view_hview[0]))
    {
        if (x > 859)
        {
            x -= global.zoom_pan_speed;
        }
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, (view_xview[0] + view_wview[0]) - 1, view_yview[0], view_xview[0] + view_wview[0], view_yview[0] + view_hview[0]))
    {
        if (x < 1061)
        {
            x += global.zoom_pan_speed;
        }
    }
}
else if (global.camera_is_zoomed_in == 2)
{
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, view_xview[0], (view_yview[0] + view_hview[0]) - 1, view_xview[0] + view_wview[0], view_yview[0] + view_hview[0]))
    {
        if (y < 653)
        {
            y += global.zoom_pan_speed;
        }
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, view_xview[0], view_yview[0], view_xview[0] + view_wview[0], view_yview[0] + 1))
    {
        if (y > 427)
        {
            y -= global.zoom_pan_speed;
        }
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, view_xview[0], view_yview[0], view_xview[0] + 1, view_yview[0] + view_hview[0]))
    {
        if (x > 763)
        {
            x -= global.zoom_pan_speed;
        }
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, (view_xview[0] + view_wview[0]) - 1, view_yview[0], view_xview[0] + view_wview[0], view_yview[0] + view_hview[0]))
    {
        if (x < 1157)
        {
            x += global.zoom_pan_speed;
        }
    }
}
else if (global.camera_is_zoomed_in == 3)
{
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, view_xview[0], (view_yview[0] + view_hview[0]) - 1, view_xview[0] + view_wview[0], view_yview[0] + view_hview[0]))
    {
        if (y < 707)
        {
            y += global.zoom_pan_speed;
        }
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, view_xview[0], view_yview[0], view_xview[0] + view_wview[0], view_yview[0] + 1))
    {
        if (y > 373)
        {
            y -= global.zoom_pan_speed;
        }
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, view_xview[0], view_yview[0], view_xview[0] + 1, view_yview[0] + view_hview[0]))
    {
        if (x > 667)
        {
            x -= global.zoom_pan_speed;
        }
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, (view_xview[0] + view_wview[0]) - 1, view_yview[0], view_xview[0] + view_wview[0], view_yview[0] + view_hview[0]))
    {
        if (x < 1253)
        {
            x += global.zoom_pan_speed;
        }
    }
}
else if (global.camera_is_zoomed_in == 4)
{
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, view_xview[0], (view_yview[0] + view_hview[0]) - 1, view_xview[0] + view_wview[0], view_yview[0] + view_hview[0]))
    {
        if (y < 761)
        {
            y += global.zoom_pan_speed;
        }
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, view_xview[0], view_yview[0], view_xview[0] + view_wview[0], view_yview[0] + 1))
    {
        if (y > 319)
        {
            y -= global.zoom_pan_speed;
        }
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, view_xview[0], view_yview[0], view_xview[0] + 1, view_yview[0] + view_hview[0]))
    {
        if (x > 571)
        {
            x -= global.zoom_pan_speed;
        }
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, (view_xview[0] + view_wview[0]) - 1, view_yview[0], view_xview[0] + view_wview[0], view_yview[0] + view_hview[0]))
    {
        if (x < 1349)
        {
            x += global.zoom_pan_speed;
        }
    }
}
