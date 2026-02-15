if (room == r_posts)
{
    if (steam_stats_ready())
    {
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 0, 246, 80, 293))
        {
            if (mouse_check_button_pressed(mb_left))
            {
                var total_earned = steam_get_stat_int("ultimate_pieces_earned");
                var total_spent = steam_get_stat_int("ultimate_pieces_used");
                var current_amount = total_earned - total_spent;
                if (current_amount > 0)
                {
                    instance_create(x, y, ob_kiosk_ultimate_piece);
                }
            }
        }
    }
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1534, 608, 1903, 658))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (steam_stats_ready())
            {
                var total_gold_earned = steam_get_stat_int("gold_bits_earned");
                var total_gold_spent = steam_get_stat_int("gold_bits_used");
                var gold_to_spend = 1;
                var current_gold = total_gold_earned - total_gold_spent;
                if (current_gold >= gold_to_spend)
                {
                    var new_hints_earned = steam_get_stat_int("hints_earned") + 10;
                    var new_total_gold_spent = steam_get_stat_int("gold_bits_used") + 1;
                    steam_set_stat_int("hints_earned", new_hints_earned);
                    steam_set_stat_int("gold_bits_used", new_total_gold_spent);
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_hint_trader_give_tokens, 1, false);
                    }
                    if (steam_stats_ready())
                    {
                        if (!steam_get_achievement("use_hint_trader"))
                        {
                            steam_set_achievement("use_hint_trader");
                        }
                    }
                    if (instance_exists(ob_menu_controller))
                    {
                        ob_menu_controller.alarm[2] = 1;
                    }
                }
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        open_trade_button_scale = 0.985;
    }
    else
    {
        open_trade_button_scale = 1.015;
    }
}
else
{
    open_trade_button_scale = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1534, 812, 1903, 862))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (steam_stats_ready())
            {
                var total_gold_earned = steam_get_stat_int("ultimate_pieces_earned");
                var total_gold_spent = steam_get_stat_int("ultimate_pieces_used");
                var gold_to_spend = 1;
                var current_gold = total_gold_earned - total_gold_spent;
                if (current_gold >= gold_to_spend)
                {
                    var new_hints_earned = steam_get_stat_int("hints_earned") + 100;
                    var new_total_gold_spent = steam_get_stat_int("ultimate_pieces_used") + 1;
                    steam_set_stat_int("hints_earned", new_hints_earned);
                    steam_set_stat_int("ultimate_pieces_used", new_total_gold_spent);
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_hint_trader_give_tokens, 1, false);
                    }
                    if (steam_stats_ready())
                    {
                        if (!steam_get_achievement("use_hint_trader"))
                        {
                            steam_set_achievement("use_hint_trader");
                        }
                    }
                    if (instance_exists(ob_menu_controller))
                    {
                        ob_menu_controller.alarm[2] = 1;
                    }
                }
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        open_trade_button_scale2 = 0.985;
    }
    else
    {
        open_trade_button_scale2 = 1.015;
    }
}
else
{
    open_trade_button_scale2 = 1;
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1534, 1015, 1903, 1065))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (steam_stats_ready())
            {
                var total_gold_earned = steam_get_stat_int("hints_earned");
                var total_gold_spent = steam_get_stat_int("hints_used");
                var gold_to_spend = 50;
                var current_gold = total_gold_earned - total_gold_spent;
                if (current_gold >= gold_to_spend)
                {
                    var new_hints_earned = steam_get_stat_int("gold_bits_earned") + 1;
                    var new_total_gold_spent = steam_get_stat_int("hints_used") + 50;
                    steam_set_stat_int("gold_bits_earned", new_hints_earned);
                    steam_set_stat_int("hints_used", new_total_gold_spent);
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_hint_trader_give_tokens, 1, false);
                    }
                    if (steam_stats_ready())
                    {
                        if (!steam_get_achievement("use_hint_trader"))
                        {
                            steam_set_achievement("use_hint_trader");
                        }
                    }
                    if (instance_exists(ob_menu_controller))
                    {
                        ob_menu_controller.alarm[2] = 1;
                    }
                }
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        open_trade_button_scale3 = 0.985;
    }
    else
    {
        open_trade_button_scale3 = 1.015;
    }
}
else
{
    open_trade_button_scale3 = 1;
}
