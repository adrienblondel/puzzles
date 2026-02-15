if (puzzle_is_over == 0 && menu_overlay == 0)
{
    if (TrayOpen == 0)
    {
        draw_sprite_ext(sp_ui_buttons, 1, 0, 1062, -1, 1, 0, global.col_pal_1, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 0, 0, 1062, -1, 1, 0, global.col_pal_2, Menu_end_alpha);
        if (HL_hidetray == 1)
        {
            draw_sprite_ext(sp_ui_but_tray, 0, 0, 1062, 1, 1, 0, global.col_pal_2, Menu_end_alpha);
        }
        else
        {
            draw_sprite_ext(sp_ui_but_tray, 0, 0, 1062, 1, 1, 0, c_white, Menu_end_alpha);
        }
    }
    if (HL_hideMenu == 1)
    {
        draw_sprite_ext(sp_ui_text_shadow, 0, 1920, 18, 1, 1, 0, global.col_pal_1, 1);
        draw_set_font(global.mainFont20);
        draw_set_halign(fa_right);
        draw_set_valign(fa_top);
        var Ohm = 0;
        if (ui_buttons_visible == 0)
        {
            Ohm = ob_lan.UI_OpenHide;
        }
        else
        {
            Ohm = ob_lan.UI_OpenHide2;
        }
        draw_set_colour(c_black);
        draw_text_ext_transformed(1863, 5, string(Ohm), 1000, 1000, 0.75, 0.75, 0);
        draw_set_colour(c_white);
        draw_text_ext_transformed(1864, 3, string(Ohm), 1000, 1000, 0.75, 0.75, 0);
    }
    draw_sprite_ext(sp_ui_buttons, 1, 1920, 18, 1, 1, 0, global.col_pal_1, Menu_end_alpha);
    draw_sprite_ext(sp_ui_buttons, 0, 1920, 18, 1, 1, 0, global.col_pal_2, Menu_end_alpha);
    draw_sprite_ext(sp_ui_buttons, 2, 1920, 18, 1, 1, 0, c_white, Menu_end_alpha);
    if (ui_buttons_visible == 1)
    {
        if (HL_UI_Pos > 0)
        {
            draw_sprite_ext(sp_ui_text_shadow, 0, 1920, 18 + (HL_UI_Pos * 38), 1, 1, 0, global.col_pal_1, 1);
            draw_set_font(global.mainFont20);
            draw_set_halign(fa_right);
            draw_set_valign(fa_top);
            var Et = "";
            if (HL_UI_Pos == 16)
            {
                if (global.fullscreen_mode == 1)
                {
                    Et = ": " + string(ob_lan.UI_Fullscreen);
                }
                else
                {
                    Et = ": " + string(ob_lan.UI_Windowed);
                }
            }
            if (HL_UI_Pos == 9)
            {
                var value = global.image_guide;
                var percentage = value * 100;
                var percentage_string = string_format(percentage, 0, 0);
                Et = ": " + string(percentage) + "%";
            }
            if (HL_UI_Pos == 10)
            {
                Et = ": -5   -";
            }
            if (HL_UI_Pos == 12)
            {
                Et = ": -10   -";
            }
            draw_set_colour(c_black);
            draw_text_ext_transformed(1863, (18 + (HL_UI_Pos * 38)) - 13, string(HL_UI_Title) + string(Et), 1000, 1000, 0.75, 0.75, 0);
            draw_set_colour(c_white);
            draw_text_ext_transformed(1864, (18 + (HL_UI_Pos * 38)) - 15, string(HL_UI_Title) + string(Et), 1000, 1000, 0.75, 0.75, 0);
        }
        draw_sprite_ext(sp_ui_buttons, 1, 1920, 56, 1, 1, 0, global.col_pal_1, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 0, 1920, 56, 1, 1, 0, global.col_pal_2, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 3, 1920, 56, 1, 1, 0, c_white, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 1, 1920, 94, 1, 1, 0, global.col_pal_1, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 0, 1920, 94, 1, 1, 0, global.col_pal_2, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 4, 1920, 94, 1, 1, 0, c_white, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 1, 1920, 132, 1, 1, 0, global.col_pal_1, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 0, 1920, 132, 1, 1, 0, global.col_pal_2, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 5, 1920, 132, 1, 1, 0, c_white, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 1, 1920, 170, 1, 1, 0, global.col_pal_1, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 0, 1920, 170, 1, 1, 0, global.col_pal_2, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 6, 1920, 170, 1, 1, 0, c_white, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 1, 1920, 208, 1, 1, 0, global.col_pal_1, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 0, 1920, 208, 1, 1, 0, global.col_pal_2, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 7, 1920, 208, 1, 1, 0, c_white, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 1, 1920, 246, 1, 1, 0, global.col_pal_1, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 0, 1920, 246, 1, 1, 0, global.col_pal_2, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 8, 1920, 246, 1, 1, 0, c_white, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 1, 1920, 284, 1, 1, 0, global.col_pal_1, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 0, 1920, 284, 1, 1, 0, global.col_pal_2, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 9, 1920, 284, 1, 1, 0, c_white, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 1, 1920, 322, 1, 1, 0, global.col_pal_1, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 0, 1920, 322, 1, 1, 0, global.col_pal_2, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 10, 1920, 322, 1, 1, 0, c_white, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 1, 1920, 360, 1, 1, 0, global.col_pal_1, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 0, 1920, 360, 1, 1, 0, global.col_pal_2, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 11, 1920, 360, 1, 1, 0, c_white, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 1, 1920, 398, 1, 1, 0, global.col_pal_1, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 0, 1920, 398, 1, 1, 0, global.col_pal_2, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 12, 1920, 398, 1, 1, 0, c_white, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 1, 1920, 436, 1, 1, 0, global.col_pal_1, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 0, 1920, 436, 1, 1, 0, global.col_pal_2, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 13, 1920, 436, 1, 1, 0, c_white, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 1, 1920, 474, 1, 1, 0, global.col_pal_1, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 0, 1920, 474, 1, 1, 0, global.col_pal_2, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 14, 1920, 474, 1, 1, 0, c_white, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 1, 1920, 512, 1, 1, 0, global.col_pal_1, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 0, 1920, 512, 1, 1, 0, global.col_pal_2, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 15, 1920, 512, 1, 1, 0, c_white, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 1, 1920, 550, 1, 1, 0, global.col_pal_1, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 0, 1920, 550, 1, 1, 0, global.col_pal_2, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 16, 1920, 550, 1, 1, 0, c_white, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 1, 1920, 588, 1, 1, 0, global.col_pal_1, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 0, 1920, 588, 1, 1, 0, global.col_pal_2, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 17, 1920, 588, 1, 1, 0, c_white, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 1, 1920, 626, 1, 1, 0, global.col_pal_1, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 0, 1920, 626, 1, 1, 0, global.col_pal_2, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 18, 1920, 626, 1, 1, 0, c_white, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 1, 1920, 664, 1, 1, 0, global.col_pal_1, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 0, 1920, 664, 1, 1, 0, global.col_pal_2, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 19, 1920, 664, 1, 1, 0, c_white, Menu_end_alpha);
        var ButCol = 16777215;
        if (global.current_pack_open == 7000 && global.puzzle_number_to_play == global.CurChalNum)
        {
            ButCol = 0;
        }
        draw_sprite_ext(sp_ui_buttons, 1, 1920, 702, 1, 1, 0, global.col_pal_1, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 0, 1920, 702, 1, 1, 0, global.col_pal_2, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 20, 1920, 702, 1, 1, 0, ButCol, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 1, 1920, 740, 1, 1, 0, global.col_pal_1, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 0, 1920, 740, 1, 1, 0, global.col_pal_2, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 21, 1920, 740, 1, 1, 0, ButCol, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 1, 1920, 778, 1, 1, 0, global.col_pal_1, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 0, 1920, 778, 1, 1, 0, global.col_pal_2, Menu_end_alpha);
        draw_sprite_ext(sp_ui_buttons, 22, 1920, 778, 1, 1, 0, c_white, Menu_end_alpha);
        if (HL_UI_Pos == 10 || HL_UI_Pos == 12)
        {
            draw_sprite(sp_preview_hint_cost, 0, 1838, 382);
        }
    }
}
if (puzzle_is_over == 1 && menu_overlay == 0)
{
    if (HL_UI_Pos > 0)
    {
        draw_sprite_ext(sp_ui_text_shadow, 0, 1920, 18 + (HL_UI_Pos * 38), 1, 1, 0, global.col_pal_1, 1);
        draw_set_font(global.mainFont20);
        draw_set_halign(fa_right);
        draw_set_valign(fa_top);
        draw_set_colour(c_black);
        draw_text_ext_transformed(1863, (18 + (HL_UI_Pos * 38)) - 13, string(HL_UI_Title), 1000, 1000, 0.75, 0.75, 0);
        draw_set_colour(c_white);
        draw_text_ext_transformed(1864, (18 + (HL_UI_Pos * 38)) - 15, string(HL_UI_Title), 1000, 1000, 0.75, 0.75, 0);
    }
    var ButCol = 16777215;
    if (global.current_pack_open == 7000 && global.puzzle_number_to_play == global.CurChalNum)
    {
        ButCol = 0;
    }
    draw_sprite_ext(sp_ui_buttons, 1, 1920, 56, 1, 1, 0, global.col_pal_1, Menu_end_alpha);
    draw_sprite_ext(sp_ui_buttons, 0, 1920, 56, 1, 1, 0, global.col_pal_2, Menu_end_alpha);
    draw_sprite_ext(sp_ui_buttons, 21, 1920, 56, 1, 1, 0, ButCol, Menu_end_alpha);
    draw_sprite_ext(sp_ui_buttons, 1, 1920, 94, 1, 1, 0, global.col_pal_1, Menu_end_alpha);
    draw_sprite_ext(sp_ui_buttons, 0, 1920, 94, 1, 1, 0, global.col_pal_2, Menu_end_alpha);
    draw_sprite_ext(sp_ui_buttons, 22, 1920, 94, 1, 1, 0, c_white, Menu_end_alpha);
}
if (menu_overlay == 1 || menu_overlay == 2)
{
    draw_set_color(c_black);
    draw_set_alpha(0.9);
    draw_rectangle(0, 0, 1920, 1080, false);
    draw_set_alpha(1);
    draw_set_font(global.mainFont20);
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    var rebText;
    if (menu_overlay == 1)
    {
        rebText = ob_lan.UI_Re;
    }
    else if (menu_overlay == 2)
    {
        rebText = ob_lan.UI_Reb;
    }
    draw_text_transformed_colour(960, 480, string(rebText), 1.2, 1.2, 0, c_white, c_white, c_white, c_white, 1);
    draw_set_halign(fa_right);
    if (reset_rebuildHOV == 1)
    {
        draw_text_transformed_colour(913, 540, string(ob_lan.UI_y), 1.05, 1.05, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, 1);
    }
    else
    {
        draw_text_transformed_colour(913, 540, string(ob_lan.UI_y), 1, 1, 0, c_white, c_white, c_white, c_white, 1);
    }
    draw_set_halign(fa_left);
    if (reset_rebuildHOV == 2)
    {
        draw_text_transformed_colour(1006, 540, string(ob_lan.UI_n), 1.05, 1.05, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, 1);
    }
    else
    {
        draw_text_transformed_colour(1006, 540, string(ob_lan.UI_n), 1, 1, 0, c_white, c_white, c_white, c_white, 1);
    }
}
if (menu_overlay == 6)
{
    draw_set_color(c_black);
    draw_set_alpha(0.9);
    draw_rectangle(0, 0, 1920, 1080, false);
    draw_set_alpha(1);
    draw_set_font(global.mainFont20);
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    draw_text_transformed_colour(960, 30, string(ob_lan.UI_hk1), 1.2, 1.2, 0, c_white, c_white, c_white, c_white, 1);
    draw_text_transformed_colour(960, 100, string(ob_lan.UI_hk2), 1.2, 1.2, 0, c_white, c_white, c_white, c_white, 1);
    draw_text_transformed_colour(960, 183, string(ob_lan.UI_hk6) + " = [T]", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
    draw_text_transformed_colour(960, 216, string(ob_lan.UI_hk4) + " = [right_arrow]", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
    draw_text_transformed_colour(960, 249, string(ob_lan.UI_hk5) + " = [left_arrow]", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
    draw_text_transformed_colour(960, 282, string(ob_lan.UI_Shuffle) + " = [S]", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
    draw_text_transformed_colour(960, 315, string(ob_lan.UI_Highlight) + " = [H]", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
    draw_text_transformed_colour(960, 348, string(ob_lan.UI_ClearTable) + " = [F]", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
    draw_text_transformed_colour(960, 381, string(ob_lan.UI_TableColor) + " = [C]", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
    draw_text_transformed_colour(960, 414, string(ob_lan.UI_PoolColor) + " = [V]", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
    draw_text_transformed_colour(960, 447, string(ob_lan.UI_Zoom) + " = [Z] / [" + string(ob_lan.UI_zoomwheel) + "]", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
    draw_text_transformed_colour(960, 480, string(ob_lan.UI_RefImage) + " = [R]", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
    draw_text_transformed_colour(960, 513, string(ob_lan.UI_ViewOutline) + " = [O]", 1, 1, 0, c_white, c_white, c_white, c_white, 0.2);
    draw_text_transformed_colour(960, 546, string(ob_lan.UI_ImageGuide) + " = [G]", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
    draw_text_transformed_colour(960, 579, string(ob_lan.UI_OpenHide) + " = [tab]", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
    draw_text_transformed_colour(960, 612, string(ob_lan.UI_Fullscreen) + " = [f11]", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
    draw_text_transformed_colour(960, 645, string(ob_lan.UI_Exit) + " = [esc]", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
    draw_text_transformed_colour(960, 744, string(ob_lan.UI_hk3), 1.2, 1.2, 0, c_white, c_white, c_white, c_white, 1);
    draw_text_transformed_colour(960, 810, string(ob_lan.UI_Beacon) + " = Hold Piece + [L]", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
    draw_text_transformed_colour(960, 843, string(ob_lan.UI_fixangle) + " = Hold Piece + [A]", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
    draw_text_transformed_colour(960, 876, string(ob_lan.UI_PreviewImage) + " = [P]", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
}
if (puzzle_is_over == 1)
{
    draw_sprite_ext(sp_gold_aquired_box, 1, 762, ENDbOXy, 1, 1, 0, global.col_pal_1, 1);
    draw_sprite_ext(sp_gold_aquired_box, 1, 762, ENDbOXy, 1, 1, 0, global.col_pal_1, 1);
    draw_sprite_ext(sp_gold_aquired_box, 0, 762, ENDbOXy, 1, 1, 0, global.col_pal_2, 1);
    draw_set_font(f_steam_sales);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_white);
    if (global.current_pack_open == 7000 && global.puzzle_number_to_play == global.CurChalNum)
    {
        draw_sprite(s_m3_diamond, 0, 916, ENDbOXy + 1);
        draw_text(963, ENDbOXy - 2, "+1");
    }
    else
    {
        draw_sprite(s_m3_gold, 0, 917, ENDbOXy + 3);
        draw_text(961, ENDbOXy - 2, "+" + string(ENDbOXGOLD));
    }
    draw_set_font(f_main_20);
    if (ENDbOXxHOV == 1)
    {
        draw_text_colour(1135, ENDbOXy - 9, "x", global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, 1);
    }
    else
    {
        draw_text_colour(1135, ENDbOXy - 9, "x", c_white, c_white, c_white, c_white, 1);
    }
}
if (IntroBlack != 0)
{
    draw_set_alpha(IntroBlack);
    draw_rectangle_colour(0, 0, 1920, 1080, c_black, c_black, c_black, c_black, 0);
    draw_set_alpha(1);
}
if (ExitPuzzleFade != 0)
{
    draw_set_alpha(ExitPuzzleFade);
    draw_rectangle_colour(0, 0, 1920, 1080, c_black, c_black, c_black, c_black, 0);
    draw_set_alpha(1);
}
