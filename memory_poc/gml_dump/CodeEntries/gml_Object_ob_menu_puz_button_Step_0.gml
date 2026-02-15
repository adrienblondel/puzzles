y = startY - (ob_menu_3_controller.ArrowClicks * ob_menu_3_controller.ScrollAmount);
if (ob_menu_3_controller.CurrentPage == 4)
{
    VisiblePointY = 780;
}
else if (ob_menu_3_controller.CurrentPage == 30)
{
    VisiblePointY = 200;
}
else
{
    VisiblePointY = 20;
}
if (pin_alpha > 0)
{
    pin_alpha -= 0.01;
    if (pin_angle > -15)
    {
        pin_angle -= 1;
    }
    if (pin_x > 76)
    {
        pin_x -= 1;
    }
    if (pin_y > 43)
    {
        pin_y -= 1;
    }
}
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
if (puz_num > 0 && bits > 0 && y > VisiblePointY)
{
    if (place_meeting(x, y, ob_menu_cursor))
    {
        hov = 1;
        if (mouse_check_button_pressed(mb_left) && ob_menu_3_controller.can_press_ui_buttons == 1)
        {
            if (puzzle_is_locked == 0)
            {
                var folder = "";
                var file_name = "";
                if (pack_num == 6000 || pack_num == 5000)
                {
                    folder = "puzshop";
                }
                else if (pack_num == 7000)
                {
                    folder = "challenge";
                }
                if (folder == "puzshop" || folder == "challenge")
                {
                    file_name = "\\misc\\" + string(folder) + "\\p" + string(pack_num) + "p" + string(puz_num);
                }
                else
                {
                    file_name = "\\misc\\content\\" + string(pack_num) + "\\p" + string(pack_num) + "p" + string(puz_num);
                }
                if (file_exists(working_directory + string(file_name) + ".png"))
                {
                    ob_menu_3_controller.can_press_ui_buttons = 0;
                    global.MenuReturnPage = ob_menu_3_controller.CurrentPage;
                    global.PackReturnPage = pack_num;
                    if (ob_menu_3_controller.CurrentPage == 19)
                    {
                        global.CatTabReturnPage = ob_menu_3_controller.CatFilter;
                    }
                    global.current_pack_open = pack_num;
                    global.puzzle_number_to_play = puz_num;
                    global.total_number_of_pieces = bits;
                    global.puzzle_max_number_of_pieces = bits;
                    if (global.current_puzzle_ghost_image == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.current_puzzle_ghost_image);
                    }
                    global.current_puzzle_ghost_image = sprite_add(working_directory + string(file_name) + ".png", 0, false, false, 0, 0);
                    var sprW = sprite_get_width(global.current_puzzle_ghost_image);
                    if (sprW == 1400)
                    {
                        global.level_type = 2;
                    }
                    else if (sprW == 1388)
                    {
                        global.level_type = 1;
                    }
                    else if (sprW == 1880)
                    {
                        global.level_type = 4;
                    }
                    else if (sprW == 1040)
                    {
                        global.level_type = 3;
                    }
                    else if (pack_num == 6000)
                    {
                        global.level_type = 5;
                    }
                    var spx = 0;
                    var spy = 0;
                    if (pack_num == 6000)
                    {
                        if (puz_num == 1)
                        {
                            spx = 118;
                            spy = 131;
                        }
                        if (puz_num == 2)
                        {
                            spx = 172;
                            spy = 143;
                        }
                        if (puz_num == 3)
                        {
                            spx = 140;
                            spy = 174;
                        }
                        if (puz_num == 4)
                        {
                            spx = 132;
                            spy = 110;
                        }
                        if (puz_num == 5)
                        {
                            spx = 92;
                            spy = 95;
                        }
                        if (puz_num == 6)
                        {
                            spx = 64;
                            spy = 64;
                        }
                        if (puz_num == 7)
                        {
                            spx = 68;
                            spy = 81;
                        }
                        if (puz_num == 8)
                        {
                            spx = 86;
                            spy = 81;
                        }
                        if (puz_num == 9)
                        {
                            spx = 110;
                            spy = 130;
                        }
                        if (puz_num == 10)
                        {
                            spx = 77;
                            spy = 81;
                        }
                        if (puz_num == 11)
                        {
                            spx = 77;
                            spy = 79;
                        }
                        if (puz_num == 12)
                        {
                            spx = 83;
                            spy = 81;
                        }
                        if (puz_num == 13)
                        {
                            spx = 140;
                            spy = 111;
                        }
                        if (puz_num == 14)
                        {
                            spx = 112;
                            spy = 97;
                        }
                        if (puz_num == 15)
                        {
                            spx = 120;
                            spy = 121;
                        }
                        if (puz_num == 16)
                        {
                            spx = 117;
                            spy = 109;
                        }
                        if (puz_num == 17)
                        {
                            spx = 97;
                            spy = 107;
                        }
                        if (puz_num == 18)
                        {
                            spx = 83;
                            spy = 83;
                        }
                        if (puz_num == 19)
                        {
                            spx = 190;
                            spy = 165;
                        }
                    }
                    else
                    {
                        if (bits == 60)
                        {
                            spx = 132;
                            spy = 123;
                        }
                        if (bits == 112)
                        {
                            spx = 92;
                            spy = 90;
                        }
                        if (bits == 153)
                        {
                            spx = 75;
                            spy = 80;
                        }
                        if (bits == 220)
                        {
                            spx = 64;
                            spy = 64;
                        }
                        if (bits == 350)
                        {
                            spx = 49;
                            spy = 49;
                        }
                        if (bits == 96)
                        {
                            spx = 112;
                            spy = 108;
                        }
                        if (bits == 140)
                        {
                            spx = 96;
                            spy = 86;
                        }
                        if (bits == 216)
                        {
                            spx = 74;
                            spy = 71;
                        }
                        if (bits == 330)
                        {
                            spx = 59;
                            spy = 49;
                        }
                        if (bits == 425)
                        {
                            spx = 51;
                            spy = 49;
                        }
                        if (bits == 640 && global.level_type == 2)
                        {
                            spx = 39;
                            spy = 41;
                        }
                        if (bits == 840)
                        {
                            spx = 35;
                            spy = 33;
                        }
                        if (bits == 1410)
                        {
                            spx = 26;
                            spy = 26;
                        }
                        if (bits == 100)
                        {
                            spx = 100;
                            spy = 100;
                        }
                        if (bits == 169)
                        {
                            spx = 76;
                            spy = 76;
                        }
                        if (bits == 324)
                        {
                            spx = 53;
                            spy = 53;
                        }
                        if (bits == 400)
                        {
                            spx = 48;
                            spy = 48;
                        }
                        if (bits == 676)
                        {
                            spx = 36;
                            spy = 36;
                        }
                        if (bits == 841)
                        {
                            spx = 30;
                            spy = 30;
                        }
                        if (bits == 126)
                        {
                            spx = 100;
                            spy = 100;
                        }
                        if (bits == 168)
                        {
                            spx = 85;
                            spy = 85;
                        }
                        if (bits == 250)
                        {
                            spx = 71;
                            spy = 67;
                        }
                        if (bits == 455)
                        {
                            spx = 49;
                            spy = 51;
                        }
                        if (bits == 640 && global.level_type == 4)
                        {
                            spx = 42;
                            spy = 40;
                        }
                        if (bits == 810)
                        {
                            spx = 37;
                            spy = 35;
                        }
                        if (bits == 1000)
                        {
                            spx = 33;
                            spy = 31;
                        }
                    }
                    if (global.puzzle_sprite_index_to_use == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_sprite_index_to_use);
                    }
                    global.puzzle_sprite_index_to_use = sprite_add(working_directory + string(file_name) + "p.png", bits, false, false, spx, spy);
                    sprite_collision_mask(global.puzzle_sprite_index_to_use, true, 1, 0, 0, 0, 0, 0, 0);
                    if (pack_num != 6000)
                    {
                        var QPgrid = ds_grid_create(2, 7);
                        ini_open("pidsg.ini");
                        if (ini_key_exists("QPgrid", "0"))
                        {
                            ds_grid_read(QPgrid, ini_read_string("QPgrid", "0", ""));
                        }
                        var current_pack = global.current_pack_open;
                        var current_puz = global.puzzle_number_to_play;
                        var found_index = -1;
                        for (var i = 0; i < 7; i++)
                        {
                            if (ds_grid_get(QPgrid, 0, i) == current_pack && ds_grid_get(QPgrid, 1, i) == current_puz)
                            {
                                found_index = i;
                                break;
                            }
                        }
                        if (found_index == -1)
                        {
                            for (var j = 6; j > 0; j--)
                            {
                                ds_grid_set(QPgrid, 0, j, ds_grid_get(QPgrid, 0, j - 1));
                                ds_grid_set(QPgrid, 1, j, ds_grid_get(QPgrid, 1, j - 1));
                            }
                        }
                        else
                        {
                            for (var k = found_index; k > 0; k--)
                            {
                                ds_grid_set(QPgrid, 0, k, ds_grid_get(QPgrid, 0, k - 1));
                                ds_grid_set(QPgrid, 1, k, ds_grid_get(QPgrid, 1, k - 1));
                            }
                        }
                        ds_grid_set(QPgrid, 0, 0, current_pack);
                        ds_grid_set(QPgrid, 1, 0, current_puz);
                        ini_write_string("QPgrid", "0", ds_grid_write(QPgrid));
                        ds_grid_destroy(QPgrid);
                        ini_close();
                    }
                    audio_play_sound(s_normal_button_press, 10, false);
                    if (ob_menu_3_controller.FadeToPuz != 1)
                    {
                        ob_menu_3_controller.FadeToPuz = 1;
                    }
                }
            }
        }
    }
    else
    {
        hov = 0;
    }
}
if (SbS == 1 && ob_menu_3_controller.CurrentPage != 30)
{
    instance_destroy();
}
if (pack_num == 126 && ob_menu_3_controller.CurrentPage != 3)
{
    instance_destroy();
}
if (pack_num == 6000 && ob_menu_3_controller.CurrentPage != 18)
{
    instance_destroy();
}
if (pack_num == 5000 && ob_menu_3_controller.CurrentPage != 5)
{
    instance_destroy();
}
if (pack_num == 7000 && ob_menu_3_controller.CurrentPage != 4)
{
    instance_destroy();
}
if (pack_num > 0 && pack_num < 5000 && SbS != 1 && pack_num != 126 && ob_menu_3_controller.CurrentPage != 19)
{
    instance_destroy();
}
if (place_meeting(x, y, ob_menu_cursor))
{
    if (mouse_check_button_released(mb_right) && ob_menu_3_controller.can_press_ui_buttons == 1)
    {
        if (pack_num != 6000 && puzzle_is_locked == 0)
        {
            var Pins = ds_grid_create(2, 7);
            ini_open("pidsg.ini");
            if (ini_key_exists("Pins", "0"))
            {
                ds_grid_read(Pins, ini_read_string("Pins", "0", ""));
            }
            var current_pack = pack_num;
            var current_puz = puz_num;
            var found_index = -1;
            var free_space_index = -1;
            for (var i = 0; i < 7; i++)
            {
                if (ds_grid_get(Pins, 0, i) == current_pack && ds_grid_get(Pins, 1, i) == current_puz)
                {
                    found_index = i;
                    break;
                }
                if (free_space_index == -1 && !(ds_grid_get(Pins, 0, i) > 1 && ds_grid_get(Pins, 0, i) <= 9000))
                {
                    free_space_index = i;
                }
            }
            if (found_index == -1)
            {
                if (free_space_index != -1)
                {
                    ds_grid_set(Pins, 0, free_space_index, current_pack);
                    ds_grid_set(Pins, 1, free_space_index, current_puz);
                }
                else
                {
                    for (var j = 6; j > 0; j--)
                    {
                        ds_grid_set(Pins, 0, j, ds_grid_get(Pins, 0, j - 1));
                        ds_grid_set(Pins, 1, j, ds_grid_get(Pins, 1, j - 1));
                    }
                    ds_grid_set(Pins, 0, 0, current_pack);
                    ds_grid_set(Pins, 1, 0, current_puz);
                }
            }
            else
            {
                for (var k = found_index; k > 0; k--)
                {
                    ds_grid_set(Pins, 0, k, ds_grid_get(Pins, 0, k - 1));
                    ds_grid_set(Pins, 1, k, ds_grid_get(Pins, 1, k - 1));
                }
                ds_grid_set(Pins, 0, 0, current_pack);
                ds_grid_set(Pins, 1, 0, current_puz);
            }
            ini_write_string("Pins", "0", ds_grid_write(Pins));
            ob_menu_3_controller.alarm[1] = 1;
            audio_play_sound(s_hint_rotate, 10, false);
            ds_grid_destroy(Pins);
            ini_close();
            pin_angle = 0;
            pin_alpha = 1;
            pin_x = 80;
            pin_y = 50;
        }
    }
}
if (puz_num > 0 && ob_menu_3_controller.can_press_ui_buttons == 1)
{
    if (puzzle_is_locked == 1)
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
                    if (pack_num == 6000)
                    {
                        LockName = "kioskfigurals" + string(puz_num);
                        LockType = 0;
                    }
                    else if (pack_num == 5000)
                    {
                        if (puz_num > 0 && puz_num <= 89)
                        {
                            LockName = "kioskpuzzles" + string(puz_num);
                            LockType = 0;
                        }
                        else if (puz_num > 89)
                        {
                            LockName = "kioskpuzzles" + string(puz_num);
                            LockType = 1;
                        }
                    }
                    else if (pack_num == 7000)
                    {
                        if (puz_num > 0 && puz_num <= 87)
                        {
                            LockName = "kioskchallenges" + string(puz_num);
                            LockType = 0;
                        }
                        else if (puz_num > 87 && puz_num < 1000)
                        {
                            LockName = "kioskchallenges" + string(puz_num);
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
                        puzzle_is_locked = 0;
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
