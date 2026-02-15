if (button_number == 53)
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
if (button_number == 57)
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
if (button_number == 58)
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
if (button_number == 59)
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
if (button_number == 60)
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
