if (side_button_or_icon == 1)
{
    if (pack_owned == 0)
    {
        draw_sprite_ext(sp_new_menu_pack_icons, pack_num, x, y, button_scale, button_scale, 0, c_gray, image_alpha / 2);
        draw_sprite_ext(sp_new_menu_pack_icons_banners, 0, x, y, button_scale, button_scale, 0, -1, image_alpha / 10);
    }
    else
    {
        draw_sprite_ext(sp_new_menu_pack_icons, pack_num, x, y, button_scale, button_scale, 0, -1, image_alpha);
    }
    if (pack_beat == 1)
    {
        draw_sprite_ext(sp_new_menu_gold_bit_big, 0, x, y + 40, button_scale, button_scale, 0, -1, image_alpha);
    }
    draw_set_halign(fa_center);
    draw_set_font(f_new_menu_small);
    draw_set_alpha(image_alpha);
    draw_set_colour(c_black);
    if (pack_num > 0)
    {
        draw_text_transformed(x - 1, y + 60, pack_name, 1, 1, 0);
    }
    draw_set_colour(c_white);
    if (pack_num > 0)
    {
        draw_text_transformed(x, y + 58, pack_name, 1, 1, 0);
    }
    draw_set_halign(fa_left);
    draw_set_alpha(1);
    if (pack_num > 0)
    {
        if (pack_owned == 1)
        {
            draw_sprite_ext(sp_nm_pack_icon_qnt_shadow, 0, x - 55, y - 33, button_scale, button_scale, 0, -1, image_alpha);
        }
    }
    if (pack_is_new == 1)
    {
        draw_sprite_ext(sp_nm_pack_free_icon, 1, x - 62, y - 62, 1, 1, 0, -1, image_alpha);
    }
    if (pack_is_free == 1)
    {
        draw_sprite_ext(sp_nm_pack_free_icon, 0, x - 62, y - 62, 1, 1, 0, -1, image_alpha);
    }
    if (pack_is_fav == 1)
    {
        if (pack_num > 0)
        {
            draw_sprite_ext(sp_new_menu_fav_icon, 0, x + 37, y - 44, button_scale, button_scale, 0, -1, image_alpha);
        }
    }
    if (pack_num > 0)
    {
        if (pack_owned == 1)
        {
            draw_set_halign(fa_left);
            draw_set_font(f_tray_small_numbers);
            draw_set_alpha(image_alpha);
            draw_set_colour(c_black);
            draw_text_transformed(x - 61, y - 47, string(puzzles_beat) + "/" + string(pack_qnt), button_scale, button_scale, 0);
            draw_set_colour(c_white);
            draw_text_transformed(x - 59, y - 49, string(puzzles_beat) + "/" + string(pack_qnt), button_scale, button_scale, 0);
            draw_set_alpha(1);
        }
    }
    if (show_loading_icon == 1)
    {
        draw_sprite_ext(sp_loading_bar, 0, x, y, 0.4, 0.4, 0, c_black, image_alpha);
        draw_sprite_ext(sp_loading_bar, loading_icon_index, x, y, 0.4, 0.4, 0, -1, image_alpha);
    }
}
if (side_button_or_icon == 0)
{
    if (pack_num > 0)
    {
        draw_set_halign(fa_left);
        draw_set_font(f_new_menu_small);
        draw_set_alpha(image_alpha);
        draw_set_colour(c_black);
        draw_text_transformed(x - 121, y - 10, pack_name, button_scale, button_scale, 0);
        if (pack_owned == 1)
        {
            if (pack_num == ob_new_menu_controller.pack_to_open)
            {
                draw_set_colour(c_lime);
            }
            else
            {
                draw_set_colour(c_white);
            }
        }
        else
        {
            draw_set_colour(c_gray);
        }
        draw_text_transformed(x - 120, y - 12, pack_name, button_scale, button_scale, 0);
        draw_set_halign(fa_right);
        draw_set_colour(c_black);
        if (pack_beat == 1)
        {
            draw_text_transformed(x + 94, y - 10, string(puzzles_beat) + "/" + string(pack_qnt), button_scale, button_scale, 0);
        }
        else
        {
            draw_text_transformed(x + 118, y - 10, string(puzzles_beat) + "/" + string(pack_qnt), button_scale, button_scale, 0);
        }
        if (pack_owned == 1)
        {
            draw_set_colour(c_white);
        }
        else
        {
            draw_set_colour(c_gray);
        }
        if (pack_beat == 1)
        {
            draw_text_transformed(x + 95, y - 12, string(puzzles_beat) + "/" + string(pack_qnt), button_scale, button_scale, 0);
        }
        else
        {
            draw_text_transformed(x + 119, y - 12, string(puzzles_beat) + "/" + string(pack_qnt), button_scale, button_scale, 0);
        }
        draw_set_alpha(1);
        draw_set_halign(fa_left);
    }
    if (pack_beat == 1)
    {
        draw_sprite_ext(sp_new_menu_uz_but_beat_coin, 0, x + 111, y + 1, button_scale, button_scale, 0, -1, image_alpha);
    }
    if (pack_is_new == 1)
    {
        draw_sprite_ext(sp_nm_pack_free_icon, 1, x - 159, y - 16, button_scale - 0.2, button_scale - 0.2, 0, -1, image_alpha);
    }
    if (pack_is_free == 1)
    {
        draw_sprite_ext(sp_nm_pack_free_icon, 0, x - 159, y - 16, button_scale - 0.2, button_scale - 0.2, 0, -1, image_alpha);
    }
    if (pack_is_fav == 1)
    {
        if (pack_num > 0)
        {
            draw_sprite_ext(sp_new_menu_fav_sidebar, 0, x + 128, y - 7, button_scale, button_scale, 0, -1, image_alpha);
        }
    }
}
