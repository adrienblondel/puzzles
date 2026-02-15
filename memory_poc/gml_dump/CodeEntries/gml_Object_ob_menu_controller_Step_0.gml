if (global.theme_chooser_is_open == 1)
{
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 0, 1060, 1510, 1080))
    {
        if (global.theme_button_1_y > 275)
        {
            global.theme_button_1_y -= 20;
            if (global.theme_button_1_y < 275)
            {
                global.theme_button_1_y = 275;
            }
        }
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 0, 298, 1510, 317))
    {
        if (global.theme_button_1_y < 412)
        {
            global.theme_button_1_y += 20;
            if (global.theme_button_1_y > 412)
            {
                global.theme_button_1_y = 412;
            }
        }
    }
    if (mouse_wheel_down())
    {
        if (ob_menu_cursor.y > 300)
        {
            if (global.theme_button_1_y > 275)
            {
                global.theme_button_1_y -= 50;
                if (global.theme_button_1_y < 275)
                {
                    global.theme_button_1_y = 275;
                }
            }
        }
    }
    if (mouse_wheel_up())
    {
        if (ob_menu_cursor.y > 300)
        {
            if (global.theme_button_1_y < 412)
            {
                global.theme_button_1_y += 50;
                if (global.theme_button_1_y > 412)
                {
                    global.theme_button_1_y = 412;
                }
            }
        }
    }
}
if (room == r_main_menu)
{
    if (scroll_bar_alpha < 1)
    {
        scroll_bar_alpha += 0.05;
    }
}
if (global.using_a_gamepad == 0)
{
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 0, 1075, 1920, 1080))
    {
        if (room == r_main_menu)
        {
            if (global.a_menu_overlay_is_showing == 0)
            {
                if (ob_menu_cursor.x > 280 && ob_menu_cursor.x < 1635)
                {
                    if (global.button_1_y > -3005)
                    {
                        global.button_1_y -= 10;
                        if (global.button_1_y < -3005)
                        {
                            global.button_1_y = -3005;
                        }
                    }
                }
            }
        }
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 0, 540, 1920, 560))
    {
        if (room == r_main_menu)
        {
            if (global.a_menu_overlay_is_showing == 0)
            {
                if (ob_menu_cursor.x > 280 && ob_menu_cursor.x < 1635)
                {
                    if (global.button_1_y < 452)
                    {
                        global.button_1_y += 10;
                        if (global.button_1_y > 452)
                        {
                            global.button_1_y = 452;
                        }
                    }
                }
            }
        }
    }
    if (keyboard_check(vk_down) || keyboard_check(ord("S")))
    {
        if (room == r_main_menu)
        {
            if (global.a_menu_overlay_is_showing == 0)
            {
                if (global.button_1_y > -3005)
                {
                    global.button_1_y -= 10;
                    if (global.button_1_y < -3005)
                    {
                        global.button_1_y = -3005;
                    }
                }
            }
        }
    }
    if (keyboard_check(vk_up) || keyboard_check(ord("W")))
    {
        if (room == r_main_menu)
        {
            if (global.a_menu_overlay_is_showing == 0)
            {
                if (global.button_1_y < 452)
                {
                    global.button_1_y += 10;
                    if (global.button_1_y > 452)
                    {
                        global.button_1_y = 452;
                    }
                }
            }
        }
    }
    if (mouse_wheel_down())
    {
        if (room == r_main_menu)
        {
            if (global.a_menu_overlay_is_showing == 0)
            {
                if (ob_menu_cursor.x > 280 && ob_menu_cursor.x < 1635)
                {
                    if (ob_menu_cursor.y > 540)
                    {
                        if (global.button_1_y > -3005)
                        {
                            global.button_1_y -= 50;
                            if (global.button_1_y < -3005)
                            {
                                global.button_1_y = -3005;
                            }
                        }
                    }
                }
            }
        }
    }
    if (mouse_wheel_up())
    {
        if (room == r_main_menu)
        {
            if (global.a_menu_overlay_is_showing == 0)
            {
                if (ob_menu_cursor.x > 280 && ob_menu_cursor.x < 1635)
                {
                    if (ob_menu_cursor.y > 540)
                    {
                        if (global.button_1_y < 452)
                        {
                            global.button_1_y += 50;
                            if (global.button_1_y > 452)
                            {
                                global.button_1_y = 452;
                            }
                        }
                    }
                }
            }
        }
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 279, 311, 292, 488))
    {
        if (room == r_main_menu)
        {
            if (global.a_menu_overlay_is_showing == 0)
            {
                if (global.button_fav_x < 389)
                {
                    global.button_fav_x += 10;
                    if (global.button_fav_x > 389)
                    {
                        global.button_fav_x = 389;
                    }
                }
            }
        }
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1619, 311, 1640, 488))
    {
        if (room == r_main_menu)
        {
            if (global.a_menu_overlay_is_showing == 0)
            {
                if (global.button_fav_x > -1060)
                {
                    global.button_fav_x -= 10;
                    if (global.button_fav_x < -1060)
                    {
                        global.button_fav_x = -1060;
                    }
                }
            }
        }
    }
    if (keyboard_check(vk_right) || keyboard_check(ord("D")))
    {
        if (room == r_main_menu)
        {
            if (global.a_menu_overlay_is_showing == 0)
            {
                if (global.button_fav_x > -1060)
                {
                    global.button_fav_x -= 10;
                    if (global.button_fav_x < -1060)
                    {
                        global.button_fav_x = -1060;
                    }
                }
            }
        }
    }
    if (keyboard_check(vk_left) || keyboard_check(ord("A")))
    {
        if (room == r_main_menu)
        {
            if (global.a_menu_overlay_is_showing == 0)
            {
                if (global.button_fav_x < 389)
                {
                    global.button_fav_x += 10;
                    if (global.button_fav_x > 389)
                    {
                        global.button_fav_x = 389;
                    }
                }
            }
        }
    }
    if (ob_menu_cursor.y < 500)
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (ob_menu_cursor.x > 280 && ob_menu_cursor.x < 1635)
            {
                if (mouse_wheel_down())
                {
                    if (global.button_fav_x > -1060)
                    {
                        global.button_fav_x -= 50;
                        if (global.button_fav_x < -1060)
                        {
                            global.button_fav_x = -1060;
                        }
                    }
                }
                if (mouse_wheel_up())
                {
                    if (global.button_fav_x < 389)
                    {
                        global.button_fav_x += 50;
                        if (global.button_fav_x > 389)
                        {
                            global.button_fav_x = 389;
                        }
                    }
                }
            }
        }
    }
}
else if (global.using_a_gamepad == 1)
{
    if (ob_menu_cursor.y > 540)
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (ob_menu_cursor.x > 280 && ob_menu_cursor.x < 1635)
            {
                vaxis = gamepad_axis_value(0, gp_axisrv);
                if (vaxis > 0)
                {
                    if (global.button_1_y > -720)
                    {
                        global.button_1_y -= (vaxis * 15);
                        if (global.button_1_y < -720)
                        {
                            global.button_1_y = -720;
                        }
                    }
                }
                if (vaxis < 0)
                {
                    if (global.button_1_y < 452)
                    {
                        global.button_1_y -= (vaxis * 15);
                        if (global.button_1_y > 452)
                        {
                            global.button_1_y = 452;
                        }
                    }
                }
            }
        }
    }
    if (ob_menu_cursor.y < 500)
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (ob_menu_cursor.x > 280 && ob_menu_cursor.x < 1635)
            {
                haxis = gamepad_axis_value(0, gp_axisrh);
                if (haxis > 0)
                {
                    if (global.button_fav_x > -1060)
                    {
                        global.button_fav_x -= (haxis * 15);
                        if (global.button_fav_x < -1060)
                        {
                            global.button_fav_x = -1060;
                        }
                    }
                }
                if (haxis < 0)
                {
                    if (global.button_fav_x < 389)
                    {
                        global.button_fav_x -= (haxis * 15);
                        if (global.button_fav_x > 389)
                        {
                            global.button_fav_x = 389;
                        }
                    }
                }
            }
        }
    }
    if (gamepad_button_check(0, gp_shoulderl))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.button_fav_x < 389)
            {
                global.button_fav_x += 25;
                if (global.button_fav_x > 389)
                {
                    global.button_fav_x = 389;
                }
            }
        }
    }
    if (gamepad_button_check(0, gp_shoulderr))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.button_fav_x > -1060)
            {
                global.button_fav_x -= 25;
                if (global.button_fav_x < -1060)
                {
                    global.button_fav_x = -1060;
                }
            }
        }
    }
}
if (room == r_puzzle_select)
{
    if (global.current_pack_open_number_of_puzzles > 20)
    {
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 408, 1060, 1360, 1080))
        {
            if (global.puzzle_button_1_y > 240)
            {
                global.puzzle_button_1_y -= 10;
                if (global.puzzle_button_1_y < 240)
                {
                    global.puzzle_button_1_y = 240;
                }
            }
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 408, 298, 1360, 317))
        {
            if (global.puzzle_button_1_y < 400)
            {
                global.puzzle_button_1_y += 10;
                if (global.puzzle_button_1_y > 400)
                {
                    global.puzzle_button_1_y = 400;
                }
            }
        }
        if (mouse_wheel_down())
        {
            if (ob_menu_cursor.y > 300)
            {
                if (global.puzzle_button_1_y > 240)
                {
                    global.puzzle_button_1_y -= 35;
                    if (global.puzzle_button_1_y < 240)
                    {
                        global.puzzle_button_1_y = 240;
                    }
                }
            }
        }
        if (mouse_wheel_up())
        {
            if (ob_menu_cursor.y > 300)
            {
                if (global.puzzle_button_1_y < 400)
                {
                    global.puzzle_button_1_y += 35;
                    if (global.puzzle_button_1_y > 400)
                    {
                        global.puzzle_button_1_y = 400;
                    }
                }
            }
        }
    }
}
if (room == r_main_menu)
{
    if (global.a_menu_overlay_is_showing == 0)
    {
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 298, 503, 460, 530))
        {
            if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
            {
                if (global.pack_filer_using == 0)
                {
                }
                else
                {
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_sidebar_buttons_pressed, 1, false);
                    }
                    global.pack_filer_using = 0;
                    global.button_1_y = 452;
                    global.puzzle_favorites_can_fade_in = 0;
                    room_restart();
                }
            }
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 464, 503, 626, 530))
        {
            if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
            {
                if (global.game_current_language == 0)
                {
                    if (global.pack_filer_using == 1)
                    {
                        if (global.audio_menu_effects_0_is_on == 0)
                        {
                            audio_play_sound(global.sound_sidebar_buttons_pressed, 1, false);
                        }
                        global.pack_filer_using = 2;
                        global.button_1_y = 452;
                        global.puzzle_favorites_can_fade_in = 0;
                        room_restart();
                    }
                    else
                    {
                        if (global.audio_menu_effects_0_is_on == 0)
                        {
                            audio_play_sound(global.sound_sidebar_buttons_pressed, 1, false);
                        }
                        global.pack_filer_using = 1;
                        global.button_1_y = 452;
                        global.puzzle_favorites_can_fade_in = 0;
                        room_restart();
                    }
                }
            }
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 630, 503, 792, 530))
        {
            if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
            {
                if (global.pack_filer_using == 3)
                {
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_sidebar_buttons_pressed, 1, false);
                    }
                    global.pack_filer_using = 4;
                    global.button_1_y = 452;
                    global.puzzle_favorites_can_fade_in = 0;
                    room_restart();
                }
                else
                {
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_sidebar_buttons_pressed, 1, false);
                    }
                    global.pack_filer_using = 3;
                    global.button_1_y = 452;
                    global.puzzle_favorites_can_fade_in = 0;
                    room_restart();
                }
            }
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 796, 503, 958, 530))
        {
            if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
            {
                if (global.pack_filer_using == 5)
                {
                }
                else
                {
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_sidebar_buttons_pressed, 1, false);
                    }
                    global.pack_filer_using = 5;
                    global.button_1_y = 452;
                    global.puzzle_favorites_can_fade_in = 0;
                    room_restart();
                }
            }
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 962, 503, 1124, 530))
        {
            if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
            {
                if (global.pack_filer_using == 6)
                {
                }
                else
                {
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_sidebar_buttons_pressed, 1, false);
                    }
                    global.pack_filer_using = 6;
                    global.button_1_y = 452;
                    global.puzzle_favorites_can_fade_in = 0;
                    room_restart();
                }
            }
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1128, 503, 1290, 530))
        {
            if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
            {
                if (global.pack_filer_using == 7)
                {
                }
                else
                {
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_sidebar_buttons_pressed, 1, false);
                    }
                    global.pack_filer_using = 7;
                    global.button_1_y = 452;
                    global.puzzle_favorites_can_fade_in = 0;
                    room_restart();
                }
            }
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1294, 503, 1456, 530))
        {
            if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
            {
                if (global.pack_filer_using == 8)
                {
                }
                else
                {
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_sidebar_buttons_pressed, 1, false);
                    }
                    global.pack_filer_using = 8;
                    global.button_1_y = 452;
                    global.puzzle_favorites_can_fade_in = 0;
                    room_restart();
                }
            }
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1460, 503, 1622, 530))
        {
            if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
            {
                if (global.pack_filer_using == 9)
                {
                }
                else
                {
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_sidebar_buttons_pressed, 1, false);
                    }
                    global.pack_filer_using = 9;
                    global.button_1_y = 452;
                    global.puzzle_favorites_can_fade_in = 0;
                    room_restart();
                }
            }
        }
    }
    if (global.pack_filer_using == 0)
    {
        filer_1_on_or_off = 1;
        filer_2_on_or_off = 0;
        filer_3_on_or_off = 0;
        filer_4_on_or_off = 0;
        filer_5_on_or_off = 0;
        filer_6_on_or_off = 0;
        filer_7_on_or_off = 0;
        filer_8_on_or_off = 0;
    }
    else if (global.pack_filer_using == 1)
    {
        filer_1_on_or_off = 0;
        filer_2_on_or_off = 1;
        filer_3_on_or_off = 0;
        filer_4_on_or_off = 0;
        filer_5_on_or_off = 0;
        filer_6_on_or_off = 0;
        filer_7_on_or_off = 0;
        filer_8_on_or_off = 0;
    }
    else if (global.pack_filer_using == 2)
    {
        filer_1_on_or_off = 0;
        filer_2_on_or_off = 1;
        filer_3_on_or_off = 0;
        filer_4_on_or_off = 0;
        filer_5_on_or_off = 0;
        filer_6_on_or_off = 0;
        filer_7_on_or_off = 0;
        filer_8_on_or_off = 0;
    }
    else if (global.pack_filer_using == 3)
    {
        filer_1_on_or_off = 0;
        filer_2_on_or_off = 0;
        filer_3_on_or_off = 1;
        filer_4_on_or_off = 0;
        filer_5_on_or_off = 0;
        filer_6_on_or_off = 0;
        filer_7_on_or_off = 0;
        filer_8_on_or_off = 0;
    }
    else if (global.pack_filer_using == 4)
    {
        filer_1_on_or_off = 0;
        filer_2_on_or_off = 0;
        filer_3_on_or_off = 1;
        filer_4_on_or_off = 0;
        filer_5_on_or_off = 0;
        filer_6_on_or_off = 0;
        filer_7_on_or_off = 0;
        filer_8_on_or_off = 0;
    }
    else if (global.pack_filer_using == 5)
    {
        filer_1_on_or_off = 0;
        filer_2_on_or_off = 0;
        filer_3_on_or_off = 0;
        filer_4_on_or_off = 1;
        filer_5_on_or_off = 0;
        filer_6_on_or_off = 0;
        filer_7_on_or_off = 0;
        filer_8_on_or_off = 0;
    }
    else if (global.pack_filer_using == 6)
    {
        filer_1_on_or_off = 0;
        filer_2_on_or_off = 0;
        filer_3_on_or_off = 0;
        filer_4_on_or_off = 0;
        filer_5_on_or_off = 1;
        filer_6_on_or_off = 0;
        filer_7_on_or_off = 0;
        filer_8_on_or_off = 0;
    }
    else if (global.pack_filer_using == 7)
    {
        filer_1_on_or_off = 0;
        filer_2_on_or_off = 0;
        filer_3_on_or_off = 0;
        filer_4_on_or_off = 0;
        filer_5_on_or_off = 0;
        filer_6_on_or_off = 1;
        filer_7_on_or_off = 0;
        filer_8_on_or_off = 0;
    }
    else if (global.pack_filer_using == 8)
    {
        filer_1_on_or_off = 0;
        filer_2_on_or_off = 0;
        filer_3_on_or_off = 0;
        filer_4_on_or_off = 0;
        filer_5_on_or_off = 0;
        filer_6_on_or_off = 0;
        filer_7_on_or_off = 1;
        filer_8_on_or_off = 0;
    }
    else if (global.pack_filer_using == 9)
    {
        filer_1_on_or_off = 0;
        filer_2_on_or_off = 0;
        filer_3_on_or_off = 0;
        filer_4_on_or_off = 0;
        filer_5_on_or_off = 0;
        filer_6_on_or_off = 0;
        filer_7_on_or_off = 0;
        filer_8_on_or_off = 1;
    }
}
if (room == r_puzzle_select || room == r_uniques_select)
{
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1862, 410, 1888, 438))
    {
        if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
        {
            if (global.a_menu_overlay_is_showing == 0)
            {
                if (global.pieces_can_rotate_in_pond_0_is_on_1_is_off == 0)
                {
                    global.pond_rotation_speed_0_is1_1_is2_2_is3 = 0;
                    global.pieces_can_rotate_in_pond_0_is_on_1_is_off = 1;
                    ini_open("ppu.ini");
                    var p0x17p22 = base64_encode(string(global.pond_rotation_speed_0_is1_1_is2_2_is3));
                    ini_write_string("save", "p0x17p22", p0x17p22);
                    var p0x17p21 = base64_encode(string(global.pieces_can_rotate_in_pond_0_is_on_1_is_off));
                    ini_write_string("save", "p0x17p21", p0x17p21);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
                else if (global.pond_rotation_speed_0_is1_1_is2_2_is3 == 0)
                {
                    global.pond_rotation_speed_0_is1_1_is2_2_is3 = 1;
                    global.pieces_can_rotate_in_pond_0_is_on_1_is_off = 1;
                    ini_open("ppu.ini");
                    var p0x17p22 = base64_encode(string(global.pond_rotation_speed_0_is1_1_is2_2_is3));
                    ini_write_string("save", "p0x17p22", p0x17p22);
                    var p0x17p21 = base64_encode(string(global.pieces_can_rotate_in_pond_0_is_on_1_is_off));
                    ini_write_string("save", "p0x17p21", p0x17p21);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
                else if (global.pond_rotation_speed_0_is1_1_is2_2_is3 == 1)
                {
                    global.pond_rotation_speed_0_is1_1_is2_2_is3 = 2;
                    global.pieces_can_rotate_in_pond_0_is_on_1_is_off = 1;
                    ini_open("ppu.ini");
                    var p0x17p22 = base64_encode(string(global.pond_rotation_speed_0_is1_1_is2_2_is3));
                    ini_write_string("save", "p0x17p22", p0x17p22);
                    var p0x17p21 = base64_encode(string(global.pieces_can_rotate_in_pond_0_is_on_1_is_off));
                    ini_write_string("save", "p0x17p21", p0x17p21);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
                else if (global.pond_rotation_speed_0_is1_1_is2_2_is3 == 2)
                {
                    global.pond_rotation_speed_0_is1_1_is2_2_is3 = 0;
                    global.pieces_can_rotate_in_pond_0_is_on_1_is_off = 0;
                    ini_open("ppu.ini");
                    var p0x17p22 = base64_encode(string(global.pond_rotation_speed_0_is1_1_is2_2_is3));
                    ini_write_string("save", "p0x17p22", p0x17p22);
                    var p0x17p21 = base64_encode(string(global.pieces_can_rotate_in_pond_0_is_on_1_is_off));
                    ini_write_string("save", "p0x17p21", p0x17p21);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
            }
        }
        if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
        {
            float_rotation_arrow_scale_right = 0.95;
        }
        else
        {
            float_rotation_arrow_scale_right = 1.05;
        }
    }
    else
    {
        float_rotation_arrow_scale_right = 1;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1402, 410, 1428, 438))
    {
        if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
        {
            if (global.a_menu_overlay_is_showing == 0)
            {
                if (global.pieces_can_rotate_in_pond_0_is_on_1_is_off == 0)
                {
                    global.pond_rotation_speed_0_is1_1_is2_2_is3 = 2;
                    global.pieces_can_rotate_in_pond_0_is_on_1_is_off = 1;
                    ini_open("ppu.ini");
                    var p0x17p22 = base64_encode(string(global.pond_rotation_speed_0_is1_1_is2_2_is3));
                    ini_write_string("save", "p0x17p22", p0x17p22);
                    var p0x17p21 = base64_encode(string(global.pieces_can_rotate_in_pond_0_is_on_1_is_off));
                    ini_write_string("save", "p0x17p21", p0x17p21);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
                else if (global.pond_rotation_speed_0_is1_1_is2_2_is3 == 2)
                {
                    global.pond_rotation_speed_0_is1_1_is2_2_is3 = 1;
                    global.pieces_can_rotate_in_pond_0_is_on_1_is_off = 1;
                    ini_open("ppu.ini");
                    var p0x17p22 = base64_encode(string(global.pond_rotation_speed_0_is1_1_is2_2_is3));
                    ini_write_string("save", "p0x17p22", p0x17p22);
                    var p0x17p21 = base64_encode(string(global.pieces_can_rotate_in_pond_0_is_on_1_is_off));
                    ini_write_string("save", "p0x17p21", p0x17p21);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
                else if (global.pond_rotation_speed_0_is1_1_is2_2_is3 == 1)
                {
                    global.pond_rotation_speed_0_is1_1_is2_2_is3 = 0;
                    global.pieces_can_rotate_in_pond_0_is_on_1_is_off = 1;
                    ini_open("ppu.ini");
                    var p0x17p22 = base64_encode(string(global.pond_rotation_speed_0_is1_1_is2_2_is3));
                    ini_write_string("save", "p0x17p22", p0x17p22);
                    var p0x17p21 = base64_encode(string(global.pieces_can_rotate_in_pond_0_is_on_1_is_off));
                    ini_write_string("save", "p0x17p21", p0x17p21);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
                else if (global.pond_rotation_speed_0_is1_1_is2_2_is3 == 0)
                {
                    global.pond_rotation_speed_0_is1_1_is2_2_is3 = 0;
                    global.pieces_can_rotate_in_pond_0_is_on_1_is_off = 0;
                    ini_open("ppu.ini");
                    var p0x17p22 = base64_encode(string(global.pond_rotation_speed_0_is1_1_is2_2_is3));
                    ini_write_string("save", "p0x17p22", p0x17p22);
                    var p0x17p21 = base64_encode(string(global.pieces_can_rotate_in_pond_0_is_on_1_is_off));
                    ini_write_string("save", "p0x17p21", p0x17p21);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
            }
        }
        if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
        {
            float_rotation_arrow_scale_left_x = -0.95;
            float_rotation_arrow_scale_left_y = 0.95;
        }
        else
        {
            float_rotation_arrow_scale_left_x = -1.05;
            float_rotation_arrow_scale_left_y = 1.05;
        }
    }
    else
    {
        float_rotation_arrow_scale_left_x = -1;
        float_rotation_arrow_scale_left_y = 1;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1862, 508, 1888, 536))
    {
        if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
        {
            if (global.a_menu_overlay_is_showing == 0)
            {
                if (global.intro_fade_out_speed_0is3_1is1_2is2_3is4 == 1)
                {
                    global.intro_fade_out_speed_0is3_1is1_2is2_3is4 = 2;
                    ini_open("ppu.ini");
                    var p0x17p24 = base64_encode(string(global.intro_fade_out_speed_0is3_1is1_2is2_3is4));
                    ini_write_string("save", "p0x17p24", p0x17p24);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
                else if (global.intro_fade_out_speed_0is3_1is1_2is2_3is4 == 2)
                {
                    global.intro_fade_out_speed_0is3_1is1_2is2_3is4 = 0;
                    ini_open("ppu.ini");
                    var p0x17p24 = base64_encode(string(global.intro_fade_out_speed_0is3_1is1_2is2_3is4));
                    ini_write_string("save", "p0x17p24", p0x17p24);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
                else if (global.intro_fade_out_speed_0is3_1is1_2is2_3is4 == 0)
                {
                    global.intro_fade_out_speed_0is3_1is1_2is2_3is4 = 3;
                    ini_open("ppu.ini");
                    var p0x17p24 = base64_encode(string(global.intro_fade_out_speed_0is3_1is1_2is2_3is4));
                    ini_write_string("save", "p0x17p24", p0x17p24);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
                else if (global.intro_fade_out_speed_0is3_1is1_2is2_3is4 == 3)
                {
                    global.intro_fade_out_speed_0is3_1is1_2is2_3is4 = 1;
                    ini_open("ppu.ini");
                    var p0x17p24 = base64_encode(string(global.intro_fade_out_speed_0is3_1is1_2is2_3is4));
                    ini_write_string("save", "p0x17p24", p0x17p24);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
            }
        }
        if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
        {
            preview_fade_arrow_scale_right = 0.95;
        }
        else
        {
            preview_fade_arrow_scale_right = 1.05;
        }
    }
    else
    {
        preview_fade_arrow_scale_right = 1;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1402, 508, 1428, 536))
    {
        if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
        {
            if (global.a_menu_overlay_is_showing == 0)
            {
                if (global.intro_fade_out_speed_0is3_1is1_2is2_3is4 == 1)
                {
                    global.intro_fade_out_speed_0is3_1is1_2is2_3is4 = 3;
                    ini_open("ppu.ini");
                    var p0x17p24 = base64_encode(string(global.intro_fade_out_speed_0is3_1is1_2is2_3is4));
                    ini_write_string("save", "p0x17p24", p0x17p24);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
                else if (global.intro_fade_out_speed_0is3_1is1_2is2_3is4 == 3)
                {
                    global.intro_fade_out_speed_0is3_1is1_2is2_3is4 = 0;
                    ini_open("ppu.ini");
                    var p0x17p24 = base64_encode(string(global.intro_fade_out_speed_0is3_1is1_2is2_3is4));
                    ini_write_string("save", "p0x17p24", p0x17p24);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
                else if (global.intro_fade_out_speed_0is3_1is1_2is2_3is4 == 0)
                {
                    global.intro_fade_out_speed_0is3_1is1_2is2_3is4 = 2;
                    ini_open("ppu.ini");
                    var p0x17p24 = base64_encode(string(global.intro_fade_out_speed_0is3_1is1_2is2_3is4));
                    ini_write_string("save", "p0x17p24", p0x17p24);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
                else if (global.intro_fade_out_speed_0is3_1is1_2is2_3is4 == 2)
                {
                    global.intro_fade_out_speed_0is3_1is1_2is2_3is4 = 1;
                    ini_open("ppu.ini");
                    var p0x17p24 = base64_encode(string(global.intro_fade_out_speed_0is3_1is1_2is2_3is4));
                    ini_write_string("save", "p0x17p24", p0x17p24);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
            }
        }
        if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
        {
            preview_fade_arrow_scale_left_x = -0.95;
            preview_fade_arrow_scale_left_y = 0.95;
        }
        else
        {
            preview_fade_arrow_scale_left_x = -1.05;
            preview_fade_arrow_scale_left_y = 1.05;
        }
    }
    else
    {
        preview_fade_arrow_scale_left_x = -1;
        preview_fade_arrow_scale_left_y = 1;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1862, 459, 1888, 487))
    {
        if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
        {
            if (global.a_menu_overlay_is_showing == 0)
            {
                if (global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 == 1)
                {
                    global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 = 2;
                    ini_open("ppu.ini");
                    var p0x17p23 = base64_encode(string(global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5));
                    ini_write_string("save", "p0x17p23", p0x17p23);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
                else if (global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 == 2)
                {
                    global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 = 0;
                    ini_open("ppu.ini");
                    var p0x17p23 = base64_encode(string(global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5));
                    ini_write_string("save", "p0x17p23", p0x17p23);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
                else if (global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 == 0)
                {
                    global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 = 3;
                    ini_open("ppu.ini");
                    var p0x17p23 = base64_encode(string(global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5));
                    ini_write_string("save", "p0x17p23", p0x17p23);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
                else if (global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 == 3)
                {
                    global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 = 4;
                    ini_open("ppu.ini");
                    var p0x17p23 = base64_encode(string(global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5));
                    ini_write_string("save", "p0x17p23", p0x17p23);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
                else if (global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 == 4)
                {
                    global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 = 1;
                    ini_open("ppu.ini");
                    var p0x17p23 = base64_encode(string(global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5));
                    ini_write_string("save", "p0x17p23", p0x17p23);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
            }
        }
        if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
        {
            float_speed_arrow_scale_right = 0.95;
        }
        else
        {
            float_speed_arrow_scale_right = 1.05;
        }
    }
    else
    {
        float_speed_arrow_scale_right = 1;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1402, 459, 1428, 487))
    {
        if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
        {
            if (global.a_menu_overlay_is_showing == 0)
            {
                if (global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 == 1)
                {
                    global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 = 4;
                    ini_open("ppu.ini");
                    var p0x17p23 = base64_encode(string(global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5));
                    ini_write_string("save", "p0x17p23", p0x17p23);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
                else if (global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 == 4)
                {
                    global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 = 3;
                    ini_open("ppu.ini");
                    var p0x17p23 = base64_encode(string(global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5));
                    ini_write_string("save", "p0x17p23", p0x17p23);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
                else if (global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 == 3)
                {
                    global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 = 0;
                    ini_open("ppu.ini");
                    var p0x17p23 = base64_encode(string(global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5));
                    ini_write_string("save", "p0x17p23", p0x17p23);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
                else if (global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 == 0)
                {
                    global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 = 2;
                    ini_open("ppu.ini");
                    var p0x17p23 = base64_encode(string(global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5));
                    ini_write_string("save", "p0x17p23", p0x17p23);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
                else if (global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 == 2)
                {
                    global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 = 1;
                    ini_open("ppu.ini");
                    var p0x17p23 = base64_encode(string(global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5));
                    ini_write_string("save", "p0x17p23", p0x17p23);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
            }
        }
        if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
        {
            float_speed_arrow_scale_left_x = -0.95;
            float_speed_arrow_scale_left_y = 0.95;
        }
        else
        {
            float_speed_arrow_scale_left_x = -1.05;
            float_speed_arrow_scale_left_y = 1.05;
        }
    }
    else
    {
        float_speed_arrow_scale_left_x = -1;
        float_speed_arrow_scale_left_y = 1;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1862, 312, 1888, 340))
    {
        if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
        {
            if (global.a_menu_overlay_is_showing == 0)
            {
                if (global.image_can_be_rotated_0_is4_1_is0_2_is8 == 0)
                {
                    global.image_can_be_rotated_0_is4_1_is0_2_is8 = 2;
                    ini_open("ppu.ini");
                    var p0x17p20 = base64_encode(string(global.image_can_be_rotated_0_is4_1_is0_2_is8));
                    ini_write_string("save", "p0x17p20", p0x17p20);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
                else if (global.image_can_be_rotated_0_is4_1_is0_2_is8 == 1)
                {
                    global.image_can_be_rotated_0_is4_1_is0_2_is8 = 0;
                    ini_open("ppu.ini");
                    var p0x17p20 = base64_encode(string(global.image_can_be_rotated_0_is4_1_is0_2_is8));
                    ini_write_string("save", "p0x17p20", p0x17p20);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
                else if (global.image_can_be_rotated_0_is4_1_is0_2_is8 == 2)
                {
                    global.image_can_be_rotated_0_is4_1_is0_2_is8 = 1;
                    ini_open("ppu.ini");
                    var p0x17p20 = base64_encode(string(global.image_can_be_rotated_0_is4_1_is0_2_is8));
                    ini_write_string("save", "p0x17p20", p0x17p20);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
            }
        }
        if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
        {
            piece_rotation_arrow_scale_right = 0.95;
        }
        else
        {
            piece_rotation_arrow_scale_right = 1.05;
        }
    }
    else
    {
        piece_rotation_arrow_scale_right = 1;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1402, 312, 1428, 340))
    {
        if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
        {
            if (global.a_menu_overlay_is_showing == 0)
            {
                if (global.image_can_be_rotated_0_is4_1_is0_2_is8 == 0)
                {
                    global.image_can_be_rotated_0_is4_1_is0_2_is8 = 1;
                    ini_open("ppu.ini");
                    var p0x17p20 = base64_encode(string(global.image_can_be_rotated_0_is4_1_is0_2_is8));
                    ini_write_string("save", "p0x17p20", p0x17p20);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
                else if (global.image_can_be_rotated_0_is4_1_is0_2_is8 == 1)
                {
                    global.image_can_be_rotated_0_is4_1_is0_2_is8 = 2;
                    ini_open("ppu.ini");
                    var p0x17p20 = base64_encode(string(global.image_can_be_rotated_0_is4_1_is0_2_is8));
                    ini_write_string("save", "p0x17p20", p0x17p20);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
                else if (global.image_can_be_rotated_0_is4_1_is0_2_is8 == 2)
                {
                    global.image_can_be_rotated_0_is4_1_is0_2_is8 = 0;
                    ini_open("ppu.ini");
                    var p0x17p20 = base64_encode(string(global.image_can_be_rotated_0_is4_1_is0_2_is8));
                    ini_write_string("save", "p0x17p20", p0x17p20);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
            }
        }
        if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
        {
            piece_rotation_arrow_scale_left_x = -0.95;
            piece_rotation_arrow_scale_left_y = 0.95;
        }
        else
        {
            piece_rotation_arrow_scale_left_x = -1.05;
            piece_rotation_arrow_scale_left_y = 1.05;
        }
    }
    else
    {
        piece_rotation_arrow_scale_left_x = -1;
        piece_rotation_arrow_scale_left_y = 1;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1862, 655, 1888, 683))
    {
        if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
        {
            if (global.a_menu_overlay_is_showing == 0)
            {
                if (global.preview_image_off_or_on == 0)
                {
                    global.preview_image_off_or_on = 1;
                    ini_open("ppu.ini");
                    var p0x17p62 = base64_encode(string(global.preview_image_off_or_on));
                    ini_write_string("save", "p0x17p62", p0x17p62);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
                else
                {
                    global.preview_image_off_or_on = 0;
                    ini_open("ppu.ini");
                    var p0x17p62 = base64_encode(string(global.preview_image_off_or_on));
                    ini_write_string("save", "p0x17p62", p0x17p62);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
            }
        }
        if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
        {
            referance_fade_arrow_scale_right = 0.95;
        }
        else
        {
            referance_fade_arrow_scale_right = 1.05;
        }
    }
    else
    {
        referance_fade_arrow_scale_right = 1;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1402, 655, 1428, 683))
    {
        if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
        {
            if (global.a_menu_overlay_is_showing == 0)
            {
                if (global.preview_image_off_or_on == 0)
                {
                    global.preview_image_off_or_on = 1;
                    ini_open("ppu.ini");
                    var p0x17p62 = base64_encode(string(global.preview_image_off_or_on));
                    ini_write_string("save", "p0x17p62", p0x17p62);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
                else
                {
                    global.preview_image_off_or_on = 0;
                    ini_open("ppu.ini");
                    var p0x17p62 = base64_encode(string(global.preview_image_off_or_on));
                    ini_write_string("save", "p0x17p62", p0x17p62);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
            }
        }
        if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
        {
            referance_arrow_scale_left_x = -0.95;
            referance_fade_arrow_scale_left_y = 0.95;
        }
        else
        {
            referance_arrow_scale_left_x = -1.05;
            referance_fade_arrow_scale_left_y = 1.05;
        }
    }
    else
    {
        referance_arrow_scale_left_x = -1;
        referance_fade_arrow_scale_left_y = 1;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1862, 361, 1888, 389))
    {
        if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
        {
            if (global.a_menu_overlay_is_showing == 0)
            {
                if (global.piece_snap_amount < 4)
                {
                    global.piece_snap_amount += 1;
                    ini_open("ppu.ini");
                    var p0x17p57 = base64_encode(string(global.piece_snap_amount));
                    ini_write_string("save", "p0x17p57", p0x17p57);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
                else
                {
                    global.piece_snap_amount = 0;
                    ini_open("ppu.ini");
                    var p0x17p57 = base64_encode(string(global.piece_snap_amount));
                    ini_write_string("save", "p0x17p57", p0x17p57);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
            }
        }
        if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
        {
            piece_snap_fade_arrow_scale_right = 0.95;
        }
        else
        {
            piece_snap_fade_arrow_scale_right = 1.05;
        }
    }
    else
    {
        piece_snap_fade_arrow_scale_right = 1;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1402, 361, 1428, 389))
    {
        if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
        {
            if (global.a_menu_overlay_is_showing == 0)
            {
                if (global.piece_snap_amount > 0)
                {
                    global.piece_snap_amount -= 1;
                    ini_open("ppu.ini");
                    var p0x17p57 = base64_encode(string(global.piece_snap_amount));
                    ini_write_string("save", "p0x17p57", p0x17p57);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
                else
                {
                    global.piece_snap_amount = 4;
                    ini_open("ppu.ini");
                    var p0x17p57 = base64_encode(string(global.piece_snap_amount));
                    ini_write_string("save", "p0x17p57", p0x17p57);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
            }
        }
        if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
        {
            piece_snap_arrow_scale_left_x = -0.95;
            piece_snap_fade_arrow_scale_left_y = 0.95;
        }
        else
        {
            piece_snap_arrow_scale_left_x = -1.05;
            piece_snap_fade_arrow_scale_left_y = 1.05;
        }
    }
    else
    {
        piece_snap_arrow_scale_left_x = -1;
        piece_snap_fade_arrow_scale_left_y = 1;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1862, 557, 1888, 585))
    {
        if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
        {
            if (global.a_menu_overlay_is_showing == 0)
            {
                if (global.can_right_click_to_remove == 1)
                {
                    global.can_right_click_to_remove = 0;
                    ini_open("ppu.ini");
                    var p0x17p60 = base64_encode(string(global.can_right_click_to_remove));
                    ini_write_string("save", "p0x17p60", p0x17p60);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
                else
                {
                    global.can_right_click_to_remove = 1;
                    ini_open("ppu.ini");
                    var p0x17p60 = base64_encode(string(global.can_right_click_to_remove));
                    ini_write_string("save", "p0x17p60", p0x17p60);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
            }
        }
        if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
        {
            right_mouse_removes_fade_arrow_scale_right = 0.95;
        }
        else
        {
            right_mouse_removes_fade_arrow_scale_right = 1.05;
        }
    }
    else
    {
        right_mouse_removes_fade_arrow_scale_right = 1;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1402, 557, 1428, 585))
    {
        if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
        {
            if (global.a_menu_overlay_is_showing == 0)
            {
                if (global.can_right_click_to_remove == 1)
                {
                    global.can_right_click_to_remove = 0;
                    ini_open("ppu.ini");
                    var p0x17p60 = base64_encode(string(global.can_right_click_to_remove));
                    ini_write_string("save", "p0x17p60", p0x17p60);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
                else
                {
                    global.can_right_click_to_remove = 1;
                    ini_open("ppu.ini");
                    var p0x17p60 = base64_encode(string(global.can_right_click_to_remove));
                    ini_write_string("save", "p0x17p60", p0x17p60);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_options_arrow, 1, false);
                    }
                }
            }
        }
        if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
        {
            right_mouse_removes_arrow_scale_left_x = -0.95;
            right_mouse_removes_fade_arrow_scale_left_y = 0.95;
        }
        else
        {
            right_mouse_removes_arrow_scale_left_x = -1.05;
            right_mouse_removes_fade_arrow_scale_left_y = 1.05;
        }
    }
    else
    {
        right_mouse_removes_arrow_scale_left_x = -1;
        right_mouse_removes_fade_arrow_scale_left_y = 1;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1862, 606, 1888, 634))
    {
        if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
        {
            if (global.a_menu_overlay_is_showing == 0)
            {
                if (global.loose_piece_hilight_colour < 6)
                {
                    global.loose_piece_hilight_colour += 1;
                    ini_open("ppu.ini");
                    var p0x17p16 = base64_encode(string(global.loose_piece_hilight_colour));
                    ini_write_string("save", "p0x17p16", p0x17p16);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_level_options_arrow, 1, false);
                    }
                }
                else
                {
                    global.loose_piece_hilight_colour = 0;
                    ini_open("ppu.ini");
                    var p0x17p16 = base64_encode(string(global.loose_piece_hilight_colour));
                    ini_write_string("save", "p0x17p16", p0x17p16);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_level_options_arrow, 1, false);
                    }
                }
            }
        }
        if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
        {
            highlight_fade_arrow_scale_right = 0.95;
        }
        else
        {
            highlight_fade_arrow_scale_right = 1.05;
        }
    }
    else
    {
        highlight_fade_arrow_scale_right = 1;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1402, 606, 1428, 634))
    {
        if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
        {
            if (global.a_menu_overlay_is_showing == 0)
            {
                if (global.loose_piece_hilight_colour > 0)
                {
                    global.loose_piece_hilight_colour -= 1;
                    ini_open("ppu.ini");
                    var p0x17p16 = base64_encode(string(global.loose_piece_hilight_colour));
                    ini_write_string("save", "p0x17p16", p0x17p16);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_level_options_arrow, 1, false);
                    }
                }
                else
                {
                    global.loose_piece_hilight_colour = 6;
                    ini_open("ppu.ini");
                    var p0x17p16 = base64_encode(string(global.loose_piece_hilight_colour));
                    ini_write_string("save", "p0x17p16", p0x17p16);
                    ini_close();
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_level_options_arrow, 1, false);
                    }
                }
            }
        }
        if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
        {
            highlight_arrow_scale_left_x = -0.95;
            highlight_fade_arrow_scale_left_y = 0.95;
        }
        else
        {
            highlight_arrow_scale_left_x = -1.05;
            highlight_fade_arrow_scale_left_y = 1.05;
        }
    }
    else
    {
        highlight_arrow_scale_left_x = -1;
        highlight_fade_arrow_scale_left_y = 1;
    }
}
if (room == r_puzzle_select || room == r_uniques_select)
{
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1449, 712, 1841, 754))
    {
        theme_chooser_hover_icon_alpha = 1;
        if (mouse_check_button_pressed(mb_left) || gamepad_button_check_pressed(0, gp_face1))
        {
            if (global.a_menu_overlay_is_showing == 0)
            {
                if (global.theme_chooser_is_open == 0)
                {
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_open_theme_chooser, 1, false);
                    }
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_theme_packs_load_in, 1, false);
                    }
                    global.theme_chooser_is_open = 1;
                    theme_pack_list = ds_list_create();
                    ds_list_add(theme_pack_list, 1, 2, 3, 4, 5, 7);
                    if (steam_get_achievement("kiosktheme2"))
                    {
                        ds_list_add(theme_pack_list, 6);
                    }
                    if (steam_get_achievement("kiosktheme1"))
                    {
                        ds_list_add(theme_pack_list, 8);
                    }
                    if (steam_get_achievement("kiosktheme3"))
                    {
                        ds_list_add(theme_pack_list, 9);
                    }
                    if (steam_get_achievement("kiosktheme4"))
                    {
                        ds_list_add(theme_pack_list, 10);
                    }
                    ds_list_shuffle(theme_pack_list);
                    theme_pack_list_current_number = ds_list_size(theme_pack_list) - 1;
                    theme_pack_button_1 = instance_create(global.theme_button_1_x, global.theme_button_1_y, ob_theme_chooser_buttons);
                    theme_pack_button_1.button_x_plus_amount = 0;
                    theme_pack_button_1.button_y_plus_amount = 0;
                    theme_pack_button_1.image_alpha = 0;
                    theme_pack_button_1.alarm[3] = 1;
                    theme_pack_button_1.mask_index = sp_menu_theme_choose_base;
                    if (theme_pack_list_current_number > -1)
                    {
                        theme_pack_button_1.theme_pack = ds_list_find_value(theme_pack_list, theme_pack_list_current_number);
                        theme_pack_list_current_number -= 1;
                    }
                    else
                    {
                        theme_pack_button_1.theme_pack = 0;
                    }
                    theme_pack_button_2 = instance_create(global.theme_button_1_x + 310, global.theme_button_1_y, ob_theme_chooser_buttons);
                    theme_pack_button_2.button_x_plus_amount = 310;
                    theme_pack_button_2.button_y_plus_amount = 0;
                    theme_pack_button_2.image_alpha = 0;
                    theme_pack_button_2.alarm[3] = 1;
                    theme_pack_button_2.mask_index = sp_menu_theme_choose_base;
                    if (theme_pack_list_current_number > -1)
                    {
                        theme_pack_button_2.theme_pack = ds_list_find_value(theme_pack_list, theme_pack_list_current_number);
                        theme_pack_list_current_number -= 1;
                    }
                    else
                    {
                        theme_pack_button_2.theme_pack = 0;
                    }
                    theme_pack_button_3 = instance_create(global.theme_button_1_x + 620, global.theme_button_1_y, ob_theme_chooser_buttons);
                    theme_pack_button_3.button_x_plus_amount = 620;
                    theme_pack_button_3.button_y_plus_amount = 0;
                    theme_pack_button_3.image_alpha = 0;
                    theme_pack_button_3.alarm[3] = 1;
                    theme_pack_button_3.mask_index = sp_menu_theme_choose_base;
                    if (theme_pack_list_current_number > -1)
                    {
                        theme_pack_button_3.theme_pack = ds_list_find_value(theme_pack_list, theme_pack_list_current_number);
                        theme_pack_list_current_number -= 1;
                    }
                    else
                    {
                        theme_pack_button_3.theme_pack = 0;
                    }
                    theme_pack_button_4 = instance_create(global.theme_button_1_x, global.theme_button_1_y + 230, ob_theme_chooser_buttons);
                    theme_pack_button_4.button_x_plus_amount = 0;
                    theme_pack_button_4.button_y_plus_amount = 230;
                    theme_pack_button_4.image_alpha = 0;
                    theme_pack_button_4.alarm[3] = 1;
                    theme_pack_button_4.mask_index = sp_menu_theme_choose_base;
                    if (theme_pack_list_current_number > -1)
                    {
                        theme_pack_button_4.theme_pack = ds_list_find_value(theme_pack_list, theme_pack_list_current_number);
                        theme_pack_list_current_number -= 1;
                    }
                    else
                    {
                        theme_pack_button_4.theme_pack = 0;
                    }
                    theme_pack_button_5 = instance_create(global.theme_button_1_x + 310, global.theme_button_1_y + 230, ob_theme_chooser_buttons);
                    theme_pack_button_5.button_x_plus_amount = 310;
                    theme_pack_button_5.button_y_plus_amount = 230;
                    theme_pack_button_5.image_alpha = 0;
                    theme_pack_button_5.alarm[3] = 1;
                    theme_pack_button_5.mask_index = sp_menu_theme_choose_base;
                    if (theme_pack_list_current_number > -1)
                    {
                        theme_pack_button_5.theme_pack = ds_list_find_value(theme_pack_list, theme_pack_list_current_number);
                        theme_pack_list_current_number -= 1;
                    }
                    else
                    {
                        theme_pack_button_5.theme_pack = 0;
                    }
                    theme_pack_button_6 = instance_create(global.theme_button_1_x + 620, global.theme_button_1_y + 230, ob_theme_chooser_buttons);
                    theme_pack_button_6.button_x_plus_amount = 620;
                    theme_pack_button_6.button_y_plus_amount = 230;
                    theme_pack_button_6.image_alpha = 0;
                    theme_pack_button_6.alarm[3] = 1;
                    theme_pack_button_6.mask_index = sp_menu_theme_choose_base;
                    if (theme_pack_list_current_number > -1)
                    {
                        theme_pack_button_6.theme_pack = ds_list_find_value(theme_pack_list, theme_pack_list_current_number);
                        theme_pack_list_current_number -= 1;
                    }
                    else
                    {
                        theme_pack_button_6.theme_pack = 0;
                    }
                    theme_pack_button_7 = instance_create(global.theme_button_1_x, global.theme_button_1_y + 460, ob_theme_chooser_buttons);
                    theme_pack_button_7.button_x_plus_amount = 0;
                    theme_pack_button_7.button_y_plus_amount = 460;
                    theme_pack_button_7.image_alpha = 0;
                    theme_pack_button_7.alarm[3] = 1;
                    theme_pack_button_7.mask_index = sp_menu_theme_choose_base;
                    if (theme_pack_list_current_number > -1)
                    {
                        theme_pack_button_7.theme_pack = ds_list_find_value(theme_pack_list, theme_pack_list_current_number);
                        theme_pack_list_current_number -= 1;
                    }
                    else
                    {
                        theme_pack_button_7.theme_pack = 0;
                    }
                    theme_pack_button_8 = instance_create(global.theme_button_1_x + 310, global.theme_button_1_y + 460, ob_theme_chooser_buttons);
                    theme_pack_button_8.button_x_plus_amount = 310;
                    theme_pack_button_8.button_y_plus_amount = 460;
                    theme_pack_button_8.image_alpha = 0;
                    theme_pack_button_8.alarm[3] = 1;
                    theme_pack_button_8.mask_index = sp_menu_theme_choose_base;
                    if (theme_pack_list_current_number > -1)
                    {
                        theme_pack_button_8.theme_pack = ds_list_find_value(theme_pack_list, theme_pack_list_current_number);
                        theme_pack_list_current_number -= 1;
                    }
                    else
                    {
                        theme_pack_button_8.theme_pack = 0;
                    }
                    theme_pack_button_9 = instance_create(global.theme_button_1_x + 620, global.theme_button_1_y + 460, ob_theme_chooser_buttons);
                    theme_pack_button_9.button_x_plus_amount = 620;
                    theme_pack_button_9.button_y_plus_amount = 460;
                    theme_pack_button_9.image_alpha = 0;
                    theme_pack_button_9.alarm[3] = 1;
                    theme_pack_button_9.mask_index = sp_menu_theme_choose_base;
                    if (theme_pack_list_current_number > -1)
                    {
                        theme_pack_button_9.theme_pack = ds_list_find_value(theme_pack_list, theme_pack_list_current_number);
                        theme_pack_list_current_number -= 1;
                    }
                    else
                    {
                        theme_pack_button_9.theme_pack = 0;
                    }
                    theme_pack_button_10 = instance_create(global.theme_button_1_x, global.theme_button_1_y + 690, ob_theme_chooser_buttons);
                    theme_pack_button_10.button_x_plus_amount = 0;
                    theme_pack_button_10.button_y_plus_amount = 690;
                    theme_pack_button_10.image_alpha = 0;
                    theme_pack_button_10.alarm[3] = 1;
                    theme_pack_button_10.mask_index = sp_menu_theme_choose_base;
                    if (theme_pack_list_current_number > -1)
                    {
                        theme_pack_button_10.theme_pack = ds_list_find_value(theme_pack_list, theme_pack_list_current_number);
                        theme_pack_list_current_number -= 1;
                    }
                    else
                    {
                        theme_pack_button_10.theme_pack = 0;
                    }
                    theme_pack_button_11 = instance_create(global.theme_button_1_x + 310, global.theme_button_1_y + 690, ob_theme_chooser_buttons);
                    theme_pack_button_11.button_x_plus_amount = 310;
                    theme_pack_button_11.button_y_plus_amount = 690;
                    theme_pack_button_11.image_alpha = 0;
                    theme_pack_button_11.alarm[3] = 1;
                    theme_pack_button_11.mask_index = sp_menu_theme_choose_base;
                    if (theme_pack_list_current_number > -1)
                    {
                        theme_pack_button_11.theme_pack = ds_list_find_value(theme_pack_list, theme_pack_list_current_number);
                        theme_pack_list_current_number -= 1;
                    }
                    else
                    {
                        theme_pack_button_11.theme_pack = 0;
                    }
                    theme_pack_button_12 = instance_create(global.theme_button_1_x + 620, global.theme_button_1_y + 690, ob_theme_chooser_buttons);
                    theme_pack_button_12.button_x_plus_amount = 620;
                    theme_pack_button_12.button_y_plus_amount = 690;
                    theme_pack_button_12.image_alpha = 0;
                    theme_pack_button_12.alarm[3] = 1;
                    theme_pack_button_12.mask_index = sp_menu_theme_choose_base;
                    if (theme_pack_list_current_number > -1)
                    {
                        theme_pack_button_12.theme_pack = ds_list_find_value(theme_pack_list, theme_pack_list_current_number);
                        theme_pack_list_current_number -= 1;
                    }
                    else
                    {
                        theme_pack_button_12.theme_pack = 0;
                    }
                    ds_list_destroy(theme_pack_list);
                }
                else
                {
                    global.theme_chooser_is_open = 0;
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(s_ui_x_button, 1, false);
                    }
                    audio_stop_sound(global.sound_puzzles_load_in);
                    audio_stop_sound(global.sound_puzzle_packs_load_in);
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_puzzle_packs_load_in, 1, false);
                    }
                    if (instance_exists(ob_puzzle_button))
                    {
                        ob_puzzle_button.alarm[2] = 1;
                        ob_puzzle_button.image_alpha = 0;
                    }
                }
            }
        }
    }
    else
    {
        theme_chooser_hover_icon_alpha = 0;
    }
}
