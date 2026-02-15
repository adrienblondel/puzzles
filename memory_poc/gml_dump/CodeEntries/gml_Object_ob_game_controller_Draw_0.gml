if (room == r_intro)
{
    if (intro_part == 0 || intro_part == 1)
    {
        draw_sprite_ext(sp_intro_flag, 0, 960, 540, 1, 1, 0, -1, logo_alpha);
    }
    if (intro_part == 2 || intro_part == 3 || intro_part == 3.5)
    {
        draw_set_colour(c_black);
        draw_set_font(global.mainFont20);
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
        draw_set_alpha(hello_alpha);
        draw_text_ext(960, 500, string(string_copy(string(hello), 1, letter)), 35, 650);
        draw_set_alpha(1);
    }
    if (intro_part == 4.5)
    {
        draw_set_font(global.mainFont20);
        draw_set_valign(fa_top);
        draw_set_halign(fa_center);
        draw_text_transformed_colour(960, 450, string(ob_lan.M_S_8), 1, 1, 0, c_white, c_white, c_white, c_white, 1);
        draw_text_transformed_colour(960, 500, string(ob_lan.M_S_9), 0.8, 0.8, 0, c_white, c_white, c_white, c_white, 1);
    }
    if (intro_part == 5)
    {
        if (SaveConversionInfo == 1 || SaveConversionInfo == 2)
        {
            draw_set_font(global.mainFont20);
            draw_set_valign(fa_top);
            draw_set_halign(fa_center);
            draw_text_transformed_colour(960, 50, string(ob_lan.IST_1), 1.3, 1.3, 0, c_white, c_white, c_white, c_white, 1);
            draw_text_transformed_colour(960, 150, string(ob_lan.IST_2), 1, 1, 0, c_red, c_red, c_red, c_red, 1);
            draw_text_ext_transformed_colour(960, 200, string(ob_lan.IST_3), 35, 1500, 0.8, 0.8, 0, 16777215, 16777215, 16777215, 16777215, 1);
            draw_text_ext_transformed_colour(960, 300, string(ob_lan.IST_4), 35, 1500, 0.8, 0.8, 0, 255, 255, 255, 255, 1);
            draw_text_ext_transformed_colour(960, 450, string(ob_lan.IST_5), 35, 1500, 1, 1, 0, 16777215, 16777215, 16777215, 16777215, 1);
            draw_text_ext_transformed_colour(960, 500, string(ob_lan.IST_6), 35, 1500, 0.8, 0.8, 0, 16777215, 16777215, 16777215, 16777215, 1);
            draw_text_ext_transformed_colour(960, 650, string(ob_lan.IST_7), 35, 1500, 0.8, 0.8, 0, 16777215, 16777215, 16777215, 16777215, 1);
            draw_text_ext_transformed_colour(960, 800, string(ob_lan.IST_8), 35, 1500, 0.8, 0.8, 0, 16777215, 16777215, 16777215, 16777215, 1);
        }
        if (SaveConversionInfo == 1)
        {
            var HovCol = 16777215;
            if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 718, 1018, 1202, 1058))
            {
                HovCol = 32768;
            }
            else
            {
                HovCol = 16777215;
            }
            draw_text_ext_transformed_colour(960, 1020, string(ob_lan.IST_9), 35, 1500, 1, 1, 0, HovCol, HovCol, HovCol, HovCol, 1);
        }
        if (SaveConversionInfo == 2)
        {
            draw_text_ext_transformed_colour(960, 1020, string(ob_lan.IST_10), 35, 1500, 1, 1, 0, 65280, 65280, 65280, 65280, 1);
        }
    }
}
