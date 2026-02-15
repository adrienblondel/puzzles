y = startY - (ob_menu_3_controller.ArrowClicks * ob_menu_3_controller.ScrollAmount);
if (buyMenu == 1)
{
    if (buy_y < 53)
    {
        buy_y += 1;
    }
    if (buy_alpha < 1)
    {
        buy_alpha += 0.1;
    }
}
if (cant_afford_alpha > 0)
{
    cant_afford_alpha -= 0.1;
}
if (cant_afford2_alpha > 0)
{
    cant_afford2_alpha -= 0.1;
}
if (item_type != 0 && y > VisiblePointY && ob_menu_3_controller.can_press_ui_buttons == 1)
{
    if (place_meeting(x, y, ob_menu_cursor))
    {
        hov = 1;
        if (mouse_check_button_pressed(mb_left))
        {
            if (item_is_locked == 0)
            {
                if (item_type == 1)
                {
                    if (item_num != global.theme_to_use)
                    {
                        audio_play_sound(s_change_setting, 10, false);
                        global.theme_to_use = item_num;
                        ini_open("settings.ini");
                        ini_write_real("customize", "c7823", global.theme_to_use);
                        ini_close();
                    }
                }
                else if (item_type == 3)
                {
                    audio_play_sound(s_change_setting, 10, false);
                    ob_game_controller.c6343 = item_num;
                    ini_open("settings.ini");
                    ini_write_real("customize", "c6343", item_num);
                    ini_close();
                    sprite_delete(global.menu_backing);
                    var menu_backing = "\menubg\defaultbacking" + string(item_num) + ".png";
                    if (file_exists(working_directory + string(menu_backing)))
                    {
                        global.menu_backing = sprite_add(working_directory + string(menu_backing), 0, false, false, 0, 0);
                    }
                }
                else if (item_type == 2)
                {
                    audio_play_sound(s_change_setting, 10, false);
                    global.current_cursor = item_num;
                    ini_open("settings.ini");
                    ini_write_real("customize", "c7898", global.current_cursor);
                    ini_close();
                }
            }
        }
    }
    else
    {
        hov = 0;
    }
}
if (item_type == 1 && ob_menu_3_controller.CurrentPage != 20)
{
    instance_destroy();
}
if (item_type == 2 && ob_menu_3_controller.CurrentPage != 21)
{
    instance_destroy();
}
if (item_type == 3 && ob_menu_3_controller.CurrentPage != 23)
{
    instance_destroy();
}
if (item_type == 4 && ob_menu_3_controller.CurrentPage != 24)
{
    instance_destroy();
}
if (item_num > 0 && ob_menu_3_controller.can_press_ui_buttons == 1)
{
    if (item_is_locked == 1)
    {
        if (place_meeting(x, y, ob_menu_cursor))
        {
            if (mouse_check_button_pressed(mb_left) && y > VisiblePointY)
            {
                if (buyMenu == 1)
                {
                    buyMenu = 0;
                    audio_play_sound(s_change_setting, 10, false);
                }
                else
                {
                    buyMenu = 1;
                    buy_alpha = 0;
                    buy_y = 40;
                    audio_play_sound(s_change_setting, 10, false);
                }
            }
        }
        if (!place_meeting(x, y, ob_menu_cursor) && !point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x - 88, y + 53, x + 6, y + 96) && !point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x + 26, y + 53, x + 87, y + 96))
        {
            if (mouse_check_button_pressed(mb_left))
            {
                if (buyMenu == 1)
                {
                    buyMenu = 0;
                }
            }
        }
        if (buyMenu == 1)
        {
            if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x - 88, y + 53, x + 6, y + 96) || point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x + 26, y + 53, x + 87, y + 96))
            {
                if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x - 88, y + 53, x + 6, y + 96))
                {
                    LockBuyHov = 1;
                }
                if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x + 26, y + 53, x + 87, y + 96))
                {
                    LockBuyHov = 2;
                }
                if (mouse_check_button_pressed(mb_left))
                {
                    var CoinType = 0;
                    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x - 88, y + 53, x + 6, y + 96))
                    {
                        CoinType = 0;
                    }
                    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x + 26, y + 53, x + 87, y + 96))
                    {
                        CoinType = 1;
                    }
                    var CoinStat = 0;
                    var CoinNeeded = 0;
                    var CoinHolding = 0;
                    if (CoinType == 0)
                    {
                        CoinStat = "gold_bits_used";
                        CoinNeeded = lockPrice;
                        CoinHolding = ob_menu_3_controller.gold_quantity;
                    }
                    if (CoinType == 1)
                    {
                        CoinStat = "ultimate_pieces_used";
                        CoinNeeded = 1;
                        CoinHolding = ob_menu_3_controller.diamond_quantity;
                    }
                    var LockName = 0;
                    var LockType = 0;
                    if (item_type == 2)
                    {
                        if (item_num >= 1 && item_num <= 24)
                        {
                            LockName = "kioskcursor" + string(item_num);
                            LockType = 0;
                        }
                        else if (item_num > 24)
                        {
                            LockName = "kioskcursor" + string(item_num);
                            LockType = 1;
                        }
                    }
                    if (item_type == 3)
                    {
                        if (item_num >= 1 && item_num <= 28)
                        {
                            LockName = "kiosktoolbar" + string(item_num);
                            LockType = 0;
                        }
                        else if (item_num > 28)
                        {
                            LockName = "kiosktoolbar" + string(item_num);
                            LockType = 1;
                        }
                    }
                    if (CoinHolding >= CoinNeeded && LockName != 0)
                    {
                        if (LockType == 0)
                        {
                            steam_set_achievement(LockName);
                        }
                        if (LockType == 1)
                        {
                            steam_set_stat_int(LockName, 1);
                        }
                        if (CoinType == 0)
                        {
                            ob_menu_3_controller.gold_quantity -= CoinNeeded;
                        }
                        if (CoinType == 1)
                        {
                            ob_menu_3_controller.diamond_quantity -= CoinNeeded;
                        }
                        var total_spent = steam_get_stat_int(CoinStat) + CoinNeeded;
                        steam_set_stat_int(CoinStat, total_spent);
                        buyMenu = 0;
                        item_is_locked = 0;
                        audio_play_sound(s_hint_ghost, 10, false);
                    }
                    else
                    {
                        audio_play_sound(s_ui_x_button, 10, false);
                        if (CoinType == 0)
                        {
                            cant_afford2_alpha = 1.5;
                        }
                        if (CoinType == 1)
                        {
                            cant_afford_alpha = 1.5;
                        }
                    }
                }
            }
            else
            {
                LockBuyHov = 0;
            }
        }
    }
}
