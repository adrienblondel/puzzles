draw_sprite_ext(sp_kiosk_item_button, image_index, x, y, button_size, button_size, 0, backing_image_blend, image_alpha);
if (kiosk_item_number > 0)
{
    draw_sprite_ext(pack_sprite_index, kiosk_item_number - 1, x, y, button_size, button_size, 0, item_sprite_colour, image_alpha);
    if (item_is_owned == 1)
    {
        draw_sprite_ext(sp_kiosk_item_title, 0, x, y, button_size, button_size, 0, c_white, image_alpha);
    }
    else
    {
        draw_sprite_ext(sp_kiosk_item_title, 1, x, y, button_size, button_size, 0, c_white, image_alpha);
    }
    if (piece_count > 0)
    {
        draw_sprite_ext(sp_uniques_piece_amount_icon2, 0, x, y, button_size, button_size, 0, c_white, image_alpha);
        draw_set_valign(fa_middle);
        draw_set_alpha(image_alpha);
        draw_set_colour(c_white);
        draw_set_halign(fa_left);
        draw_set_font(global.current_font_26);
        if (place_meeting(x, y, ob_menu_cursor))
        {
            if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
            {
                draw_text_transformed(x - 93, y + 78, piece_count, button_size, button_size, 0);
            }
            else
            {
                draw_text_transformed(x - 95, y + 80, piece_count, button_size, button_size, 0);
            }
        }
        else
        {
            draw_text_transformed(x - 94, y + 78, piece_count, button_size, button_size, 0);
        }
        draw_set_valign(fa_top);
        draw_set_halign(fa_left);
        draw_set_alpha(1);
    }
    if (item_is_owned == 0)
    {
        draw_sprite_ext(sp_kiosk_item_price, 0, x, y, button_size, button_size, 0, c_white, image_alpha);
        draw_set_valign(fa_middle);
        draw_set_alpha(image_alpha);
        draw_set_font(global.current_font_22);
        if (place_meeting(x, y, ob_menu_cursor))
        {
            if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
            {
                draw_set_colour(c_black);
                draw_text_transformed(x - 69, y - 39, item_price, button_size, button_size, 0);
                draw_set_colour(c_white);
                draw_text_transformed(x - 67, y - 41, item_price, button_size, button_size, 0);
            }
            else
            {
                draw_set_colour(c_black);
                draw_text_transformed(x - 71, y - 39, item_price, button_size, button_size, 0);
                draw_set_colour(c_white);
                draw_text_transformed(x - 69, y - 41, item_price, button_size, button_size, 0);
            }
        }
        else
        {
            draw_set_colour(c_black);
            draw_text_transformed(x - 70, y - 39, item_price, button_size, button_size, 0);
            draw_set_colour(c_white);
            draw_text_transformed(x - 68, y - 41, item_price, button_size, button_size, 0);
        }
        draw_set_valign(fa_top);
        draw_set_alpha(1);
    }
    if (global.kiosk_items_to_show == 1)
    {
        if (global.kiosk_item_current_cursor == (kiosk_item_number - 1))
        {
            draw_sprite_ext(sp_kiosk_item_equipt, 0, x, y, button_size, button_size, 0, c_white, image_alpha);
        }
    }
    if (global.kiosk_items_to_show == 6)
    {
        if (global.kiosk_toolbar_skins == (kiosk_item_number - 1))
        {
            draw_sprite_ext(sp_kiosk_item_equipt, 0, x, y, button_size, button_size, 0, c_white, image_alpha);
        }
    }
    if (global.kiosk_items_to_show == 7)
    {
        if (global.kiosk_item_current_avatar == (kiosk_item_number - 1))
        {
            draw_sprite_ext(sp_kiosk_item_equipt, 0, x, y, button_size, button_size, 0, c_white, image_alpha);
        }
    }
    if (global.kiosk_items_to_show == 2)
    {
        if (kiosk_item_number == 1000)
        {
            if (global.current_music_set == kiosk_item_number)
            {
                draw_sprite_ext(sp_kiosk_item_equipt, 0, x, y, button_size, button_size, 0, c_white, image_alpha);
            }
        }
        else if (global.current_music_set == kiosk_item_number)
        {
            draw_sprite_ext(sp_kiosk_item_equipt, 0, x, y, button_size, button_size, 0, c_white, image_alpha);
        }
    }
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    draw_set_alpha(image_alpha);
    draw_set_colour(c_white);
    draw_set_font(global.current_font_22);
    if (place_meeting(x, y, ob_menu_cursor))
    {
        if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
        {
            draw_text_transformed(x, y - 79, title_to_display, button_size, button_size, 0);
        }
        else
        {
            draw_text_transformed(x, y - 83, title_to_display, button_size, button_size, 0);
        }
    }
    else
    {
        draw_text_transformed(x, y - 81, title_to_display, button_size, button_size, 0);
    }
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
    draw_set_alpha(1);
}
