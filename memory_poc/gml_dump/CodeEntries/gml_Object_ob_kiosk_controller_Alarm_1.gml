if (steam_stats_ready())
{
    if (global.kiosk_paid_gold_or_ultimate == 0)
    {
        var achievemnet_to_set;
        if (purchase_kiosk_category_number == 1)
        {
            achievemnet_to_set = "kioskcursor" + string(purchase_kiosk_item_number);
        }
        else if (purchase_kiosk_category_number == 2)
        {
            achievemnet_to_set = "kioskmusic" + string(purchase_kiosk_item_number);
        }
        else if (purchase_kiosk_category_number == 3)
        {
            achievemnet_to_set = "kioskexperimentals" + string(purchase_kiosk_item_number);
        }
        else if (purchase_kiosk_category_number == 4)
        {
            achievemnet_to_set = "kiosktheme" + string(purchase_kiosk_item_number);
        }
        else if (purchase_kiosk_category_number == 5)
        {
            achievemnet_to_set = "kioskfigurals" + string(purchase_kiosk_item_number);
        }
        else if (purchase_kiosk_category_number == 6)
        {
            achievemnet_to_set = "kiosktoolbar" + string(purchase_kiosk_item_number);
        }
        else if (purchase_kiosk_category_number == 7)
        {
            achievemnet_to_set = "kioskavatar" + string(purchase_kiosk_item_number);
        }
        else if (purchase_kiosk_category_number == 8)
        {
            achievemnet_to_set = "kioskchallenges" + string(purchase_kiosk_item_number);
        }
        else if (purchase_kiosk_category_number == 9)
        {
            achievemnet_to_set = "kioskpuzzles" + string(purchase_kiosk_item_number);
        }
        var total_gold_earned = steam_get_stat_int("gold_bits_earned");
        var total_gold_spent = steam_get_stat_int("gold_bits_used");
        var item_price = purchase_gold_price;
        var current_gold = total_gold_earned - total_gold_spent;
        if (current_gold >= item_price)
        {
            steam_set_achievement(achievemnet_to_set);
            var new_total_gold_spent = steam_get_stat_int("gold_bits_used") + item_price;
            steam_set_stat_int("gold_bits_used", new_total_gold_spent);
            if (global.dev_tools_are_active == 0)
            {
                var normal_trades = steam_get_stat_int("kiosk_trades") + 1;
                steam_upload_score("kiosk_trades", normal_trades);
                steam_set_stat_int("kiosk_trades", normal_trades);
            }
            if (purchase_kiosk_category_number == 1)
            {
                if (global.dev_tools_are_active == 0)
                {
                    var cursor_trades = steam_get_stat_int("kiosk_trades_cursors") + 1;
                    steam_upload_score("kiosk_trades_cursors", cursor_trades);
                    steam_set_stat_int("kiosk_trades_cursors", cursor_trades);
                }
            }
            if (purchase_kiosk_category_number == 2)
            {
                if (global.dev_tools_are_active == 0)
                {
                    var music_trades = steam_get_stat_int("kiosk_trades_music") + 1;
                    steam_upload_score("kiosk_trades_music", music_trades);
                    steam_set_stat_int("kiosk_trades_music", music_trades);
                }
            }
            if (purchase_kiosk_category_number == 3)
            {
                if (global.dev_tools_are_active == 0)
                {
                    var experimentals_trades = steam_get_stat_int("kiosk_trades_experimentals") + 1;
                    steam_upload_score("kiosk_trades_experimentals", experimentals_trades);
                    steam_set_stat_int("kiosk_trades_experimentals", experimentals_trades);
                }
            }
            if (purchase_kiosk_category_number == 4)
            {
                if (global.dev_tools_are_active == 0)
                {
                    var theme_trades = steam_get_stat_int("kiosk_trades_theme") + 1;
                    steam_upload_score("kiosk_trades_theme", theme_trades);
                    steam_set_stat_int("kiosk_trades_theme", theme_trades);
                }
            }
            if (purchase_kiosk_category_number == 5)
            {
                if (global.dev_tools_are_active == 0)
                {
                    var figurals_trades = steam_get_stat_int("kiosk_trades_figurals") + 1;
                    steam_upload_score("kiosk_trades_figurals", figurals_trades);
                    steam_set_stat_int("kiosk_trades_figurals", figurals_trades);
                }
            }
            if (purchase_kiosk_category_number == 6)
            {
                if (global.dev_tools_are_active == 0)
                {
                    var toolbar_trades = steam_get_stat_int("kiosk_trades_toolbar") + 1;
                    steam_upload_score("kiosk_trades_toolbar", toolbar_trades);
                    steam_set_stat_int("kiosk_trades_toolbar", toolbar_trades);
                }
            }
            if (purchase_kiosk_category_number == 7)
            {
                if (global.dev_tools_are_active == 0)
                {
                    var avatars_trades = steam_get_stat_int("kiosk_trades_avatars") + 1;
                    steam_upload_score("kiosk_trades_avatars", avatars_trades);
                    steam_set_stat_int("kiosk_trades_avatars", avatars_trades);
                }
            }
            if (purchase_kiosk_category_number == 8)
            {
                if (global.dev_tools_are_active == 0)
                {
                    var challenges_trades = steam_get_stat_int("kiosk_trades_challenges") + 1;
                    steam_upload_score("kiosk_trades_challenges", challenges_trades);
                    steam_set_stat_int("kiosk_trades_challenges", challenges_trades);
                }
            }
            if (purchase_kiosk_category_number == 9)
            {
                if (global.dev_tools_are_active == 0)
                {
                    var puzzles_trades = steam_get_stat_int("kiosk_trades_puzzles") + 1;
                    steam_upload_score("kiosk_trades_puzzles", puzzles_trades);
                    steam_set_stat_int("kiosk_trades_puzzles", puzzles_trades);
                }
            }
            if (global.audio_menu_effects_0_is_on == 0)
            {
                audio_play_sound(global.sound_hint_trader_give_tokens, 1, false);
            }
            if (instance_exists(ob_menu_controller))
            {
                ob_menu_controller.alarm[2] = 1;
            }
        }
    }
    else if (global.kiosk_paid_gold_or_ultimate == 1)
    {
        var achievemnet_to_set;
        if (purchase_kiosk_category_number == 1)
        {
            achievemnet_to_set = "kioskcursor" + string(purchase_kiosk_item_number);
        }
        else if (purchase_kiosk_category_number == 2)
        {
            achievemnet_to_set = "kioskmusic" + string(purchase_kiosk_item_number);
        }
        else if (purchase_kiosk_category_number == 3)
        {
            achievemnet_to_set = "kioskexperimentals" + string(purchase_kiosk_item_number);
        }
        else if (purchase_kiosk_category_number == 4)
        {
            achievemnet_to_set = "kiosktheme" + string(purchase_kiosk_item_number);
        }
        else if (purchase_kiosk_category_number == 5)
        {
            achievemnet_to_set = "kioskfigurals" + string(purchase_kiosk_item_number);
        }
        else if (purchase_kiosk_category_number == 6)
        {
            achievemnet_to_set = "kiosktoolbar" + string(purchase_kiosk_item_number);
        }
        else if (purchase_kiosk_category_number == 7)
        {
            achievemnet_to_set = "kioskavatar" + string(purchase_kiosk_item_number);
        }
        else if (purchase_kiosk_category_number == 8)
        {
            achievemnet_to_set = "kioskchallenges" + string(purchase_kiosk_item_number);
        }
        else if (purchase_kiosk_category_number == 9)
        {
            achievemnet_to_set = "kioskpuzzles" + string(purchase_kiosk_item_number);
        }
        var total_gold_earned = steam_get_stat_int("ultimate_pieces_earned");
        var total_gold_spent = steam_get_stat_int("ultimate_pieces_used");
        var item_price = 1;
        var current_gold = total_gold_earned - total_gold_spent;
        if (current_gold >= item_price)
        {
            steam_set_achievement(achievemnet_to_set);
            var new_total_gold_spent = steam_get_stat_int("ultimate_pieces_used") + item_price;
            steam_set_stat_int("ultimate_pieces_used", new_total_gold_spent);
            if (global.dev_tools_are_active == 0)
            {
                var ultimate_trades = steam_get_stat_int("ultimate_trades") + 1;
                steam_upload_score("ultimate_trades", ultimate_trades);
                steam_set_stat_int("ultimate_trades", ultimate_trades);
            }
            if (purchase_kiosk_category_number == 1)
            {
                if (global.dev_tools_are_active == 0)
                {
                    var cursor_trades = steam_get_stat_int("ultimate_trades_cursors") + 1;
                    steam_upload_score("ultimate_trades_cursors", cursor_trades);
                    steam_set_stat_int("ultimate_trades_cursors", cursor_trades);
                }
            }
            if (purchase_kiosk_category_number == 2)
            {
                if (global.dev_tools_are_active == 0)
                {
                    var music_trades = steam_get_stat_int("ultimate_trades_music") + 1;
                    steam_upload_score("ultimate_trades_music", music_trades);
                    steam_set_stat_int("ultimate_trades_music", music_trades);
                }
            }
            if (purchase_kiosk_category_number == 3)
            {
                if (global.dev_tools_are_active == 0)
                {
                    var experimentals_trades = steam_get_stat_int("ultimate_trades_experimentals") + 1;
                    steam_upload_score("ultimate_trades_experimentals", experimentals_trades);
                    steam_set_stat_int("ultimate_trades_experimentals", experimentals_trades);
                }
            }
            if (purchase_kiosk_category_number == 4)
            {
                if (global.dev_tools_are_active == 0)
                {
                    var theme_trades = steam_get_stat_int("ultimate_trades_theme") + 1;
                    steam_upload_score("ultimate_trades_theme", theme_trades);
                    steam_set_stat_int("ultimate_trades_theme", theme_trades);
                }
            }
            if (purchase_kiosk_category_number == 5)
            {
                if (global.dev_tools_are_active == 0)
                {
                    var figurals_trades = steam_get_stat_int("ultimate_trades_figurals") + 1;
                    steam_upload_score("ultimate_trades_figurals", figurals_trades);
                    steam_set_stat_int("ultimate_trades_figurals", figurals_trades);
                }
            }
            if (purchase_kiosk_category_number == 6)
            {
                if (global.dev_tools_are_active == 0)
                {
                    var toolbar_trades = steam_get_stat_int("ultimate_trades_toolbar") + 1;
                    steam_upload_score("ultimate_trades_toolbar", toolbar_trades);
                    steam_set_stat_int("ultimate_trades_toolbar", toolbar_trades);
                }
            }
            if (purchase_kiosk_category_number == 7)
            {
                if (global.dev_tools_are_active == 0)
                {
                    var avatars_trades = steam_get_stat_int("ultimate_trades_avatars") + 1;
                    steam_upload_score("ultimate_trades_avatars", avatars_trades);
                    steam_set_stat_int("ultimate_trades_avatars", avatars_trades);
                }
            }
            if (purchase_kiosk_category_number == 8)
            {
                if (global.dev_tools_are_active == 0)
                {
                    var challenges_trades = steam_get_stat_int("ultimate_trades_challenges") + 1;
                    steam_upload_score("ultimate_trades_challenges", challenges_trades);
                    steam_set_stat_int("ultimate_trades_challenges", challenges_trades);
                }
            }
            if (purchase_kiosk_category_number == 9)
            {
                if (global.dev_tools_are_active == 0)
                {
                    var puzzles_trades = steam_get_stat_int("ultimate_trades_puzzles") + 1;
                    steam_upload_score("ultimate_trades_puzzles", puzzles_trades);
                    steam_set_stat_int("ultimate_trades_puzzles", puzzles_trades);
                }
            }
            if (global.audio_menu_effects_0_is_on == 0)
            {
                audio_play_sound(global.sound_hint_trader_give_tokens, 1, false);
            }
            if (instance_exists(ob_menu_controller))
            {
                ob_menu_controller.alarm[2] = 1;
            }
        }
    }
}
