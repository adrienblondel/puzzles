if (kiosk_info_is_showing == 1)
{
    global.a_menu_overlay_is_showing = 1;
    if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_escape))
    {
        kiosk_info_is_showing = 0;
        global.a_menu_overlay_is_showing = 0;
        if (steam_stats_ready())
        {
            if (!steam_get_achievement("openkiosk3"))
            {
                steam_set_achievement("openkiosk3");
                var gold_pieces_earned = steam_get_stat_int("gold_bits_earned") + 10;
                steam_set_stat_int("gold_bits_earned", gold_pieces_earned);
                if (instance_exists(ob_menu_controller))
                {
                    ob_menu_controller.alarm[2] = 1;
                }
            }
        }
    }
}
if (global.kiosk_items_to_show == 7 || global.kiosk_items_to_show == 9 || global.kiosk_items_to_show == 8 || global.kiosk_items_to_show == 1)
{
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 0, 1060, 1510, 1080))
    {
        if (global.kiosk_item_1_y > -1120)
        {
            global.kiosk_item_1_y -= 20;
            if (global.kiosk_item_1_y < -1120)
            {
                global.kiosk_item_1_y = -1120;
            }
        }
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 0, 298, 1510, 317))
    {
        if (global.kiosk_item_1_y < 412)
        {
            global.kiosk_item_1_y += 20;
            if (global.kiosk_item_1_y > 412)
            {
                global.kiosk_item_1_y = 412;
            }
        }
    }
    if (mouse_wheel_down())
    {
        if (ob_menu_cursor.y > 300)
        {
            if (global.kiosk_item_1_y > -1120)
            {
                global.kiosk_item_1_y -= 50;
                if (global.kiosk_item_1_y < -1120)
                {
                    global.kiosk_item_1_y = -1120;
                }
            }
        }
    }
    if (mouse_wheel_up())
    {
        if (ob_menu_cursor.y > 300)
        {
            if (global.kiosk_item_1_y < 412)
            {
                global.kiosk_item_1_y += 50;
                if (global.kiosk_item_1_y > 412)
                {
                    global.kiosk_item_1_y = 412;
                }
            }
        }
    }
}
