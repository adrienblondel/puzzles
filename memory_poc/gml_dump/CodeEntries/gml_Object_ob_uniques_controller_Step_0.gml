if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 0, 1060, 1510, 1080))
{
    if (global.unique_1_y > -1645)
    {
        global.unique_1_y -= 20;
        if (global.unique_1_y < -1645)
        {
            global.unique_1_y = -1645;
        }
    }
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 0, 298, 1510, 317))
{
    if (global.unique_1_y < 412)
    {
        global.unique_1_y += 20;
        if (global.unique_1_y > 412)
        {
            global.unique_1_y = 412;
        }
    }
}
if (mouse_wheel_down())
{
    if (ob_menu_cursor.y > 300)
    {
        if (global.unique_1_y > -1645)
        {
            global.unique_1_y -= 50;
            if (global.unique_1_y < -1645)
            {
                global.unique_1_y = -1645;
            }
        }
    }
}
if (mouse_wheel_up())
{
    if (ob_menu_cursor.y > 300)
    {
        if (global.unique_1_y < 412)
        {
            global.unique_1_y += 50;
            if (global.unique_1_y > 412)
            {
                global.unique_1_y = 412;
            }
        }
    }
}
