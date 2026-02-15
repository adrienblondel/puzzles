mask_index = sprite_index;
if (button_number == 9)
{
    button_text = "PREV";
}
else if (button_number == 10)
{
    button_text = "NEXT";
}
else if (button_number == 11)
{
    button_text = "EXIT GAME";
}
else if (button_number == 12)
{
    button_text = "PLAY";
}
else if (button_number == 13)
{
    button_text = "PREV";
}
else if (button_number == 14)
{
    button_text = "NEXT";
}
else if (button_number == 15)
{
    button_text = "BACK";
}
else if (button_number == 16)
{
    button_text = "PREV";
}
else if (button_number == 17)
{
    button_text = "NEXT";
}
else if (button_number == 21)
{
    button_text = "PREV";
}
else if (button_number == 22)
{
    button_text = "NEXT";
}
else if (button_number == 23)
{
    button_text = "- Complete";
}
else if (button_number == 24)
{
    button_text = "- Incomplete";
}
else if (button_number == 25)
{
    button_text = "- Owned";
}
else if (button_number == 26)
{
    button_text = "- Unowned";
}
else if (button_number == 27)
{
    button_text = "Free";
}
else if (button_number == 28)
{
    button_text = "1000+";
}
else if (button_number == 29)
{
    button_text = "Animals";
}
else if (button_number == 30)
{
    button_text = "Art";
}
else if (button_number == 32)
{
    button_text = "Food";
}
else if (button_number == 33)
{
    button_text = "Geography";
}
else if (button_number == 34)
{
    button_text = "History";
}
else if (button_number == 35)
{
    button_text = "Holidays";
}
else if (button_number == 36)
{
    button_text = "Landscapes";
}
else if (button_number == 37)
{
    button_text = "Legacy";
}
else if (button_number == 38)
{
    button_text = "Miscellaneous";
}
else if (button_number == 39)
{
    button_text = "Nature";
}
else if (button_number == 40)
{
    button_text = "Paintings";
}
else if (button_number == 41)
{
    button_text = "Seasonal";
}
else if (button_number == 42)
{
    button_text = "Space";
}
else if (button_number == 43)
{
    button_text = "Sport";
}
else if (button_number == 44)
{
    button_text = "Variety";
}
else if (button_number == 45)
{
    button_text = "Vehicle";
}
else if (button_number == 46)
{
    button_text = "Video Games";
}
else if (button_number == 53)
{
    button_text = "RESET TO DEFAULT";
}
else if (button_number == 51)
{
    button_text = "Fullscreen";
    if (global.config_game_fullscreen_0_is_on == 1)
    {
        button_text_value = ": OFF";
    }
    else
    {
        button_text_value = ": ON";
    }
}
else if (button_number == 52)
{
    button_text = "Resolution";
    if (global.config_resolution == 1)
    {
        button_text_value = ": 1024x768";
    }
    else if (global.config_resolution == 2)
    {
        button_text_value = ": 1280x720";
    }
    else if (global.config_resolution == 3)
    {
        button_text_value = ": 1280x800";
    }
    else if (global.config_resolution == 4)
    {
        button_text_value = ": 1280x1024";
    }
    else if (global.config_resolution == 5)
    {
        button_text_value = ": 1360x768";
    }
    else if (global.config_resolution == 6)
    {
        button_text_value = ": 1366x768";
    }
    else if (global.config_resolution == 7)
    {
        button_text_value = ": 1440x900";
    }
    else if (global.config_resolution == 8)
    {
        button_text_value = ": 1536x864";
    }
    else if (global.config_resolution == 9)
    {
        button_text_value = ": 1600x900";
    }
    else if (global.config_resolution == 10)
    {
        button_text_value = ": 1680x1050";
    }
    else if (global.config_resolution == 11)
    {
        button_text_value = ": 1920x1080";
    }
    else
    {
        button_text_value = ": NATIVE";
    }
}
else if (button_number == 54)
{
    button_text = "In-puzzle Sounds";
    if (global.can_play_sound_effects_0_is_on_1_is_off == 1)
    {
        button_text_value = ": OFF";
    }
    else
    {
        button_text_value = ": ON";
    }
}
else if (button_number == 55)
{
    button_text = "In-puzzle Music";
    if (global.can_play_music_0_is_on_1_is_off == 1)
    {
        button_text_value = ": OFF";
    }
    else
    {
        button_text_value = ": ON";
    }
}
else if (button_number == 56)
{
    button_text = "In-puzzle Ambiance";
    if (global.can_play_ambiance_0_is_on_1_is_off == 1)
    {
        button_text_value = ": OFF";
    }
    else
    {
        button_text_value = ": ON";
    }
}
else if (button_number == 61)
{
    button_text = "Menu Sounds";
    if (global.audio_menu_effects_0_is_on == 1)
    {
        button_text_value = ": OFF";
    }
    else
    {
        button_text_value = ": ON";
    }
}
else if (button_number == 62)
{
    button_text = "Menu Music";
    if (global.audio_menu_music_0_is_on == 1)
    {
        button_text_value = ": OFF";
    }
    else
    {
        button_text_value = ": ON";
    }
}
else if (button_number == 63)
{
    button_text = "RESET TO DEFAULT";
}
else if (button_number == 66)
{
    button_text = "VIEW GAMEPAD LAYOUT";
}
else if (button_number == 64)
{
    button_text = "Gamepad Sensitivity";
    if (global.gamepad_sensetivity == 1)
    {
        button_text_value = ": x1";
    }
    else if (global.gamepad_sensetivity == 2)
    {
        button_text_value = ": x2";
    }
    else if (global.gamepad_sensetivity == 3)
    {
        button_text_value = ": x3";
    }
    else if (global.gamepad_sensetivity == 4)
    {
        button_text_value = ": x4";
    }
    else if (global.gamepad_sensetivity == 5)
    {
        button_text_value = ": x6";
    }
    else if (global.gamepad_sensetivity == 6)
    {
        button_text_value = ": x7";
    }
    else if (global.gamepad_sensetivity == 7)
    {
        button_text_value = ": x8";
    }
    else if (global.gamepad_sensetivity == 8)
    {
        button_text_value = ": x9";
    }
    else if (global.gamepad_sensetivity == 9)
    {
        button_text_value = ": x10";
    }
    else
    {
        button_text_value = ": x5";
    }
}
else if (button_number == 65)
{
    button_text = "Zoom Pan Speed";
    if (global.zoom_pan_speed == 1)
    {
        button_text_value = ": x2";
    }
    else if (global.zoom_pan_speed == 2)
    {
        button_text_value = ": x3";
    }
    else if (global.zoom_pan_speed == 3)
    {
        button_text_value = ": x4";
    }
    else if (global.zoom_pan_speed == 4)
    {
        button_text_value = ": x5";
    }
    else
    {
        button_text_value = ": x1";
    }
}
else if (button_number == 57)
{
    button_text = "Master Volume";
    if (global.actual_volume_level == 0)
    {
        button_text_value = ": OFF";
    }
    else if (global.actual_volume_level == 0.1)
    {
        button_text_value = ": x1";
    }
    else if (global.actual_volume_level == 0.2)
    {
        button_text_value = ": x2";
    }
    else if (global.actual_volume_level == 0.3)
    {
        button_text_value = ": x3";
    }
    else if (global.actual_volume_level == 0.4)
    {
        button_text_value = ": x4";
    }
    else if (global.actual_volume_level == 0.5)
    {
        button_text_value = ": x5";
    }
    else if (global.actual_volume_level == 0.6)
    {
        button_text_value = ": x6";
    }
    else if (global.actual_volume_level == 0.7)
    {
        button_text_value = ": x7";
    }
    else if (global.actual_volume_level == 0.8)
    {
        button_text_value = ": x8";
    }
    else if (global.actual_volume_level == 0.9)
    {
        button_text_value = ": x9";
    }
    else
    {
        button_text_value = ": x10";
    }
}
else if (button_number == 58)
{
    button_text = "Effects Volume";
    if (global.actual_effects_volume_level == 0)
    {
        button_text_value = ": OFF";
    }
    else if (global.actual_effects_volume_level == 0.1)
    {
        button_text_value = ": x1";
    }
    else if (global.actual_effects_volume_level == 0.2)
    {
        button_text_value = ": x2";
    }
    else if (global.actual_effects_volume_level == 0.3)
    {
        button_text_value = ": x3";
    }
    else if (global.actual_effects_volume_level == 0.4)
    {
        button_text_value = ": x4";
    }
    else if (global.actual_effects_volume_level == 0.5)
    {
        button_text_value = ": x5";
    }
    else if (global.actual_effects_volume_level == 0.6)
    {
        button_text_value = ": x6";
    }
    else if (global.actual_effects_volume_level == 0.7)
    {
        button_text_value = ": x7";
    }
    else if (global.actual_effects_volume_level == 0.8)
    {
        button_text_value = ": x8";
    }
    else if (global.actual_effects_volume_level == 0.9)
    {
        button_text_value = ": x9";
    }
    else
    {
        button_text_value = ": x10";
    }
}
else if (button_number == 59)
{
    button_text = "Music Volume";
    if (global.actual_music_volume_level == 0)
    {
        button_text_value = ": OFF";
    }
    else if (global.actual_music_volume_level == 0.1)
    {
        button_text_value = ": x1";
    }
    else if (global.actual_music_volume_level == 0.2)
    {
        button_text_value = ": x2";
    }
    else if (global.actual_music_volume_level == 0.3)
    {
        button_text_value = ": x3";
    }
    else if (global.actual_music_volume_level == 0.4)
    {
        button_text_value = ": x4";
    }
    else if (global.actual_music_volume_level == 0.5)
    {
        button_text_value = ": x5";
    }
    else if (global.actual_music_volume_level == 0.6)
    {
        button_text_value = ": x6";
    }
    else if (global.actual_music_volume_level == 0.7)
    {
        button_text_value = ": x7";
    }
    else if (global.actual_music_volume_level == 0.8)
    {
        button_text_value = ": x8";
    }
    else if (global.actual_music_volume_level == 0.9)
    {
        button_text_value = ": x9";
    }
    else
    {
        button_text_value = ": x10";
    }
}
else if (button_number == 60)
{
    button_text = "Ambiance Volume";
    if (global.actual_ambiance_volume_level == 0)
    {
        button_text_value = ": OFF";
    }
    else if (global.actual_ambiance_volume_level == 0.1)
    {
        button_text_value = ": x1";
    }
    else if (global.actual_ambiance_volume_level == 0.2)
    {
        button_text_value = ": x2";
    }
    else if (global.actual_ambiance_volume_level == 0.3)
    {
        button_text_value = ": x3";
    }
    else if (global.actual_ambiance_volume_level == 0.4)
    {
        button_text_value = ": x4";
    }
    else if (global.actual_ambiance_volume_level == 0.5)
    {
        button_text_value = ": x5";
    }
    else if (global.actual_ambiance_volume_level == 0.6)
    {
        button_text_value = ": x6";
    }
    else if (global.actual_ambiance_volume_level == 0.7)
    {
        button_text_value = ": x7";
    }
    else if (global.actual_ambiance_volume_level == 0.8)
    {
        button_text_value = ": x8";
    }
    else if (global.actual_ambiance_volume_level == 0.9)
    {
        button_text_value = ": x9";
    }
    else
    {
        button_text_value = ": x10";
    }
}
else if (button_number == 68)
{
    button_text = "@pixel_puzzles";
}
else if (button_number == 69)
{
    button_text = "@pixel_puzzles";
}
else if (button_number == 70)
{
    button_text = "pixelpuzzle.co.uk";
}
else if (button_number == 71)
{
    button_text = "x1 Gold = x10 Hints";
}
else if (button_number == 72)
{
    button_text = "x1 Ultimate = x100 Hints";
}
else if (button_number == 73)
{
    button_text = "x50 Hints = x1 Gold";
}
else if (button_number == 74)
{
    button_text = "CURSORS";
}
else if (button_number == 75)
{
    button_text = "THEMES";
}
else if (button_number == 76)
{
    button_text = "BACKGROUNDS";
}
else if (button_number == 77)
{
    button_text = "MUSIC";
}
else if (button_number == 78)
{
    button_text = "PP HATS";
}
else if (button_number == 79)
{
    button_text = "PP ITEM";
}
else if (button_number == 80)
{
    button_text = "PP OUTFIT";
}
else if (button_number == 82)
{
    button_text = "BACK";
}
else if (button_number == 83)
{
    button_text = "PREV";
}
else if (button_number == 84)
{
    button_text = "NEXT";
}
else if (button_number == 85)
{
}
else if (button_number == 86)
{
}
else if (button_number == 87)
{
    var imag_name = "\misc\content\p" + string(global.quick_puz1_pack) + "p" + string(global.quick_puz1_puz) + "b.png";
    if (file_exists(working_directory + string(imag_name)))
    {
        var sprite_to_use = sprite_add(working_directory + string(imag_name), 0, false, false, 87, 53);
        sprite_index = sprite_to_use;
        quick_puz_loaded = 1;
        mask_index = sp_nm_quick_select;
    }
}
else if (button_number == 88)
{
    var imag_name = "\misc\content\p" + string(global.quick_puz2_pack) + "p" + string(global.quick_puz2_puz) + "b.png";
    if (file_exists(working_directory + string(imag_name)))
    {
        var sprite_to_use = sprite_add(working_directory + string(imag_name), 0, false, false, 87, 53);
        sprite_index = sprite_to_use;
        quick_puz_loaded = 1;
        mask_index = sp_nm_quick_select;
    }
}
else if (button_number == 89)
{
    var imag_name = "\misc\content\p" + string(global.quick_puz3_pack) + "p" + string(global.quick_puz3_puz) + "b.png";
    if (file_exists(working_directory + string(imag_name)))
    {
        var sprite_to_use = sprite_add(working_directory + string(imag_name), 0, false, false, 87, 53);
        sprite_index = sprite_to_use;
        quick_puz_loaded = 1;
        mask_index = sp_nm_quick_select;
    }
}
else if (button_number == 90)
{
    var imag_name = "\misc\content\p" + string(global.quick_puz4_pack) + "p" + string(global.quick_puz4_puz) + "b.png";
    if (file_exists(working_directory + string(imag_name)))
    {
        var sprite_to_use = sprite_add(working_directory + string(imag_name), 0, false, false, 87, 53);
        sprite_index = sprite_to_use;
        quick_puz_loaded = 1;
        mask_index = sp_nm_quick_select;
    }
}
else if (button_number == 91)
{
    var imag_name = "\misc\content\p" + string(global.quick_puz5_pack) + "p" + string(global.quick_puz5_puz) + "b.png";
    if (file_exists(working_directory + string(imag_name)))
    {
        var sprite_to_use = sprite_add(working_directory + string(imag_name), 0, false, false, 87, 53);
        sprite_index = sprite_to_use;
        quick_puz_loaded = 1;
        mask_index = sp_nm_quick_select;
    }
}
else if (button_number == 92)
{
    var imag_name = "\misc\content\p" + string(global.quick_puz6_pack) + "p" + string(global.quick_puz6_puz) + "b.png";
    if (file_exists(working_directory + string(imag_name)))
    {
        var sprite_to_use = sprite_add(working_directory + string(imag_name), 0, false, false, 87, 53);
        sprite_index = sprite_to_use;
        quick_puz_loaded = 1;
        mask_index = sp_nm_quick_select;
    }
}
else if (button_number == 93)
{
    var imag_name = "\misc\content\p" + string(global.quick_puz7_pack) + "p" + string(global.quick_puz7_puz) + "b.png";
    if (file_exists(working_directory + string(imag_name)))
    {
        var sprite_to_use = sprite_add(working_directory + string(imag_name), 0, false, false, 87, 53);
        sprite_index = sprite_to_use;
        quick_puz_loaded = 1;
        mask_index = sp_nm_quick_select;
    }
}
else if (button_number == 94)
{
    var imag_name = "\misc\content\p" + string(global.quick_puz8_pack) + "p" + string(global.quick_puz8_puz) + "b.png";
    if (file_exists(working_directory + string(imag_name)))
    {
        var sprite_to_use = sprite_add(working_directory + string(imag_name), 0, false, false, 87, 53);
        sprite_index = sprite_to_use;
        quick_puz_loaded = 1;
        mask_index = sp_nm_quick_select;
    }
}
else if (button_number == 95)
{
    button_text = "News post: PPU 2.0 update";
}
else if (button_number == 96)
{
    button_text = "SHOW LIST VIEW";
}
else if (button_number == 97)
{
    button_text = "Zoom overlay text";
    if (global.hide_zoom_text == 0)
    {
        button_text_value = ": ON";
    }
    else
    {
        button_text_value = ": OFF";
    }
}
else
{
}
