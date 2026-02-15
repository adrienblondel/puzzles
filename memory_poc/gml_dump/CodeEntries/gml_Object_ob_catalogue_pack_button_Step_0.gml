y = startY - (ob_menu_3_controller.ArrowClicks * ob_menu_3_controller.ScrollAmount);
if (button_alpha < 1)
{
    button_alpha += 0.05;
}
if (ob_menu_3_controller.CurrentPage == 6 || ob_menu_3_controller.CurrentPage == 17)
{
    if (pack_num > 0 && y > VisiblePointY && ob_menu_3_controller.can_press_ui_buttons == 1)
    {
        if (place_meeting(x, y, ob_menu_cursor))
        {
            hov = 1;
            if (mouse_check_button_pressed(mb_left))
            {
                if (appID != 0)
                {
                    steam_activate_overlay_store(appID);
                }
            }
        }
        else
        {
            hov = 0;
        }
    }
}
if (ob_menu_3_controller.CurrentPage == 2)
{
    if (pack_num > 0 && y > VisiblePointY && ob_menu_3_controller.can_press_ui_buttons == 1)
    {
        if (place_meeting(x, y, ob_menu_cursor))
        {
            hov = 1;
            if (mouse_check_button_pressed(mb_left))
            {
                var Puz_file = "\\misc\\content\\" + string(pack_num) + "\\p" + string(pack_num);
                if (file_exists(working_directory + string(Puz_file) + "p1.png"))
                {
                    audio_play_sound(s_change_tray, 10, false);
                    ob_menu_3_controller.ArrowClicksMax = 0;
                    ob_menu_3_controller.ArrowClicks = 0;
                    ob_menu_3_controller.ScrollAmount = 150;
                    ob_menu_3_controller.CurrentPage = 19;
                    ini_open("pidsg.ini");
                    var PackGrid = ds_grid_create(10, pack_num + 1);
                    if (ini_key_exists("pi", "0"))
                    {
                        ds_grid_read(PackGrid, ini_read_string("pi", "0", ""));
                    }
                    ini_close();
                    var total_buttons = ds_grid_get(PackGrid, 2, pack_num);
                    var buttons_per_row = 6;
                    var horizontal_spacing = 208;
                    var vertical_spacing = 150;
                    var initial_xpos = 423;
                    var initial_ypos = 110;
                    var puz_num = total_buttons;
                    var savefile = "p" + string(pack_num) + ".ini";
                    ini_open(string(savefile));
                    var ClickedGrid = ds_grid_create(1, 500);
                    if (ini_key_exists("PC", "0"))
                    {
                        ds_grid_read(ClickedGrid, ini_read_string("PC", "0", ""));
                    }
                    ini_close();
                    for (var i = 0; i < total_buttons; i++)
                    {
                        var row = i div buttons_per_row;
                        var col = i % buttons_per_row;
                        var xpos = initial_xpos + (col * horizontal_spacing);
                        var ypos = initial_ypos + (row * vertical_spacing);
                        var PuzBut = instance_create(xpos, ypos, ob_menu_puz_button);
                        PuzBut.puz_num = puz_num;
                        PuzBut.pack_num = pack_num;
                        PuzBut.bits = ds_grid_get(PackGrid, puz_num + 10, pack_num);
                        PuzBut.startY = ypos;
                        var PuzB_file = string(Puz_file) + "p" + string(puz_num);
                        if (file_exists(working_directory + string(PuzB_file) + "b.png"))
                        {
                            PuzBut.sprite_to_use = sprite_add(working_directory + string(PuzB_file) + "b.png", 0, false, false, 87, 53);
                        }
                        var pieces_placed = ds_grid_get(ClickedGrid, 0, puz_num);
                        if (pieces_placed > 0)
                        {
                        }
                        else
                        {
                            pieces_placed = 0;
                        }
                        PuzBut.pieces_placed = pieces_placed;
                        var a_c = "complete_pack_" + string(pack_num) + "_puzzle_" + string(puz_num);
                        PuzBut.puz_beat = steam_get_achievement(a_c);
                        puz_num--;
                    }
                    ds_grid_destroy(PackGrid);
                    ds_grid_destroy(ClickedGrid);
                }
            }
        }
        else
        {
            hov = 0;
        }
    }
}
if (ob_menu_3_controller.CurrentPage != 17 && ob_menu_3_controller.CurrentPage != 2 && ob_menu_3_controller.CurrentPage != 6)
{
    instance_destroy();
}
