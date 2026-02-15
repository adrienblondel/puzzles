if (y > VisiblePointY)
{
    if (hov == 1)
    {
        if (item_type == 1)
        {
            draw_rectangle_colour(x - 2, y, x, y + 155, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, 0);
            draw_rectangle_colour(x, y + 153, x + 270, y + 155, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, 0);
        }
        if (item_type == 3 || item_type == 2)
        {
            draw_sprite_ext(sp_puz_but_highlight, 0, x, y, 1, 1, 0, global.col_pal_2, ob_menu_3_controller.current_page_alpha);
        }
    }
    if (item_type == 2)
    {
        draw_sprite_ext(sp_puz_but_blank, 0, x, y, 1, 1, 0, -1, ob_menu_3_controller.current_page_alpha);
        draw_sprite_ext(sprite_to_use, item_num, x - 20, y - 20, 1.3, 1.3, 0, -1, ob_menu_3_controller.current_page_alpha);
    }
    else if (item_type == 3)
    {
        draw_sprite_ext(sprite_to_use, item_num, x, y, 1, 1, 0, c_gray, ob_menu_3_controller.current_page_alpha);
    }
    else
    {
        draw_sprite_ext(sprite_to_use, item_num, x, y, 1, 1, 0, -1, ob_menu_3_controller.current_page_alpha);
    }
    if (item_type == 1)
    {
        if (item_num == global.theme_to_use)
        {
            draw_sprite_ext(sp_equipt_item_icon, 0, x + 226, y - 13, 1, 1, 0, -1, ob_menu_3_controller.current_page_alpha);
        }
    }
    else if (item_type == 2)
    {
        if (item_num == global.current_cursor)
        {
            draw_sprite_ext(sp_equipt_item_icon, 0, x + 44, y - 66, 1, 1, 0, -1, ob_menu_3_controller.current_page_alpha);
        }
    }
    else if (item_type == 3)
    {
        if (item_num == ob_game_controller.c6343)
        {
            draw_sprite_ext(sp_equipt_item_icon, 0, x + 44, y - 66, 1, 1, 0, -1, ob_menu_3_controller.current_page_alpha);
        }
    }
    if (item_is_locked == 1)
    {
        draw_set_font(global.mainFont20);
        draw_set_valign(fa_top);
        draw_set_halign(fa_left);
        if (item_type == 1)
        {
            draw_sprite(sp_locked_item_icon, 0, x, y);
            draw_set_halign(fa_left);
            draw_text_transformed_colour(x - 86, y + 28, string(ob_lan.M_MP_3), 0.65, 0.65, 0, c_white, c_white, c_white, c_white, ob_menu_3_controller.current_page_alpha);
        }
        if (item_type == 3 || item_type == 2)
        {
            draw_sprite(sp_puzzle_lock, 0, x, y + 1);
            draw_set_halign(fa_left);
            draw_text_transformed_colour(x - 86, y + 28, string(ob_lan.M_MP_3), 0.65, 0.65, 0, c_white, c_white, c_white, c_white, ob_menu_3_controller.current_page_alpha);
        }
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
}
