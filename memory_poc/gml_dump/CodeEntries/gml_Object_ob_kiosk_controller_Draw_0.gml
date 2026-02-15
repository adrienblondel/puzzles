draw_sprite_ext(sp_kiosk_trading_panel, 0, 1504, 298, 1, 1, 0, c_white, 1);
if (global.kiosk_items_to_show == 0)
{
    draw_sprite_ext(sp_kiosk_info, 0, 0, 298, 1, 1, 0, c_white, 1);
}
if (global.a_menu_overlay_is_showing == 0)
{
    if (global.kiosk_items_to_show == 0)
    {
        draw_set_halign(fa_center);
        draw_set_font(global.current_font_26);
        draw_set_colour(c_black);
        if (global.game_current_language == 20)
        {
            draw_sprite(sp_lang_fix_ch, 0, 17, 387);
        }
        else
        {
            draw_text_ext_transformed(134, 387, ob_language_controller.kiosk_info_1, 35, 300, 0.75, 0.75, 0);
        }
        draw_text_ext_transformed(879, 308, ob_language_controller.kiosk_info_2, 2000, 2000, 1.2, 1.2, 0);
        if (global.game_current_language == 20)
        {
            draw_sprite(sp_lang_fix_ch, 1, 403, 371);
        }
        else
        {
            draw_text_ext_transformed(879, 369, ob_language_controller.kiosk_info_3, 35, 1650, 0.7, 0.7, 0);
        }
        if (global.game_current_language == 20)
        {
            draw_sprite(sp_lang_fix_ch, 2, 377, 431);
        }
        else if (global.game_current_language == 2)
        {
            draw_text_ext_transformed(879, 433, ob_language_controller.kiosk_info_4, 35, 1720, 0.7, 0.7, 0);
        }
        else
        {
            draw_text_ext_transformed(879, 433, ob_language_controller.kiosk_info_4, 35, 1650, 0.7, 0.7, 0);
        }
        draw_set_colour(c_white);
        if (global.game_current_language == 20)
        {
        }
        else
        {
            draw_text_ext_transformed(136, 385, ob_language_controller.kiosk_info_1, 35, 300, 0.75, 0.75, 0);
        }
        draw_text_ext_transformed(881, 306, ob_language_controller.kiosk_info_2, 2000, 2000, 1.2, 1.2, 0);
        if (global.game_current_language == 20)
        {
        }
        else
        {
            draw_text_ext_transformed(881, 367, ob_language_controller.kiosk_info_3, 35, 1650, 0.7, 0.7, 0);
        }
        if (global.game_current_language == 20)
        {
        }
        else if (global.game_current_language == 2)
        {
            draw_text_ext_transformed(881, 431, ob_language_controller.kiosk_info_4, 35, 1720, 0.7, 0.7, 0);
        }
        else
        {
            draw_text_ext_transformed(881, 431, ob_language_controller.kiosk_info_4, 35, 1650, 0.7, 0.7, 0);
        }
        draw_set_halign(fa_left);
    }
}
