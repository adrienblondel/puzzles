if (puz_num > 0)
{
    draw_sprite_ext(sp_new_menu_puzzle_button_shadow, 0, x, y, button_scale, button_scale, 0, -1, image_alpha);
}
if (puz_type == 6 || puz_type == 7 || puz_type == 8 || puz_type == 9 || puz_type == 10)
{
    if (button_locked == 0)
    {
        draw_sprite_ext(sprite_index, image_index, x, y, button_scale, button_scale, 0, -1, image_alpha);
    }
    else
    {
        draw_sprite_ext(sprite_index, image_index, x, y, button_scale, button_scale, 0, c_gray, image_alpha);
    }
}
else
{
    draw_sprite_ext(sprite_index, image_index, x, y, button_scale, button_scale, 0, -1, image_alpha);
}
if (puz_type == 1 || puz_type == 2 || puz_type == 3 || puz_type == 5)
{
    draw_sprite_ext(sp_nm_but_puz_shape, puzzle_level_type - 1, x, y, button_scale, button_scale, 0, -1, image_alpha);
}
if (puz_num > 0)
{
    if (puz_type == 1 || puz_type == 2 || puz_type == 3 || puz_type == 4 || puz_type == 5)
    {
        draw_sprite_ext(sp_new_menu_chal_button_coin, 0, x, y, button_scale, button_scale, 0, -1, image_alpha);
        if (puz_beat == 1)
        {
            if (puz_type == 1)
            {
                draw_sprite_ext(sp_new_menu_chal_button_coin, 1, x, y, button_scale, button_scale, 0, -1, image_alpha);
            }
            else
            {
                draw_sprite_ext(sp_new_menu_chal_button_coin, 2, x, y, button_scale, button_scale, 0, -1, image_alpha);
            }
        }
        draw_sprite_ext(sp_new_menu_chal_main_shadow_2, 0, x, y, button_scale, button_scale, 0, -1, image_alpha);
        if (puz_type == 1)
        {
            draw_sprite_ext(sp_new_menu_chal_main_shadow_2, 1, x, y, button_scale, button_scale, 0, -1, image_alpha);
        }
        draw_set_halign(fa_left);
        draw_set_font(f_tray_small_numbers);
        draw_set_alpha(image_alpha);
        draw_set_colour(c_black);
        draw_rectangle(x - 85, y + 27, x - 46, y + 29, false);
        if (puz_type == 1)
        {
            draw_text_transformed(x - 85, y - 54, puz_num, button_scale, button_scale, 0);
        }
        draw_text_transformed(x - 85, y + 27, puzzle_number_of_pieces, button_scale, button_scale, 0);
        draw_text_transformed(x - 85, y, pieces_placed, button_scale, button_scale, 0);
        draw_set_colour(c_white);
        draw_rectangle(x - 84, y + 26, x - 47, y + 28, false);
        if (puz_type == 1)
        {
            draw_text_transformed(x - 84, y - 56, puz_num, button_scale, button_scale, 0);
        }
        draw_text_transformed(x - 84, y + 25, puzzle_number_of_pieces, button_scale, button_scale, 0);
        draw_text_transformed(x - 84, y - 2, pieces_placed, button_scale, button_scale, 0);
        if (puz_options_open == 1)
        {
            draw_sprite_ext(sp_new_menu_puzzle_button_options_shadow, 0, x, y, button_scale, button_scale, 0, -1, image_alpha);
            draw_sprite_ext(sp_new_menu_puzzle_button_option_button, 1, x + 68, y - 33, options_open_scale, options_open_scale, 0, -1, image_alpha);
            draw_sprite_ext(sp_new_menu_puz_option_buttons, 0, x - 26, y + 15, options_reset_button_scale, options_reset_button_scale, 0, -1, options_open_alpha);
            if (puz_beat == 1)
            {
                draw_sprite_ext(sp_new_menu_puz_option_buttons, 1, x - 26, y + 41, options_build_button_scale, options_build_button_scale, 0, -1, options_open_alpha);
            }
            else
            {
                draw_sprite_ext(sp_new_menu_puz_option_buttons, 1, x - 26, y + 41, options_build_button_scale, options_build_button_scale, 0, c_dkgray, options_open_alpha);
            }
            if (puz_type == 1)
            {
                draw_sprite_ext(sp_new_menu_puz_option_buttons, 2, x - 26, y - 11, options_leaderboard_button_scale, options_leaderboard_button_scale, 0, -1, options_open_alpha);
            }
        }
        else
        {
            draw_sprite_ext(sp_new_menu_puzzle_button_option_button, 0, x + 68, y - 33, options_open_scale, options_open_scale, 0, -1, image_alpha);
        }
        if (button_locked == 1)
        {
            draw_sprite_ext(sp_new_menu_chal_main_locked, 0, x, y, button_scale, button_scale, 0, -1, image_alpha);
            draw_set_font(f_26px_title_text);
            draw_set_alpha(image_alpha);
            draw_set_colour(c_black);
            draw_text_transformed(x + 3, y - 18, item_price, 1, 1, 0);
            draw_set_colour(c_white);
            draw_text_transformed(x + 5, y - 20, item_price, 1, 1, 0);
            draw_set_alpha(1);
        }
    }
    if (puz_type == 6 || puz_type == 7 || puz_type == 8 || puz_type == 9 || puz_type == 10)
    {
        if (button_locked == 1)
        {
            if (trade_open == 1)
            {
                draw_sprite_ext(sp_new_menu_chal_main_locked, 0, x, y, button_scale, button_scale, 0, -1, image_alpha);
                draw_set_font(f_26px_title_text);
                draw_set_alpha(image_alpha);
                draw_set_colour(c_black);
                draw_text_transformed(x + 3, y - 18, item_price, 1, 1, 0);
                draw_set_colour(c_white);
                draw_text_transformed(x + 5, y - 20, item_price, 1, 1, 0);
                draw_set_alpha(1);
            }
            else
            {
                draw_sprite_ext(sp_new_menu_gold_bit_big, 0, x - 65, y + 31, button_scale / 1.5, button_scale / 1.5, 0, -1, image_alpha);
                draw_set_font(f_22px_title_text);
                draw_set_alpha(image_alpha);
                draw_set_colour(c_black);
                draw_text_transformed(x - 47, y + 17, item_price, 1, 1, 0);
                draw_set_colour(c_white);
                draw_text_transformed(x - 45, y + 15, item_price, 1, 1, 0);
                draw_set_alpha(1);
            }
        }
    }
    if (trade_open == 1)
    {
        draw_sprite_ext(sp_new_menu_trade_buttons, 0, x - 43, y - 39, trade_scale, trade_scale, 0, -1, trade_alpha);
        draw_sprite_ext(sp_new_menu_trade_buttons, 1, x + 44, y - 39, trade_u_scale, trade_u_scale, 0, -1, trade_alpha);
        draw_sprite_ext(sp_new_menu_trade_cancel_buttons, 0, x, y + 39, cancel_trade_scale, cancel_trade_scale, 0, -1, trade_alpha);
    }
    draw_set_alpha(1);
}
