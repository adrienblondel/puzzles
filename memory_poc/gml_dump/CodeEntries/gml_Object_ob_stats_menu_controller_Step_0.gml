if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 0, 1030, 472, 1080))
{
    if (left_stats_start_y > -50)
    {
        left_stats_start_y -= 10;
        if (left_stats_start_y < -50)
        {
            left_stats_start_y = -50;
        }
    }
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 0, 300, 472, 390))
{
    if (left_stats_start_y < 388)
    {
        left_stats_start_y += 10;
        if (left_stats_start_y > 388)
        {
            left_stats_start_y = 388;
        }
    }
}
if (mouse_wheel_down())
{
    if (ob_menu_cursor.x < 479)
    {
        if (ob_menu_cursor.y > 300)
        {
            if (left_stats_start_y > -50)
            {
                left_stats_start_y -= 30;
                if (left_stats_start_y < -50)
                {
                    left_stats_start_y = -50;
                }
            }
        }
    }
}
if (mouse_wheel_up())
{
    if (ob_menu_cursor.x < 479)
    {
        if (ob_menu_cursor.y > 300)
        {
            if (left_stats_start_y < 388)
            {
                left_stats_start_y += 30;
                if (left_stats_start_y > 388)
                {
                    left_stats_start_y = 388;
                }
            }
        }
    }
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 480, 1030, 956, 1080))
{
    if (global.challenge_1_y > -2617)
    {
        global.challenge_1_y -= 10;
        if (global.challenge_1_y < -2617)
        {
            global.challenge_1_y = -2617;
        }
    }
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 480, 300, 956, 390))
{
    if (global.challenge_1_y < 388)
    {
        global.challenge_1_y += 10;
        if (global.challenge_1_y > 388)
        {
            global.challenge_1_y = 388;
        }
    }
}
if (mouse_wheel_down())
{
    if (ob_menu_cursor.x > 480 && ob_menu_cursor.x < 956)
    {
        if (ob_menu_cursor.y > 300)
        {
            if (global.challenge_1_y > -2617)
            {
                global.challenge_1_y -= 30;
                if (global.challenge_1_y < -2617)
                {
                    global.challenge_1_y = -2617;
                }
            }
        }
    }
}
if (mouse_wheel_up())
{
    if (ob_menu_cursor.x > 480 && ob_menu_cursor.x < 956)
    {
        if (ob_menu_cursor.y > 300)
        {
            if (global.challenge_1_y < 388)
            {
                global.challenge_1_y += 30;
                if (global.challenge_1_y > 388)
                {
                    global.challenge_1_y = 388;
                }
            }
        }
    }
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 976, 1023, 1425, 1076))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            global.a_menu_overlay_is_showing = 1;
            challenge_info_is_showing = 1;
            if (global.audio_menu_effects_0_is_on == 0)
            {
                audio_play_sound(global.sound_option_open_overlay, 1, false);
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        challenge_info_button_scale = 0.985;
    }
    else
    {
        challenge_info_button_scale = 1.015;
    }
}
else
{
    challenge_info_button_scale = 1;
}
if (keyboard_check_pressed(vk_anykey))
{
    if (challenge_info_is_showing == 1)
    {
        if (global.audio_menu_effects_0_is_on == 0)
        {
            audio_play_sound(global.sound_menu_overlay_close, 1, false);
        }
        global.a_menu_overlay_is_showing = 0;
        challenge_info_is_showing = 0;
    }
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1468, 388, 1900, 479))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            steam_activate_overlay_browser("http://steamcommunity.com//stats/351030/leaderboards/1321002");
            if (global.audio_menu_effects_0_is_on == 0)
            {
                audio_play_sound(global.sound_option_open_overlay, 1, false);
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        leader_1_scale = 0.985;
    }
    else
    {
        leader_1_scale = 1.015;
    }
}
else
{
    leader_1_scale = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1468, 487, 1900, 578))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            steam_activate_overlay_browser("http://steamcommunity.com//stats/351030/leaderboards/1321096");
            if (global.audio_menu_effects_0_is_on == 0)
            {
                audio_play_sound(global.sound_option_open_overlay, 1, false);
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        leader_2_scale = 0.985;
    }
    else
    {
        leader_2_scale = 1.015;
    }
}
else
{
    leader_2_scale = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1468, 586, 1900, 677))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            steam_activate_overlay_browser("http://steamcommunity.com//stats/351030/leaderboards/1321006");
            if (global.audio_menu_effects_0_is_on == 0)
            {
                audio_play_sound(global.sound_option_open_overlay, 1, false);
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        leader_3_scale = 0.985;
    }
    else
    {
        leader_3_scale = 1.015;
    }
}
else
{
    leader_3_scale = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1468, 685, 1900, 776))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            steam_activate_overlay_browser("http://steamcommunity.com//stats/351030/leaderboards/1321093");
            if (global.audio_menu_effects_0_is_on == 0)
            {
                audio_play_sound(global.sound_option_open_overlay, 1, false);
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        leader_4_scale = 0.985;
    }
    else
    {
        leader_4_scale = 1.015;
    }
}
else
{
    leader_4_scale = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1468, 784, 1900, 875))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            steam_activate_overlay_browser("http://steamcommunity.com//stats/351030/leaderboards/1321018");
            if (global.audio_menu_effects_0_is_on == 0)
            {
                audio_play_sound(global.sound_option_open_overlay, 1, false);
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        leader_5_scale = 0.985;
    }
    else
    {
        leader_5_scale = 1.015;
    }
}
else
{
    leader_5_scale = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1468, 883, 1900, 974))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            steam_activate_overlay_browser("http://steamcommunity.com//stats/351030/leaderboards/1529578");
            if (global.audio_menu_effects_0_is_on == 0)
            {
                audio_play_sound(global.sound_option_open_overlay, 1, false);
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        leader_6_scale = 0.985;
    }
    else
    {
        leader_6_scale = 1.015;
    }
}
else
{
    leader_6_scale = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1468, 982, 1900, 1073))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            steam_activate_overlay_browser("http://steamcommunity.com//stats/351030/leaderboards/1321007");
            if (global.audio_menu_effects_0_is_on == 0)
            {
                audio_play_sound(global.sound_option_open_overlay, 1, false);
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        leader_7_scale = 0.985;
    }
    else
    {
        leader_7_scale = 1.015;
    }
}
else
{
    leader_7_scale = 1;
}
