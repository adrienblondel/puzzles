draw_sprite_ext(sp_kiosk_category_button, image_index, x, y, button_size, button_size, 0, backing_image_blend, image_alpha);
if (unique_category_button > 0)
{
    draw_sprite_ext(pack_sprite_index, puzzle_image_index, x, y, button_size, button_size, 0, c_white, image_alpha);
}
if (unique_category_button > 0)
{
    draw_sprite_ext(sp_kiosk_category_title_backing, 0, x, y, button_size, button_size, 0, c_white, image_alpha);
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    draw_set_alpha(image_alpha);
    draw_set_colour(c_white);
    draw_set_font(global.current_font_22);
    if (place_meeting(x, y, ob_menu_cursor))
    {
        if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
        {
            draw_text_transformed(x, y - 81, title_to_display, button_size, button_size, 0);
        }
        else
        {
            draw_text_transformed(x, y - 87, title_to_display, button_size, button_size, 0);
        }
    }
    else
    {
        draw_text_transformed(x, y - 84, title_to_display, button_size, button_size, 0);
    }
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
    draw_set_alpha(1);
}
