if (token_has_been_clicked == 0)
{
    if (place_meeting(x, y, ob_menu_cursor))
    {
        if (mouse_check_button_pressed(mb_left) || gamepad_button_check_pressed(0, gp_shoulderrb))
        {
            audio_play_sound(s_grab_hint, 1, false);
            token_has_been_clicked = 1;
            depth = -1500;
            alarm[1] = 1;
            move_towards_point(1899, 28, 16);
            if (steam_stats_ready())
            {
                var new_hints_earned = steam_get_stat_int("hints_earned") + 1;
                steam_set_stat_int("hints_earned", new_hints_earned);
            }
        }
        if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_shoulderrb))
        {
            hint_token_scale = 0.98;
        }
        else
        {
            hint_token_scale = 1.02;
        }
    }
    else
    {
        hint_token_scale = 1;
    }
}
if (token_has_been_clicked == 1)
{
    hint_toekn_rotation -= 5;
    if (x > 1898)
    {
        instance_destroy();
    }
}
