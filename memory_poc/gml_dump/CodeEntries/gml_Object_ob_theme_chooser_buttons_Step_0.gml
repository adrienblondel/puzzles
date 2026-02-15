if (global.theme_chooser_is_open == 0)
{
    instance_destroy();
}
if (place_meeting(x, y, ob_menu_cursor))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.theme_chooser_is_open == 1)
        {
            if (image_alpha == 1)
            {
                if (ob_menu_cursor.y > 300)
                {
                    if (theme_pack == 1 || theme_pack == 2 || theme_pack == 3 || theme_pack == 4 || theme_pack == 6 || theme_pack == 7 || theme_pack == 8 || theme_pack == 9 || theme_pack == 10)
                    {
                        global.theme_to_use = theme_pack - 1;
                        if (global.audio_menu_effects_0_is_on == 0)
                        {
                            audio_play_sound(global.sound_select_theme, 1, false);
                        }
                        audio_stop_sound(global.sound_puzzles_load_in);
                        audio_stop_sound(global.sound_puzzle_packs_load_in);
                        if (global.audio_menu_effects_0_is_on == 0)
                        {
                            audio_play_sound(global.sound_puzzle_packs_load_in, 1, false);
                        }
                        ini_open("ppu.ini");
                        var p0x17p47 = base64_encode(string(global.theme_to_use));
                        ini_write_string("save", "p0x17p47", p0x17p47);
                        ini_close();
                        global.theme_chooser_is_open = 0;
                        if (instance_exists(ob_puzzle_button))
                        {
                            ob_puzzle_button.alarm[2] = 1;
                            ob_puzzle_button.image_alpha = 0;
                        }
                    }
                    else if (theme_pack == 5)
                    {
                        if (steam_user_owns_dlc(global.pack_23_dlc_appid))
                        {
                            global.theme_to_use = 4;
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_select_theme, 1, false);
                            }
                            audio_stop_sound(global.sound_puzzles_load_in);
                            audio_stop_sound(global.sound_puzzle_packs_load_in);
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_puzzle_packs_load_in, 1, false);
                            }
                            ini_open("ppu.ini");
                            var p0x17p47 = base64_encode(string(global.theme_to_use));
                            ini_write_string("save", "p0x17p47", p0x17p47);
                            ini_close();
                            global.theme_chooser_is_open = 0;
                            if (instance_exists(ob_puzzle_button))
                            {
                                ob_puzzle_button.alarm[2] = 1;
                                ob_puzzle_button.image_alpha = 0;
                            }
                        }
                        else
                        {
                            steam_activate_overlay_store(global.pack_23_dlc_appid);
                        }
                    }
                }
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        if (ob_menu_cursor.y > 300)
        {
            if (theme_pack > 0)
            {
                button_size = 0.985;
            }
            else
            {
                button_size = 1.015;
            }
        }
        else
        {
            button_size = 1;
        }
    }
    else if (ob_menu_cursor.y < 300)
    {
        button_size = 1;
    }
    else
    {
        button_size = 1.015;
    }
}
else
{
    button_size = 1;
}
if (image_alpha < 1)
{
    button_sprite_to_show_1_alpha = image_alpha;
    button_sprite_to_show_2_alpha = image_alpha;
}
else if (current_button_sprite_showing_1_or_2 == 0)
{
    if (button_sprite_to_show_1_alpha < 1)
    {
        button_sprite_to_show_1_alpha += 0.05;
    }
    if (button_sprite_to_show_2_alpha > 0)
    {
        button_sprite_to_show_2_alpha -= 0.05;
    }
}
else
{
    if (button_sprite_to_show_2_alpha < 1)
    {
        button_sprite_to_show_2_alpha += 0.05;
    }
    if (button_sprite_to_show_1_alpha > 0)
    {
        button_sprite_to_show_1_alpha -= 0.05;
    }
}
