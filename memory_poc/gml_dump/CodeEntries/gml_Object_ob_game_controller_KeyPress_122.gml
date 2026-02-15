if (room != r_intro)
{
    if (global.fullscreen_mode == 0)
    {
        global.fullscreen_mode = 1;
        window_set_fullscreen(true);
    }
    else
    {
        global.fullscreen_mode = 0;
        window_set_fullscreen(false);
    }
    ini_open("settings.ini");
    ini_write_real("settings", "fullscreen_mode", global.fullscreen_mode);
    ini_close();
}
