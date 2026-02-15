draw_sprite_ext(sp_kiosk_item_button, image_index, x, y, button_size, button_size, 0, backing_image_blend, image_alpha);
if (puzzle_number > 0)
{
    draw_sprite_ext(pack_sprite_index, puzzle_image_index, x, y, button_size, button_size, 0, c_white, image_alpha);
    draw_sprite_ext(sp_kiosk_item_title, 0, x, y, button_size, button_size, 0, c_white, image_alpha);
    if (puzzle_has_been_beat)
    {
        draw_sprite_ext(sp_uniques_complete_icon, 0, x, y, button_size, button_size, 0, c_white, image_alpha);
    }
    draw_sprite_ext(sp_uniques_piece_amount_icon, 0, x, y, button_size, button_size, 0, c_white, image_alpha);
    draw_set_valign(fa_middle);
    draw_set_alpha(image_alpha);
    draw_set_colour(c_white);
    draw_set_font(global.current_font_22);
    if (place_meeting(x, y, ob_menu_cursor))
    {
        if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
        {
            draw_set_font(global.current_font_22);
            draw_set_halign(fa_center);
            draw_text_transformed(x, y - 80, title_to_display, button_size, button_size, 0);
            draw_set_halign(fa_left);
            draw_text_transformed(x - 93, y + 54, puzzle_number_of_pieces_placed, button_size, button_size, 0);
            draw_set_font(global.current_font_26);
            draw_text_transformed(x - 93, y + 78, puzzle_number_of_pieces, button_size, button_size, 0);
        }
        else
        {
            draw_set_font(global.current_font_22);
            draw_set_halign(fa_center);
            draw_text_transformed(x, y - 83, title_to_display, button_size, button_size, 0);
            draw_set_halign(fa_left);
            draw_text_transformed(x - 95, y + 55, puzzle_number_of_pieces_placed, button_size, button_size, 0);
            draw_set_font(global.current_font_26);
            draw_text_transformed(x - 95, y + 79, puzzle_number_of_pieces, button_size, button_size, 0);
        }
    }
    else
    {
        draw_set_font(global.current_font_22);
        draw_set_halign(fa_center);
        draw_text_transformed(x, y - 81, title_to_display, button_size, button_size, 0);
        draw_set_halign(fa_left);
        draw_text_transformed(x - 94, y + 54, puzzle_number_of_pieces_placed, button_size, button_size, 0);
        draw_set_font(global.current_font_26);
        draw_text_transformed(x - 94, y + 78, puzzle_number_of_pieces, button_size, button_size, 0);
    }
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
    draw_set_alpha(1);
}
