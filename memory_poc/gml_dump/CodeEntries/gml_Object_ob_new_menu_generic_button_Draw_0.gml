if (button_number == 68 || button_number == 69 || button_number == 70 || button_number == 95)
{
    draw_sprite_ext(sprite_index, image_index, x, y, button_scale, button_scale, 0, -1, 0.5);
}
else if (button_number == 20 || button_number == 47 || button_number == 67 || button_number == 11 || button_number == 85 || button_number == 86 || button_number == 87 || button_number == 88 || button_number == 89 || button_number == 90 || button_number == 91 || button_number == 92 || button_number == 93 || button_number == 94 || button_number == 12)
{
    draw_sprite_ext(sprite_index, image_index, x, y, button_scale, button_scale, 0, -1, image_alpha);
}
else if (button_number == 18 || button_number == 19)
{
    if (ob_new_menu_controller.tags_menu_open == 0)
    {
        draw_sprite_ext(sprite_index, image_index, x, y, button_scale, button_scale, 0, -1, 0.7);
    }
}
if (button_number == 23 || button_number == 24 || button_number == 25 || button_number == 26 || button_number == 27 || button_number == 28 || button_number == 29 || button_number == 30 || button_number == 31 || button_number == 32 || button_number == 33 || button_number == 34 || button_number == 35 || button_number == 36 || button_number == 37 || button_number == 38 || button_number == 39 || button_number == 40 || button_number == 41 || button_number == 42 || button_number == 43 || button_number == 44 || button_number == 45 || button_number == 46)
{
    draw_set_halign(fa_left);
    draw_set_valign(fa_middle);
    draw_set_font(f_new_menu_small);
    draw_set_colour(c_black);
    var text_indent = 0;
    if (button_number == 23 || button_number == 24 || button_number == 25 || button_number == 26)
    {
        text_indent = 0;
    }
    else
    {
        text_indent = 20;
    }
    draw_text_transformed((x - 121) + text_indent, y + 2, button_text + button_text_value, button_scale, button_scale, 0);
    if (button_number == 23)
    {
        if (global.p_t_complete == 1)
        {
            draw_set_colour(c_lime);
        }
        else
        {
            draw_set_colour(c_white);
        }
    }
    if (button_number == 24)
    {
        if (global.p_t_incomplete == 1)
        {
            draw_set_colour(c_lime);
        }
        else
        {
            draw_set_colour(c_white);
        }
    }
    if (button_number == 25)
    {
        if (global.p_t_owned == 1)
        {
            draw_set_colour(c_lime);
        }
        else
        {
            draw_set_colour(c_white);
        }
    }
    if (button_number == 26)
    {
        if (global.p_t_unowned == 1)
        {
            draw_set_colour(c_lime);
        }
        else
        {
            draw_set_colour(c_white);
        }
    }
    if (button_number == 27)
    {
        if (global.p_t_free == 1)
        {
            draw_set_colour(c_lime);
        }
        else
        {
            draw_set_colour(c_white);
        }
    }
    if (button_number == 28)
    {
        if (global.p_t_1000_plus == 1)
        {
            draw_set_colour(c_lime);
        }
        else
        {
            draw_set_colour(c_white);
        }
    }
    if (button_number == 29)
    {
        if (global.p_t_animals == 1)
        {
            draw_set_colour(c_lime);
        }
        else
        {
            draw_set_colour(c_white);
        }
    }
    if (button_number == 30)
    {
        if (global.p_t_artwork == 1)
        {
            draw_set_colour(c_lime);
        }
        else
        {
            draw_set_colour(c_white);
        }
    }
    if (button_number == 31)
    {
        if (global.p_t_digital_art == 1)
        {
            draw_set_colour(c_lime);
        }
        else
        {
            draw_set_colour(c_white);
        }
    }
    if (button_number == 32)
    {
        if (global.p_t_food == 1)
        {
            draw_set_colour(c_lime);
        }
        else
        {
            draw_set_colour(c_white);
        }
    }
    if (button_number == 33)
    {
        if (global.p_t_geography == 1)
        {
            draw_set_colour(c_lime);
        }
        else
        {
            draw_set_colour(c_white);
        }
    }
    if (button_number == 34)
    {
        if (global.p_t_history == 1)
        {
            draw_set_colour(c_lime);
        }
        else
        {
            draw_set_colour(c_white);
        }
    }
    if (button_number == 35)
    {
        if (global.p_t_holidays == 1)
        {
            draw_set_colour(c_lime);
        }
        else
        {
            draw_set_colour(c_white);
        }
    }
    if (button_number == 36)
    {
        if (global.p_t_landscapes == 1)
        {
            draw_set_colour(c_lime);
        }
        else
        {
            draw_set_colour(c_white);
        }
    }
    if (button_number == 37)
    {
        if (global.p_t_legacy == 1)
        {
            draw_set_colour(c_lime);
        }
        else
        {
            draw_set_colour(c_white);
        }
    }
    if (button_number == 38)
    {
        if (global.p_t_misc == 1)
        {
            draw_set_colour(c_lime);
        }
        else
        {
            draw_set_colour(c_white);
        }
    }
    if (button_number == 39)
    {
        if (global.p_t_nature == 1)
        {
            draw_set_colour(c_lime);
        }
        else
        {
            draw_set_colour(c_white);
        }
    }
    if (button_number == 40)
    {
        if (global.p_t_paintings == 1)
        {
            draw_set_colour(c_lime);
        }
        else
        {
            draw_set_colour(c_white);
        }
    }
    if (button_number == 41)
    {
        if (global.p_t_seasonal == 1)
        {
            draw_set_colour(c_lime);
        }
        else
        {
            draw_set_colour(c_white);
        }
    }
    if (button_number == 42)
    {
        if (global.p_t_space == 1)
        {
            draw_set_colour(c_lime);
        }
        else
        {
            draw_set_colour(c_white);
        }
    }
    if (button_number == 43)
    {
        if (global.p_t_sport == 1)
        {
            draw_set_colour(c_lime);
        }
        else
        {
            draw_set_colour(c_white);
        }
    }
    if (button_number == 44)
    {
        if (global.p_t_variety == 1)
        {
            draw_set_colour(c_lime);
        }
        else
        {
            draw_set_colour(c_white);
        }
    }
    if (button_number == 45)
    {
        if (global.p_t_vehicle == 1)
        {
            draw_set_colour(c_lime);
        }
        else
        {
            draw_set_colour(c_white);
        }
    }
    if (button_number == 46)
    {
        if (global.p_t_video_games == 1)
        {
            draw_set_colour(c_lime);
        }
        else
        {
            draw_set_colour(c_white);
        }
    }
    draw_text_transformed((x - 119) + text_indent, y, button_text + button_text_value, button_scale, button_scale, 0);
    draw_set_valign(fa_top);
}
else if (button_number == 77 || button_number == 78 || button_number == 79 || button_number == 80)
{
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(f_new_menu_small);
    draw_set_colour(c_black);
    draw_text_transformed(x - 1, y + 2, button_text + button_text_value, button_scale, button_scale, 0);
    draw_set_colour(c_dkgray);
    draw_text_transformed(x, y, button_text + button_text_value, button_scale, button_scale, 0);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}
