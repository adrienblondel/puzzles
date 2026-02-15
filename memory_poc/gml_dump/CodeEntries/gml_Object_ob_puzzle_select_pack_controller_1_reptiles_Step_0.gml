if (pack_is_owned == 0)
{
    if (pack_is_not_owned_display_alpha < 1)
    {
        pack_is_not_owned_display_alpha += 0.05;
    }
    if (pack_is_not_owned_backing_alpha < 0.75)
    {
        pack_is_not_owned_backing_alpha += 0.05;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 37, 640, 360, 725))
    {
        if (mouse_check_button(mb_left))
        {
            buy_button_size = 0.985;
        }
        else
        {
            buy_button_size = 1.015;
        }
        if (global.theme_chooser_is_open == 0)
        {
            if (mouse_check_button_pressed(mb_left))
            {
                if (global.audio_menu_effects_0_is_on == 0)
                {
                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                }
                steam_activate_overlay_store(global.pack_1_dlc_appid);
                can_keep_checking = 1;
                alarm[0] = 60;
            }
        }
    }
    else
    {
        buy_button_size = 1;
    }
}
else if (dlc_is_installed == 0)
{
    if (loading_animation < 9)
    {
        loading_animation += 0.2;
    }
    else
    {
        loading_animation = 0;
    }
}
