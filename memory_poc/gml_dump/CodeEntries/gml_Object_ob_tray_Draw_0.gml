if (y <= 1080)
{
    draw_sprite_ext(sp_tray, 0, x, y, 1, 1, 0, global.col_pal_1, TrayOpacity);
    draw_sprite_ext(sp_tray_highlight, 0, x + 1116 + ((TrayNum - 1) * 40), y + 5, 1, 1, 0, global.col_pal_3, TrayAlpha);
    draw_sprite_ext(sp_tray, 1, x, y, 1, 1, 0, global.col_pal_2, TrayAlpha);
    if (CloseTrayHov == 1)
    {
        draw_sprite_ext(sp_tray_close, 1, x + 25, y + 25, 1, 1, 0, global.col_pal_2, 1);
    }
    else
    {
        draw_sprite_ext(sp_tray_close, 1, x + 25, y + 24, 1, 1, 0, -1, TrayAlpha);
    }
    if (CursorMoveTray == 1)
    {
        draw_sprite_ext(sp_grab_tray_arrows, 1, ob_menu_cursor.x, y, 1, 1, 0, global.col_pal_2, TrayAlpha);
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x, y, x + 1920, y + 10))
    {
        draw_sprite_ext(sp_grab_tray_arrows, 1, ob_menu_cursor.x, y, 1, 1, 0, -1, TrayAlpha);
    }
    draw_set_font(f_main_20);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    if (TrayTabHov == 1)
    {
        draw_text_transformed_colour(x + 1136, y + 24, string(TrayQnt1), 0.7, 0.7, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, TrayAlpha);
    }
    else
    {
        draw_text_transformed_colour(x + 1136, y + 24, string(TrayQnt1), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, TrayAlpha);
    }
    if (TrayTabHov == 2)
    {
        draw_text_transformed_colour(x + 1136 + 40, y + 24, string(TrayQnt2), 0.7, 0.7, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, TrayAlpha);
    }
    else
    {
        draw_text_transformed_colour(x + 1136 + 40, y + 24, string(TrayQnt2), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, TrayAlpha);
    }
    if (TrayTabHov == 3)
    {
        draw_text_transformed_colour(x + 1136 + 80, y + 24, string(TrayQnt3), 0.7, 0.7, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, TrayAlpha);
    }
    else
    {
        draw_text_transformed_colour(x + 1136 + 80, y + 24, string(TrayQnt3), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, TrayAlpha);
    }
    if (TrayTabHov == 4)
    {
        draw_text_transformed_colour(x + 1136 + 120, y + 24, string(TrayQnt4), 0.7, 0.7, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, TrayAlpha);
    }
    else
    {
        draw_text_transformed_colour(x + 1136 + 120, y + 24, string(TrayQnt4), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, TrayAlpha);
    }
    if (TrayTabHov == 5)
    {
        draw_text_transformed_colour(x + 1136 + 160, y + 24, string(TrayQnt5), 0.7, 0.7, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, TrayAlpha);
    }
    else
    {
        draw_text_transformed_colour(x + 1136 + 160, y + 24, string(TrayQnt5), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, TrayAlpha);
    }
    if (TrayTabHov == 6)
    {
        draw_text_transformed_colour(x + 1136 + 200, y + 24, string(TrayQnt6), 0.7, 0.7, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, TrayAlpha);
    }
    else
    {
        draw_text_transformed_colour(x + 1136 + 200, y + 24, string(TrayQnt6), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, TrayAlpha);
    }
    if (TrayTabHov == 7)
    {
        draw_text_transformed_colour(x + 1136 + 240, y + 24, string(TrayQnt7), 0.7, 0.7, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, TrayAlpha);
    }
    else
    {
        draw_text_transformed_colour(x + 1136 + 240, y + 24, string(TrayQnt7), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, TrayAlpha);
    }
    if (TrayTabHov == 8)
    {
        draw_text_transformed_colour(x + 1136 + 280, y + 24, string(TrayQnt8), 0.7, 0.7, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, TrayAlpha);
    }
    else
    {
        draw_text_transformed_colour(x + 1136 + 280, y + 24, string(TrayQnt8), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, TrayAlpha);
    }
    if (TrayTabHov == 9)
    {
        draw_text_transformed_colour(x + 1136 + 320, y + 24, string(TrayQnt9), 0.7, 0.7, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, TrayAlpha);
    }
    else
    {
        draw_text_transformed_colour(x + 1136 + 320, y + 24, string(TrayQnt9), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, TrayAlpha);
    }
    if (TrayTabHov == 10)
    {
        draw_text_transformed_colour(x + 1136 + 360, y + 24, string(TrayQnt10), 0.7, 0.7, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, TrayAlpha);
    }
    else
    {
        draw_text_transformed_colour(x + 1136 + 360, y + 24, string(TrayQnt10), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, TrayAlpha);
    }
    if (TrayTabHov == 11)
    {
        draw_text_transformed_colour(x + 1136 + 400, y + 24, string(TrayQnt11), 0.7, 0.7, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, TrayAlpha);
    }
    else
    {
        draw_text_transformed_colour(x + 1136 + 400, y + 24, string(TrayQnt11), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, TrayAlpha);
    }
    if (TrayTabHov == 12)
    {
        draw_text_transformed_colour(x + 1136 + 440, y + 24, string(TrayQnt12), 0.7, 0.7, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, TrayAlpha);
    }
    else
    {
        draw_text_transformed_colour(x + 1136 + 440, y + 24, string(TrayQnt12), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, TrayAlpha);
    }
    if (TrayTabHov == 13)
    {
        draw_text_transformed_colour(x + 1136 + 480, y + 24, string(TrayQnt13), 0.7, 0.7, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, TrayAlpha);
    }
    else
    {
        draw_text_transformed_colour(x + 1136 + 480, y + 24, string(TrayQnt13), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, TrayAlpha);
    }
    if (TrayTabHov == 14)
    {
        draw_text_transformed_colour(x + 1136 + 520, y + 24, string(TrayQnt14), 0.7, 0.7, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, TrayAlpha);
    }
    else
    {
        draw_text_transformed_colour(x + 1136 + 520, y + 24, string(TrayQnt14), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, TrayAlpha);
    }
    if (TrayTabHov == 15)
    {
        draw_text_transformed_colour(x + 1136 + 560, y + 24, string(TrayQnt15), 0.7, 0.7, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, TrayAlpha);
    }
    else
    {
        draw_text_transformed_colour(x + 1136 + 560, y + 24, string(TrayQnt15), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, TrayAlpha);
    }
    if (TrayTabHov == 16)
    {
        draw_text_transformed_colour(x + 1136 + 600, y + 24, string(TrayQnt16), 0.7, 0.7, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, TrayAlpha);
    }
    else
    {
        draw_text_transformed_colour(x + 1136 + 600, y + 24, string(TrayQnt16), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, TrayAlpha);
    }
    if (TrayTabHov == 17)
    {
        draw_text_transformed_colour(x + 1136 + 640, y + 24, string(TrayQnt17), 0.7, 0.7, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, TrayAlpha);
    }
    else
    {
        draw_text_transformed_colour(x + 1136 + 640, y + 24, string(TrayQnt17), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, TrayAlpha);
    }
    if (TrayTabHov == 18)
    {
        draw_text_transformed_colour(x + 1136 + 680, y + 24, string(TrayQnt18), 0.7, 0.7, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, TrayAlpha);
    }
    else
    {
        draw_text_transformed_colour(x + 1136 + 680, y + 24, string(TrayQnt18), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, TrayAlpha);
    }
    if (TrayTabHov == 19)
    {
        draw_text_transformed_colour(x + 1136 + 720, y + 24, string(TrayQnt19), 0.7, 0.7, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, TrayAlpha);
    }
    else
    {
        draw_text_transformed_colour(x + 1136 + 720, y + 24, string(TrayQnt19), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, TrayAlpha);
    }
    if (TrayTabHov == 20)
    {
        draw_text_transformed_colour(x + 1136 + 760, y + 24, string(TrayQnt20), 0.7, 0.7, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, TrayAlpha);
    }
    else
    {
        draw_text_transformed_colour(x + 1136 + 760, y + 24, string(TrayQnt20), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, TrayAlpha);
    }
}