else
{
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(f_new_menu_small);
    draw_set_colour(c_black);
    draw_text_transformed(x - 1, y + 2, button_text + button_text_value, button_scale, button_scale, 0);
    draw_set_colour(c_white);
    draw_text_transformed(x, y, button_text + button_text_value, button_scale, button_scale, 0);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}
if (button_number == 8)
{
    if (ob_new_menu_controller.show_theme_chooser == 1)
    {
        draw_sprite_ext(sp_nm_theme_choose_shadow, 0, 1522, 248, 2, 2, 0, -1, ob_new_menu_controller.theme_choose_alpha / 2);
        draw_sprite_ext(sp_nm_theme_choose_shadow, 0, 1522, 248, 2, 2, 0, -1, ob_new_menu_controller.theme_choose_alpha / 3);
        draw_sprite_ext(sp_nm_theme_choose, global.theme_to_use, 1682, 347, 1, 1, 0, -1, ob_new_menu_controller.theme_choose_alpha);
    }
}
if (button_number == 23 || button_number == 24 || button_number == 25 || button_number == 26 || button_number == 27 || button_number == 28 || button_number == 29 || button_number == 30 || button_number == 31 || button_number == 32 || button_number == 33 || button_number == 34 || button_number == 35 || button_number == 36 || button_number == 37 || button_number == 38 || button_number == 39 || button_number == 40 || button_number == 41 || button_number == 42 || button_number == 43 || button_number == 44 || button_number == 45 || button_number == 46)
{
    draw_sprite_ext(sp_nm_tik_box, 0, x + 115, y, button_scale, button_scale, 0, -1, image_alpha);
}
if (button_number == 23)
{
    if (global.p_t_complete == 1)
    {
        draw_sprite_ext(sp_nm_tik, 0, x + 115, y - 2, button_scale, button_scale, 0, -1, image_alpha);
    }
}
if (button_number == 24)
{
    if (global.p_t_incomplete == 1)
    {
        draw_sprite_ext(sp_nm_tik, 0, x + 115, y - 2, button_scale, button_scale, 0, -1, image_alpha);
    }
}
if (button_number == 25)
{
    if (global.p_t_owned == 1)
    {
        draw_sprite_ext(sp_nm_tik, 0, x + 115, y - 2, button_scale, button_scale, 0, -1, image_alpha);
    }
}
if (button_number == 26)
{
    if (global.p_t_unowned == 1)
    {
        draw_sprite_ext(sp_nm_tik, 0, x + 115, y - 2, button_scale, button_scale, 0, -1, image_alpha);
    }
}
if (button_number == 27)
{
    if (global.p_t_free == 1)
    {
        draw_sprite_ext(sp_nm_tik, 0, x + 115, y - 2, button_scale, button_scale, 0, -1, image_alpha);
    }
}
if (button_number == 28)
{
    if (global.p_t_1000_plus == 1)
    {
        draw_sprite_ext(sp_nm_tik, 0, x + 115, y - 2, button_scale, button_scale, 0, -1, image_alpha);
    }
}
if (button_number == 29)
{
    if (global.p_t_animals == 1)
    {
        draw_sprite_ext(sp_nm_tik, 0, x + 115, y - 2, button_scale, button_scale, 0, -1, image_alpha);
    }
}
if (button_number == 30)
{
    if (global.p_t_artwork == 1)
    {
        draw_sprite_ext(sp_nm_tik, 0, x + 115, y - 2, button_scale, button_scale, 0, -1, image_alpha);
    }
}
if (button_number == 31)
{
    if (global.p_t_digital_art == 1)
    {
        draw_sprite_ext(sp_nm_tik, 0, x + 115, y - 2, button_scale, button_scale, 0, -1, image_alpha);
    }
}
if (button_number == 32)
{
    if (global.p_t_food == 1)
    {
        draw_sprite_ext(sp_nm_tik, 0, x + 115, y - 2, button_scale, button_scale, 0, -1, image_alpha);
    }
}
if (button_number == 33)
{
    if (global.p_t_geography == 1)
    {
        draw_sprite_ext(sp_nm_tik, 0, x + 115, y - 2, button_scale, button_scale, 0, -1, image_alpha);
    }
}
if (button_number == 34)
{
    if (global.p_t_history == 1)
    {
        draw_sprite_ext(sp_nm_tik, 0, x + 115, y - 2, button_scale, button_scale, 0, -1, image_alpha);
    }
}
if (button_number == 35)
{
    if (global.p_t_holidays == 1)
    {
        draw_sprite_ext(sp_nm_tik, 0, x + 115, y - 2, button_scale, button_scale, 0, -1, image_alpha);
    }
}
if (button_number == 36)
{
    if (global.p_t_landscapes == 1)
    {
        draw_sprite_ext(sp_nm_tik, 0, x + 115, y - 2, button_scale, button_scale, 0, -1, image_alpha);
    }
}
if (button_number == 37)
{
    if (global.p_t_legacy == 1)
    {
        draw_sprite_ext(sp_nm_tik, 0, x + 115, y - 2, button_scale, button_scale, 0, -1, image_alpha);
    }
}
if (button_number == 38)
{
    if (global.p_t_misc == 1)
    {
        draw_sprite_ext(sp_nm_tik, 0, x + 115, y - 2, button_scale, button_scale, 0, -1, image_alpha);
    }
}
if (button_number == 39)
{
    if (global.p_t_nature == 1)
    {
        draw_sprite_ext(sp_nm_tik, 0, x + 115, y - 2, button_scale, button_scale, 0, -1, image_alpha);
    }
}
if (button_number == 40)
{
    if (global.p_t_paintings == 1)
    {
        draw_sprite_ext(sp_nm_tik, 0, x + 115, y - 2, button_scale, button_scale, 0, -1, image_alpha);
    }
}
if (button_number == 41)
{
    if (global.p_t_seasonal == 1)
    {
        draw_sprite_ext(sp_nm_tik, 0, x + 115, y - 2, button_scale, button_scale, 0, -1, image_alpha);
    }
}
if (button_number == 42)
{
    if (global.p_t_space == 1)
    {
        draw_sprite_ext(sp_nm_tik, 0, x + 115, y - 2, button_scale, button_scale, 0, -1, image_alpha);
    }
}
if (button_number == 43)
{
    if (global.p_t_sport == 1)
    {
        draw_sprite_ext(sp_nm_tik, 0, x + 115, y - 2, button_scale, button_scale, 0, -1, image_alpha);
    }
}
if (button_number == 44)
{
    if (global.p_t_variety == 1)
    {
        draw_sprite_ext(sp_nm_tik, 0, x + 115, y - 2, button_scale, button_scale, 0, -1, image_alpha);
    }
}
if (button_number == 45)
{
    if (global.p_t_vehicle == 1)
    {
        draw_sprite_ext(sp_nm_tik, 0, x + 115, y - 2, button_scale, button_scale, 0, -1, image_alpha);
    }
}
if (button_number == 46)
{
    if (global.p_t_video_games == 1)
    {
        draw_sprite_ext(sp_nm_tik, 0, x + 115, y - 2, button_scale, button_scale, 0, -1, image_alpha);
    }
}
