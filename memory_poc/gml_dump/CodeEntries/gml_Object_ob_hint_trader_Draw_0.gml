if (ob_menu_controller.total_gold_bits > 0)
{
    draw_sprite_ext(sp_kiosk_trade_buttons, 0, 1718, 632, open_trade_button_scale, open_trade_button_scale, 0, c_white, 1);
}
else
{
    draw_sprite_ext(sp_kiosk_trade_buttons, 1, 1718, 632, open_trade_button_scale, open_trade_button_scale, 0, c_white, 1);
}
if (ob_menu_controller.total_ultimate > 0)
{
    draw_sprite_ext(sp_kiosk_trade_buttons, 0, 1718, 836, open_trade_button_scale2, open_trade_button_scale2, 0, c_white, 1);
}
else
{
    draw_sprite_ext(sp_kiosk_trade_buttons, 1, 1718, 836, open_trade_button_scale2, open_trade_button_scale2, 0, c_white, 1);
}
if (ob_menu_controller.total_hints > 49)
{
    draw_sprite_ext(sp_kiosk_trade_buttons, 0, 1718, 1039, open_trade_button_scale3, open_trade_button_scale3, 0, c_white, 1);
}
else
{
    draw_sprite_ext(sp_kiosk_trade_buttons, 1, 1718, 1039, open_trade_button_scale3, open_trade_button_scale3, 0, c_white, 1);
}
if (global.a_menu_overlay_is_showing == 0)
{
    draw_set_halign(fa_center);
    draw_set_font(global.current_font_26);
    draw_set_colour(c_black);
    draw_text_ext_transformed(1718, 611, ob_language_controller.kiosk_trading_2, 2000, 2000, open_trade_button_scale - 0.1, open_trade_button_scale - 0.1, 0);
    draw_text_ext_transformed(1718, 815, ob_language_controller.kiosk_trading_2, 2000, 2000, open_trade_button_scale2 - 0.1, open_trade_button_scale2 - 0.1, 0);
    draw_text_ext_transformed(1718, 1018, ob_language_controller.kiosk_trading_2, 2000, 2000, open_trade_button_scale3 - 0.1, open_trade_button_scale3 - 0.1, 0);
    if (global.game_current_language == 2)
    {
        draw_text_ext_transformed(1716, 357, ob_language_controller.kiosk_trading_6, 31, 400, 0.82, 0.82, 0);
    }
    else
    {
        draw_text_ext_transformed(1716, 357, ob_language_controller.kiosk_trading_6, 31, 400, 0.9, 0.9, 0);
    }
    draw_set_colour(c_white);
    draw_text_ext_transformed(1718, 609, ob_language_controller.kiosk_trading_2, 2000, 2000, open_trade_button_scale - 0.1, open_trade_button_scale - 0.1, 0);
    draw_text_ext_transformed(1718, 813, ob_language_controller.kiosk_trading_2, 2000, 2000, open_trade_button_scale2 - 0.1, open_trade_button_scale2 - 0.1, 0);
    draw_text_ext_transformed(1718, 1015, ob_language_controller.kiosk_trading_2, 2000, 2000, open_trade_button_scale3 - 0.1, open_trade_button_scale3 - 0.1, 0);
    draw_text_ext_transformed(1718, 299, ob_language_controller.kiosk_trading_1, 2000, 2000, 1, 1, 0);
    if (global.game_current_language == 2)
    {
        draw_text_ext_transformed(1718, 355, ob_language_controller.kiosk_trading_6, 31, 400, 0.82, 0.82, 0);
    }
    else
    {
        draw_text_ext_transformed(1718, 355, ob_language_controller.kiosk_trading_6, 31, 400, 0.9, 0.9, 0);
    }
    draw_set_font(global.current_font_22);
    draw_text_ext_transformed(1718, 479, ob_language_controller.kiosk_trading_3, 2000, 2000, 0.8, 0.8, 0);
    draw_text_ext_transformed(1718, 683, ob_language_controller.kiosk_trading_4, 2000, 2000, 0.8, 0.8, 0);
    draw_text_ext_transformed(1718, 887, ob_language_controller.kiosk_trading_5, 2000, 2000, 0.8, 0.8, 0);
    draw_set_halign(fa_left);
}
