draw_sprite_ext(sp_menu_theme_choose_base, image_index, x, y, button_size, button_size, 0, backing_image_blend, image_alpha);
if (theme_pack > 0)
{
    if (theme_is_owned == 1)
    {
        draw_sprite_ext(theme_sprite_index, button_sprite_to_show_1, x, y, button_size, button_size, 0, c_white, button_sprite_to_show_1_alpha);
        draw_sprite_ext(theme_sprite_index, button_sprite_to_show_2, x, y, button_size, button_size, 0, c_white, button_sprite_to_show_2_alpha);
    }
    else
    {
        draw_sprite_ext(theme_sprite_index, button_sprite_to_show_1, x, y, button_size, button_size, 0, c_dkgray, button_sprite_to_show_1_alpha);
        draw_sprite_ext(theme_sprite_index, button_sprite_to_show_2, x, y, button_size, button_size, 0, c_dkgray, button_sprite_to_show_2_alpha);
    }
    if (theme_is_owned == 1)
    {
        draw_sprite_ext(sp_menu_theme_topper, 0, x, y, button_size, button_size, 0, c_white, image_alpha);
    }
    else
    {
        draw_sprite_ext(sp_menu_theme_topper, 1, x, y, button_size, button_size, 0, c_white, image_alpha);
    }
    draw_set_alpha(image_alpha);
    draw_set_colour(c_white);
    draw_set_halign(fa_center);
    draw_set_font(global.current_font_22);
    if (place_meeting(x, y, ob_menu_cursor))
    {
        if (ob_menu_cursor.y < 300)
        {
            draw_text_transformed(x, y - 102, title_to_display, button_size, button_size, 0);
        }
        else if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
        {
            draw_text_transformed(x, y - 100, title_to_display, button_size, button_size, 0);
        }
        else
        {
            draw_text_transformed(x, y - 104, title_to_display, button_size, button_size, 0);
        }
    }
    else
    {
        draw_text_transformed(x, y - 102, title_to_display, button_size, button_size, 0);
    }
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_alpha(1);
}
