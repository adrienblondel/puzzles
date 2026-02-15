if (global.current_pack_open == 29)
{
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 11, 897, 386, 1072))
    {
        if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
        {
            if (global.audio_menu_effects_0_is_on == 0)
            {
                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
            }
            steam_activate_overlay_store(297020);
        }
        if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
        {
            link_button_scale = 0.985;
        }
        else
        {
            link_button_scale = 1.015;
        }
    }
    else
    {
        link_button_scale = 1;
    }
}
else if (global.current_pack_open == 54)
{
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 11, 897, 386, 1072))
    {
        if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
        {
            if (global.audio_menu_effects_0_is_on == 0)
            {
                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
            }
            steam_activate_overlay_store(301750);
        }
        if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
        {
            link_button_scale = 0.985;
        }
        else
        {
            link_button_scale = 1.015;
        }
    }
    else
    {
        link_button_scale = 1;
    }
}
