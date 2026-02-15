if (can_vanish == 0)
{
    if (type == 0)
    {
        draw_sprite_ext(sp_gold_piece, 0, x, y, image_xscale, image_yscale, image_angle, -1, alpha);
    }
    if (type == 1)
    {
        draw_sprite_ext(sp_menu_new_hint, 0, x, y, image_xscale, image_yscale, image_angle, -1, alpha);
    }
    if (type == 2)
    {
        draw_sprite_ext(sp_kiosk_uktimate_piece, 0, x, y, image_xscale, image_yscale, image_angle, -1, alpha);
    }
}
else
{
    draw_set_font(f_steam_sales);
    draw_set_colour(c_black);
    draw_set_alpha(qnt_alpha);
    draw_set_halign(fa_center);
    draw_text_transformed(x - 2, y - 8, "+" + string(item_qnt), qnt_scale, qnt_scale, 0);
    draw_set_colour(c_lime);
    draw_text_transformed(x, y - 10, "+" + string(item_qnt), qnt_scale, qnt_scale, 0);
    draw_set_alpha(1);
}
