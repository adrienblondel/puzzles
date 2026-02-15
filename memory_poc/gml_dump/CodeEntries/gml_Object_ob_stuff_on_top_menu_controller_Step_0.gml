if (room == r_options)
{
}
else if (room == r_stats)
{
}
else if (room == r_puzzle_select)
{
}
else if (room == r_uniques_select)
{
}
else if (room == r_main_menu)
{
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1660, 342, 1912, 433))
    {
        if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
        {
            if (global.audio_menu_effects_0_is_on == 0)
            {
                audio_play_sound(s_button_pressed_denied, 1, false);
            }
            global.level_type = 2;
            global.total_number_of_pieces = 330;
            if (steam_stats_ready())
            {
                var challenge_67_attempts = steam_get_stat_int("challenge_67_attempts") + 1;
                steam_upload_score("challenge_67_attempts", challenge_67_attempts);
                steam_set_stat_int("challenge_67_attempts", challenge_67_attempts);
            }
            global.current_pack_open = 10000;
            global.puzzle_pieces_to_use = ob_puzzle_pieces;
            global.current_puzzle_global_puzzle_number = 100000;
            global.puzzle_controller_to_use = ob_challenge_puzzle_comtroller;
            room_goto(r_puzzle_room);
        }
        if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
        {
            active_comp_button_scale = 0.985;
        }
        else
        {
            active_comp_button_scale = 1.015;
        }
    }
    else
    {
        active_comp_button_scale = 1;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 8, 307, 260, 567))
    {
        if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
        {
            if (global.audio_menu_effects_0_is_on == 0)
            {
                audio_play_sound(global.sound_sidebar_buttons_pressed, 1, false);
            }
            steam_activate_overlay_browser("https://steamcommunity.com/groups/ThePuzzleClub");
        }
        if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
        {
            news_scale = 0.985;
        }
        else
        {
            news_scale = 1.015;
        }
    }
    else
    {
        news_scale = 1;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1657, 1035, 1914, 1076))
    {
        if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
        {
            if (global.audio_menu_effects_0_is_on == 0)
            {
                audio_play_sound(global.sound_sidebar_buttons_pressed, 1, false);
            }
            steam_activate_overlay_browser("http://store.steampowered.com/dlc/351030/");
        }
        if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
        {
            all_dlc_button_scale = 0.985;
        }
        else
        {
            all_dlc_button_scale = 1.015;
        }
    }
    else
    {
        all_dlc_button_scale = 1;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 855, 255, 915, 285))
    {
        if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
        {
            if (global.audio_menu_effects_0_is_on == 0)
            {
                audio_play_sound(global.sound_sidebar_buttons_pressed, 1, false);
            }
            global.game_current_language = 0;
            ini_open("ppu.ini");
            var p0x17p70 = base64_encode(string(global.game_current_language));
            ini_write_string("save", "p0x17p70", p0x17p70);
            ini_close();
            global.puzzle_favorites_can_fade_in = 0;
            audio_stop_sound(global.sound_puzzle_packs_load_in);
            room_restart();
        }
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 930, 255, 990, 285))
    {
        if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
        {
            if (global.audio_menu_effects_0_is_on == 0)
            {
                audio_play_sound(global.sound_sidebar_buttons_pressed, 1, false);
            }
            global.game_current_language = 1;
            ini_open("ppu.ini");
            var p0x17p70 = base64_encode(string(global.game_current_language));
            ini_write_string("save", "p0x17p70", p0x17p70);
            ini_close();
            global.puzzle_favorites_can_fade_in = 0;
            audio_stop_sound(global.sound_puzzle_packs_load_in);
            room_restart();
        }
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1005, 255, 1065, 285))
    {
        if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
        {
            if (global.audio_menu_effects_0_is_on == 0)
            {
                audio_play_sound(global.sound_sidebar_buttons_pressed, 1, false);
            }
            global.game_current_language = 2;
            ini_open("ppu.ini");
            var p0x17p70 = base64_encode(string(global.game_current_language));
            ini_write_string("save", "p0x17p70", p0x17p70);
            ini_close();
            global.puzzle_favorites_can_fade_in = 0;
            audio_stop_sound(global.sound_puzzle_packs_load_in);
            room_restart();
        }
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1080, 255, 1140, 285))
    {
        if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
        {
            if (global.audio_menu_effects_0_is_on == 0)
            {
                audio_play_sound(global.sound_sidebar_buttons_pressed, 1, false);
            }
            global.game_current_language = 20;
            ini_open("ppu.ini");
            var p0x17p70 = base64_encode(string(global.game_current_language));
            ini_write_string("save", "p0x17p70", p0x17p70);
            ini_close();
            global.puzzle_favorites_can_fade_in = 0;
            audio_stop_sound(global.sound_puzzle_packs_load_in);
            room_restart();
        }
    }
    if (global.puzzle_fav_1 == 0 && global.puzzle_fav_2 == 0 && global.puzzle_fav_3 == 0 && global.puzzle_fav_4 == 0 && global.puzzle_fav_5 == 0 && global.puzzle_fav_6 == 0 && global.puzzle_fav_7 == 0 && global.puzzle_fav_8 == 0 && global.puzzle_fav_9 == 0 && global.puzzle_fav_10 == 0 && global.puzzle_fav_11 == 0 && global.puzzle_fav_12 == 0 && global.puzzle_fav_13 == 0 && global.puzzle_fav_14 == 0 && global.puzzle_fav_15 == 0)
    {
        if (global.no_favs_display_alpha < 1)
        {
            global.no_favs_display_alpha += 0.05;
        }
        if (global.no_favs_display_backing_alpha < 0.75)
        {
            global.no_favs_display_backing_alpha += 0.0375;
        }
    }
    else
    {
        if (global.no_favs_display_alpha > 0)
        {
            global.no_favs_display_alpha -= 0.05;
        }
        if (global.no_favs_display_backing_alpha > 0)
        {
            global.no_favs_display_backing_alpha -= 0.0375;
        }
    }
}
