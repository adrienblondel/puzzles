if (y > VisiblePointY)
{
    if (hov == 1)
    {
        draw_sprite_ext(sp_puz_but_highlight, 0, x, y, 1, 1, 0, global.col_pal_2, ob_menu_3_controller.current_page_alpha);
    }
    draw_sprite_ext(sprite_to_use, image_index, x, y, 1, 1, 0, -1, ob_menu_3_controller.current_page_alpha);
    draw_sprite_ext(sp_puz_beat_icon, puz_beat, x, y, 1, 1, 0, -1, ob_menu_3_controller.current_page_alpha);
    draw_sprite(sp_piece_remain_shadow, 0, x + 88, y + 53);
    if (puzzle_is_locked == 1)
    {
        draw_sprite(sp_puzzle_lock, 0, x, y);
    }
    draw_set_font(global.mainFont20);
    draw_set_valign(fa_top);
    draw_set_halign(fa_right);
    draw_text_transformed_colour(x + 86, y + 28, string(pieces_placed) + "/" + string(bits), 0.65, 0.65, 0, c_white, c_white, c_white, c_white, ob_menu_3_controller.current_page_alpha);
    if (puzzle_is_locked == 1)
    {
        draw_set_halign(fa_left);
        draw_text_transformed_colour(x - 86, y + 28, string(ob_lan.M_MP_3), 0.65, 0.65, 0, c_white, c_white, c_white, c_white, ob_menu_3_controller.current_page_alpha);
    }
    if (buyMenu == 1)
    {
        if (LockBuyHov != 0)
        {
            draw_sprite_ext(sp_buy_puzzle_icon, LockBuyHov, x, y + buy_y, 1, 1, 0, global.col_pal_2, buy_alpha);
        }
        draw_sprite_ext(sp_buy_puzzle_icon, 0, x, y + buy_y, 1, 1, 0, -1, buy_alpha);
        draw_set_font(f_main_20);
        draw_set_valign(fa_top);
        draw_set_halign(fa_right);
        if (LockBuyHov == 2)
        {
            draw_text_transformed_colour(x + 92, y + (buy_y + 5), "-1", 0.85, 0.85, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, buy_alpha);
        }
        else
        {
            draw_text_transformed_colour(x + 92, y + (buy_y + 5), "-1", 0.85, 0.85, 0, c_white, c_white, c_white, c_white, buy_alpha);
        }
        if (cant_afford_alpha > 0)
        {
            draw_text_transformed_colour(x + 92, y + (buy_y + 5), "-1", 0.85, 0.85, 0, c_red, c_red, c_red, c_red, cant_afford_alpha);
        }
        draw_set_halign(fa_left);
        if (LockBuyHov == 1)
        {
            draw_text_transformed_colour(x - 47, y + (buy_y + 5), "-" + string(lockPrice), 0.85, 0.85, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, buy_alpha);
        }
        else
        {
            draw_text_transformed_colour(x - 47, y + (buy_y + 5), "-" + string(lockPrice), 0.85, 0.85, 0, c_white, c_white, c_white, c_white, buy_alpha);
        }
        if (cant_afford2_alpha > 0)
        {
            draw_text_transformed_colour(x - 47, y + (buy_y + 5), "-" + string(lockPrice), 0.85, 0.85, 0, c_red, c_red, c_red, c_red, cant_afford2_alpha);
        }
    }
    if (pin_alpha > 0)
    {
        draw_sprite_ext(sp_puz_pin, 0, x + pin_x, y - pin_y, 1, 1, pin_angle, -1, pin_alpha);
    }
}
