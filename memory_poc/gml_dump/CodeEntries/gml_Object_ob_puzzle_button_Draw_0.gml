draw_sprite_ext(sp_menu_puzzle_pack_button_base, image_index, x, y, button_size, button_size, 0, backing_image_blend, image_alpha);
if (puzzle_number > 0)
{
    draw_sprite_ext(global.puzzle_pack_sprite_index, puzzle_image_index, x, y, button_size, button_size, 0, c_white, image_alpha);
}
if (puzzle_number > 0)
{
    draw_sprite_ext(sp_menu_puzzle_pack_button_title_backing, 0, x, y, button_size, button_size, 0, c_white, image_alpha);
    draw_sprite_ext(sp_menu_puzzle_pack_button_puzzle_count, 0, x, y, button_size, button_size, 0, c_white, image_alpha);
    if (puzzle_is_complete == 1)
    {
        draw_sprite_ext(sp_menu_all_puzzle_pack_button_puzzles_complete_icon, 0, x, y, button_size, button_size, 0, c_white, image_alpha);
    }
    draw_set_valign(fa_middle);
    draw_set_alpha(image_alpha);
    draw_set_colour(c_white);
    if (dlc_is_owned == 1)
    {
        if (place_meeting(x, y, ob_menu_cursor))
        {
            if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
            {
                draw_set_halign(fa_center);
                draw_set_font(global.current_font_22);
                draw_text_transformed(x, y - 72, title_to_display, button_size, button_size, 0);
                draw_set_halign(fa_left);
                draw_text_transformed(x - 82, y + 53, pieces_placed, button_size, button_size, 0);
                draw_set_font(global.current_font_26);
                draw_text_transformed(x - 82, y + 72, number_of_puzzles, button_size, button_size, 0);
            }
            else
            {
                draw_set_halign(fa_center);
                draw_set_font(global.current_font_22);
                draw_text_transformed(x, y - 75, title_to_display, button_size, button_size, 0);
                draw_set_halign(fa_left);
                draw_text_transformed(x - 86, y + 55, pieces_placed, button_size, button_size, 0);
                draw_set_font(global.current_font_26);
                draw_text_transformed(x - 86, y + 75, number_of_puzzles, button_size, button_size, 0);
            }
        }
        else
        {
            draw_set_halign(fa_center);
            draw_set_font(global.current_font_22);
            draw_text_transformed(x, y - 73, title_to_display, button_size, button_size, 0);
            draw_set_halign(fa_left);
            draw_text_transformed(x - 84, y + 54, pieces_placed, button_size, button_size, 0);
            draw_set_font(global.current_font_26);
            draw_text_transformed(x - 84, y + 73, number_of_puzzles, button_size, button_size, 0);
        }
    }
    else
    {
        draw_set_halign(fa_center);
        draw_set_font(global.current_font_22);
        draw_text_transformed(x, y - 73, title_to_display, button_size, button_size, 0);
        draw_set_halign(fa_left);
        draw_text_transformed(x - 84, y + 54, pieces_placed, button_size, button_size, 0);
        draw_set_font(global.current_font_26);
        draw_text_transformed(x - 84, y + 73, number_of_puzzles, button_size, button_size, 0);
    }
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_alpha(1);
}
if (puzzle_number > 0)
{
    if (global.current_pack_open == 3 || global.current_pack_open == 126 || global.current_pack_open == 4 || global.current_pack_open == 6 || global.current_pack_open == 126 || global.current_pack_open == 17 || global.current_pack_open == 43 || global.current_pack_open == 45 || global.current_pack_open == 75)
    {
        draw_sprite_ext(sp_menu_puzzle_pack_button_base_free, 0, x, y, button_size, button_size, 0, c_white, image_alpha);
    }
}
