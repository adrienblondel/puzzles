if (place_meeting(x, y, ob_menu_cursor))
{
    if (mouse_is_over_button == 0)
    {
        mouse_is_over_button = 1;
        alarm[0] = 5;
        current_button_frame = 0;
    }
}
else
{
    mouse_is_over_button = 0;
}
if (place_meeting(x, y, ob_menu_cursor))
{
    if (global.using_a_gamepad == 0)
    {
        if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
        {
            if (can_drop_down == 0)
            {
                if (button_number == 6)
                {
                    if (global.last_puzzle_button_6_is_open == 0)
                    {
                        game_end();
                    }
                }
                else if (button_number == 4 || button_number == 2)
                {
                    global.theme_chooser_is_open = 0;
                    global.a_menu_overlay_is_showing = 0;
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_top_buttons_click, 1, false);
                    }
                    global.no_favs_display_alpha = 0;
                    global.no_favs_display_backing_alpha = 0;
                    global.button_1_y = 452;
                    global.button_fav_x = 389;
                    global.theme_button_1_y = 412;
                    global.puzzle_favorites_can_fade_in = 1;
                    global.current_bundle_showing = choose(0, 1, 2, 3, 4);
                    global.sidebar_latest_pack_backing_colour = make_colour_rgb(50 + random(190), 50 + random(190), 50 + random(190));
                    if (global.puzzle_1_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_1_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_2_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_2_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_3_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_3_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_4_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_4_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_5_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_5_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_6_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_6_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_7_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_7_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_8_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_8_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_9_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_9_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_10_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_10_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_11_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_11_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_12_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_12_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_13_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_13_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_14_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_14_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_15_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_15_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_16_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_16_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_17_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_17_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_18_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_18_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_19_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_19_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_20_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_20_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_21_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_21_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_22_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_22_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_23_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_23_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_24_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_24_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_25_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_25_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_pack_description_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_pack_description_sprite_index);
                    }
                    room_goto(room_to_go_to);
                }
                else if (room == room_to_go_to)
                {
                }
                else
                {
                    global.theme_chooser_is_open = 0;
                    global.a_menu_overlay_is_showing = 0;
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_top_buttons_click, 1, false);
                    }
                    global.no_favs_display_alpha = 0;
                    global.no_favs_display_backing_alpha = 0;
                    global.button_1_y = 452;
                    global.button_fav_x = 389;
                    global.theme_button_1_y = 412;
                    global.puzzle_favorites_can_fade_in = 1;
                    global.current_bundle_showing = choose(0, 1, 2, 3, 4);
                    global.sidebar_latest_pack_backing_colour = make_colour_rgb(50 + random(190), 50 + random(190), 50 + random(190));
                    if (global.puzzle_1_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_1_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_2_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_2_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_3_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_3_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_4_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_4_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_5_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_5_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_6_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_6_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_7_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_7_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_8_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_8_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_9_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_9_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_10_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_10_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_11_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_11_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_12_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_12_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_13_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_13_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_14_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_14_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_15_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_15_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_16_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_16_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_17_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_17_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_18_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_18_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_19_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_19_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_20_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_20_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_21_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_21_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_22_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_22_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_23_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_23_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_24_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_24_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_25_puzzle_preview_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_25_puzzle_preview_sprite_index);
                    }
                    if (global.puzzle_pack_description_sprite_index == 0)
                    {
                    }
                    else
                    {
                        sprite_delete(global.puzzle_pack_description_sprite_index);
                    }
                    room_goto(room_to_go_to);
                }
            }
        }
        if (mouse_check_button(mb_left))
        {
            button_size = 0.97;
        }
        else
        {
            button_size = 1.03;
        }
    }
}
else
{
    button_size = 1;
}
if (can_drop_down == 1)
{
    if (y < 119)
    {
        y += 15;
    }
    else
    {
        if (global.audio_menu_effects_0_is_on == 0)
        {
            audio_play_sound(global.sound_toolbar_button_drop, 1, false);
        }
        y = 119;
        can_drop_down = 0;
        button_can_be_pressed = 1;
    }
}
