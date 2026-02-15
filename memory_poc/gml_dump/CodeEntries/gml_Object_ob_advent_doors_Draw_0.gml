if (doorNUM == 25)
{
    draw_sprite_ext(sp_advent_door25, 4, x, y, 1, 1, 0, -1, ob_menu_3_controller.current_page_alpha);
}
else
{
    draw_sprite_ext(sp_advent_door, 24, x, y, 1, 1, 0, -1, ob_menu_3_controller.current_page_alpha);
}
if (jigsaw > 0)
{
    if (puzHOV == 1)
    {
        if (doorNUM == 25)
        {
            draw_rectangle_colour(x - 2, y + 19, x + 3, y + 349, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, 0);
            draw_rectangle_colour(x - 2, y + 344, x + 423, y + 349, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, 0);
        }
        else
        {
            draw_rectangle_colour(x - 2, y + 6, x + 3, y + 167, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, 0);
            draw_rectangle_colour(x - 2, y + 162, x + 201, y + 167, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, 0);
        }
    }
}
if (door_open == 1)
{
    draw_set_font(f_main_20);
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    draw_set_alpha(ob_menu_3_controller.current_page_alpha);
    draw_set_color(c_black);
    if (gold > 0)
    {
        draw_text_transformed(x + 133, y + 122, "X" + string(gold) + " GOLD", 0.6, 0.6, 0);
        draw_sprite_ext(sp_gold_piece, 0, x + 132, y + 70, 1, 1, 0, -1, ob_menu_3_controller.current_page_alpha);
    }
    if (hints > 0)
    {
        draw_text_transformed(x + 133, y + 122, "X" + string(hints) + " HINTS", 0.6, 0.6, 0);
        draw_sprite_ext(sp_menu_new_hint, 0, x + 134, y + 70, 1, 1, 0, -1, ob_menu_3_controller.current_page_alpha);
    }
    if (diamonds > 0)
    {
        draw_text_transformed(x + 133, y + 122, "X" + string(diamonds) + "ULTIMATES", 0.6, 0.6, 25);
        draw_sprite_ext(sp_kiosk_uktimate_piece, 0, x + 132, y + 70, 1, 1, 0, -1, ob_menu_3_controller.current_page_alpha);
    }
    draw_set_color(c_white);
    if (gold > 0)
    {
        draw_text_transformed(x + 134, y + 120, "X" + string(gold) + " GOLD", 0.6, 0.6, 0);
    }
    if (hints > 0)
    {
        draw_text_transformed(x + 134, y + 120, "X" + string(hints) + " HINTS", 0.6, 0.6, 0);
    }
    if (diamonds > 0)
    {
        draw_text_transformed(x + 134, y + 120, "X" + string(diamonds) + " ULTIMATES", 0.6, 0.6, 25);
    }
    draw_set_alpha(1);
    if (jigsaw > 0)
    {
        if (doorNUM == 25)
        {
            draw_sprite_ext(sp_door_jigsaw2, 0, x, y, 1, 1, 0, -1, ob_menu_3_controller.current_page_alpha);
        }
        else
        {
            draw_sprite_ext(sp_door_jigsaw, jigsaw - 1, x, y, 1, 1, 0, -1, ob_menu_3_controller.current_page_alpha);
        }
    }
}
if (doorNUM == 25)
{
    draw_sprite_ext(sp_advent_door25, image_index, x, y, 1, 1, 0, -1, ob_menu_3_controller.current_page_alpha);
}
else
{
    draw_sprite_ext(sp_advent_door, image_index, x, y, 1, 1, 0, -1, ob_menu_3_controller.current_page_alpha);
}
draw_set_font(f_steam_sales);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_color(c_white);
draw_set_alpha(ob_menu_3_controller.current_page_alpha);
if (doorNUM == 25)
{
    draw_text_transformed(x + 5, y + 18, string(doorNUM), 0.8, 0.8, 0);
}
else
{
    draw_text_transformed(x + 4, y + 7, string(doorNUM), 0.8, 0.8, 0);
}
draw_set_alpha(1);
