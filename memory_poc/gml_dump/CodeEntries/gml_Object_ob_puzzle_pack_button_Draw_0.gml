if (pack_is_a_fav == 0)
{
    if (y > 458 && y < 1200)
    {
        draw_sprite_ext(sp_menu_puzzle_pack_button_base, image_index, x, y, button_size, button_size, 0, backing_image_blend, image_alpha);
    }
}
else if (pack_is_a_fav == 1)
{
    if (fav_number == 1)
    {
        draw_sprite_ext(sp_menu_puzzle_pack_button_base, image_index, x, y, button_size, button_size, 0, global.fav_backing_image_blend_1, image_alpha);
    }
    else if (fav_number == 2)
    {
        draw_sprite_ext(sp_menu_puzzle_pack_button_base, image_index, x, y, button_size, button_size, 0, global.fav_backing_image_blend_2, image_alpha);
    }
    else if (fav_number == 3)
    {
        draw_sprite_ext(sp_menu_puzzle_pack_button_base, image_index, x, y, button_size, button_size, 0, global.fav_backing_image_blend_3, image_alpha);
    }
    else if (fav_number == 4)
    {
        draw_sprite_ext(sp_menu_puzzle_pack_button_base, image_index, x, y, button_size, button_size, 0, global.fav_backing_image_blend_4, image_alpha);
    }
    else if (fav_number == 5)
    {
        draw_sprite_ext(sp_menu_puzzle_pack_button_base, image_index, x, y, button_size, button_size, 0, global.fav_backing_image_blend_5, image_alpha);
    }
    else if (fav_number == 6)
    {
        draw_sprite_ext(sp_menu_puzzle_pack_button_base, image_index, x, y, button_size, button_size, 0, global.fav_backing_image_blend_6, image_alpha);
    }
    else if (fav_number == 7)
    {
        draw_sprite_ext(sp_menu_puzzle_pack_button_base, image_index, x, y, button_size, button_size, 0, global.fav_backing_image_blend_7, image_alpha);
    }
    else if (fav_number == 8)
    {
        draw_sprite_ext(sp_menu_puzzle_pack_button_base, image_index, x, y, button_size, button_size, 0, global.fav_backing_image_blend_8, image_alpha);
    }
    else if (fav_number == 9)
    {
        draw_sprite_ext(sp_menu_puzzle_pack_button_base, image_index, x, y, button_size, button_size, 0, global.fav_backing_image_blend_9, image_alpha);
    }
    else if (fav_number == 10)
    {
        draw_sprite_ext(sp_menu_puzzle_pack_button_base, image_index, x, y, button_size, button_size, 0, global.fav_backing_image_blend_10, image_alpha);
    }
    else if (fav_number == 11)
    {
        draw_sprite_ext(sp_menu_puzzle_pack_button_base, image_index, x, y, button_size, button_size, 0, global.fav_backing_image_blend_11, image_alpha);
    }
    else if (fav_number == 12)
    {
        draw_sprite_ext(sp_menu_puzzle_pack_button_base, image_index, x, y, button_size, button_size, 0, global.fav_backing_image_blend_12, image_alpha);
    }
    else if (fav_number == 13)
    {
        draw_sprite_ext(sp_menu_puzzle_pack_button_base, image_index, x, y, button_size, button_size, 0, global.fav_backing_image_blend_13, image_alpha);
    }
    else if (fav_number == 14)
    {
        draw_sprite_ext(sp_menu_puzzle_pack_button_base, image_index, x, y, button_size, button_size, 0, global.fav_backing_image_blend_14, image_alpha);
    }
    else if (fav_number == 15)
    {
        draw_sprite_ext(sp_menu_puzzle_pack_button_base, image_index, x, y, button_size, button_size, 0, global.fav_backing_image_blend_15, image_alpha);
    }
}
if (puzzle_pack > 0)
{
    if (pack_is_a_fav == 0)
    {
        if (pack_is_owned == 1)
        {
            draw_sprite_ext(pack_sprite_index, button_sprite_to_show_1, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_1_alpha);
            draw_sprite_ext(pack_sprite_index, button_sprite_to_show_2, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_2_alpha);
        }
        else
        {
            draw_sprite_ext(pack_sprite_index, button_sprite_to_show_1, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_1_alpha);
            draw_sprite_ext(pack_sprite_index, button_sprite_to_show_2, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_2_alpha);
        }
    }
    else if (pack_is_a_fav == 1)
    {
        if (fav_number == 1)
        {
            if (pack_is_owned == 1)
            {
                draw_sprite_ext(pack_sprite_index, 0, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_1_alpha);
                draw_sprite_ext(pack_sprite_index, 0, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_2_alpha);
            }
            else
            {
                draw_sprite_ext(pack_sprite_index, global.fav_1_button_sprite_to_show_1, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_1_alpha);
                draw_sprite_ext(pack_sprite_index, global.fav_1_button_sprite_to_show_2, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_2_alpha);
            }
        }
        else if (fav_number == 2)
        {
            if (pack_is_owned == 1)
            {
                draw_sprite_ext(pack_sprite_index, 0, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_1_alpha);
                draw_sprite_ext(pack_sprite_index, 0, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_2_alpha);
            }
            else
            {
                draw_sprite_ext(pack_sprite_index, global.fav_2_button_sprite_to_show_1, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_1_alpha);
                draw_sprite_ext(pack_sprite_index, global.fav_2_button_sprite_to_show_2, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_2_alpha);
            }
        }
        else if (fav_number == 3)
        {
            if (pack_is_owned == 1)
            {
                draw_sprite_ext(pack_sprite_index, 0, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_1_alpha);
                draw_sprite_ext(pack_sprite_index, 0, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_2_alpha);
            }
            else
            {
                draw_sprite_ext(pack_sprite_index, global.fav_3_button_sprite_to_show_1, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_1_alpha);
                draw_sprite_ext(pack_sprite_index, global.fav_3_button_sprite_to_show_2, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_2_alpha);
            }
        }
        else if (fav_number == 4)
        {
            if (pack_is_owned == 1)
            {
                draw_sprite_ext(pack_sprite_index, 0, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_1_alpha);
                draw_sprite_ext(pack_sprite_index, 0, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_2_alpha);
            }
            else
            {
                draw_sprite_ext(pack_sprite_index, global.fav_4_button_sprite_to_show_1, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_1_alpha);
                draw_sprite_ext(pack_sprite_index, global.fav_4_button_sprite_to_show_2, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_2_alpha);
            }
        }
        else if (fav_number == 5)
        {
            if (pack_is_owned == 1)
            {
                draw_sprite_ext(pack_sprite_index, 0, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_1_alpha);
                draw_sprite_ext(pack_sprite_index, 0, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_2_alpha);
            }
            else
            {
                draw_sprite_ext(pack_sprite_index, global.fav_5_button_sprite_to_show_1, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_1_alpha);
                draw_sprite_ext(pack_sprite_index, global.fav_5_button_sprite_to_show_2, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_2_alpha);
            }
        }
        else if (fav_number == 6)
        {
            if (pack_is_owned == 1)
            {
                draw_sprite_ext(pack_sprite_index, 0, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_1_alpha);
                draw_sprite_ext(pack_sprite_index, 0, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_2_alpha);
            }
            else
            {
                draw_sprite_ext(pack_sprite_index, global.fav_6_button_sprite_to_show_1, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_1_alpha);
                draw_sprite_ext(pack_sprite_index, global.fav_6_button_sprite_to_show_2, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_2_alpha);
            }
        }
        else if (fav_number == 7)
        {
            if (pack_is_owned == 1)
            {
                draw_sprite_ext(pack_sprite_index, 0, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_1_alpha);
                draw_sprite_ext(pack_sprite_index, 0, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_2_alpha);
            }
            else
            {
                draw_sprite_ext(pack_sprite_index, global.fav_7_button_sprite_to_show_1, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_1_alpha);
                draw_sprite_ext(pack_sprite_index, global.fav_7_button_sprite_to_show_2, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_2_alpha);
            }
        }
        else if (fav_number == 8)
        {
            if (pack_is_owned == 1)
            {
                draw_sprite_ext(pack_sprite_index, 0, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_1_alpha);
                draw_sprite_ext(pack_sprite_index, 0, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_2_alpha);
            }
            else
            {
                draw_sprite_ext(pack_sprite_index, global.fav_8_button_sprite_to_show_1, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_1_alpha);
                draw_sprite_ext(pack_sprite_index, global.fav_8_button_sprite_to_show_2, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_2_alpha);
            }
        }
        else if (fav_number == 9)
        {
            if (pack_is_owned == 1)
            {
                draw_sprite_ext(pack_sprite_index, 0, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_1_alpha);
                draw_sprite_ext(pack_sprite_index, 0, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_2_alpha);
            }
            else
            {
                draw_sprite_ext(pack_sprite_index, global.fav_9_button_sprite_to_show_1, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_1_alpha);
                draw_sprite_ext(pack_sprite_index, global.fav_9_button_sprite_to_show_2, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_2_alpha);
            }
        }
        else if (fav_number == 10)
        {
            if (pack_is_owned == 1)
            {
                draw_sprite_ext(pack_sprite_index, 0, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_1_alpha);
                draw_sprite_ext(pack_sprite_index, 0, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_2_alpha);
            }
            else
            {
                draw_sprite_ext(pack_sprite_index, global.fav_10_button_sprite_to_show_1, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_1_alpha);
                draw_sprite_ext(pack_sprite_index, global.fav_10_button_sprite_to_show_2, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_2_alpha);
            }
        }
        else if (fav_number == 11)
        {
            if (pack_is_owned == 1)
            {
                draw_sprite_ext(pack_sprite_index, 0, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_1_alpha);
                draw_sprite_ext(pack_sprite_index, 0, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_2_alpha);
            }
            else
            {
                draw_sprite_ext(pack_sprite_index, global.fav_11_button_sprite_to_show_1, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_1_alpha);
                draw_sprite_ext(pack_sprite_index, global.fav_11_button_sprite_to_show_2, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_2_alpha);
            }
        }
        else if (fav_number == 12)
        {
            if (pack_is_owned == 1)
            {
                draw_sprite_ext(pack_sprite_index, 0, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_1_alpha);
                draw_sprite_ext(pack_sprite_index, 0, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_2_alpha);
            }
            else
            {
                draw_sprite_ext(pack_sprite_index, global.fav_12_button_sprite_to_show_1, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_1_alpha);
                draw_sprite_ext(pack_sprite_index, global.fav_12_button_sprite_to_show_2, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_2_alpha);
            }
        }
        else if (fav_number == 13)
        {
            if (pack_is_owned == 1)
            {
                draw_sprite_ext(pack_sprite_index, 0, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_1_alpha);
                draw_sprite_ext(pack_sprite_index, 0, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_2_alpha);
            }
            else
            {
                draw_sprite_ext(pack_sprite_index, global.fav_13_button_sprite_to_show_1, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_1_alpha);
                draw_sprite_ext(pack_sprite_index, global.fav_13_button_sprite_to_show_2, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_2_alpha);
            }
        }
        else if (fav_number == 14)
        {
            if (pack_is_owned == 1)
            {
                draw_sprite_ext(pack_sprite_index, 0, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_1_alpha);
                draw_sprite_ext(pack_sprite_index, 0, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_2_alpha);
            }
            else
            {
                draw_sprite_ext(pack_sprite_index, global.fav_14_button_sprite_to_show_1, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_1_alpha);
                draw_sprite_ext(pack_sprite_index, global.fav_14_button_sprite_to_show_2, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_2_alpha);
            }
        }
        else if (fav_number == 15)
        {
            if (pack_is_owned == 1)
            {
                draw_sprite_ext(pack_sprite_index, 0, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_1_alpha);
                draw_sprite_ext(pack_sprite_index, 0, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_2_alpha);
            }
            else
            {
                draw_sprite_ext(pack_sprite_index, global.fav_15_button_sprite_to_show_1, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_1_alpha);
                draw_sprite_ext(pack_sprite_index, global.fav_15_button_sprite_to_show_2, x, y, button_size, button_size, 0, button_colour, button_sprite_to_show_2_alpha);
            }
        }
    }
}
if (pack_is_a_fav == 1)
{
    if (puzzle_pack > 0)
    {
        draw_sprite_ext(sp_menu_puzzle_pack_button_base_fav_hilight, 0, x, y, button_size, button_size, 0, c_white, image_alpha);
    }
    else
    {
        draw_sprite_ext(sp_menu_puzzle_pack_button_base_no_fav_in_slot, 0, x, y, button_size, button_size, 0, c_white, image_alpha);
    }
    if (unfavorite_hilight_is_showing == 1)
    {
        draw_sprite_ext(sp_menu_puzzle_pack_button_base_unfav_hilight, 0, x, y, button_size, button_size, 0, c_white, favorite_hilight_alpha);
    }
}
else if (add_to_favorite_hilight_is_showing == 1)
{
    draw_sprite_ext(sp_menu_puzzle_pack_button_base_fav_hilight, 0, x, y, button_size, button_size, 0, c_white, favorite_hilight_alpha);
}
else if (add_to_favorite_hilight_is_showing == 2)
{
    draw_sprite_ext(sp_menu_puzzle_pack_button_base_unfav_hilight, 0, x, y, button_size, button_size, 0, c_white, favorite_hilight_alpha);
}
if (puzzle_pack > 0)
{
    if (pack_is_owned == 1)
    {
        draw_sprite_ext(sp_menu_puzzle_pack_button_title_backing, 0, x, y, button_size, button_size, 0, c_white, image_alpha);
    }
    else
    {
        draw_sprite_ext(sp_menu_puzzle_pack_button_title_backing, 1, x, y, button_size, button_size, 0, c_white, image_alpha);
    }
    draw_sprite_ext(sp_menu_puzzle_pack_button_puzzle_count, 0, x, y, button_size, button_size, 0, c_white, image_alpha);
    if (pack_is_complete == 1)
    {
        draw_sprite_ext(sp_menu_all_puzzle_pack_button_puzzles_complete_icon, 0, x, y, button_size, button_size, 0, c_white, image_alpha);
    }
    if (pack_is_a_fav == 1)
    {
        draw_set_valign(fa_middle);
        draw_set_alpha(image_alpha);
        draw_set_colour(c_white);
        if (place_meeting(x, y, ob_menu_cursor))
        {
            if (ob_menu_cursor.x > 290 && ob_menu_cursor.x < 1628)
            {
                if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
                {
                    draw_set_halign(fa_center);
                    draw_set_font(global.current_font_22);
                    if (puzzle_pack == 26 || puzzle_pack == 34 || puzzle_pack == 77)
                    {
                        draw_text_transformed(x, y - 72, title_to_display, button_size - 0.05, button_size, 0);
                    }
                    else if (puzzle_pack == 65)
                    {
                        draw_text_transformed(x, y - 72, title_to_display, button_size - 0.08, button_size, 0);
                    }
                    else
                    {
                        draw_text_transformed(x, y - 72, title_to_display, button_size, button_size, 0);
                    }
                    draw_set_halign(fa_left);
                    draw_text_transformed(x - 82, y + 52, number_of_puzzles_complete, button_size, button_size, 0);
                    draw_set_halign(fa_center);
                    draw_set_font(global.current_font_26);
                    draw_text_transformed(x - 64, y + 72, number_of_puzzles, button_size, button_size, 0);
                }
                else
                {
                    draw_set_halign(fa_center);
                    draw_set_font(global.current_font_22);
                    if (puzzle_pack == 26 || puzzle_pack == 34 || puzzle_pack == 65 || puzzle_pack == 77)
                    {
                        draw_text_transformed(x, y - 75, title_to_display, button_size - 0.05, button_size, 0);
                    }
                    else if (puzzle_pack == 65)
                    {
                        draw_text_transformed(x, y - 75, title_to_display, button_size - 0.08, button_size, 0);
                    }
                    else
                    {
                        draw_text_transformed(x, y - 75, title_to_display, button_size, button_size, 0);
                    }
                    draw_set_halign(fa_left);
                    draw_text_transformed(x - 86, y + 55, number_of_puzzles_complete, button_size, button_size, 0);
                    draw_set_halign(fa_center);
                    draw_set_font(global.current_font_26);
                    draw_text_transformed(x - 67, y + 75, number_of_puzzles, button_size, button_size, 0);
                }
            }
            else
            {
                draw_set_halign(fa_center);
                draw_set_font(global.current_font_22);
                if (puzzle_pack == 26 || puzzle_pack == 34 || puzzle_pack == 65 || puzzle_pack == 77)
                {
                    draw_text_transformed(x, y - 73, title_to_display, button_size - 0.05, button_size, 0);
                }
                else if (puzzle_pack == 65)
                {
                    draw_text_transformed(x, y - 73, title_to_display, button_size - 0.08, button_size, 0);
                }
                else
                {
                    draw_text_transformed(x, y - 73, title_to_display, button_size, button_size, 0);
                }
                draw_set_halign(fa_left);
                draw_text_transformed(x - 84, y + 54, number_of_puzzles_complete, button_size, button_size, 0);
                draw_set_halign(fa_center);
                draw_set_font(global.current_font_26);
                draw_text_transformed(x - 65, y + 73, number_of_puzzles, button_size, button_size, 0);
            }
        }
        else
        {
            draw_set_halign(fa_center);
            draw_set_font(global.current_font_22);
            if (puzzle_pack == 26 || puzzle_pack == 34 || puzzle_pack == 65 || puzzle_pack == 77)
            {
                draw_text_transformed(x, y - 73, title_to_display, button_size - 0.05, button_size, 0);
            }
            else if (puzzle_pack == 65)
            {
                draw_text_transformed(x, y - 73, title_to_display, button_size - 0.08, button_size, 0);
            }
            else
            {
                draw_text_transformed(x, y - 73, title_to_display, button_size, button_size, 0);
            }
            draw_set_halign(fa_left);
            draw_text_transformed(x - 84, y + 54, number_of_puzzles_complete, button_size, button_size, 0);
            draw_set_halign(fa_center);
            draw_set_font(global.current_font_26);
            draw_text_transformed(x - 65, y + 73, number_of_puzzles, button_size, button_size, 0);
        }
        draw_set_halign(fa_left);
        draw_set_valign(fa_top);
        draw_set_alpha(1);
    }
    else if (pack_is_a_fav == 0)
    {
        if (y > 458 && y < 1200)
        {
            draw_set_valign(fa_middle);
            draw_set_alpha(image_alpha);
            draw_set_colour(c_white);
            if (place_meeting(x, y, ob_menu_cursor))
            {
                if (ob_menu_cursor.y < 500)
                {
                    draw_set_halign(fa_center);
                    draw_set_font(global.current_font_22);
                    if (puzzle_pack == 26 || puzzle_pack == 34 || puzzle_pack == 65 || puzzle_pack == 77)
                    {
                        draw_text_transformed(x, y - 73, title_to_display, button_size - 0.05, button_size, 0);
                    }
                    else if (puzzle_pack == 65)
                    {
                        draw_text_transformed(x, y - 73, title_to_display, button_size - 0.08, button_size, 0);
                    }
                    else
                    {
                        draw_text_transformed(x, y - 73, title_to_display, button_size, button_size, 0);
                    }
                    draw_set_halign(fa_left);
                    draw_text_transformed(x - 84, y + 54, number_of_puzzles_complete, button_size, button_size, 0);
                    draw_set_halign(fa_center);
                    draw_set_font(global.current_font_26);
                    draw_text_transformed(x - 65, y + 73, number_of_puzzles, button_size, button_size, 0);
                }
                else if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
                {
                    draw_set_halign(fa_center);
                    draw_set_font(global.current_font_22);
                    if (puzzle_pack == 26 || puzzle_pack == 34 || puzzle_pack == 65 || puzzle_pack == 77)
                    {
                        draw_text_transformed(x, y - 72, title_to_display, button_size - 0.05, button_size, 0);
                    }
                    else if (puzzle_pack == 65)
                    {
                        draw_text_transformed(x, y - 72, title_to_display, button_size - 0.08, button_size, 0);
                    }
                    else
                    {
                        draw_text_transformed(x, y - 72, title_to_display, button_size, button_size, 0);
                    }
                    draw_set_halign(fa_left);
                    draw_text_transformed(x - 82, y + 52, number_of_puzzles_complete, button_size, button_size, 0);
                    draw_set_halign(fa_center);
                    draw_set_font(global.current_font_26);
                    draw_text_transformed(x - 64, y + 72, number_of_puzzles, button_size, button_size, 0);
                }
                else
                {
                    draw_set_halign(fa_center);
                    draw_set_font(global.current_font_22);
                    if (puzzle_pack == 26 || puzzle_pack == 34 || puzzle_pack == 65 || puzzle_pack == 77)
                    {
                        draw_text_transformed(x, y - 75, title_to_display, button_size - 0.05, button_size, 0);
                    }
                    else if (puzzle_pack == 65)
                    {
                        draw_text_transformed(x, y - 75, title_to_display, button_size - 0.08, button_size, 0);
                    }
                    else
                    {
                        draw_text_transformed(x, y - 75, title_to_display, button_size, button_size, 0);
                    }
                    draw_set_halign(fa_left);
                    draw_text_transformed(x - 86, y + 55, number_of_puzzles_complete, button_size, button_size, 0);
                    draw_set_halign(fa_center);
                    draw_set_font(global.current_font_26);
                    draw_text_transformed(x - 67, y + 75, number_of_puzzles, button_size, button_size, 0);
                }
            }
            else
            {
                draw_set_halign(fa_center);
                draw_set_font(global.current_font_22);
                if (puzzle_pack == 26 || puzzle_pack == 34 || puzzle_pack == 65 || puzzle_pack == 77)
                {
                    draw_text_transformed(x, y - 73, title_to_display, button_size - 0.05, button_size, 0);
                }
                else if (puzzle_pack == 65)
                {
                    draw_text_transformed(x, y - 73, title_to_display, button_size - 0.08, button_size, 0);
                }
                else
                {
                    draw_text_transformed(x, y - 73, title_to_display, button_size, button_size, 0);
                }
                draw_set_halign(fa_left);
                draw_text_transformed(x - 84, y + 54, number_of_puzzles_complete, button_size, button_size, 0);
                draw_set_halign(fa_center);
                draw_set_font(global.current_font_26);
                draw_text_transformed(x - 65, y + 73, number_of_puzzles, button_size, button_size, 0);
            }
            draw_set_halign(fa_left);
            draw_set_valign(fa_top);
            draw_set_alpha(1);
        }
    }
    if (y > 458 && y < 1200)
    {
        if (puzzle_pack == 3 || puzzle_pack == 144 || puzzle_pack == 4 || puzzle_pack == 6 || puzzle_pack == 17 || puzzle_pack == 126 || puzzle_pack == 43 || puzzle_pack == 45 || puzzle_pack == 75 || puzzle_pack == 107 || puzzle_pack == 127)
        {
            draw_sprite_ext(sp_menu_puzzle_pack_button_base_free, 0, x, y, button_size, button_size, 0, c_white, image_alpha);
        }
    }
}
if (global.a_steam_sale_on == 1)
{
    if (y > 458 && y < 1200)
    {
        if (pack_is_owned == 0)
        {
            if (sale_amount > 0)
            {
                if (place_meeting(x, y, ob_menu_cursor))
                {
                }
                else
                {
                    draw_set_halign(fa_center);
                    draw_set_colour(c_white);
                    draw_set_alpha(image_alpha);
                    draw_set_font(global.current_font_26);
                    draw_sprite_ext(sp_menu_puzzle_pack_button_base_sales, 0, x, y, button_size, button_size, 0, c_white, image_alpha);
                    draw_set_colour(c_black);
                    draw_text_transformed(x - 15, y + 10, string(sale_word_1) + " " + string(sale_amount) + "% " + string(sale_word_2), button_size, button_size, 45);
                    draw_set_colour(c_white);
                    draw_text_transformed(x - 15, y + 8, string(sale_word_1) + " " + string(sale_amount) + "% " + string(sale_word_2), button_size, button_size, 45);
                    draw_set_halign(fa_left);
                    draw_set_alpha(1);
                }
            }
        }
    }
}
