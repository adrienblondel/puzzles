if (y > VisiblePointY)
{
    if (ob_menu_3_controller.CurrentPage == 6 || ob_menu_3_controller.CurrentPage == 17)
    {
        if (hov == 1)
        {
            draw_sprite_ext(sp_menu3_capsules_highlight, 0, x - 3, y, 1, 1, 0, global.col_pal_2, button_alpha);
        }
    }
    if (ob_menu_3_controller.CurrentPage == 2)
    {
        if (hov == 1)
        {
            draw_sprite_ext(sp_library_pack_highlight, 0, x - 2, y - 2, 1, 1, 0, global.col_pal_2, button_alpha);
        }
    }
    if (ob_menu_3_controller.CurrentPage == 6 || ob_menu_3_controller.CurrentPage == 17)
    {
        draw_sprite_ext(sp_catalogue_pack_backing, image_index, x, y, 0.79, 0.79, 0, -1, button_alpha);
        draw_sprite_ext(sp_catalogue_dlc, image_index, x, y, 0.79, 0.79, 0, -1, button_alpha);
    }
    if (ob_menu_3_controller.CurrentPage == 2)
    {
        draw_sprite_ext(sp_library_pack, 0, x, y, 1, 1, 0, global.col_pal_1, button_alpha);
        draw_sprite_ext(sp_library_pack, 1, x, y, 1, 1, 0, global.col_pal_2, button_alpha);
    }
    draw_sprite_ext(sp_new_menu_pack_icons, pack_num, x + 181, y + 70, 1, 1, 0, -1, button_alpha);
    if (ob_menu_3_controller.CurrentPage == 2)
    {
        if (pack_beat == 1)
        {
            draw_sprite_ext(sp_library_pack, 3, x, y, 1, 1, 0, -1, button_alpha);
        }
        else
        {
            draw_sprite_ext(sp_library_pack, 2, x, y, 1, 1, 0, -1, button_alpha);
        }
    }
    if (ob_menu_3_controller.CurrentPage == 6 || ob_menu_3_controller.CurrentPage == 17)
    {
        draw_set_font(f_main_20);
        draw_set_valign(fa_middle);
        draw_set_halign(fa_left);
        draw_text_transformed_colour(x + 4, y + 155, string(PackTitle), 1, 1, 0, c_black, c_black, c_black, c_black, button_alpha);
        draw_text_transformed_colour(x + 5, y + 153, string(PackTitle), 1, 1, 0, c_white, c_white, c_white, c_white, button_alpha);
    }
    if (ob_menu_3_controller.CurrentPage == 2)
    {
        draw_set_font(f_main_20);
        draw_set_valign(fa_middle);
        draw_set_halign(fa_center);
        draw_text_transformed_colour(x + 181, y + 152, string(PackTitle), 1, 1, 0, c_white, c_white, c_white, c_white, button_alpha);
    }
    if (ob_menu_3_controller.CurrentPage == 2)
    {
        draw_set_font(f_main_20);
        draw_set_valign(fa_middle);
        draw_set_halign(fa_right);
        draw_text_transformed_colour(x + 354, y + 20, string(PuzzlesBeat) + "/" + string(MaxPuzzles), 1, 1, 0, c_white, c_white, c_white, c_white, button_alpha);
    }
    if (ob_menu_3_controller.CurrentPage == 6 || ob_menu_3_controller.CurrentPage == 17)
    {
        if (pack_on_sale == 1)
        {
            draw_sprite_ext(sp_catalogue_sale, image_index, x, y, 0.79, 0.79, 0, -1, button_alpha);
            draw_set_font(f_steam_sales);
            draw_set_valign(fa_middle);
            draw_set_halign(fa_right);
            var saleScale = 1;
            if (sale_percent == 100)
            {
                saleScale = 0.8;
            }
            draw_text_transformed_colour(x + 359, y + 150, "-" + string(sale_percent) + "%", saleScale, saleScale, 0, make_colour_rgb(190, 238, 17), make_colour_rgb(190, 238, 17), make_colour_rgb(190, 238, 17), make_colour_rgb(190, 238, 17), button_alpha);
        }
    }
}
