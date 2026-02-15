if (global.using_a_gamepad == 0)
{
    draw_sprite_ext(sp_cursor_new, global.current_cursor, device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), cursorScale, cursorScale, 0, c_white, 1);
}
else
{
    draw_sprite_ext(sp_cursor_new, global.current_cursor, x, y, cursorScale, cursorScale, 0, c_white, 1);
}
if (HUQalpha > 0)
{
    draw_set_alpha(HUQalpha);
    draw_set_font(f_steam_sales);
    draw_set_halign(fa_right);
    draw_set_valign(fa_middle);
    draw_set_colour(c_black);
    if (HUQsymbol == 0)
    {
        draw_text_transformed(HUQx - 26, HUQy + 2, "-" + string(HintUseQnt), 0.9, 0.9, 0);
    }
    else
    {
        draw_text_transformed(HUQx - 26, HUQy + 2, "+" + string(HintUseQnt), 0.9, 0.9, 0);
    }
    draw_set_colour(c_white);
    if (HUQsymbol == 0)
    {
        draw_text_transformed(HUQx - 25, HUQy, "-" + string(HintUseQnt), 0.9, 0.9, 0);
    }
    else
    {
        draw_text_transformed(HUQx - 25, HUQy, "+" + string(HintUseQnt), 0.9, 0.9, 0);
    }
    draw_set_alpha(1);
    draw_sprite_ext(sp_menu_new_hint, 0, HUQx, HUQy, 0.7, 0.7, 0, c_white, HUQalpha);
}
