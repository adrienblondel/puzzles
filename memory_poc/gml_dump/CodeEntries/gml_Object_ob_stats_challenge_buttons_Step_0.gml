if (place_meeting(x, y, ob_menu_cursor))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (button_number == 50)
            {
                steam_activate_overlay_browser("http://steamcommunity.com//stats/351030/leaderboards/5853923");
            }
            if (button_number == 49)
            {
                steam_activate_overlay_browser("http://steamcommunity.com//stats/351030/leaderboards/5602183");
            }
            if (button_number == 48)
            {
                steam_activate_overlay_browser("http://steamcommunity.com//stats/351030/leaderboards/5360718");
            }
            if (button_number == 47)
            {
                steam_activate_overlay_browser("http://steamcommunity.com//stats/351030/leaderboards/5251956");
            }
            if (button_number == 46)
            {
                steam_activate_overlay_browser("http://steamcommunity.com//stats/351030/leaderboards/4971307");
            }
            if (global.audio_menu_effects_0_is_on == 0)
            {
                audio_play_sound(global.sound_option_open_overlay, 1, false);
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        image_scale = 0.985;
    }
    else
    {
        image_scale = 1.015;
    }
}
else
{
    image_scale = 1;
}
