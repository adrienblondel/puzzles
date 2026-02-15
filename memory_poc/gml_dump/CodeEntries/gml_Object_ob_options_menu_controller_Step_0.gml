if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 422, 397, 448, 425))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.config_game_fullscreen_0_is_on == 1)
            {
                global.config_game_fullscreen_0_is_on = 0;
                ini_open("ppu.ini");
                var p0x17p26 = base64_encode(string(global.config_game_fullscreen_0_is_on));
                ini_write_string("save", "p0x17p26", p0x17p26);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                window_set_fullscreen(true);
                alarm[0] = 1;
            }
            else
            {
                global.config_game_fullscreen_0_is_on = 1;
                ini_open("ppu.ini");
                var p0x17p26 = base64_encode(string(global.config_game_fullscreen_0_is_on));
                ini_write_string("save", "p0x17p26", p0x17p26);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                window_set_fullscreen(false);
                alarm[0] = 1;
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        fullscreen_scale_right = 0.95;
    }
    else
    {
        fullscreen_scale_right = 1.05;
    }
}
else
{
    fullscreen_scale_right = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 23, 397, 49, 425))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.config_game_fullscreen_0_is_on == 1)
            {
                global.config_game_fullscreen_0_is_on = 0;
                ini_open("ppu.ini");
                var p0x17p26 = base64_encode(string(global.config_game_fullscreen_0_is_on));
                ini_write_string("save", "p0x17p26", p0x17p26);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                window_set_fullscreen(true);
                alarm[0] = 1;
            }
            else
            {
                global.config_game_fullscreen_0_is_on = 1;
                ini_open("ppu.ini");
                var p0x17p26 = base64_encode(string(global.config_game_fullscreen_0_is_on));
                ini_write_string("save", "p0x17p26", p0x17p26);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                window_set_fullscreen(false);
                alarm[0] = 1;
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        fullscreen_x_scale_left = -0.95;
        fullscreen_y_scale_left = 0.95;
    }
    else
    {
        fullscreen_x_scale_left = -1.05;
        fullscreen_y_scale_left = 1.05;
    }
}
else
{
    fullscreen_x_scale_left = -1;
    fullscreen_y_scale_left = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 422, 489, 448, 517))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.config_resolution == 1)
            {
                global.config_resolution = 2;
                ini_open("ppu.ini");
                var p0x17p27 = base64_encode(string(global.config_resolution));
                ini_write_string("save", "p0x17p27", p0x17p27);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                alarm[0] = 1;
            }
            else if (global.config_resolution == 2)
            {
                global.config_resolution = 3;
                ini_open("ppu.ini");
                var p0x17p27 = base64_encode(string(global.config_resolution));
                ini_write_string("save", "p0x17p27", p0x17p27);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                alarm[0] = 1;
            }
            else if (global.config_resolution == 3)
            {
                global.config_resolution = 4;
                ini_open("ppu.ini");
                var p0x17p27 = base64_encode(string(global.config_resolution));
                ini_write_string("save", "p0x17p27", p0x17p27);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                alarm[0] = 1;
            }
            else if (global.config_resolution == 4)
            {
                global.config_resolution = 5;
                ini_open("ppu.ini");
                var p0x17p27 = base64_encode(string(global.config_resolution));
                ini_write_string("save", "p0x17p27", p0x17p27);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                alarm[0] = 1;
            }
            else if (global.config_resolution == 5)
            {
                global.config_resolution = 6;
                ini_open("ppu.ini");
                var p0x17p27 = base64_encode(string(global.config_resolution));
                ini_write_string("save", "p0x17p27", p0x17p27);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                alarm[0] = 1;
            }
            else if (global.config_resolution == 6)
            {
                global.config_resolution = 7;
                ini_open("ppu.ini");
                var p0x17p27 = base64_encode(string(global.config_resolution));
                ini_write_string("save", "p0x17p27", p0x17p27);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                alarm[0] = 1;
            }
            else if (global.config_resolution == 7)
            {
                global.config_resolution = 8;
                ini_open("ppu.ini");
                var p0x17p27 = base64_encode(string(global.config_resolution));
                ini_write_string("save", "p0x17p27", p0x17p27);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                alarm[0] = 1;
            }
            else if (global.config_resolution == 8)
            {
                global.config_resolution = 9;
                ini_open("ppu.ini");
                var p0x17p27 = base64_encode(string(global.config_resolution));
                ini_write_string("save", "p0x17p27", p0x17p27);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                alarm[0] = 1;
            }
            else if (global.config_resolution == 9)
            {
                global.config_resolution = 10;
                ini_open("ppu.ini");
                var p0x17p27 = base64_encode(string(global.config_resolution));
                ini_write_string("save", "p0x17p27", p0x17p27);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                alarm[0] = 1;
            }
            else if (global.config_resolution == 10)
            {
                global.config_resolution = 11;
                ini_open("ppu.ini");
                var p0x17p27 = base64_encode(string(global.config_resolution));
                ini_write_string("save", "p0x17p27", p0x17p27);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                alarm[0] = 1;
            }
            else if (global.config_resolution == 11)
            {
                global.config_resolution = 0;
                ini_open("ppu.ini");
                var p0x17p27 = base64_encode(string(global.config_resolution));
                ini_write_string("save", "p0x17p27", p0x17p27);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                alarm[0] = 1;
            }
            else
            {
                global.config_resolution = 1;
                ini_open("ppu.ini");
                var p0x17p27 = base64_encode(string(global.config_resolution));
                ini_write_string("save", "p0x17p27", p0x17p27);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                alarm[0] = 1;
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        resolution_scale_right = 0.95;
    }
    else
    {
        resolution_scale_right = 1.05;
    }
}
else
{
    resolution_scale_right = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 23, 489, 49, 517))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.config_resolution == 1)
            {
                global.config_resolution = 0;
                ini_open("ppu.ini");
                var p0x17p27 = base64_encode(string(global.config_resolution));
                ini_write_string("save", "p0x17p27", p0x17p27);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                alarm[0] = 1;
            }
            else if (global.config_resolution == 2)
            {
                global.config_resolution = 1;
                ini_open("ppu.ini");
                var p0x17p27 = base64_encode(string(global.config_resolution));
                ini_write_string("save", "p0x17p27", p0x17p27);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                alarm[0] = 1;
            }
            else if (global.config_resolution == 3)
            {
                global.config_resolution = 2;
                ini_open("ppu.ini");
                var p0x17p27 = base64_encode(string(global.config_resolution));
                ini_write_string("save", "p0x17p27", p0x17p27);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                alarm[0] = 1;
            }
            else if (global.config_resolution == 4)
            {
                global.config_resolution = 3;
                ini_open("ppu.ini");
                var p0x17p27 = base64_encode(string(global.config_resolution));
                ini_write_string("save", "p0x17p27", p0x17p27);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                alarm[0] = 1;
            }
            else if (global.config_resolution == 5)
            {
                global.config_resolution = 4;
                ini_open("ppu.ini");
                var p0x17p27 = base64_encode(string(global.config_resolution));
                ini_write_string("save", "p0x17p27", p0x17p27);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                alarm[0] = 1;
            }
            else if (global.config_resolution == 6)
            {
                global.config_resolution = 5;
                ini_open("ppu.ini");
                var p0x17p27 = base64_encode(string(global.config_resolution));
                ini_write_string("save", "p0x17p27", p0x17p27);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                alarm[0] = 1;
            }
            else if (global.config_resolution == 7)
            {
                global.config_resolution = 6;
                ini_open("ppu.ini");
                var p0x17p27 = base64_encode(string(global.config_resolution));
                ini_write_string("save", "p0x17p27", p0x17p27);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                alarm[0] = 1;
            }
            else if (global.config_resolution == 8)
            {
                global.config_resolution = 7;
                ini_open("ppu.ini");
                var p0x17p27 = base64_encode(string(global.config_resolution));
                ini_write_string("save", "p0x17p27", p0x17p27);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                alarm[0] = 1;
            }
            else if (global.config_resolution == 9)
            {
                global.config_resolution = 8;
                ini_open("ppu.ini");
                var p0x17p27 = base64_encode(string(global.config_resolution));
                ini_write_string("save", "p0x17p27", p0x17p27);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                alarm[0] = 1;
            }
            else if (global.config_resolution == 10)
            {
                global.config_resolution = 9;
                ini_open("ppu.ini");
                var p0x17p27 = base64_encode(string(global.config_resolution));
                ini_write_string("save", "p0x17p27", p0x17p27);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                alarm[0] = 1;
            }
            else if (global.config_resolution == 11)
            {
                global.config_resolution = 10;
                ini_open("ppu.ini");
                var p0x17p27 = base64_encode(string(global.config_resolution));
                ini_write_string("save", "p0x17p27", p0x17p27);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                alarm[0] = 1;
            }
            else
            {
                global.config_resolution = 11;
                ini_open("ppu.ini");
                var p0x17p27 = base64_encode(string(global.config_resolution));
                ini_write_string("save", "p0x17p27", p0x17p27);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                alarm[0] = 1;
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        resolution_x_scale_left = -0.95;
        resolution_y_scale_left = 0.95;
    }
    else
    {
        resolution_x_scale_left = -1.05;
        resolution_y_scale_left = 1.05;
    }
}
else
{
    resolution_x_scale_left = -1;
    resolution_y_scale_left = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 422, 581, 448, 609))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.config_game_v_sync == 1)
            {
                global.config_game_v_sync = 0;
                ini_open("ppu.ini");
                var p0x17p28 = base64_encode(string(global.config_game_v_sync));
                ini_write_string("save", "p0x17p28", p0x17p28);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                if (global.config_game_aa_0is3_1is1_2is2_3is0 == 1)
                {
                    display_reset(2, 0);
                }
                else if (global.config_game_aa_0is3_1is1_2is2_3is0 == 2)
                {
                    display_reset(4, 0);
                }
                else if (global.config_game_aa_0is3_1is1_2is2_3is0 == 3)
                {
                    display_reset(0, 0);
                }
                else
                {
                    display_reset(8, 0);
                }
                alarm[0] = 1;
            }
            else
            {
                global.config_game_v_sync = 1;
                ini_open("ppu.ini");
                var p0x17p28 = base64_encode(string(global.config_game_v_sync));
                ini_write_string("save", "p0x17p28", p0x17p28);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                if (global.config_game_aa_0is3_1is1_2is2_3is0 == 1)
                {
                    display_reset(2, 1);
                }
                else if (global.config_game_aa_0is3_1is1_2is2_3is0 == 2)
                {
                    display_reset(4, 1);
                }
                else if (global.config_game_aa_0is3_1is1_2is2_3is0 == 3)
                {
                    display_reset(0, 1);
                }
                else
                {
                    display_reset(8, 1);
                }
                alarm[0] = 1;
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        vsync_scale_right = 0.95;
    }
    else
    {
        vsync_scale_right = 1.05;
    }
}
else
{
    vsync_scale_right = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 23, 581, 49, 609))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.config_game_v_sync == 1)
            {
                global.config_game_v_sync = 0;
                ini_open("ppu.ini");
                var p0x17p28 = base64_encode(string(global.config_game_v_sync));
                ini_write_string("save", "p0x17p28", p0x17p28);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                if (global.config_game_aa_0is3_1is1_2is2_3is0 == 1)
                {
                    display_reset(2, 0);
                }
                else if (global.config_game_aa_0is3_1is1_2is2_3is0 == 2)
                {
                    display_reset(4, 0);
                }
                else if (global.config_game_aa_0is3_1is1_2is2_3is0 == 3)
                {
                    display_reset(0, 0);
                }
                else
                {
                    display_reset(8, 0);
                }
                alarm[0] = 1;
            }
            else
            {
                global.config_game_v_sync = 1;
                ini_open("ppu.ini");
                var p0x17p28 = base64_encode(string(global.config_game_v_sync));
                ini_write_string("save", "p0x17p28", p0x17p28);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                if (global.config_game_aa_0is3_1is1_2is2_3is0 == 1)
                {
                    display_reset(2, 1);
                }
                else if (global.config_game_aa_0is3_1is1_2is2_3is0 == 2)
                {
                    display_reset(4, 1);
                }
                else if (global.config_game_aa_0is3_1is1_2is2_3is0 == 3)
                {
                    display_reset(0, 1);
                }
                else
                {
                    display_reset(8, 1);
                }
                alarm[0] = 1;
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        vsync_x_scale_left = -0.95;
        vsync_y_scale_left = 0.95;
    }
    else
    {
        vsync_x_scale_left = -1.05;
        vsync_y_scale_left = 1.05;
    }
}
else
{
    vsync_x_scale_left = -1;
    vsync_y_scale_left = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 422, 673, 448, 701))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.config_game_aa_0is3_1is1_2is2_3is0 == 1)
            {
                global.config_game_aa_0is3_1is1_2is2_3is0 = 2;
                ini_open("ppu.ini");
                var p0x17p29 = base64_encode(string(global.config_game_aa_0is3_1is1_2is2_3is0));
                ini_write_string("save", "p0x17p29", p0x17p29);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                if (global.config_game_v_sync == 1)
                {
                    display_reset(4, 1);
                }
                else
                {
                    display_reset(4, 0);
                }
                alarm[0] = 1;
            }
            else if (global.config_game_aa_0is3_1is1_2is2_3is0 == 2)
            {
                global.config_game_aa_0is3_1is1_2is2_3is0 = 0;
                ini_open("ppu.ini");
                var p0x17p29 = base64_encode(string(global.config_game_aa_0is3_1is1_2is2_3is0));
                ini_write_string("save", "p0x17p29", p0x17p29);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                if (global.config_game_v_sync == 1)
                {
                    display_reset(8, 1);
                }
                else
                {
                    display_reset(8, 0);
                }
                alarm[0] = 1;
            }
            else if (global.config_game_aa_0is3_1is1_2is2_3is0 == 3)
            {
                global.config_game_aa_0is3_1is1_2is2_3is0 = 1;
                ini_open("ppu.ini");
                var p0x17p29 = base64_encode(string(global.config_game_aa_0is3_1is1_2is2_3is0));
                ini_write_string("save", "p0x17p29", p0x17p29);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                if (global.config_game_v_sync == 1)
                {
                    display_reset(2, 1);
                }
                else
                {
                    display_reset(2, 0);
                }
                alarm[0] = 1;
            }
            else
            {
                global.config_game_aa_0is3_1is1_2is2_3is0 = 3;
                ini_open("ppu.ini");
                var p0x17p29 = base64_encode(string(global.config_game_aa_0is3_1is1_2is2_3is0));
                ini_write_string("save", "p0x17p29", p0x17p29);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                if (global.config_game_v_sync == 1)
                {
                    display_reset(0, 1);
                }
                else
                {
                    display_reset(0, 0);
                }
                alarm[0] = 1;
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        anti_aliasing_scale_right = 0.95;
    }
    else
    {
        anti_aliasing_scale_right = 1.05;
    }
}
else
{
    anti_aliasing_scale_right = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 23, 673, 49, 701))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.config_game_aa_0is3_1is1_2is2_3is0 == 1)
            {
                global.config_game_aa_0is3_1is1_2is2_3is0 = 3;
                ini_open("ppu.ini");
                var p0x17p29 = base64_encode(string(global.config_game_aa_0is3_1is1_2is2_3is0));
                ini_write_string("save", "p0x17p29", p0x17p29);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                if (global.config_game_v_sync == 1)
                {
                    display_reset(0, 1);
                }
                else
                {
                    display_reset(0, 0);
                }
                alarm[0] = 1;
            }
            else if (global.config_game_aa_0is3_1is1_2is2_3is0 == 2)
            {
                global.config_game_aa_0is3_1is1_2is2_3is0 = 1;
                ini_open("ppu.ini");
                var p0x17p29 = base64_encode(string(global.config_game_aa_0is3_1is1_2is2_3is0));
                ini_write_string("save", "p0x17p29", p0x17p29);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                if (global.config_game_v_sync == 1)
                {
                    display_reset(2, 1);
                }
                else
                {
                    display_reset(2, 0);
                }
                alarm[0] = 1;
            }
            else if (global.config_game_aa_0is3_1is1_2is2_3is0 == 3)
            {
                global.config_game_aa_0is3_1is1_2is2_3is0 = 0;
                ini_open("ppu.ini");
                var p0x17p29 = base64_encode(string(global.config_game_aa_0is3_1is1_2is2_3is0));
                ini_write_string("save", "p0x17p29", p0x17p29);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                if (global.config_game_v_sync == 1)
                {
                    display_reset(8, 1);
                }
                else
                {
                    display_reset(8, 0);
                }
                alarm[0] = 1;
            }
            else
            {
                global.config_game_aa_0is3_1is1_2is2_3is0 = 2;
                ini_open("ppu.ini");
                var p0x17p29 = base64_encode(string(global.config_game_aa_0is3_1is1_2is2_3is0));
                ini_write_string("save", "p0x17p29", p0x17p29);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                if (global.config_game_v_sync == 1)
                {
                    display_reset(4, 1);
                }
                else
                {
                    display_reset(4, 0);
                }
                alarm[0] = 1;
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        anti_aliasing_x_scale_left = -0.95;
        anti_aliasing_y_scale_left = 0.95;
    }
    else
    {
        anti_aliasing_x_scale_left = -1.05;
        anti_aliasing_y_scale_left = 1.05;
    }
}
else
{
    anti_aliasing_x_scale_left = -1;
    anti_aliasing_y_scale_left = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 422, 765, 448, 793))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.config_game_texture_filtering_0_is_on == 1)
            {
                global.config_game_texture_filtering_0_is_on = 0;
                ini_open("ppu.ini");
                var p0x17p30 = base64_encode(string(global.config_game_texture_filtering_0_is_on));
                ini_write_string("save", "p0x17p30", p0x17p30);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                texture_set_interpolation(true);
            }
            else
            {
                global.config_game_texture_filtering_0_is_on = 1;
                ini_open("ppu.ini");
                var p0x17p30 = base64_encode(string(global.config_game_texture_filtering_0_is_on));
                ini_write_string("save", "p0x17p30", p0x17p30);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                texture_set_interpolation(false);
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        texture_filtering_scale_right = 0.95;
    }
    else
    {
        texture_filtering_scale_right = 1.05;
    }
}
else
{
    texture_filtering_scale_right = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 23, 765, 49, 793))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.config_game_texture_filtering_0_is_on == 1)
            {
                global.config_game_texture_filtering_0_is_on = 0;
                ini_open("ppu.ini");
                var p0x17p30 = base64_encode(string(global.config_game_texture_filtering_0_is_on));
                ini_write_string("save", "p0x17p30", p0x17p30);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                texture_set_interpolation(true);
            }
            else
            {
                global.config_game_texture_filtering_0_is_on = 1;
                ini_open("ppu.ini");
                var p0x17p30 = base64_encode(string(global.config_game_texture_filtering_0_is_on));
                ini_write_string("save", "p0x17p30", p0x17p30);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                texture_set_interpolation(false);
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        texture_filtering_x_scale_left = -0.95;
        texture_filtering_y_scale_left = 0.95;
    }
    else
    {
        texture_filtering_x_scale_left = -1.05;
        texture_filtering_y_scale_left = 1.05;
    }
}
else
{
    texture_filtering_x_scale_left = -1;
    texture_filtering_y_scale_left = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 422, 857, 448, 885))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.config_complex_shaders_0_is_on == 1)
            {
                global.config_complex_shaders_0_is_on = 0;
                ini_open("ppu.ini");
                var p0x17p44 = base64_encode(string(global.config_complex_shaders_0_is_on));
                ini_write_string("save", "p0x17p44", p0x17p44);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else
            {
                global.config_complex_shaders_0_is_on = 1;
                ini_open("ppu.ini");
                var p0x17p44 = base64_encode(string(global.config_complex_shaders_0_is_on));
                ini_write_string("save", "p0x17p44", p0x17p44);
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
        complex_shaders_scale_right = 0.95;
    }
    else
    {
        complex_shaders_scale_right = 1.05;
    }
}
else
{
    complex_shaders_scale_right = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 23, 857, 49, 885))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.config_complex_shaders_0_is_on == 1)
            {
                global.config_complex_shaders_0_is_on = 0;
                ini_open("ppu.ini");
                var p0x17p44 = base64_encode(string(global.config_complex_shaders_0_is_on));
                ini_write_string("save", "p0x17p44", p0x17p44);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else
            {
                global.config_complex_shaders_0_is_on = 1;
                ini_open("ppu.ini");
                var p0x17p44 = base64_encode(string(global.config_complex_shaders_0_is_on));
                ini_write_string("save", "p0x17p44", p0x17p44);
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
        complex_shaders_x_scale_left = -0.95;
        complex_shaders_y_scale_left = 0.95;
    }
    else
    {
        complex_shaders_x_scale_left = -1.05;
        complex_shaders_y_scale_left = 1.05;
    }
}
else
{
    complex_shaders_x_scale_left = -1;
    complex_shaders_y_scale_left = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 71, 1026, 400, 1068))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            ini_open("ppu.ini");
            global.config_game_fullscreen_0_is_on = 0;
            global.config_resolution = 0;
            global.config_game_v_sync = 0;
            global.config_game_aa_0is3_1is1_2is2_3is0 = 0;
            global.config_game_texture_filtering_0_is_on = 0;
            global.config_complex_shaders_0_is_on = 0;
            var p0x17p26 = base64_encode(string(global.config_game_fullscreen_0_is_on));
            ini_write_string("save", "p0x17p26", p0x17p26);
            var p0x17p27 = base64_encode(string(global.config_resolution));
            ini_write_string("save", "p0x17p27", p0x17p27);
            var p0x17p28 = base64_encode(string(global.config_game_v_sync));
            ini_write_string("save", "p0x17p28", p0x17p28);
            var p0x17p29 = base64_encode(string(global.config_game_aa_0is3_1is1_2is2_3is0));
            ini_write_string("save", "p0x17p29", p0x17p29);
            var p0x17p30 = base64_encode(string(global.config_game_texture_filtering_0_is_on));
            ini_write_string("save", "p0x17p30", p0x17p30);
            var p0x17p44 = base64_encode(string(global.config_complex_shaders_0_is_on));
            ini_write_string("save", "p0x17p44", p0x17p44);
            ini_close();
            display_reset(8, 0);
            texture_set_interpolation(true);
            window_set_fullscreen(true);
            alarm[0] = 1;
            if (global.audio_menu_effects_0_is_on == 0)
            {
                audio_play_sound(global.sound_option_reset_default, 1, false);
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        video_defaults_button_scale = 0.985;
    }
    else
    {
        video_defaults_button_scale = 1.015;
    }
}
else
{
    video_defaults_button_scale = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1488, 390, 1879, 432))
{
    trade_for_hints_hover_icon_alpha = 1;
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            global.a_menu_overlay_is_showing = 1;
            game_data_delet_overlay_showing = 1;
            if (global.audio_menu_effects_0_is_on == 0)
            {
                audio_play_sound(global.sound_option_open_overlay, 1, false);
            }
        }
    }
}
else
{
    trade_for_hints_hover_icon_alpha = 0;
}
if (keyboard_check_pressed(vk_anykey))
{
    if (game_data_delet_overlay_showing == 1)
    {
        if (global.audio_menu_effects_0_is_on == 0)
        {
            audio_play_sound(global.sound_menu_overlay_close, 1, false);
        }
        global.a_menu_overlay_is_showing = 0;
        game_data_delet_overlay_showing = 0;
    }
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 778, 471, 1142, 529))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 1)
        {
            if (game_data_delet_overlay_showing == 1)
            {
                global.a_menu_overlay_is_showing = 0;
                game_data_delet_overlay_showing = 0;
                ini_open("ppu.ini");
                ini_section_delete("save");
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_delete_data_button, 1, false);
                }
                ghost_hint_can_set_hotkey = 0;
                angle_hint_can_set_hotkey = 0;
                location_hint_can_set_hotkey = 0;
                clear_board_can_set_hotkey = 0;
                shuffle_pieces_can_set_hotkey = 0;
                board_colour_can_set_hotkey = 0;
                piece_hilight_can_set_hotkey = 0;
                zoom_can_set_hotkey = 0;
                info_display_can_set_hotkey = 0;
                show_hotkeys_can_set_hotkey = 0;
                global.hotkey_for_ghost_hint = 0;
                global.hotkey_for_angle_hint = 0;
                global.hotkey_for_location_hint = 0;
                global.hotkey_for_clear_board = 0;
                global.hotkey_for_shuffle_pieces = 0;
                global.hotkey_for_board_colour = 0;
                global.hotkey_for_piece_hilight = 0;
                global.hotkey_for_zoom = 0;
                global.hotkey_for_info_display = 0;
                global.hotkey_for_show_hotkeys = 0;
                global.hotkey_for_ghost_hint = 71;
                global.hotkey_for_angle_hint = 65;
                global.hotkey_for_location_hint = 76;
                global.hotkey_for_clear_board = 82;
                global.hotkey_for_shuffle_pieces = 83;
                global.hotkey_for_board_colour = 67;
                global.hotkey_for_piece_hilight = 72;
                global.hotkey_for_zoom = 90;
                global.hotkey_for_info_display = 9;
                global.hotkey_for_show_hotkeys = 73;
                if (instance_exists(ob_tooltips_controller))
                {
                    ob_tooltips_controller.alarm[1] = 1;
                }
                global.actual_volume_level = 1;
                global.volume_level_0_is_full = 0;
                audio_master_gain(global.actual_volume_level);
                global.actual_effects_volume_level = 1;
                global.effects_volume_level_0_is_full = 0;
                global.actual_music_volume_level = 1;
                global.music_volume_level_0_is_full = 0;
                global.actual_ambiance_volume_level = 1;
                global.ambiance_volume_level_0_is_full = 0;
                ob_audio_controller.alarm[2] = 1;
                global.audio_menu_effects_0_is_on = 0;
                global.audio_menu_music_0_is_on = 0;
                global.can_play_sound_effects_0_is_on_1_is_off = 0;
                global.can_play_music_0_is_on_1_is_off = 0;
                global.can_play_ambiance_0_is_on_1_is_off = 0;
                global.config_game_fullscreen_0_is_on = 0;
                global.config_resolution = 0;
                global.config_game_v_sync = 0;
                global.config_game_aa_0is3_1is1_2is2_3is0 = 0;
                global.config_game_texture_filtering_0_is_on = 0;
                global.config_complex_shaders_0_is_on = 0;
                global.all_ui_buttons_showing = 0;
                global.gamepad_sensetivity = 0;
                global.can_right_click_to_remove = 0;
                global.preview_image_off_or_on = 0;
                global.piece_snap_amount = 0;
                global.zoom_pan_speed = 0;
                global.pieces_can_rotate_in_pond_0_is_on_1_is_off = 0;
                global.pond_rotation_speed_0_is1_1_is2_2_is3 = 0;
                global.image_can_be_rotated_0_is4_1_is0_2_is8 = 0;
                global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 = 0;
                global.loose_piece_hilight_colour = 0;
                global.intro_fade_out_speed_0is3_1is1_2is2_3is4 = 0;
                display_reset(8, 0);
                texture_set_interpolation(true);
                window_set_fullscreen(true);
                alarm[0] = 1;
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        game_data_delet_button_scale = 0.975;
    }
    else
    {
        game_data_delet_button_scale = 1.025;
    }
}
else
{
    game_data_delet_button_scale = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1870, 589, 1896, 617))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.gamepad_sensetivity == 1)
            {
                global.gamepad_sensetivity = 2;
                ob_menu_cursor.alarm[1] = 1;
                ini_open("ppu.ini");
                var p0x17p59 = base64_encode(string(global.gamepad_sensetivity));
                ini_write_string("save", "p0x17p59", p0x17p59);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.gamepad_sensetivity == 2)
            {
                global.gamepad_sensetivity = 3;
                ob_menu_cursor.alarm[1] = 1;
                ini_open("ppu.ini");
                var p0x17p59 = base64_encode(string(global.gamepad_sensetivity));
                ini_write_string("save", "p0x17p59", p0x17p59);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.gamepad_sensetivity == 3)
            {
                global.gamepad_sensetivity = 4;
                ob_menu_cursor.alarm[1] = 1;
                ini_open("ppu.ini");
                var p0x17p59 = base64_encode(string(global.gamepad_sensetivity));
                ini_write_string("save", "p0x17p59", p0x17p59);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.gamepad_sensetivity == 4)
            {
                global.gamepad_sensetivity = 0;
                ob_menu_cursor.alarm[1] = 1;
                ini_open("ppu.ini");
                var p0x17p59 = base64_encode(string(global.gamepad_sensetivity));
                ini_write_string("save", "p0x17p59", p0x17p59);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.gamepad_sensetivity == 5)
            {
                global.gamepad_sensetivity = 6;
                ob_menu_cursor.alarm[1] = 1;
                ini_open("ppu.ini");
                var p0x17p59 = base64_encode(string(global.gamepad_sensetivity));
                ini_write_string("save", "p0x17p59", p0x17p59);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.gamepad_sensetivity == 6)
            {
                global.gamepad_sensetivity = 7;
                ob_menu_cursor.alarm[1] = 1;
                ini_open("ppu.ini");
                var p0x17p59 = base64_encode(string(global.gamepad_sensetivity));
                ini_write_string("save", "p0x17p59", p0x17p59);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.gamepad_sensetivity == 7)
            {
                global.gamepad_sensetivity = 8;
                ob_menu_cursor.alarm[1] = 1;
                ini_open("ppu.ini");
                var p0x17p59 = base64_encode(string(global.gamepad_sensetivity));
                ini_write_string("save", "p0x17p59", p0x17p59);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.gamepad_sensetivity == 8)
            {
                global.gamepad_sensetivity = 9;
                ob_menu_cursor.alarm[1] = 1;
                ini_open("ppu.ini");
                var p0x17p59 = base64_encode(string(global.gamepad_sensetivity));
                ini_write_string("save", "p0x17p59", p0x17p59);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.gamepad_sensetivity == 9)
            {
                global.gamepad_sensetivity = 1;
                ob_menu_cursor.alarm[1] = 1;
                ini_open("ppu.ini");
                var p0x17p59 = base64_encode(string(global.gamepad_sensetivity));
                ini_write_string("save", "p0x17p59", p0x17p59);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else
            {
                global.gamepad_sensetivity = 5;
                ob_menu_cursor.alarm[1] = 1;
                ini_open("ppu.ini");
                var p0x17p59 = base64_encode(string(global.gamepad_sensetivity));
                ini_write_string("save", "p0x17p59", p0x17p59);
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
        controller_sesitivity_scale_right = 0.95;
    }
    else
    {
        controller_sesitivity_scale_right = 1.05;
    }
}
else
{
    controller_sesitivity_scale_right = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1471, 589, 1497, 617))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.gamepad_sensetivity == 9)
            {
                global.gamepad_sensetivity = 8;
                ob_menu_cursor.alarm[1] = 1;
                ini_open("ppu.ini");
                var p0x17p59 = base64_encode(string(global.gamepad_sensetivity));
                ini_write_string("save", "p0x17p59", p0x17p59);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.gamepad_sensetivity == 8)
            {
                global.gamepad_sensetivity = 7;
                ob_menu_cursor.alarm[1] = 1;
                ini_open("ppu.ini");
                var p0x17p59 = base64_encode(string(global.gamepad_sensetivity));
                ini_write_string("save", "p0x17p59", p0x17p59);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.gamepad_sensetivity == 7)
            {
                global.gamepad_sensetivity = 6;
                ob_menu_cursor.alarm[1] = 1;
                ini_open("ppu.ini");
                var p0x17p59 = base64_encode(string(global.gamepad_sensetivity));
                ini_write_string("save", "p0x17p59", p0x17p59);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.gamepad_sensetivity == 6)
            {
                global.gamepad_sensetivity = 5;
                ob_menu_cursor.alarm[1] = 1;
                ini_open("ppu.ini");
                var p0x17p59 = base64_encode(string(global.gamepad_sensetivity));
                ini_write_string("save", "p0x17p59", p0x17p59);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.gamepad_sensetivity == 5)
            {
                global.gamepad_sensetivity = 0;
                ob_menu_cursor.alarm[1] = 1;
                ini_open("ppu.ini");
                var p0x17p59 = base64_encode(string(global.gamepad_sensetivity));
                ini_write_string("save", "p0x17p59", p0x17p59);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.gamepad_sensetivity == 4)
            {
                global.gamepad_sensetivity = 3;
                ob_menu_cursor.alarm[1] = 1;
                ini_open("ppu.ini");
                var p0x17p59 = base64_encode(string(global.gamepad_sensetivity));
                ini_write_string("save", "p0x17p59", p0x17p59);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.gamepad_sensetivity == 3)
            {
                global.gamepad_sensetivity = 2;
                ob_menu_cursor.alarm[1] = 1;
                ini_open("ppu.ini");
                var p0x17p59 = base64_encode(string(global.gamepad_sensetivity));
                ini_write_string("save", "p0x17p59", p0x17p59);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.gamepad_sensetivity == 2)
            {
                global.gamepad_sensetivity = 1;
                ob_menu_cursor.alarm[1] = 1;
                ini_open("ppu.ini");
                var p0x17p59 = base64_encode(string(global.gamepad_sensetivity));
                ini_write_string("save", "p0x17p59", p0x17p59);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.gamepad_sensetivity == 1)
            {
                global.gamepad_sensetivity = 9;
                ob_menu_cursor.alarm[1] = 1;
                ini_open("ppu.ini");
                var p0x17p59 = base64_encode(string(global.gamepad_sensetivity));
                ini_write_string("save", "p0x17p59", p0x17p59);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else
            {
                global.gamepad_sensetivity = 4;
                ob_menu_cursor.alarm[1] = 1;
                ini_open("ppu.ini");
                var p0x17p59 = base64_encode(string(global.gamepad_sensetivity));
                ini_write_string("save", "p0x17p59", p0x17p59);
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
        controller_sesitivity_x_scale_left = -0.95;
        controller_sesitivity_y_scale_left = 0.95;
    }
    else
    {
        controller_sesitivity_x_scale_left = -1.05;
        controller_sesitivity_y_scale_left = 1.05;
    }
}
else
{
    controller_sesitivity_x_scale_left = -1;
    controller_sesitivity_y_scale_left = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1488, 644, 1879, 686))
{
    view_gamepad_controls_hover_icon_alpha = 1;
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.audio_menu_effects_0_is_on == 0)
            {
                audio_play_sound(global.sound_option_open_overlay, 1, false);
            }
            gamepad_mappings_is_showing = 1;
            global.a_menu_overlay_is_showing = 1;
        }
    }
}
else
{
    view_gamepad_controls_hover_icon_alpha = 0;
}
if (keyboard_check_pressed(vk_anykey))
{
    if (gamepad_mappings_is_showing == 1)
    {
        if (global.audio_menu_effects_0_is_on == 0)
        {
            audio_play_sound(global.sound_menu_overlay_close, 1, false);
        }
        global.a_menu_overlay_is_showing = 0;
        gamepad_mappings_is_showing = 0;
    }
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1488, 706, 1879, 748))
{
    view_keyboard_controls_hover_icon_alpha = 1;
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.audio_menu_effects_0_is_on == 0)
            {
                audio_play_sound(global.sound_option_open_overlay, 1, false);
            }
            options_keys_mappings_backing_colour = make_colour_rgb(50 + random(190), 50 + random(190), 50 + random(190));
            other_key_mappings_is_showing = 1;
            global.a_menu_overlay_is_showing = 1;
        }
    }
}
else
{
    view_keyboard_controls_hover_icon_alpha = 0;
}
if (keyboard_check_pressed(vk_anykey))
{
    if (other_key_mappings_is_showing == 1)
    {
        if (global.audio_menu_effects_0_is_on == 0)
        {
            audio_play_sound(global.sound_menu_overlay_close, 1, false);
        }
        global.a_menu_overlay_is_showing = 0;
        other_key_mappings_is_showing = 0;
    }
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1870, 493, 1896, 521))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.zoom_pan_speed < 4)
            {
                global.zoom_pan_speed += 1;
                ini_open("ppu.ini");
                var p0x17p58 = base64_encode(string(global.zoom_pan_speed));
                ini_write_string("save", "p0x17p58", p0x17p58);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else
            {
                global.zoom_pan_speed = 0;
                ini_open("ppu.ini");
                var p0x17p58 = base64_encode(string(global.zoom_pan_speed));
                ini_write_string("save", "p0x17p58", p0x17p58);
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
        zoom_scale_right = 0.95;
    }
    else
    {
        zoom_scale_right = 1.05;
    }
}
else
{
    zoom_scale_right = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1471, 493, 1497, 521))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.zoom_pan_speed > 0)
            {
                global.zoom_pan_speed -= 1;
                ini_open("ppu.ini");
                var p0x17p58 = base64_encode(string(global.zoom_pan_speed));
                ini_write_string("save", "p0x17p58", p0x17p58);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else
            {
                global.zoom_pan_speed = 4;
                ini_open("ppu.ini");
                var p0x17p58 = base64_encode(string(global.zoom_pan_speed));
                ini_write_string("save", "p0x17p58", p0x17p58);
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
        zoom_x_scale_left = -0.95;
        zoom_y_scale_left = 0.95;
    }
    else
    {
        zoom_x_scale_left = -1.05;
        zoom_y_scale_left = 1.05;
    }
}
else
{
    zoom_x_scale_left = -1;
    zoom_y_scale_left = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1488, 960, 1879, 1002))
{
    view_achievements_hover_icon_alpha = 1;
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.audio_menu_effects_0_is_on == 0)
            {
                audio_play_sound(global.sound_option_open_overlay, 1, false);
            }
            steam_activate_overlay(ov_achievements);
        }
    }
}
else
{
    view_achievements_hover_icon_alpha = 0;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1468, 1022, 1879, 1064))
{
    view_credits_hover_icon_alpha = 1;
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.audio_menu_effects_0_is_on == 0)
            {
                audio_play_sound(global.sound_option_open_overlay, 1, false);
            }
            global.a_menu_overlay_is_showing = 1;
            credits_are_showing = 1;
        }
    }
}
else
{
    view_credits_hover_icon_alpha = 0;
}
if (keyboard_check_pressed(vk_anykey))
{
    if (credits_are_showing == 1)
    {
        if (global.audio_menu_effects_0_is_on == 0)
        {
            audio_play_sound(global.sound_menu_overlay_close, 1, false);
        }
        global.a_menu_overlay_is_showing = 0;
        credits_are_showing = 0;
    }
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 490, 855, 664, 1028))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 1)
        {
            if (credits_are_showing == 1)
            {
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_option_open_overlay, 1, false);
                }
                steam_activate_overlay_browser("http://thedigitalpuzzlecompany.com/");
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        dl_button_scale = 0.975;
    }
    else
    {
        dl_button_scale = 1.025;
    }
}
else
{
    dl_button_scale = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 745, 855, 919, 1028))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 1)
        {
            if (credits_are_showing == 1)
            {
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_option_open_overlay, 1, false);
                }
                steam_activate_overlay_browser("http://store.steampowered.com/search/?publisher=The%20Digital%20Puzzle%20Company");
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        steam_button_scale = 0.975;
    }
    else
    {
        steam_button_scale = 1.025;
    }
}
else
{
    steam_button_scale = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1001, 855, 1175, 1028))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 1)
        {
            if (credits_are_showing == 1)
            {
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_option_open_overlay, 1, false);
                }
                steam_activate_overlay_browser("https://twitter.com/PixelPuzzlesDPC");
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        twitter_button_scale = 0.975;
    }
    else
    {
        twitter_button_scale = 1.025;
    }
}
else
{
    twitter_button_scale = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1256, 855, 1430, 1028))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 1)
        {
            if (credits_are_showing == 1)
            {
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_option_open_overlay, 1, false);
                }
                steam_activate_overlay_browser("https://www.youtube.com/user/DecayingLogic");
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        yt_button_scale = 0.975;
    }
    else
    {
        yt_button_scale = 1.025;
    }
}
else
{
    yt_button_scale = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1488, 804, 1879, 841))
{
    how_to_play_hover_icon_alpha = 1;
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.audio_menu_effects_0_is_on == 0)
            {
                audio_play_sound(global.sound_option_open_overlay, 1, false);
            }
            how_to_play_is_showing = 1;
            global.a_menu_overlay_is_showing = 1;
        }
    }
}
else
{
    how_to_play_hover_icon_alpha = 0;
}
if (keyboard_check_pressed(vk_anykey))
{
    if (how_to_play_is_showing == 1)
    {
        if (global.audio_menu_effects_0_is_on == 0)
        {
            audio_play_sound(global.sound_menu_overlay_close, 1, false);
        }
        global.a_menu_overlay_is_showing = 0;
        how_to_play_is_showing = 0;
    }
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1488, 865, 1879, 904))
{
    tutorial_hover_icon_alpha = 1;
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.audio_menu_effects_0_is_on == 0)
            {
                audio_play_sound(global.sound_option_open_overlay, 1, false);
            }
            room_goto(r_tutorial);
        }
    }
}
else
{
    tutorial_hover_icon_alpha = 0;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 905, 397, 931, 425))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.actual_volume_level == 0)
            {
                global.actual_volume_level = 0.1;
                global.volume_level_0_is_full = 9;
                ini_open("ppu.ini");
                var p0x17p25 = base64_encode(string(global.volume_level_0_is_full));
                ini_write_string("save", "p0x17p25", p0x17p25);
                ini_close();
                audio_master_gain(global.actual_volume_level);
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_volume_level == 0.1)
            {
                global.actual_volume_level = 0.2;
                global.volume_level_0_is_full = 8;
                ini_open("ppu.ini");
                var p0x17p25 = base64_encode(string(global.volume_level_0_is_full));
                ini_write_string("save", "p0x17p25", p0x17p25);
                ini_close();
                audio_master_gain(global.actual_volume_level);
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_volume_level == 0.2)
            {
                global.actual_volume_level = 0.3;
                global.volume_level_0_is_full = 7;
                ini_open("ppu.ini");
                var p0x17p25 = base64_encode(string(global.volume_level_0_is_full));
                ini_write_string("save", "p0x17p25", p0x17p25);
                ini_close();
                audio_master_gain(global.actual_volume_level);
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_volume_level == 0.3)
            {
                global.actual_volume_level = 0.4;
                global.volume_level_0_is_full = 6;
                ini_open("ppu.ini");
                var p0x17p25 = base64_encode(string(global.volume_level_0_is_full));
                ini_write_string("save", "p0x17p25", p0x17p25);
                ini_close();
                audio_master_gain(global.actual_volume_level);
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_volume_level == 0.4)
            {
                global.actual_volume_level = 0.5;
                global.volume_level_0_is_full = 5;
                ini_open("ppu.ini");
                var p0x17p25 = base64_encode(string(global.volume_level_0_is_full));
                ini_write_string("save", "p0x17p25", p0x17p25);
                ini_close();
                audio_master_gain(global.actual_volume_level);
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_volume_level == 0.5)
            {
                global.actual_volume_level = 0.6;
                global.volume_level_0_is_full = 4;
                ini_open("ppu.ini");
                var p0x17p25 = base64_encode(string(global.volume_level_0_is_full));
                ini_write_string("save", "p0x17p25", p0x17p25);
                ini_close();
                audio_master_gain(global.actual_volume_level);
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_volume_level == 0.6)
            {
                global.actual_volume_level = 0.7;
                global.volume_level_0_is_full = 3;
                ini_open("ppu.ini");
                var p0x17p25 = base64_encode(string(global.volume_level_0_is_full));
                ini_write_string("save", "p0x17p25", p0x17p25);
                ini_close();
                audio_master_gain(global.actual_volume_level);
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_volume_level == 0.7)
            {
                global.actual_volume_level = 0.8;
                global.volume_level_0_is_full = 2;
                ini_open("ppu.ini");
                var p0x17p25 = base64_encode(string(global.volume_level_0_is_full));
                ini_write_string("save", "p0x17p25", p0x17p25);
                ini_close();
                audio_master_gain(global.actual_volume_level);
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_volume_level == 0.8)
            {
                global.actual_volume_level = 0.9;
                global.volume_level_0_is_full = 1;
                ini_open("ppu.ini");
                var p0x17p25 = base64_encode(string(global.volume_level_0_is_full));
                ini_write_string("save", "p0x17p25", p0x17p25);
                ini_close();
                audio_master_gain(global.actual_volume_level);
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_volume_level == 0.9)
            {
                global.actual_volume_level = 1;
                global.volume_level_0_is_full = 0;
                ini_open("ppu.ini");
                var p0x17p25 = base64_encode(string(global.volume_level_0_is_full));
                ini_write_string("save", "p0x17p25", p0x17p25);
                ini_close();
                audio_master_gain(global.actual_volume_level);
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else
            {
                global.actual_volume_level = 0;
                global.volume_level_0_is_full = 10;
                ini_open("ppu.ini");
                var p0x17p25 = base64_encode(string(global.volume_level_0_is_full));
                ini_write_string("save", "p0x17p25", p0x17p25);
                ini_close();
                audio_master_gain(global.actual_volume_level);
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        volume_scale_right = 0.95;
    }
    else
    {
        volume_scale_right = 1.05;
    }
}
else
{
    volume_scale_right = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 506, 397, 532, 425))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.actual_volume_level == 0)
            {
                global.actual_volume_level = 1;
                global.volume_level_0_is_full = 0;
                ini_open("ppu.ini");
                var p0x17p25 = base64_encode(string(global.volume_level_0_is_full));
                ini_write_string("save", "p0x17p25", p0x17p25);
                ini_close();
                audio_master_gain(global.actual_volume_level);
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_volume_level == 0.1)
            {
                global.actual_volume_level = 0;
                global.volume_level_0_is_full = 10;
                ini_open("ppu.ini");
                var p0x17p25 = base64_encode(string(global.volume_level_0_is_full));
                ini_write_string("save", "p0x17p25", p0x17p25);
                ini_close();
                audio_master_gain(global.actual_volume_level);
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_volume_level == 0.2)
            {
                global.actual_volume_level = 0.1;
                global.volume_level_0_is_full = 9;
                ini_open("ppu.ini");
                var p0x17p25 = base64_encode(string(global.volume_level_0_is_full));
                ini_write_string("save", "p0x17p25", p0x17p25);
                ini_close();
                audio_master_gain(global.actual_volume_level);
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_volume_level == 0.3)
            {
                global.actual_volume_level = 0.2;
                global.volume_level_0_is_full = 8;
                ini_open("ppu.ini");
                var p0x17p25 = base64_encode(string(global.volume_level_0_is_full));
                ini_write_string("save", "p0x17p25", p0x17p25);
                ini_close();
                audio_master_gain(global.actual_volume_level);
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_volume_level == 0.4)
            {
                global.actual_volume_level = 0.3;
                global.volume_level_0_is_full = 7;
                ini_open("ppu.ini");
                var p0x17p25 = base64_encode(string(global.volume_level_0_is_full));
                ini_write_string("save", "p0x17p25", p0x17p25);
                ini_close();
                audio_master_gain(global.actual_volume_level);
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_volume_level == 0.5)
            {
                global.actual_volume_level = 0.4;
                global.volume_level_0_is_full = 6;
                ini_open("ppu.ini");
                var p0x17p25 = base64_encode(string(global.volume_level_0_is_full));
                ini_write_string("save", "p0x17p25", p0x17p25);
                ini_close();
                audio_master_gain(global.actual_volume_level);
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_volume_level == 0.6)
            {
                global.actual_volume_level = 0.5;
                global.volume_level_0_is_full = 5;
                ini_open("ppu.ini");
                var p0x17p25 = base64_encode(string(global.volume_level_0_is_full));
                ini_write_string("save", "p0x17p25", p0x17p25);
                ini_close();
                audio_master_gain(global.actual_volume_level);
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_volume_level == 0.7)
            {
                global.actual_volume_level = 0.6;
                global.volume_level_0_is_full = 4;
                ini_open("ppu.ini");
                var p0x17p25 = base64_encode(string(global.volume_level_0_is_full));
                ini_write_string("save", "p0x17p25", p0x17p25);
                ini_close();
                audio_master_gain(global.actual_volume_level);
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_volume_level == 0.8)
            {
                global.actual_volume_level = 0.7;
                global.volume_level_0_is_full = 3;
                ini_open("ppu.ini");
                var p0x17p25 = base64_encode(string(global.volume_level_0_is_full));
                ini_write_string("save", "p0x17p25", p0x17p25);
                ini_close();
                audio_master_gain(global.actual_volume_level);
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_volume_level == 0.9)
            {
                global.actual_volume_level = 0.8;
                global.volume_level_0_is_full = 2;
                ini_open("ppu.ini");
                var p0x17p25 = base64_encode(string(global.volume_level_0_is_full));
                ini_write_string("save", "p0x17p25", p0x17p25);
                ini_close();
                audio_master_gain(global.actual_volume_level);
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else
            {
                global.actual_volume_level = 0.9;
                global.volume_level_0_is_full = 1;
                ini_open("ppu.ini");
                var p0x17p25 = base64_encode(string(global.volume_level_0_is_full));
                ini_write_string("save", "p0x17p25", p0x17p25);
                ini_close();
                audio_master_gain(global.actual_volume_level);
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        volume_x_scale_left = -0.95;
        volume_y_scale_left = 0.95;
    }
    else
    {
        volume_x_scale_left = -1.05;
        volume_y_scale_left = 1.05;
    }
}
else
{
    volume_x_scale_left = -1;
    volume_y_scale_left = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 905, 459, 931, 487))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.actual_effects_volume_level == 0)
            {
                global.actual_effects_volume_level = 0.1;
                global.effects_volume_level_0_is_full = 9;
                ini_open("ppu.ini");
                var p0x17p54 = base64_encode(string(global.effects_volume_level_0_is_full));
                ini_write_string("save", "p0x17p54", p0x17p54);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_effects_volume_level == 0.1)
            {
                global.actual_effects_volume_level = 0.2;
                global.effects_volume_level_0_is_full = 8;
                ini_open("ppu.ini");
                var p0x17p54 = base64_encode(string(global.effects_volume_level_0_is_full));
                ini_write_string("save", "p0x17p54", p0x17p54);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_effects_volume_level == 0.2)
            {
                global.actual_effects_volume_level = 0.3;
                global.effects_volume_level_0_is_full = 7;
                ini_open("ppu.ini");
                var p0x17p54 = base64_encode(string(global.effects_volume_level_0_is_full));
                ini_write_string("save", "p0x17p54", p0x17p54);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_effects_volume_level == 0.3)
            {
                global.actual_effects_volume_level = 0.4;
                global.effects_volume_level_0_is_full = 6;
                ini_open("ppu.ini");
                var p0x17p54 = base64_encode(string(global.effects_volume_level_0_is_full));
                ini_write_string("save", "p0x17p54", p0x17p54);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_effects_volume_level == 0.4)
            {
                global.actual_effects_volume_level = 0.5;
                global.effects_volume_level_0_is_full = 5;
                ini_open("ppu.ini");
                var p0x17p54 = base64_encode(string(global.effects_volume_level_0_is_full));
                ini_write_string("save", "p0x17p54", p0x17p54);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_effects_volume_level == 0.5)
            {
                global.actual_effects_volume_level = 0.6;
                global.effects_volume_level_0_is_full = 4;
                ini_open("ppu.ini");
                var p0x17p54 = base64_encode(string(global.effects_volume_level_0_is_full));
                ini_write_string("save", "p0x17p54", p0x17p54);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_effects_volume_level == 0.6)
            {
                global.actual_effects_volume_level = 0.7;
                global.effects_volume_level_0_is_full = 3;
                ini_open("ppu.ini");
                var p0x17p54 = base64_encode(string(global.effects_volume_level_0_is_full));
                ini_write_string("save", "p0x17p54", p0x17p54);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_effects_volume_level == 0.7)
            {
                global.actual_effects_volume_level = 0.8;
                global.effects_volume_level_0_is_full = 2;
                ini_open("ppu.ini");
                var p0x17p54 = base64_encode(string(global.effects_volume_level_0_is_full));
                ini_write_string("save", "p0x17p54", p0x17p54);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_effects_volume_level == 0.8)
            {
                global.actual_effects_volume_level = 0.9;
                global.effects_volume_level_0_is_full = 1;
                ini_open("ppu.ini");
                var p0x17p54 = base64_encode(string(global.effects_volume_level_0_is_full));
                ini_write_string("save", "p0x17p54", p0x17p54);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_effects_volume_level == 0.9)
            {
                global.actual_effects_volume_level = 1;
                global.effects_volume_level_0_is_full = 0;
                ini_open("ppu.ini");
                var p0x17p54 = base64_encode(string(global.effects_volume_level_0_is_full));
                ini_write_string("save", "p0x17p54", p0x17p54);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else
            {
                global.actual_effects_volume_level = 0;
                global.effects_volume_level_0_is_full = 10;
                ini_open("ppu.ini");
                var p0x17p54 = base64_encode(string(global.effects_volume_level_0_is_full));
                ini_write_string("save", "p0x17p54", p0x17p54);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        effects_volume_scale_right = 0.95;
    }
    else
    {
        effects_volume_scale_right = 1.05;
    }
}
else
{
    effects_volume_scale_right = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 506, 459, 532, 487))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.actual_effects_volume_level == 0)
            {
                global.actual_effects_volume_level = 1;
                global.effects_volume_level_0_is_full = 0;
                ini_open("ppu.ini");
                var p0x17p54 = base64_encode(string(global.effects_volume_level_0_is_full));
                ini_write_string("save", "p0x17p54", p0x17p54);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_effects_volume_level == 0.1)
            {
                global.actual_effects_volume_level = 0;
                global.effects_volume_level_0_is_full = 10;
                ini_open("ppu.ini");
                var p0x17p54 = base64_encode(string(global.effects_volume_level_0_is_full));
                ini_write_string("save", "p0x17p54", p0x17p54);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_effects_volume_level == 0.2)
            {
                global.actual_effects_volume_level = 0.1;
                global.effects_volume_level_0_is_full = 9;
                ini_open("ppu.ini");
                var p0x17p54 = base64_encode(string(global.effects_volume_level_0_is_full));
                ini_write_string("save", "p0x17p54", p0x17p54);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_effects_volume_level == 0.3)
            {
                global.actual_effects_volume_level = 0.2;
                global.effects_volume_level_0_is_full = 8;
                ini_open("ppu.ini");
                var p0x17p54 = base64_encode(string(global.effects_volume_level_0_is_full));
                ini_write_string("save", "p0x17p54", p0x17p54);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_effects_volume_level == 0.4)
            {
                global.actual_effects_volume_level = 0.3;
                global.effects_volume_level_0_is_full = 7;
                ini_open("ppu.ini");
                var p0x17p54 = base64_encode(string(global.effects_volume_level_0_is_full));
                ini_write_string("save", "p0x17p54", p0x17p54);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_effects_volume_level == 0.5)
            {
                global.actual_effects_volume_level = 0.4;
                global.effects_volume_level_0_is_full = 6;
                ini_open("ppu.ini");
                var p0x17p54 = base64_encode(string(global.effects_volume_level_0_is_full));
                ini_write_string("save", "p0x17p54", p0x17p54);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_effects_volume_level == 0.6)
            {
                global.actual_effects_volume_level = 0.5;
                global.effects_volume_level_0_is_full = 5;
                ini_open("ppu.ini");
                var p0x17p54 = base64_encode(string(global.effects_volume_level_0_is_full));
                ini_write_string("save", "p0x17p54", p0x17p54);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_effects_volume_level == 0.7)
            {
                global.actual_effects_volume_level = 0.6;
                global.effects_volume_level_0_is_full = 4;
                ini_open("ppu.ini");
                var p0x17p54 = base64_encode(string(global.effects_volume_level_0_is_full));
                ini_write_string("save", "p0x17p54", p0x17p54);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_effects_volume_level == 0.8)
            {
                global.actual_effects_volume_level = 0.7;
                global.effects_volume_level_0_is_full = 3;
                ini_open("ppu.ini");
                var p0x17p54 = base64_encode(string(global.effects_volume_level_0_is_full));
                ini_write_string("save", "p0x17p54", p0x17p54);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_effects_volume_level == 0.9)
            {
                global.actual_effects_volume_level = 0.8;
                global.effects_volume_level_0_is_full = 2;
                ini_open("ppu.ini");
                var p0x17p54 = base64_encode(string(global.effects_volume_level_0_is_full));
                ini_write_string("save", "p0x17p54", p0x17p54);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else
            {
                global.actual_effects_volume_level = 0.9;
                global.effects_volume_level_0_is_full = 1;
                ini_open("ppu.ini");
                var p0x17p54 = base64_encode(string(global.effects_volume_level_0_is_full));
                ini_write_string("save", "p0x17p54", p0x17p54);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        effects_volume_x_scale_left = -0.95;
        effects_volume_y_scale_left = 0.95;
    }
    else
    {
        effects_volume_x_scale_left = -1.05;
        effects_volume_y_scale_left = 1.05;
    }
}
else
{
    effects_volume_x_scale_left = -1;
    effects_volume_y_scale_left = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 905, 521, 931, 549))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.actual_music_volume_level == 0)
            {
                global.actual_music_volume_level = 0.1;
                global.music_volume_level_0_is_full = 9;
                ini_open("ppu.ini");
                var p0x17p55 = base64_encode(string(global.music_volume_level_0_is_full));
                ini_write_string("save", "p0x17p55", p0x17p55);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_music_volume_level == 0.1)
            {
                global.actual_music_volume_level = 0.2;
                global.music_volume_level_0_is_full = 8;
                ini_open("ppu.ini");
                var p0x17p55 = base64_encode(string(global.music_volume_level_0_is_full));
                ini_write_string("save", "p0x17p55", p0x17p55);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_music_volume_level == 0.2)
            {
                global.actual_music_volume_level = 0.3;
                global.music_volume_level_0_is_full = 7;
                ini_open("ppu.ini");
                var p0x17p55 = base64_encode(string(global.music_volume_level_0_is_full));
                ini_write_string("save", "p0x17p55", p0x17p55);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_music_volume_level == 0.3)
            {
                global.actual_music_volume_level = 0.4;
                global.music_volume_level_0_is_full = 6;
                ini_open("ppu.ini");
                var p0x17p55 = base64_encode(string(global.music_volume_level_0_is_full));
                ini_write_string("save", "p0x17p55", p0x17p55);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_music_volume_level == 0.4)
            {
                global.actual_music_volume_level = 0.5;
                global.music_volume_level_0_is_full = 5;
                ini_open("ppu.ini");
                var p0x17p55 = base64_encode(string(global.music_volume_level_0_is_full));
                ini_write_string("save", "p0x17p55", p0x17p55);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_music_volume_level == 0.5)
            {
                global.actual_music_volume_level = 0.6;
                global.music_volume_level_0_is_full = 4;
                ini_open("ppu.ini");
                var p0x17p55 = base64_encode(string(global.music_volume_level_0_is_full));
                ini_write_string("save", "p0x17p55", p0x17p55);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_music_volume_level == 0.6)
            {
                global.actual_music_volume_level = 0.7;
                global.music_volume_level_0_is_full = 3;
                ini_open("ppu.ini");
                var p0x17p55 = base64_encode(string(global.music_volume_level_0_is_full));
                ini_write_string("save", "p0x17p55", p0x17p55);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_music_volume_level == 0.7)
            {
                global.actual_music_volume_level = 0.8;
                global.music_volume_level_0_is_full = 2;
                ini_open("ppu.ini");
                var p0x17p55 = base64_encode(string(global.music_volume_level_0_is_full));
                ini_write_string("save", "p0x17p55", p0x17p55);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_music_volume_level == 0.8)
            {
                global.actual_music_volume_level = 0.9;
                global.music_volume_level_0_is_full = 1;
                ini_open("ppu.ini");
                var p0x17p55 = base64_encode(string(global.music_volume_level_0_is_full));
                ini_write_string("save", "p0x17p55", p0x17p55);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_music_volume_level == 0.9)
            {
                global.actual_music_volume_level = 1;
                global.music_volume_level_0_is_full = 0;
                ini_open("ppu.ini");
                var p0x17p55 = base64_encode(string(global.music_volume_level_0_is_full));
                ini_write_string("save", "p0x17p55", p0x17p55);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else
            {
                global.actual_music_volume_level = 0;
                global.music_volume_level_0_is_full = 10;
                ini_open("ppu.ini");
                var p0x17p55 = base64_encode(string(global.music_volume_level_0_is_full));
                ini_write_string("save", "p0x17p55", p0x17p55);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        music_volume_scale_right = 0.95;
    }
    else
    {
        music_volume_scale_right = 1.05;
    }
}
else
{
    music_volume_scale_right = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 506, 521, 532, 549))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.actual_music_volume_level == 0)
            {
                global.actual_music_volume_level = 1;
                global.music_volume_level_0_is_full = 0;
                ini_open("ppu.ini");
                var p0x17p55 = base64_encode(string(global.music_volume_level_0_is_full));
                ini_write_string("save", "p0x17p55", p0x17p55);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_music_volume_level == 0.1)
            {
                global.actual_music_volume_level = 0;
                global.music_volume_level_0_is_full = 10;
                ini_open("ppu.ini");
                var p0x17p55 = base64_encode(string(global.music_volume_level_0_is_full));
                ini_write_string("save", "p0x17p55", p0x17p55);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_music_volume_level == 0.2)
            {
                global.actual_music_volume_level = 0.1;
                global.music_volume_level_0_is_full = 9;
                ini_open("ppu.ini");
                var p0x17p55 = base64_encode(string(global.music_volume_level_0_is_full));
                ini_write_string("save", "p0x17p55", p0x17p55);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_music_volume_level == 0.3)
            {
                global.actual_music_volume_level = 0.2;
                global.music_volume_level_0_is_full = 8;
                ini_open("ppu.ini");
                var p0x17p55 = base64_encode(string(global.music_volume_level_0_is_full));
                ini_write_string("save", "p0x17p55", p0x17p55);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_music_volume_level == 0.4)
            {
                global.actual_music_volume_level = 0.3;
                global.music_volume_level_0_is_full = 7;
                ini_open("ppu.ini");
                var p0x17p55 = base64_encode(string(global.music_volume_level_0_is_full));
                ini_write_string("save", "p0x17p55", p0x17p55);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_music_volume_level == 0.5)
            {
                global.actual_music_volume_level = 0.4;
                global.music_volume_level_0_is_full = 6;
                ini_open("ppu.ini");
                var p0x17p55 = base64_encode(string(global.music_volume_level_0_is_full));
                ini_write_string("save", "p0x17p55", p0x17p55);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_music_volume_level == 0.6)
            {
                global.actual_music_volume_level = 0.5;
                global.music_volume_level_0_is_full = 5;
                ini_open("ppu.ini");
                var p0x17p55 = base64_encode(string(global.music_volume_level_0_is_full));
                ini_write_string("save", "p0x17p55", p0x17p55);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_music_volume_level == 0.7)
            {
                global.actual_music_volume_level = 0.6;
                global.music_volume_level_0_is_full = 4;
                ini_open("ppu.ini");
                var p0x17p55 = base64_encode(string(global.music_volume_level_0_is_full));
                ini_write_string("save", "p0x17p55", p0x17p55);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_music_volume_level == 0.8)
            {
                global.actual_music_volume_level = 0.7;
                global.music_volume_level_0_is_full = 3;
                ini_open("ppu.ini");
                var p0x17p55 = base64_encode(string(global.music_volume_level_0_is_full));
                ini_write_string("save", "p0x17p55", p0x17p55);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_music_volume_level == 0.9)
            {
                global.actual_music_volume_level = 0.8;
                global.music_volume_level_0_is_full = 2;
                ini_open("ppu.ini");
                var p0x17p55 = base64_encode(string(global.music_volume_level_0_is_full));
                ini_write_string("save", "p0x17p55", p0x17p55);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else
            {
                global.actual_music_volume_level = 0.9;
                global.music_volume_level_0_is_full = 1;
                ini_open("ppu.ini");
                var p0x17p55 = base64_encode(string(global.music_volume_level_0_is_full));
                ini_write_string("save", "p0x17p55", p0x17p55);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        music_volume_x_scale_left = -0.95;
        music_volume_y_scale_left = 0.95;
    }
    else
    {
        music_volume_x_scale_left = -1.05;
        music_volume_y_scale_left = 1.05;
    }
}
else
{
    music_volume_x_scale_left = -1;
    music_volume_y_scale_left = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 905, 583, 931, 611))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.actual_ambiance_volume_level == 0)
            {
                global.actual_ambiance_volume_level = 0.1;
                global.ambiance_volume_level_0_is_full = 9;
                ini_open("ppu.ini");
                var p0x17p56 = base64_encode(string(global.ambiance_volume_level_0_is_full));
                ini_write_string("save", "p0x17p56", p0x17p56);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_ambiance_volume_level == 0.1)
            {
                global.actual_ambiance_volume_level = 0.2;
                global.ambiance_volume_level_0_is_full = 8;
                ini_open("ppu.ini");
                var p0x17p56 = base64_encode(string(global.ambiance_volume_level_0_is_full));
                ini_write_string("save", "p0x17p56", p0x17p56);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_ambiance_volume_level == 0.2)
            {
                global.actual_ambiance_volume_level = 0.3;
                global.ambiance_volume_level_0_is_full = 7;
                ini_open("ppu.ini");
                var p0x17p56 = base64_encode(string(global.ambiance_volume_level_0_is_full));
                ini_write_string("save", "p0x17p56", p0x17p56);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_ambiance_volume_level == 0.3)
            {
                global.actual_ambiance_volume_level = 0.4;
                global.ambiance_volume_level_0_is_full = 6;
                ini_open("ppu.ini");
                var p0x17p56 = base64_encode(string(global.ambiance_volume_level_0_is_full));
                ini_write_string("save", "p0x17p56", p0x17p56);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_ambiance_volume_level == 0.4)
            {
                global.actual_ambiance_volume_level = 0.5;
                global.ambiance_volume_level_0_is_full = 5;
                ini_open("ppu.ini");
                var p0x17p56 = base64_encode(string(global.ambiance_volume_level_0_is_full));
                ini_write_string("save", "p0x17p56", p0x17p56);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_ambiance_volume_level == 0.5)
            {
                global.actual_ambiance_volume_level = 0.6;
                global.ambiance_volume_level_0_is_full = 4;
                ini_open("ppu.ini");
                var p0x17p56 = base64_encode(string(global.ambiance_volume_level_0_is_full));
                ini_write_string("save", "p0x17p56", p0x17p56);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_ambiance_volume_level == 0.6)
            {
                global.actual_ambiance_volume_level = 0.7;
                global.ambiance_volume_level_0_is_full = 3;
                ini_open("ppu.ini");
                var p0x17p56 = base64_encode(string(global.ambiance_volume_level_0_is_full));
                ini_write_string("save", "p0x17p56", p0x17p56);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_ambiance_volume_level == 0.7)
            {
                global.actual_ambiance_volume_level = 0.8;
                global.ambiance_volume_level_0_is_full = 2;
                ini_open("ppu.ini");
                var p0x17p56 = base64_encode(string(global.ambiance_volume_level_0_is_full));
                ini_write_string("save", "p0x17p56", p0x17p56);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_ambiance_volume_level == 0.8)
            {
                global.actual_ambiance_volume_level = 0.9;
                global.ambiance_volume_level_0_is_full = 1;
                ini_open("ppu.ini");
                var p0x17p56 = base64_encode(string(global.ambiance_volume_level_0_is_full));
                ini_write_string("save", "p0x17p56", p0x17p56);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_ambiance_volume_level == 0.9)
            {
                global.actual_ambiance_volume_level = 1;
                global.ambiance_volume_level_0_is_full = 0;
                ini_open("ppu.ini");
                var p0x17p56 = base64_encode(string(global.ambiance_volume_level_0_is_full));
                ini_write_string("save", "p0x17p56", p0x17p56);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else
            {
                global.actual_ambiance_volume_level = 0;
                global.ambiance_volume_level_0_is_full = 10;
                ini_open("ppu.ini");
                var p0x17p56 = base64_encode(string(global.ambiance_volume_level_0_is_full));
                ini_write_string("save", "p0x17p56", p0x17p56);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        ambiance_volume_scale_right = 0.95;
    }
    else
    {
        ambiance_volume_scale_right = 1.05;
    }
}
else
{
    ambiance_volume_scale_right = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 506, 583, 532, 611))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.actual_ambiance_volume_level == 0)
            {
                global.actual_ambiance_volume_level = 1;
                global.ambiance_volume_level_0_is_full = 0;
                ini_open("ppu.ini");
                var p0x17p56 = base64_encode(string(global.ambiance_volume_level_0_is_full));
                ini_write_string("save", "p0x17p56", p0x17p56);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_ambiance_volume_level == 0.1)
            {
                global.actual_ambiance_volume_level = 0;
                global.ambiance_volume_level_0_is_full = 10;
                ini_open("ppu.ini");
                var p0x17p56 = base64_encode(string(global.ambiance_volume_level_0_is_full));
                ini_write_string("save", "p0x17p56", p0x17p56);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_ambiance_volume_level == 0.2)
            {
                global.actual_ambiance_volume_level = 0.1;
                global.ambiance_volume_level_0_is_full = 9;
                ini_open("ppu.ini");
                var p0x17p56 = base64_encode(string(global.ambiance_volume_level_0_is_full));
                ini_write_string("save", "p0x17p56", p0x17p56);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_ambiance_volume_level == 0.3)
            {
                global.actual_ambiance_volume_level = 0.2;
                global.ambiance_volume_level_0_is_full = 8;
                ini_open("ppu.ini");
                var p0x17p56 = base64_encode(string(global.ambiance_volume_level_0_is_full));
                ini_write_string("save", "p0x17p56", p0x17p56);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_ambiance_volume_level == 0.4)
            {
                global.actual_ambiance_volume_level = 0.3;
                global.ambiance_volume_level_0_is_full = 7;
                ini_open("ppu.ini");
                var p0x17p56 = base64_encode(string(global.ambiance_volume_level_0_is_full));
                ini_write_string("save", "p0x17p56", p0x17p56);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_ambiance_volume_level == 0.5)
            {
                global.actual_ambiance_volume_level = 0.4;
                global.ambiance_volume_level_0_is_full = 6;
                ini_open("ppu.ini");
                var p0x17p56 = base64_encode(string(global.ambiance_volume_level_0_is_full));
                ini_write_string("save", "p0x17p56", p0x17p56);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_ambiance_volume_level == 0.6)
            {
                global.actual_ambiance_volume_level = 0.5;
                global.ambiance_volume_level_0_is_full = 5;
                ini_open("ppu.ini");
                var p0x17p56 = base64_encode(string(global.ambiance_volume_level_0_is_full));
                ini_write_string("save", "p0x17p56", p0x17p56);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_ambiance_volume_level == 0.7)
            {
                global.actual_ambiance_volume_level = 0.6;
                global.ambiance_volume_level_0_is_full = 4;
                ini_open("ppu.ini");
                var p0x17p56 = base64_encode(string(global.ambiance_volume_level_0_is_full));
                ini_write_string("save", "p0x17p56", p0x17p56);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_ambiance_volume_level == 0.8)
            {
                global.actual_ambiance_volume_level = 0.7;
                global.ambiance_volume_level_0_is_full = 3;
                ini_open("ppu.ini");
                var p0x17p56 = base64_encode(string(global.ambiance_volume_level_0_is_full));
                ini_write_string("save", "p0x17p56", p0x17p56);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else if (global.actual_ambiance_volume_level == 0.9)
            {
                global.actual_ambiance_volume_level = 0.8;
                global.ambiance_volume_level_0_is_full = 2;
                ini_open("ppu.ini");
                var p0x17p56 = base64_encode(string(global.ambiance_volume_level_0_is_full));
                ini_write_string("save", "p0x17p56", p0x17p56);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else
            {
                global.actual_ambiance_volume_level = 0.9;
                global.ambiance_volume_level_0_is_full = 1;
                ini_open("ppu.ini");
                var p0x17p56 = base64_encode(string(global.ambiance_volume_level_0_is_full));
                ini_write_string("save", "p0x17p56", p0x17p56);
                ini_close();
                ob_audio_controller.alarm[2] = 1;
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        ambiance_volume_x_scale_left = -0.95;
        ambiance_volume_y_scale_left = 0.95;
    }
    else
    {
        ambiance_volume_x_scale_left = -1.05;
        ambiance_volume_y_scale_left = 1.05;
    }
}
else
{
    ambiance_volume_x_scale_left = -1;
    ambiance_volume_y_scale_left = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 905, 669, 931, 697))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.audio_menu_effects_0_is_on == 1)
            {
                global.audio_menu_effects_0_is_on = 0;
                ini_open("ppu.ini");
                var p0x17p33 = base64_encode(string(global.audio_menu_effects_0_is_on));
                ini_write_string("save", "p0x17p33", p0x17p33);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else
            {
                global.audio_menu_effects_0_is_on = 1;
                ini_open("ppu.ini");
                var p0x17p33 = base64_encode(string(global.audio_menu_effects_0_is_on));
                ini_write_string("save", "p0x17p33", p0x17p33);
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
        music_sounds_scale_right = 0.95;
    }
    else
    {
        music_sounds_scale_right = 1.05;
    }
}
else
{
    music_sounds_scale_right = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 506, 669, 532, 697))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.audio_menu_effects_0_is_on == 1)
            {
                global.audio_menu_effects_0_is_on = 0;
                ini_open("ppu.ini");
                var p0x17p33 = base64_encode(string(global.audio_menu_effects_0_is_on));
                ini_write_string("save", "p0x17p33", p0x17p33);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else
            {
                global.audio_menu_effects_0_is_on = 1;
                ini_open("ppu.ini");
                var p0x17p33 = base64_encode(string(global.audio_menu_effects_0_is_on));
                ini_write_string("save", "p0x17p33", p0x17p33);
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
        music_sounds_x_scale_left = -0.95;
        music_sounds_y_scale_left = 0.95;
    }
    else
    {
        music_sounds_x_scale_left = -1.05;
        music_sounds_y_scale_left = 1.05;
    }
}
else
{
    music_sounds_x_scale_left = -1;
    music_sounds_y_scale_left = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 905, 731, 931, 759))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.audio_menu_music_0_is_on == 1)
            {
                global.audio_menu_music_0_is_on = 0;
                ini_open("ppu.ini");
                var p0x17p34 = base64_encode(string(global.audio_menu_music_0_is_on));
                ini_write_string("save", "p0x17p34", p0x17p34);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                ob_audio_controller.alarm[6] = 1;
            }
            else
            {
                global.audio_menu_music_0_is_on = 1;
                ini_open("ppu.ini");
                var p0x17p34 = base64_encode(string(global.audio_menu_music_0_is_on));
                ini_write_string("save", "p0x17p34", p0x17p34);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                audio_group_stop_all(audiogroup_music_menu);
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        music_music_scale_right = 0.95;
    }
    else
    {
        music_music_scale_right = 1.05;
    }
}
else
{
    music_music_scale_right = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 506, 731, 532, 759))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.audio_menu_music_0_is_on == 1)
            {
                global.audio_menu_music_0_is_on = 0;
                ini_open("ppu.ini");
                var p0x17p34 = base64_encode(string(global.audio_menu_music_0_is_on));
                ini_write_string("save", "p0x17p34", p0x17p34);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                ob_audio_controller.alarm[6] = 1;
            }
            else
            {
                global.audio_menu_music_0_is_on = 1;
                ini_open("ppu.ini");
                var p0x17p34 = base64_encode(string(global.audio_menu_music_0_is_on));
                ini_write_string("save", "p0x17p34", p0x17p34);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
                audio_group_stop_all(audiogroup_music_menu);
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        music_music_x_scale_left = -0.95;
        music_music_y_scale_left = 0.95;
    }
    else
    {
        music_music_x_scale_left = -1.05;
        music_music_y_scale_left = 1.05;
    }
}
else
{
    music_music_x_scale_left = -1;
    music_music_y_scale_left = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 905, 817, 931, 845))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.can_play_sound_effects_0_is_on_1_is_off == 0)
            {
                global.can_play_sound_effects_0_is_on_1_is_off = 1;
                ini_open("ppu.ini");
                var p0x17p19 = base64_encode(string(global.can_play_sound_effects_0_is_on_1_is_off));
                ini_write_string("save", "p0x17p19", p0x17p19);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else
            {
                global.can_play_sound_effects_0_is_on_1_is_off = 0;
                ini_open("ppu.ini");
                var p0x17p19 = base64_encode(string(global.can_play_sound_effects_0_is_on_1_is_off));
                ini_write_string("save", "p0x17p19", p0x17p19);
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
        inpuzzle_effects_scale_right = 0.95;
    }
    else
    {
        inpuzzle_effects_scale_right = 1.05;
    }
}
else
{
    inpuzzle_effects_scale_right = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 506, 817, 532, 845))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.can_play_sound_effects_0_is_on_1_is_off == 0)
            {
                global.can_play_sound_effects_0_is_on_1_is_off = 1;
                ini_open("ppu.ini");
                var p0x17p19 = base64_encode(string(global.can_play_sound_effects_0_is_on_1_is_off));
                ini_write_string("save", "p0x17p19", p0x17p19);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else
            {
                global.can_play_sound_effects_0_is_on_1_is_off = 0;
                ini_open("ppu.ini");
                var p0x17p19 = base64_encode(string(global.can_play_sound_effects_0_is_on_1_is_off));
                ini_write_string("save", "p0x17p19", p0x17p19);
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
        inpuzzle_effects_x_scale_left = -0.95;
        inpuzzle_effects_y_scale_left = 0.95;
    }
    else
    {
        inpuzzle_effects_x_scale_left = -1.05;
        inpuzzle_effects_y_scale_left = 1.05;
    }
}
else
{
    inpuzzle_effects_x_scale_left = -1;
    inpuzzle_effects_y_scale_left = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 905, 879, 931, 907))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.can_play_music_0_is_on_1_is_off == 0)
            {
                global.can_play_music_0_is_on_1_is_off = 1;
                ini_open("ppu.ini");
                var p0x17p17 = base64_encode(string(global.can_play_music_0_is_on_1_is_off));
                ini_write_string("save", "p0x17p17", p0x17p17);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else
            {
                global.can_play_music_0_is_on_1_is_off = 0;
                ini_open("ppu.ini");
                var p0x17p17 = base64_encode(string(global.can_play_music_0_is_on_1_is_off));
                ini_write_string("save", "p0x17p17", p0x17p17);
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
        inpuzzle_music_scale_right = 0.95;
    }
    else
    {
        inpuzzle_music_scale_right = 1.05;
    }
}
else
{
    inpuzzle_music_scale_right = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 506, 879, 532, 907))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.can_play_music_0_is_on_1_is_off == 0)
            {
                global.can_play_music_0_is_on_1_is_off = 1;
                ini_open("ppu.ini");
                var p0x17p17 = base64_encode(string(global.can_play_music_0_is_on_1_is_off));
                ini_write_string("save", "p0x17p17", p0x17p17);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else
            {
                global.can_play_music_0_is_on_1_is_off = 0;
                ini_open("ppu.ini");
                var p0x17p17 = base64_encode(string(global.can_play_music_0_is_on_1_is_off));
                ini_write_string("save", "p0x17p17", p0x17p17);
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
        inpuzzle_music_x_scale_left = -0.95;
        inpuzzle_music_y_scale_left = 0.95;
    }
    else
    {
        inpuzzle_music_x_scale_left = -1.05;
        inpuzzle_music_y_scale_left = 1.05;
    }
}
else
{
    inpuzzle_music_x_scale_left = -1;
    inpuzzle_music_y_scale_left = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 905, 941, 931, 969))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.can_play_ambiance_0_is_on_1_is_off == 0)
            {
                global.can_play_ambiance_0_is_on_1_is_off = 1;
                ini_open("ppu.ini");
                var p0x17p18 = base64_encode(string(global.can_play_ambiance_0_is_on_1_is_off));
                ini_write_string("save", "p0x17p18", p0x17p18);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else
            {
                global.can_play_ambiance_0_is_on_1_is_off = 0;
                ini_open("ppu.ini");
                var p0x17p18 = base64_encode(string(global.can_play_ambiance_0_is_on_1_is_off));
                ini_write_string("save", "p0x17p18", p0x17p18);
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
        inpuzzle_ambiance_scale_right = 0.95;
    }
    else
    {
        inpuzzle_ambiance_scale_right = 1.05;
    }
}
else
{
    inpuzzle_ambiance_scale_right = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 506, 941, 532, 969))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.can_play_ambiance_0_is_on_1_is_off == 0)
            {
                global.can_play_ambiance_0_is_on_1_is_off = 1;
                ini_open("ppu.ini");
                var p0x17p18 = base64_encode(string(global.can_play_ambiance_0_is_on_1_is_off));
                ini_write_string("save", "p0x17p18", p0x17p18);
                ini_close();
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_options_arrow, 1, false);
                }
            }
            else
            {
                global.can_play_ambiance_0_is_on_1_is_off = 0;
                ini_open("ppu.ini");
                var p0x17p18 = base64_encode(string(global.can_play_ambiance_0_is_on_1_is_off));
                ini_write_string("save", "p0x17p18", p0x17p18);
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
        inpuzzle_ambiance_x_scale_left = -0.95;
        inpuzzle_ambiance_y_scale_left = 0.95;
    }
    else
    {
        inpuzzle_ambiance_x_scale_left = -1.05;
        inpuzzle_ambiance_y_scale_left = 1.05;
    }
}
else
{
    inpuzzle_ambiance_x_scale_left = -1;
    inpuzzle_ambiance_y_scale_left = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 554, 1026, 883, 1068))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            ini_open("ppu.ini");
            global.actual_volume_level = 1;
            global.volume_level_0_is_full = 0;
            var p0x17p25 = base64_encode(string(global.volume_level_0_is_full));
            ini_write_string("save", "p0x17p25", p0x17p25);
            audio_master_gain(global.actual_volume_level);
            global.actual_effects_volume_level = 1;
            global.effects_volume_level_0_is_full = 0;
            var p0x17p54 = base64_encode(string(global.effects_volume_level_0_is_full));
            ini_write_string("save", "p0x17p54", p0x17p54);
            global.actual_music_volume_level = 1;
            global.music_volume_level_0_is_full = 0;
            var p0x17p55 = base64_encode(string(global.music_volume_level_0_is_full));
            ini_write_string("save", "p0x17p55", p0x17p55);
            global.actual_ambiance_volume_level = 1;
            global.ambiance_volume_level_0_is_full = 0;
            var p0x17p56 = base64_encode(string(global.ambiance_volume_level_0_is_full));
            ini_write_string("save", "p0x17p56", p0x17p56);
            ob_audio_controller.alarm[2] = 1;
            global.audio_menu_effects_0_is_on = 0;
            var p0x17p33 = base64_encode(string(global.audio_menu_effects_0_is_on));
            ini_write_string("save", "p0x17p33", p0x17p33);
            global.audio_menu_music_0_is_on = 0;
            var p0x17p34 = base64_encode(string(global.audio_menu_music_0_is_on));
            ini_write_string("save", "p0x17p34", p0x17p34);
            global.can_play_sound_effects_0_is_on_1_is_off = 0;
            var p0x17p19 = base64_encode(string(global.can_play_sound_effects_0_is_on_1_is_off));
            ini_write_string("save", "p0x17p19", p0x17p19);
            global.can_play_music_0_is_on_1_is_off = 0;
            var p0x17p17 = base64_encode(string(global.can_play_music_0_is_on_1_is_off));
            ini_write_string("save", "p0x17p17", p0x17p17);
            global.can_play_ambiance_0_is_on_1_is_off = 0;
            var p0x17p18 = base64_encode(string(global.can_play_ambiance_0_is_on_1_is_off));
            ini_write_string("save", "p0x17p18", p0x17p18);
            ini_close();
            if (global.audio_menu_effects_0_is_on == 0)
            {
                audio_play_sound(global.sound_option_reset_default, 1, false);
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        audio_defaults_button_scale = 0.985;
    }
    else
    {
        audio_defaults_button_scale = 1.015;
    }
}
else
{
    audio_defaults_button_scale = 1;
}
