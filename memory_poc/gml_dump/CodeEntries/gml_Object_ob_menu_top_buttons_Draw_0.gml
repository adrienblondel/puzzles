if (button_number == 1)
{
    if (room == r_main_menu)
    {
        draw_sprite_ext(sp_menu_top_button_base_hilight, image_index, x, y, button_size, button_size, 0, c_white, 1);
    }
}
else if (button_number == 2)
{
    if (room == r_uniques_select)
    {
        draw_sprite_ext(sp_menu_top_button_base_hilight, image_index, x, y, button_size, button_size, 0, c_white, 1);
    }
}
else if (button_number == 3)
{
    if (room == r_stats)
    {
        draw_sprite_ext(sp_menu_top_button_base_hilight, image_index, x, y, button_size, button_size, 0, c_white, 1);
    }
}
else if (button_number == 4)
{
    if (room == r_posts)
    {
        draw_sprite_ext(sp_menu_top_button_base_hilight, image_index, x, y, button_size, button_size, 0, c_white, 1);
    }
}
else if (button_number == 5)
{
    if (room == r_options)
    {
        draw_sprite_ext(sp_menu_top_button_base_hilight, image_index, x, y, button_size, button_size, 0, c_white, 1);
    }
}
if (button_number == 1)
{
    draw_sprite_ext(sp_menu_top_button_base, image_index, x, y, button_size, button_size, 0, global.menu_toolber_button_colour_puzzles, 1);
}
else if (button_number == 2)
{
    draw_sprite_ext(sp_menu_top_button_base, image_index, x, y, button_size, button_size, 0, global.menu_toolber_button_colour_uniques, 1);
}
else if (button_number == 3)
{
    draw_sprite_ext(sp_menu_top_button_base, image_index, x, y, button_size, button_size, 0, global.menu_toolber_button_colour_stats, 1);
}
else if (button_number == 4)
{
    draw_sprite_ext(sp_menu_top_button_base, image_index, x, y, button_size, button_size, 0, global.menu_toolber_button_colour_postits, 1);
}
else if (button_number == 5)
{
    draw_sprite_ext(sp_menu_top_button_base, image_index, x, y, button_size, button_size, 0, global.menu_toolber_button_colour_options, 1);
}
else if (button_number == 6)
{
    draw_sprite_ext(sp_menu_top_button_base, image_index, x, y, button_size, button_size, 0, global.menu_toolber_button_colour_exit, 1);
}
draw_sprite_ext(sp_menu_button_title_backing, 0, x, y + 51, button_size, button_size, 0, c_white, 1);
if (mouse_is_over_button == 1)
{
    if (button_size == 1)
    {
        draw_sprite_ext(topper_sprite_to_use, current_button_frame, x, y - 25, button_size, button_size, 0, c_white, 1);
    }
    else
    {
        draw_sprite_ext(topper_sprite_to_use, current_button_frame, x, y - 25, button_size, button_size, 0, c_white, 1);
    }
}
else
{
    draw_sprite_ext(topper_sprite_to_use, 0, x, y - 25, button_size, button_size, 0, c_white, 1);
}
draw_set_halign(fa_center);
draw_set_font(global.current_font_26);
draw_set_colour(c_white);
draw_text_transformed(x, y + 65, text_to_display, button_size, button_size, 0);
draw_set_halign(fa_left);
