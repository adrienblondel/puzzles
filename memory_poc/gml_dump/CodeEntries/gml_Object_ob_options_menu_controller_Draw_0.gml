draw_sprite(sp_menu_options_backing, 0, 0, 297);
draw_sprite_ext(sp_menu_options_defaults_buttons, 0, 235, 1047, video_defaults_button_scale, video_defaults_button_scale, 0, c_white, 1);
draw_sprite_ext(sp_menu_options_defaults_buttons, 0, 718, 1047, audio_defaults_button_scale, audio_defaults_button_scale, 0, c_white, 1);
draw_sprite_ext(sp_menu_options_defaults_buttons, 0, 1200, 1047, hotkeys_defaults_button_scale, hotkeys_defaults_button_scale, 0, c_white, 1);
if (global.a_menu_overlay_is_showing == 0)
{
    draw_set_halign(fa_center);
    draw_set_font(global.current_font_26);
    draw_set_colour(c_black);
    draw_text_ext_transformed(233, 1028, ob_language_controller.options_button_1, 2000, 2000, video_defaults_button_scale - 0.1, video_defaults_button_scale - 0.1, 0);
    draw_text_ext_transformed(716, 1028, ob_language_controller.options_button_1, 2000, 2000, audio_defaults_button_scale - 0.1, audio_defaults_button_scale - 0.1, 0);
    draw_text_ext_transformed(1198, 1028, ob_language_controller.options_button_1, 2000, 2000, hotkeys_defaults_button_scale - 0.1, hotkeys_defaults_button_scale - 0.1, 0);
    draw_set_colour(c_white);
    draw_text_ext_transformed(235, 1026, ob_language_controller.options_button_1, 2000, 2000, video_defaults_button_scale - 0.1, video_defaults_button_scale - 0.1, 0);
    draw_text_ext_transformed(718, 1026, ob_language_controller.options_button_1, 2000, 2000, audio_defaults_button_scale - 0.1, audio_defaults_button_scale - 0.1, 0);
    draw_text_ext_transformed(1200, 1026, ob_language_controller.options_button_1, 2000, 2000, hotkeys_defaults_button_scale - 0.1, hotkeys_defaults_button_scale - 0.1, 0);
    draw_set_halign(fa_left);
}
if (global.a_menu_overlay_is_showing == 0)
{
    draw_set_valign(fa_top);
    draw_set_halign(fa_center);
    draw_set_font(global.current_font_26);
    draw_text_transformed(235, 297, string(ob_language_controller.options_titles_1), 1, 1, 0);
    draw_text_transformed(719, 297, string(ob_language_controller.options_titles_2), 1, 1, 0);
    draw_text_transformed(1201, 297, string(ob_language_controller.options_titles_3), 1, 1, 0);
    draw_text_transformed(1683, 297, string(ob_language_controller.options_titles_4), 1, 1, 0);
    draw_set_halign(fa_left);
}
if (global.a_menu_overlay_is_showing == 0)
{
    draw_set_halign(fa_center);
    draw_set_font(global.current_font_22);
    draw_set_colour(c_white);
    if (global.actual_volume_level == 0)
    {
        draw_text(718, 393, string(ob_language_controller.options_audio_1) + ": " + string(ob_language_controller.level_ui_config_10b));
    }
    else if (global.actual_volume_level == 0.1)
    {
        draw_text(718, 393, string(ob_language_controller.options_audio_1) + ": x1");
    }
    else if (global.actual_volume_level == 0.2)
    {
        draw_text(718, 393, string(ob_language_controller.options_audio_1) + ": x2");
    }
    else if (global.actual_volume_level == 0.3)
    {
        draw_text(718, 393, string(ob_language_controller.options_audio_1) + ": x3");
    }
    else if (global.actual_volume_level == 0.4)
    {
        draw_text(718, 393, string(ob_language_controller.options_audio_1) + ": x4");
    }
    else if (global.actual_volume_level == 0.5)
    {
        draw_text(718, 393, string(ob_language_controller.options_audio_1) + ": x5");
    }
    else if (global.actual_volume_level == 0.6)
    {
        draw_text(718, 393, string(ob_language_controller.options_audio_1) + ": x6");
    }
    else if (global.actual_volume_level == 0.7)
    {
        draw_text(718, 393, string(ob_language_controller.options_audio_1) + ": x7");
    }
    else if (global.actual_volume_level == 0.8)
    {
        draw_text(718, 393, string(ob_language_controller.options_audio_1) + ": x8");
    }
    else if (global.actual_volume_level == 0.9)
    {
        draw_text(718, 393, string(ob_language_controller.options_audio_1) + ": x9");
    }
    else
    {
        draw_text(718, 393, string(ob_language_controller.options_audio_1) + ": x10");
    }
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 532, 411, volume_x_scale_left, volume_y_scale_left, 0, c_white, 1);
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 905, 411, volume_scale_right, volume_scale_right, 0, c_white, 1);
    if (global.actual_effects_volume_level == 0)
    {
        draw_text(718, 455, string(ob_language_controller.options_audio_2) + ": " + string(ob_language_controller.level_ui_config_10b));
    }
    else if (global.actual_effects_volume_level == 0.1)
    {
        draw_text(718, 455, string(ob_language_controller.options_audio_2) + ": x1");
    }
    else if (global.actual_effects_volume_level == 0.2)
    {
        draw_text(718, 455, string(ob_language_controller.options_audio_2) + ": x2");
    }
    else if (global.actual_effects_volume_level == 0.3)
    {
        draw_text(718, 455, string(ob_language_controller.options_audio_2) + ": x3");
    }
    else if (global.actual_effects_volume_level == 0.4)
    {
        draw_text(718, 455, string(ob_language_controller.options_audio_2) + ": x4");
    }
    else if (global.actual_effects_volume_level == 0.5)
    {
        draw_text(718, 455, string(ob_language_controller.options_audio_2) + ": x5");
    }
    else if (global.actual_effects_volume_level == 0.6)
    {
        draw_text(718, 455, string(ob_language_controller.options_audio_2) + ": x6");
    }
    else if (global.actual_effects_volume_level == 0.7)
    {
        draw_text(718, 455, string(ob_language_controller.options_audio_2) + ": x7");
    }
    else if (global.actual_effects_volume_level == 0.8)
    {
        draw_text(718, 455, string(ob_language_controller.options_audio_2) + ": x8");
    }
    else if (global.actual_effects_volume_level == 0.9)
    {
        draw_text(718, 455, string(ob_language_controller.options_audio_2) + ": x9");
    }
    else
    {
        draw_text(718, 455, string(ob_language_controller.options_audio_2) + ": x10");
    }
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 532, 473, effects_volume_x_scale_left, effects_volume_y_scale_left, 0, c_white, 1);
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 905, 473, effects_volume_scale_right, effects_volume_scale_right, 0, c_white, 1);
    if (global.actual_music_volume_level == 0)
    {
        draw_text(718, 517, string(ob_language_controller.options_audio_3) + ": " + string(ob_language_controller.level_ui_config_10b));
    }
    else if (global.actual_music_volume_level == 0.1)
    {
        draw_text(718, 517, string(ob_language_controller.options_audio_3) + ": x1");
    }
    else if (global.actual_music_volume_level == 0.2)
    {
        draw_text(718, 517, string(ob_language_controller.options_audio_3) + ": x2");
    }
    else if (global.actual_music_volume_level == 0.3)
    {
        draw_text(718, 517, string(ob_language_controller.options_audio_3) + ": x3");
    }
    else if (global.actual_music_volume_level == 0.4)
    {
        draw_text(718, 517, string(ob_language_controller.options_audio_3) + ": x4");
    }
    else if (global.actual_music_volume_level == 0.5)
    {
        draw_text(718, 517, string(ob_language_controller.options_audio_3) + ": x5");
    }
    else if (global.actual_music_volume_level == 0.6)
    {
        draw_text(718, 517, string(ob_language_controller.options_audio_3) + ": x6");
    }
    else if (global.actual_music_volume_level == 0.7)
    {
        draw_text(718, 517, string(ob_language_controller.options_audio_3) + ": x7");
    }
    else if (global.actual_music_volume_level == 0.8)
    {
        draw_text(718, 517, string(ob_language_controller.options_audio_3) + ": x8");
    }
    else if (global.actual_music_volume_level == 0.9)
    {
        draw_text(718, 517, string(ob_language_controller.options_audio_3) + ": x9");
    }
    else
    {
        draw_text(718, 517, string(ob_language_controller.options_audio_3) + ": x10");
    }
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 532, 535, music_volume_x_scale_left, music_volume_y_scale_left, 0, c_white, 1);
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 905, 535, music_volume_scale_right, music_volume_scale_right, 0, c_white, 1);
    if (global.actual_ambiance_volume_level == 0)
    {
        draw_text(718, 579, string(ob_language_controller.options_audio_4) + ": " + string(ob_language_controller.level_ui_config_10b));
    }
    else if (global.actual_ambiance_volume_level == 0.1)
    {
        draw_text(718, 579, string(ob_language_controller.options_audio_4) + ": x1");
    }
    else if (global.actual_ambiance_volume_level == 0.2)
    {
        draw_text(718, 579, string(ob_language_controller.options_audio_4) + ": x2");
    }
    else if (global.actual_ambiance_volume_level == 0.3)
    {
        draw_text(718, 579, string(ob_language_controller.options_audio_4) + ": x3");
    }
    else if (global.actual_ambiance_volume_level == 0.4)
    {
        draw_text(718, 579, string(ob_language_controller.options_audio_4) + ": x4");
    }
    else if (global.actual_ambiance_volume_level == 0.5)
    {
        draw_text(718, 579, string(ob_language_controller.options_audio_4) + ": x5");
    }
    else if (global.actual_ambiance_volume_level == 0.6)
    {
        draw_text(718, 579, string(ob_language_controller.options_audio_4) + ": x6");
    }
    else if (global.actual_ambiance_volume_level == 0.7)
    {
        draw_text(718, 579, string(ob_language_controller.options_audio_4) + ": x7");
    }
    else if (global.actual_ambiance_volume_level == 0.8)
    {
        draw_text(718, 579, string(ob_language_controller.options_audio_4) + ": x8");
    }
    else if (global.actual_ambiance_volume_level == 0.9)
    {
        draw_text(718, 579, string(ob_language_controller.options_audio_4) + ": x9");
    }
    else
    {
        draw_text(718, 579, string(ob_language_controller.options_audio_4) + ": x10");
    }
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 532, 597, ambiance_volume_x_scale_left, ambiance_volume_y_scale_left, 0, c_white, 1);
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 905, 597, ambiance_volume_scale_right, ambiance_volume_scale_right, 0, c_white, 1);
    if (global.audio_menu_effects_0_is_on == 1)
    {
        draw_text(718, 665, string(ob_language_controller.options_audio_5) + ": " + string(ob_language_controller.level_ui_config_10b));
    }
    else
    {
        draw_text(718, 665, string(ob_language_controller.options_audio_5) + ": " + string(ob_language_controller.level_ui_config_10a));
    }
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 532, 683, music_sounds_x_scale_left, music_sounds_y_scale_left, 0, c_white, 1);
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 905, 683, music_sounds_scale_right, music_sounds_scale_right, 0, c_white, 1);
    if (global.audio_menu_music_0_is_on == 1)
    {
        draw_text(718, 727, string(ob_language_controller.options_audio_6) + ": " + string(ob_language_controller.level_ui_config_10b));
    }
    else
    {
        draw_text(718, 727, string(ob_language_controller.options_audio_6) + ": " + string(ob_language_controller.level_ui_config_10a));
    }
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 532, 745, music_music_x_scale_left, music_music_y_scale_left, 0, c_white, 1);
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 905, 745, music_music_scale_right, music_music_scale_right, 0, c_white, 1);
    if (global.can_play_sound_effects_0_is_on_1_is_off == 1)
    {
        draw_text(718, 813, string(ob_language_controller.options_audio_7) + ": " + string(ob_language_controller.level_ui_config_10b));
    }
    else
    {
        draw_text(718, 813, string(ob_language_controller.options_audio_7) + ": " + string(ob_language_controller.level_ui_config_10a));
    }
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 532, 831, inpuzzle_effects_x_scale_left, inpuzzle_effects_y_scale_left, 0, c_white, 1);
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 905, 831, inpuzzle_effects_scale_right, inpuzzle_effects_scale_right, 0, c_white, 1);
    if (global.can_play_music_0_is_on_1_is_off == 1)
    {
        draw_text(718, 875, string(ob_language_controller.options_audio_8) + ": " + string(ob_language_controller.level_ui_config_10b));
    }
    else
    {
        draw_text(718, 875, string(ob_language_controller.options_audio_8) + ": " + string(ob_language_controller.level_ui_config_10a));
    }
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 532, 893, inpuzzle_music_x_scale_left, inpuzzle_music_y_scale_left, 0, c_white, 1);
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 905, 893, inpuzzle_music_scale_right, inpuzzle_music_scale_right, 0, c_white, 1);
    if (global.can_play_ambiance_0_is_on_1_is_off == 1)
    {
        draw_text(718, 937, string(ob_language_controller.options_audio_9) + ": " + string(ob_language_controller.level_ui_config_10b));
    }
    else
    {
        draw_text(718, 937, string(ob_language_controller.options_audio_9) + ": " + string(ob_language_controller.level_ui_config_10a));
    }
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 532, 955, inpuzzle_ambiance_x_scale_left, inpuzzle_ambiance_y_scale_left, 0, c_white, 1);
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 905, 955, inpuzzle_ambiance_scale_right, inpuzzle_ambiance_scale_right, 0, c_white, 1);
    if (global.config_game_fullscreen_0_is_on == 1)
    {
        draw_text(235, 393, string(ob_language_controller.options_video_1) + ": " + string(ob_language_controller.level_ui_config_10b));
    }
    else
    {
        draw_text(235, 393, string(ob_language_controller.options_video_1) + ": " + string(ob_language_controller.level_ui_config_10a));
    }
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 49, 411, fullscreen_x_scale_left, fullscreen_y_scale_left, 0, c_white, 1);
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 422, 411, fullscreen_scale_right, fullscreen_scale_right, 0, c_white, 1);
    if (global.config_game_v_sync == 1)
    {
        draw_text(235, 577, string(ob_language_controller.options_video_3) + ": " + string(ob_language_controller.level_ui_config_10a));
    }
    else
    {
        draw_text(235, 577, string(ob_language_controller.options_video_3) + ": " + string(ob_language_controller.level_ui_config_10b));
    }
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 49, 595, vsync_x_scale_left, vsync_y_scale_left, 0, c_white, 1);
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 422, 595, vsync_scale_right, vsync_scale_right, 0, c_white, 1);
    if (global.config_game_aa_0is3_1is1_2is2_3is0 == 1)
    {
        draw_text(235, 669, string(ob_language_controller.options_video_4) + ": x2");
    }
    else if (global.config_game_aa_0is3_1is1_2is2_3is0 == 2)
    {
        draw_text(235, 669, string(ob_language_controller.options_video_4) + ": x4");
    }
    else if (global.config_game_aa_0is3_1is1_2is2_3is0 == 3)
    {
        draw_text(235, 669, string(ob_language_controller.options_video_4) + ": " + string(ob_language_controller.level_ui_config_10b));
    }
    else
    {
        draw_text(235, 669, string(ob_language_controller.options_video_4) + ": x8");
    }
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 49, 687, anti_aliasing_x_scale_left, anti_aliasing_y_scale_left, 0, c_white, 1);
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 422, 687, anti_aliasing_scale_right, anti_aliasing_scale_right, 0, c_white, 1);
    if (global.config_game_texture_filtering_0_is_on == 1)
    {
        draw_text(235, 761, string(ob_language_controller.options_video_5) + ": " + string(ob_language_controller.level_ui_config_10b));
    }
    else
    {
        draw_text(235, 761, string(ob_language_controller.options_video_5) + ": " + string(ob_language_controller.level_ui_config_10a));
    }
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 49, 779, texture_filtering_x_scale_left, texture_filtering_y_scale_left, 0, c_white, 1);
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 422, 779, texture_filtering_scale_right, texture_filtering_scale_right, 0, c_white, 1);
    if (global.config_complex_shaders_0_is_on == 1)
    {
        draw_text(235, 853, string(ob_language_controller.options_video_6) + ": " + string(ob_language_controller.level_ui_config_10b));
    }
    else
    {
        draw_text(235, 853, string(ob_language_controller.options_video_6) + ": " + string(ob_language_controller.level_ui_config_10a));
    }
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 49, 871, complex_shaders_x_scale_left, complex_shaders_y_scale_left, 0, c_white, 1);
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 422, 871, complex_shaders_scale_right, complex_shaders_scale_right, 0, c_white, 1);
    if (global.config_resolution == 1)
    {
        draw_text(235, 485, string(ob_language_controller.options_video_2) + ": 1024x768");
    }
    else if (global.config_resolution == 2)
    {
        draw_text(235, 485, string(ob_language_controller.options_video_2) + ": 1280x720");
    }
    else if (global.config_resolution == 3)
    {
        draw_text(235, 485, string(ob_language_controller.options_video_2) + ": 1280x800");
    }
    else if (global.config_resolution == 4)
    {
        draw_text(235, 485, string(ob_language_controller.options_video_2) + ": 1280x1024");
    }
    else if (global.config_resolution == 5)
    {
        draw_text(235, 485, string(ob_language_controller.options_video_2) + ": 1360x768");
    }
    else if (global.config_resolution == 6)
    {
        draw_text(235, 485, string(ob_language_controller.options_video_2) + ": 1366x768");
    }
    else if (global.config_resolution == 7)
    {
        draw_text(235, 485, string(ob_language_controller.options_video_2) + ": 1440x900");
    }
    else if (global.config_resolution == 8)
    {
        draw_text(235, 485, string(ob_language_controller.options_video_2) + ": 1536x864");
    }
    else if (global.config_resolution == 9)
    {
        draw_text(235, 485, string(ob_language_controller.options_video_2) + ": 1600x900");
    }
    else if (global.config_resolution == 10)
    {
        draw_text(235, 485, string(ob_language_controller.options_video_2) + ": 1680x1050");
    }
    else if (global.config_resolution == 11)
    {
        draw_text(235, 485, string(ob_language_controller.options_video_2) + ": 1920x1080");
    }
    else
    {
        draw_text(235, 485, string(ob_language_controller.options_video_2) + ": " + string(ob_language_controller.level_ui_config_11a));
    }
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 49, 503, resolution_x_scale_left, resolution_y_scale_left, 0, c_white, 1);
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 422, 503, resolution_scale_right, resolution_scale_right, 0, c_white, 1);
}
if (global.a_menu_overlay_is_showing == 0)
{
    draw_text(1683, 393, string(ob_language_controller.options_other_1));
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 1475, 411, 1, 1, 0, c_white, trade_for_hints_hover_icon_alpha);
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 1892, 411, -1, 1, 0, c_white, trade_for_hints_hover_icon_alpha);
    if (global.zoom_pan_speed == 1)
    {
        draw_text(1683, 489, string(ob_language_controller.options_other_2) + ": x2");
    }
    else if (global.zoom_pan_speed == 2)
    {
        draw_text(1683, 489, string(ob_language_controller.options_other_2) + ": x3");
    }
    else if (global.zoom_pan_speed == 3)
    {
        draw_text(1683, 489, string(ob_language_controller.options_other_2) + ": x4");
    }
    else if (global.zoom_pan_speed == 4)
    {
        draw_text(1683, 489, string(ob_language_controller.options_other_2) + ": x5");
    }
    else
    {
        draw_text(1683, 489, string(ob_language_controller.options_other_2) + ": x1");
    }
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 1497, 507, zoom_x_scale_left, zoom_y_scale_left, 0, c_white, 1);
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 1870, 507, zoom_scale_right, zoom_scale_right, 0, c_white, 1);
    if (global.gamepad_sensetivity == 1)
    {
        draw_text(1683, 585, string(ob_language_controller.options_other_3) + ": x1");
    }
    else if (global.gamepad_sensetivity == 2)
    {
        draw_text(1683, 585, string(ob_language_controller.options_other_3) + ": x2");
    }
    else if (global.gamepad_sensetivity == 3)
    {
        draw_text(1683, 585, string(ob_language_controller.options_other_3) + ": x3");
    }
    else if (global.gamepad_sensetivity == 4)
    {
        draw_text(1683, 585, string(ob_language_controller.options_other_3) + ": x4");
    }
    else if (global.gamepad_sensetivity == 5)
    {
        draw_text(1683, 585, string(ob_language_controller.options_other_3) + ": x6");
    }
    else if (global.gamepad_sensetivity == 6)
    {
        draw_text(1683, 585, string(ob_language_controller.options_other_3) + ": x7");
    }
    else if (global.gamepad_sensetivity == 7)
    {
        draw_text(1683, 585, string(ob_language_controller.options_other_3) + ": x8");
    }
    else if (global.gamepad_sensetivity == 8)
    {
        draw_text(1683, 585, string(ob_language_controller.options_other_3) + ": x9");
    }
    else if (global.gamepad_sensetivity == 9)
    {
        draw_text(1683, 585, string(ob_language_controller.options_other_3) + ": x10");
    }
    else
    {
        draw_text(1683, 585, string(ob_language_controller.options_other_3) + ": x5");
    }
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 1497, 603, controller_sesitivity_x_scale_left, controller_sesitivity_y_scale_left, 0, c_white, 1);
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 1870, 603, controller_sesitivity_scale_right, controller_sesitivity_scale_right, 0, c_white, 1);
    draw_text(1683, 647, string(ob_language_controller.options_other_4));
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 1475, 665, 1, 1, 0, c_white, view_gamepad_controls_hover_icon_alpha);
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 1892, 665, -1, 1, 0, c_white, view_gamepad_controls_hover_icon_alpha);
    draw_text(1683, 709, string(ob_language_controller.options_other_5));
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 1475, 727, 1, 1, 0, c_white, view_keyboard_controls_hover_icon_alpha);
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 1892, 727, -1, 1, 0, c_white, view_keyboard_controls_hover_icon_alpha);
    draw_text(1683, 805, string(ob_language_controller.options_other_6));
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 1475, 823, 1, 1, 0, c_white, how_to_play_hover_icon_alpha);
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 1892, 823, -1, 1, 0, c_white, how_to_play_hover_icon_alpha);
    draw_text(1683, 867, string(ob_language_controller.options_other_7));
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 1475, 885, 1, 1, 0, c_white, tutorial_hover_icon_alpha);
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 1892, 885, -1, 1, 0, c_white, tutorial_hover_icon_alpha);
    draw_text(1683, 963, string(ob_language_controller.options_other_8));
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 1475, 981, 1, 1, 0, c_white, view_achievements_hover_icon_alpha);
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 1892, 981, -1, 1, 0, c_white, view_achievements_hover_icon_alpha);
    draw_text(1683, 1025, string(ob_language_controller.options_other_9));
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 1475, 1043, 1, 1, 0, c_white, view_credits_hover_icon_alpha);
    draw_sprite_ext(sp_puzzle_options_arrow, 0, 1892, 1043, -1, 1, 0, c_white, view_credits_hover_icon_alpha);
}
draw_set_halign(fa_left);
if (gamepad_mappings_is_showing == 1)
{
    draw_set_alpha(0.99);
    draw_rectangle_colour(0, 292, 1920, 1080, c_black, c_black, c_black, c_black, 0);
    draw_set_alpha(1);
    draw_sprite_ext(sp_menu_options_gamepad_controls, 0, 279, 320, 1, 1, 0, c_white, 1);
    draw_set_font(global.current_font_26);
    draw_set_colour(c_white);
    draw_set_halign(fa_center);
    draw_text(960, 1026, string(ob_language_controller.options_other_gamepad_19));
    draw_text_ext_transformed(856, 397, string(ob_language_controller.options_other_gamepad_2), 1000, 1000, 0.8, 0.8, 0);
    draw_text_ext_transformed(1029, 317, string(ob_language_controller.options_other_gamepad_1), 1000, 1000, 0.8, 0.8, 0);
    draw_text_ext_transformed(894, 845, string(ob_language_controller.options_other_gamepad_11), 1000, 1000, 0.8, 0.8, 0);
    draw_text_ext_transformed(1042, 915, string(ob_language_controller.options_other_gamepad_10), 1000, 1000, 0.8, 0.8, 0);
    draw_text_ext_transformed(1152, 852, string(ob_language_controller.options_other_gamepad_9), 1000, 1000, 0.8, 0.8, 0);
    draw_set_halign(fa_right);
    draw_text_ext_transformed(642, 360, string(ob_language_controller.options_other_gamepad_18), 1000, 1000, 0.8, 0.8, 0);
    draw_text_ext_transformed(544, 470, string(ob_language_controller.options_other_gamepad_17), 1000, 1000, 0.8, 0.8, 0);
    draw_text_ext_transformed(570, 580, string(ob_language_controller.options_other_gamepad_16), 1000, 1000, 0.8, 0.8, 0);
    draw_text_ext_transformed(375, 625, string(ob_language_controller.options_other_gamepad_15), 1000, 1000, 0.8, 0.8, 0);
    draw_text_ext_transformed(555, 673, string(ob_language_controller.options_other_gamepad_14), 1000, 1000, 0.8, 0.8, 0);
    draw_text_ext_transformed(568, 740, string(ob_language_controller.options_other_gamepad_13), 1000, 1000, 0.8, 0.8, 0);
    draw_text_ext_transformed(565, 855, string(ob_language_controller.options_other_gamepad_12), 1000, 1000, 0.8, 0.8, 0);
    draw_set_halign(fa_left);
    draw_text_ext_transformed(1218, 334, string(ob_language_controller.options_other_gamepad_3), 1000, 1000, 0.8, 0.8, 0);
    draw_text_ext_transformed(1328, 470, string(ob_language_controller.options_other_gamepad_4), 1000, 1000, 0.8, 0.8, 0);
    draw_text_ext_transformed(1350, 568, string(ob_language_controller.options_other_gamepad_5), 1000, 1000, 0.8, 0.8, 0);
    draw_text_ext_transformed(1361, 662, string(ob_language_controller.options_other_gamepad_6), 1000, 1000, 0.8, 0.8, 0);
    draw_text_ext_transformed(1347, 790, string(ob_language_controller.options_other_gamepad_7), 1000, 1000, 0.8, 0.8, 0);
    draw_text_ext_transformed(1301, 890, string(ob_language_controller.options_other_gamepad_8), 1000, 1000, 0.8, 0.8, 0);
}
if (other_key_mappings_is_showing == 1)
{
    draw_set_alpha(0.99);
    draw_rectangle_colour(0, 292, 1920, 1080, c_black, c_black, c_black, c_black, 0);
    draw_set_alpha(1);
    draw_sprite_ext(sp_menu_options_keys_mappings_backing, 0, 720, 427, 1, 1, 0, options_keys_mappings_backing_colour, 1);
    draw_sprite_ext(sp_menu_options_keys_mappings_backing_title, 0, 720, 427, 1, 1, 0, c_white, 1);
    draw_set_font(global.current_font_22);
    draw_set_halign(fa_center);
    draw_set_colour(c_black);
    draw_text(958, 482, string(ob_language_controller.options_other_basic_controls_1) + ": {" + string(ob_language_controller.level_ui_hotkeys_1) + "}");
    draw_text(958, 517, string(ob_language_controller.options_other_basic_controls_2) + ": {" + string(ob_language_controller.level_ui_hotkeys_2) + "},{" + string(ob_language_controller.level_ui_hotkeys_3) + "}");
    draw_text(958, 552, string(ob_language_controller.options_other_basic_controls_3) + ": {" + string(ob_language_controller.level_ui_hotkeys_2) + "}");
    draw_text(958, 587, string(ob_language_controller.options_other_basic_controls_4) + ": {" + string(ob_language_controller.level_ui_hotkeys_10) + "}");
    draw_text(958, 622, string(ob_language_controller.options_other_basic_controls_5) + ": {1},{2},{3},{4},{5}");
    draw_text(958, 657, string(ob_language_controller.options_other_basic_controls_6) + ": {" + string(ob_language_controller.level_ui_hotkeys_4) + "}");
    draw_text(958, 692, string(ob_language_controller.options_other_basic_controls_7) + ": {" + string(ob_language_controller.level_ui_hotkeys_5) + "}");
    draw_text(958, 727, string(ob_language_controller.options_other_basic_controls_8) + ": {" + string(ob_language_controller.level_ui_hotkeys_6) + "}");
    draw_text(958, 762, string(ob_language_controller.options_other_basic_controls_9) + ": {" + string(ob_language_controller.level_ui_hotkeys_7) + "}");
    draw_text(958, 797, string(ob_language_controller.options_other_basic_controls_10) + ": {" + string(ob_language_controller.level_ui_hotkeys_8) + "}");
    draw_text(958, 832, string(ob_language_controller.options_other_basic_controls_11) + ": {" + string(ob_language_controller.level_ui_hotkeys_9) + "}");
    draw_set_colour(c_white);
    draw_text(960, 480, string(ob_language_controller.options_other_basic_controls_1) + ": {" + string(ob_language_controller.level_ui_hotkeys_1) + "}");
    draw_text(960, 515, string(ob_language_controller.options_other_basic_controls_2) + ": {" + string(ob_language_controller.level_ui_hotkeys_2) + "},{" + string(ob_language_controller.level_ui_hotkeys_3) + "}");
    draw_text(960, 550, string(ob_language_controller.options_other_basic_controls_3) + ": {" + string(ob_language_controller.level_ui_hotkeys_2) + "}");
    draw_text(960, 585, string(ob_language_controller.options_other_basic_controls_4) + ": {" + string(ob_language_controller.level_ui_hotkeys_10) + "}");
    draw_text(960, 620, string(ob_language_controller.options_other_basic_controls_5) + ": {1},{2},{3},{4},{5}");
    draw_text(960, 655, string(ob_language_controller.options_other_basic_controls_6) + ": {" + string(ob_language_controller.level_ui_hotkeys_4) + "}");
    draw_text(960, 690, string(ob_language_controller.options_other_basic_controls_7) + ": {" + string(ob_language_controller.level_ui_hotkeys_5) + "}");
    draw_text(960, 725, string(ob_language_controller.options_other_basic_controls_8) + ": {" + string(ob_language_controller.level_ui_hotkeys_6) + "}");
    draw_text(960, 760, string(ob_language_controller.options_other_basic_controls_9) + ": {" + string(ob_language_controller.level_ui_hotkeys_7) + "}");
    draw_text(960, 795, string(ob_language_controller.options_other_basic_controls_10) + ": {" + string(ob_language_controller.level_ui_hotkeys_8) + "}");
    draw_text(960, 830, string(ob_language_controller.options_other_basic_controls_11) + ": {" + string(ob_language_controller.level_ui_hotkeys_9) + "}");
    draw_set_font(global.current_font_26);
    draw_set_colour(c_white);
    draw_text(960, 1026, string(ob_language_controller.options_other_basic_controls_12));
    draw_text(960, 428, string(ob_language_controller.options_other_5));
    draw_set_halign(fa_left);
}
if (credits_are_showing == 1)
{
    draw_set_alpha(0.99);
    draw_rectangle_colour(0, 292, 1920, 1080, c_black, c_black, c_black, c_black, 0);
    draw_set_alpha(1);
    draw_sprite_ext(sp_intro_flag, 0, 330, 220, 0.65, 0.65, 0, c_white, 1);
    draw_sprite_ext(sp_menu_credit_buttons, 0, 577, 941, dl_button_scale, dl_button_scale, 0, c_white, 1);
    draw_sprite_ext(sp_menu_credit_buttons, 1, 832, 941, steam_button_scale, steam_button_scale, 0, c_white, 1);
    draw_sprite_ext(sp_menu_credit_buttons, 2, 1088, 941, twitter_button_scale, twitter_button_scale, 0, c_white, 1);
    draw_sprite_ext(sp_menu_credit_buttons, 3, 1343, 941, yt_button_scale, yt_button_scale, 0, c_white, 1);
    draw_set_font(global.current_font_22);
    draw_set_halign(fa_center);
    draw_set_colour(c_white);
    draw_text_ext_transformed(960, 1045, string(ob_language_controller.options_other_credits_5), 1000, 1000, 0.8, 0.8, 0);
    draw_set_halign(fa_left);
}
if (how_to_play_is_showing == 1)
{
    draw_set_alpha(0.99);
    draw_rectangle_colour(0, 292, 1920, 1080, c_black, c_black, c_black, c_black, 0);
    draw_set_alpha(1);
    draw_sprite_ext(sp_menu_options_how_to_play, 0, 0, 298, 1, 1, 0, c_white, 1);
    draw_set_font(global.current_font_22);
    draw_set_halign(fa_center);
    draw_set_colour(c_white);
    draw_text_ext_transformed(960, 1045, string(ob_language_controller.options_other_how_to_play_24), 1000, 1000, 0.8, 0.8, 0);
    draw_text_ext_transformed(234, 940, string(ob_language_controller.options_other_how_to_play_23), 1000, 1000, 0.8, 0.8, 0);
    draw_text_ext_transformed(466, 939, string(ob_language_controller.options_other_how_to_play_21), 1000, 1000, 0.8, 0.8, 0);
    draw_text_ext_transformed(711, 942, string(ob_language_controller.options_other_how_to_play_19), 1000, 1000, 0.8, 0.8, 0);
    draw_text_ext_transformed(919, 943, string(ob_language_controller.options_other_how_to_play_17), 1000, 1000, 0.8, 0.8, 0);
    draw_text_ext_transformed(1118, 942, string(ob_language_controller.options_other_how_to_play_15), 1000, 1000, 0.8, 0.8, 0);
    draw_text_ext_transformed(353, 989, string(ob_language_controller.options_other_how_to_play_22), 1000, 1000, 0.8, 0.8, 0);
    draw_text_ext_transformed(596, 990, string(ob_language_controller.options_other_how_to_play_20), 1000, 1000, 0.8, 0.8, 0);
    draw_text_ext_transformed(826, 980, string(ob_language_controller.options_other_how_to_play_18), 1000, 1000, 0.8, 0.8, 0);
    draw_text_ext_transformed(1005, 987, string(ob_language_controller.options_other_how_to_play_16), 1000, 1000, 0.8, 0.8, 0);
    draw_text_ext_transformed(1250, 980, string(ob_language_controller.options_other_how_to_play_14), 1000, 1000, 0.8, 0.8, 0);
    draw_set_halign(fa_left);
    draw_text_ext_transformed(1417, 311, string(ob_language_controller.options_other_how_to_play_1), 1000, 1000, 0.8, 0.8, 0);
    draw_text_ext_transformed(1417, 362, string(ob_language_controller.options_other_how_to_play_2), 1000, 1000, 0.8, 0.8, 0);
    draw_text_ext_transformed(1417, 414, string(ob_language_controller.options_other_how_to_play_3), 1000, 1000, 0.8, 0.8, 0);
    draw_text_ext_transformed(1417, 466, string(ob_language_controller.options_other_how_to_play_4), 1000, 1000, 0.8, 0.8, 0);
    draw_text_ext_transformed(1417, 517, string(ob_language_controller.options_other_how_to_play_5), 1000, 1000, 0.8, 0.8, 0);
    draw_text_ext_transformed(1417, 570, string(ob_language_controller.options_other_how_to_play_6), 1000, 1000, 0.8, 0.8, 0);
    draw_text_ext_transformed(1417, 622, string(ob_language_controller.options_other_how_to_play_7), 1000, 1000, 0.8, 0.8, 0);
    draw_text_ext_transformed(1417, 674, string(ob_language_controller.options_other_how_to_play_8), 1000, 1000, 0.8, 0.8, 0);
    draw_text_ext_transformed(1417, 726, string(ob_language_controller.options_other_how_to_play_9), 1000, 1000, 0.8, 0.8, 0);
    draw_text_ext_transformed(1417, 778, string(ob_language_controller.options_other_how_to_play_10), 1000, 1000, 0.8, 0.8, 0);
    draw_text_ext_transformed(1417, 830, string(ob_language_controller.options_other_how_to_play_11), 1000, 1000, 0.8, 0.8, 0);
    draw_text_ext_transformed(1417, 881, string(ob_language_controller.options_other_how_to_play_12), 1000, 1000, 0.8, 0.8, 0);
    draw_text_ext_transformed(1417, 933, string(ob_language_controller.options_other_how_to_play_13), 1000, 1000, 0.8, 0.8, 0);
}
if (game_data_delet_overlay_showing == 1)
{
    draw_set_alpha(0.99);
    draw_rectangle_colour(0, 292, 1920, 1080, c_black, c_black, c_black, c_black, 0);
    draw_set_alpha(1);
    draw_set_halign(fa_center);
    draw_set_colour(c_white);
    draw_set_font(global.current_font_22);
    draw_text_ext_transformed(960, 400, string(ob_language_controller.options_other_delete_data_1), 1000, 2000, 1, 1, 0);
    draw_text_ext_transformed(960, 600, string(ob_language_controller.options_other_delete_data_3), 1000, 2000, 1, 1, 0);
    draw_text_ext_transformed(960, 1045, string(ob_language_controller.options_other_delete_data_14), 1000, 2000, 1, 1, 0);
    draw_set_halign(fa_right);
    draw_text_ext_transformed(910, 670, string(ob_language_controller.options_other_delete_data_4), 1000, 1000, 1, 1, 0);
    draw_text_ext_transformed(910, 720, string(ob_language_controller.options_other_delete_data_6), 1000, 1000, 1, 1, 0);
    draw_text_ext_transformed(910, 770, string(ob_language_controller.options_other_delete_data_8), 1000, 1000, 1, 1, 0);
    draw_text_ext_transformed(910, 820, string(ob_language_controller.options_other_delete_data_10), 1000, 1000, 1, 1, 0);
    draw_text_ext_transformed(910, 870, string(ob_language_controller.options_other_delete_data_12), 1000, 1000, 1, 1, 0);
    draw_set_halign(fa_left);
    draw_text_ext_transformed(1010, 670, string(ob_language_controller.options_other_delete_data_5), 1000, 1000, 1, 1, 0);
    draw_text_ext_transformed(1010, 720, string(ob_language_controller.options_other_delete_data_7), 1000, 1000, 1, 1, 0);
    draw_text_ext_transformed(1010, 770, string(ob_language_controller.options_other_delete_data_9), 1000, 1000, 1, 1, 0);
    draw_text_ext_transformed(1010, 820, string(ob_language_controller.options_other_delete_data_11), 1000, 1000, 1, 1, 0);
    draw_text_ext_transformed(1010, 870, string(ob_language_controller.options_other_delete_data_13), 1000, 1000, 1, 1, 0);
    draw_sprite_ext(sp_options_delete_data_button, 0, 960, 500, game_data_delet_button_scale, game_data_delet_button_scale, 0, c_white, 1);
    draw_set_halign(fa_center);
    draw_set_font(global.current_font_26);
    draw_set_colour(c_black);
    draw_text_ext_transformed(958, 478, ob_language_controller.options_other_delete_data_2, 2000, 2000, game_data_delet_button_scale, game_data_delet_button_scale, 0);
    draw_set_colour(c_white);
    draw_text_ext_transformed(960, 476, ob_language_controller.options_other_delete_data_2, 2000, 2000, game_data_delet_button_scale, game_data_delet_button_scale, 0);
    draw_set_halign(fa_left);
}
