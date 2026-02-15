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
    alarm[11] = 1;
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
    alarm[11] = 1;
}
