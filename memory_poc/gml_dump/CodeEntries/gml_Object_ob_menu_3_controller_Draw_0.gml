draw_sprite_ext(global.menu_backing, 0, 0, 0, 1, 1, 0, -1, MenuBackingAlpha);
if (HolDecals == 1)
{
    draw_sprite_ext(sp_menu3_snow_1, 0, 0, 1026, 1, 1, 0, -1, 1);
}
draw_set_alpha(general_ui_alpha / 5);
draw_set_color(c_black);
draw_rectangle(0, 0, 230, 1080, false);
draw_set_alpha(1);
draw_set_alpha(general_ui_alpha);
draw_rectangle_colour(0, 0, 1920, 2, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, 0);
draw_rectangle_colour(230, 0, 230, 1080, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, 0);
draw_set_alpha(1);
draw_sprite_ext(sp_menu_logo, 0, 0, 0, 1, 1, 0, -1, general_ui_alpha);
if (CurrentPage == 19)
{
    draw_set_font(global.mainFont20);
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
    draw_text_transformed_colour(240, 1052, string(ob_lan.M_H_6), 0.7, 0.7, 0, global.col_pal_3, global.col_pal_3, global.col_pal_3, global.col_pal_3, current_page_alpha);
}
draw_set_font(global.mainFont20);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_colour(c_white);
if (CurrentPage == 1)
{
    draw_sprite_ext(sp_menu_sidebar_but, 0, 85, 84, 1, 1, 0, global.col_pal_1, general_ui_alpha);
    draw_sprite_ext(sp_menu_sidebar_but, 1, 85, 84, 1, 1, 0, global.col_pal_2, general_ui_alpha);
}
if (NavHov_1 == 1)
{
    draw_text_transformed_colour(20, 84, string(ob_lan.M_LSB_1), 0.7, 0.7, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, general_ui_alpha);
}
else
{
    draw_text_transformed_colour(17, 84, string(ob_lan.M_LSB_1), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, general_ui_alpha);
}
if (CurrentPage == 2)
{
    draw_sprite_ext(sp_menu_sidebar_but, 0, 85, 128, 1, 1, 0, global.col_pal_1, general_ui_alpha);
    draw_sprite_ext(sp_menu_sidebar_but, 1, 85, 128, 1, 1, 0, global.col_pal_2, general_ui_alpha);
}
if (NavHov_2 == 1)
{
    draw_text_transformed_colour(20, 128, string(ob_lan.M_LSB_2), 0.7, 0.7, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, general_ui_alpha);
}
else
{
    draw_text_transformed_colour(17, 128, string(ob_lan.M_LSB_2), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, general_ui_alpha);
}
if (CurrentPage == 3)
{
    draw_sprite_ext(sp_menu_sidebar_but, 0, 85, 172, 1, 1, 0, global.col_pal_1, general_ui_alpha);
    draw_sprite_ext(sp_menu_sidebar_but, 1, 85, 172, 1, 1, 0, global.col_pal_2, general_ui_alpha);
}
if (NavHov_3 == 1)
{
    draw_text_transformed_colour(20, 172, string(ob_lan.M_LSB_3), 0.7, 0.7, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, general_ui_alpha);
}
else
{
    draw_text_transformed_colour(17, 172, string(ob_lan.M_LSB_3), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, general_ui_alpha);
}
if (CurrentPage == 4)
{
    draw_sprite_ext(sp_menu_sidebar_but, 0, 85, 216, 1, 1, 0, global.col_pal_1, general_ui_alpha);
    draw_sprite_ext(sp_menu_sidebar_but, 1, 85, 216, 1, 1, 0, global.col_pal_2, general_ui_alpha);
}
if (NavHov_4 == 1)
{
    draw_text_transformed_colour(20, 216, string(ob_lan.M_LSB_4), 0.7, 0.7, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, general_ui_alpha);
}
else
{
    draw_text_transformed_colour(17, 216, string(ob_lan.M_LSB_4), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, general_ui_alpha);
}
if (CurrentPage == 5)
{
    draw_sprite_ext(sp_menu_sidebar_but, 0, 85, 260, 1, 1, 0, global.col_pal_1, general_ui_alpha);
    draw_sprite_ext(sp_menu_sidebar_but, 1, 85, 260, 1, 1, 0, global.col_pal_2, general_ui_alpha);
}
if (NavHov_5 == 1)
{
    draw_text_transformed_colour(20, 260, string(ob_lan.M_LSB_5), 0.7, 0.7, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, general_ui_alpha);
}
else
{
    draw_text_transformed_colour(17, 260, string(ob_lan.M_LSB_5), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, general_ui_alpha);
}
if (CurrentPage == 18)
{
    draw_sprite_ext(sp_menu_sidebar_but, 0, 85, 304, 1, 1, 0, global.col_pal_1, general_ui_alpha);
    draw_sprite_ext(sp_menu_sidebar_but, 1, 85, 304, 1, 1, 0, global.col_pal_2, general_ui_alpha);
}
if (NavHov_18 == 1)
{
    draw_text_transformed_colour(20, 304, string(ob_lan.M_LSB_19), 0.7, 0.7, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, general_ui_alpha);
}
else
{
    draw_text_transformed_colour(17, 304, string(ob_lan.M_LSB_19), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, general_ui_alpha);
}
if (CurrentPage == 6)
{
    draw_sprite_ext(sp_menu_sidebar_but, 0, 85, 392, 1, 1, 0, global.col_pal_1, general_ui_alpha);
    draw_sprite_ext(sp_menu_sidebar_but, 1, 85, 392, 1, 1, 0, global.col_pal_2, general_ui_alpha);
}
if (NavHov_6 == 1)
{
    draw_text_transformed_colour(20, 392, string(ob_lan.M_LSB_6), 0.7, 0.7, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, general_ui_alpha);
}
else
{
    draw_text_transformed_colour(17, 392, string(ob_lan.M_LSB_6), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, general_ui_alpha);
}
draw_text_transformed_colour(17, 436, string(ob_lan.M_LSB_7), 0.7, 0.7, 0, c_black, c_black, c_black, c_black, general_ui_alpha);
if (CurrentPage == 17)
{
    draw_sprite_ext(sp_menu_sidebar_but, 0, 85, 480, 1, 1, 0, global.col_pal_1, general_ui_alpha);
    draw_sprite_ext(sp_menu_sidebar_but, 1, 85, 480, 1, 1, 0, global.col_pal_2, general_ui_alpha);
}
if (NavHov_17 == 1)
{
    draw_text_transformed_colour(20, 480, string(ob_lan.M_LSB_18), 0.7, 0.7, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, general_ui_alpha);
}
else
{
    draw_text_transformed_colour(17, 480, string(ob_lan.M_LSB_18), 0.7, 0.7, 0, c_lime, c_lime, c_lime, c_lime, general_ui_alpha);
}
if (CurrentPage == 8)
{
    draw_sprite_ext(sp_menu_sidebar_but, 0, 85, 568, 1, 1, 0, global.col_pal_1, general_ui_alpha);
    draw_sprite_ext(sp_menu_sidebar_but, 1, 85, 568, 1, 1, 0, global.col_pal_2, general_ui_alpha);
}
if (NavHov_8 == 1)
{
    draw_text_transformed_colour(20, 568, string(ob_lan.M_LSB_8), 0.7, 0.7, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, general_ui_alpha);
}
else
{
    draw_text_transformed_colour(17, 568, string(ob_lan.M_LSB_8), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, general_ui_alpha);
}
if (CurrentPage == 13)
{
    draw_sprite_ext(sp_menu_sidebar_but, 0, 85, 612, 1, 1, 0, global.col_pal_1, general_ui_alpha);
    draw_sprite_ext(sp_menu_sidebar_but, 1, 85, 612, 1, 1, 0, global.col_pal_2, general_ui_alpha);
}
if (NavHov_9 == 1)
{
    draw_text_transformed_colour(20, 612, string(ob_lan.M_LSB_13), 0.7, 0.7, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, general_ui_alpha);
}
else
{
    draw_text_transformed_colour(17, 612, string(ob_lan.M_LSB_13), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, general_ui_alpha);
}
if (CurrentPage == 14)
{
    draw_sprite_ext(sp_menu_sidebar_but, 0, 85, 656, 1, 1, 0, global.col_pal_1, general_ui_alpha);
    draw_sprite_ext(sp_menu_sidebar_but, 1, 85, 656, 1, 1, 0, global.col_pal_2, general_ui_alpha);
}
if (NavHov_10 == 1)
{
    draw_text_transformed_colour(20, 656, string(ob_lan.M_LSB_14), 0.7, 0.7, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, general_ui_alpha);
}
else
{
    draw_text_transformed_colour(17, 656, string(ob_lan.M_LSB_14), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, general_ui_alpha);
}
draw_text_transformed_colour(17, 788, string(ob_lan.M_LSB_11), 0.7, 0.7, 0, c_black, c_black, c_black, c_black, general_ui_alpha);
if (EventISOn == 1)
{
    if (CurrentPage == 10)
    {
        draw_sprite_ext(sp_menu_sidebar_but, 0, 85, 832, 1, 1, 0, global.col_pal_1, general_ui_alpha);
        draw_sprite_ext(sp_menu_sidebar_but, 1, 85, 832, 1, 1, 0, global.col_pal_2, general_ui_alpha);
    }
    if (NavHov_12 == 1)
    {
        draw_text_transformed_colour(20, 832, string(ob_lan.M_LSB_10), 0.7, 0.7, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, general_ui_alpha);
    }
    else
    {
        draw_text_transformed_colour(17, 832, string(ob_lan.M_LSB_10), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, general_ui_alpha);
    }
}
else
{
    draw_text_transformed_colour(17, 832, string(ob_lan.M_LSB_10), 0.7, 0.7, 0, c_black, c_black, c_black, c_black, general_ui_alpha);
}
draw_text_transformed_colour(18, 876, string(ob_lan.M_LSB_12), 0.7, 0.7, 0, c_black, c_black, c_black, c_black, general_ui_alpha);
draw_text_transformed_colour(17, 920, string(ob_lan.M_LSB_9), 0.7, 0.7, 0, c_black, c_black, c_black, c_black, general_ui_alpha);
if (NavHov_15 == 1)
{
    draw_text_transformed_colour(20, 964, string(ob_lan.M_LSB_16), 0.7, 0.7, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, general_ui_alpha);
}
else
{
    draw_text_transformed_colour(17, 964, string(ob_lan.M_LSB_16), 0.7, 0.7, 0, c_white, c_white, global.col_pal_4, global.col_pal_4, general_ui_alpha);
}
if (NavHov_16 == 1)
{
    draw_text_transformed_colour(20, 1052, string(ob_lan.M_LSB_17), 0.7, 0.7, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, general_ui_alpha);
}
else
{
    draw_text_transformed_colour(17, 1052, string(ob_lan.M_LSB_17), 0.7, 0.7, 0, c_white, c_white, global.col_pal_4, global.col_pal_4, general_ui_alpha);
}
draw_set_valign(fa_top);
draw_sprite_ext(sp_hint_button, 0, 1706, 28, 0.5, 0.5, 0, -1, general_ui_alpha);
draw_sprite_ext(s_m3_gold, 0, 1782, 11, 1, 1, 0, -1, general_ui_alpha);
draw_sprite_ext(s_m3_diamond, 0, 1863, 8, 1, 1, 0, -1, general_ui_alpha);
draw_set_font(global.mainFont20);
draw_set_halign(fa_right);
draw_set_valign(fa_middle);
draw_text_transformed_colour(1686, 32, string(hint_quantity), 0.65, 0.65, 0, c_white, c_white, c_white, c_white, general_ui_alpha);
var golds = 0;
if (gold_quantity < 9999)
{
    golds = gold_quantity;
}
else
{
    golds = "9999+";
}
draw_text_transformed_colour(1782, 32, string(golds), 0.65, 0.65, 0, c_white, c_white, c_white, c_white, general_ui_alpha);
var diamonds = 0;
if (diamond_quantity < 9999)
{
    diamonds = diamond_quantity;
}
else
{
    diamonds = "9999+";
}
draw_text_transformed_colour(1867, 32, string(diamonds), 0.65, 0.65, 0, c_white, c_white, c_white, c_white, general_ui_alpha);
draw_sprite_ext(sp_stats_box, 0, 1655, 57, 1, 1, 0, global.col_pal_1, general_ui_alpha);
draw_sprite_ext(sp_stats_box, 1, 1655, 57, 1, 1, 0, global.col_pal_2, general_ui_alpha);
draw_set_font(global.mainFont20);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_transformed_colour(1666, 63, string(ob_lan.M_RSB_1), 0.65, 0.65, 0, c_white, c_white, c_white, c_white, general_ui_alpha);
draw_text_transformed_colour(1700, 98, string(ob_lan.M_RSB_2) + ": " + string(StatPlaced), 0.6, 0.6, 0, c_white, c_white, c_white, c_white, general_ui_alpha);
draw_text_transformed_colour(1700, 123, string(ob_lan.M_RSB_3) + ": " + string(StatPuzComp), 0.6, 0.6, 0, c_white, c_white, c_white, c_white, general_ui_alpha);
draw_text_transformed_colour(1700, 148, string(ob_lan.M_RSB_4) + ": " + string(StatPakComp), 0.6, 0.6, 0, c_white, c_white, c_white, c_white, general_ui_alpha);
draw_text_transformed_colour(1700, 173, string(ob_lan.M_RSB_5) + ": " + string(StatHintUsed), 0.6, 0.6, 0, c_white, c_white, c_white, c_white, general_ui_alpha);
if (HolDecals == 1)
{
    draw_sprite_ext(sp_menu3_snow_3, 0, 1653, 48, 1, 1, 0, -1, 1);
}
if (CurChalPlayHov == 1)
{
    draw_sprite_ext(ChalPrev, 0, 1655, 227, 0.1785, 0.178, 0, -1, general_ui_alpha / 3);
}
else
{
    draw_sprite_ext(ChalPrev, 0, 1655, 227, 0.1785, 0.178, 0, -1, general_ui_alpha);
}
draw_sprite_ext(sp_menu3_monthlyfreebie, 0, 1655, 227, 1, 1, 0, -1, general_ui_alpha);
draw_set_font(global.mainFont20);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
if (CurChalPlayHov == 1)
{
    draw_text_transformed_colour(1779, 301, string(ChalPlayText), 0.8, 0.8, 0, c_black, c_black, c_black, c_black, general_ui_alpha);
    draw_text_transformed_colour(1780, 300, string(ChalPlayText), 0.8, 0.8, 0, c_white, c_white, c_white, c_white, general_ui_alpha);
}
draw_text_transformed_colour(1779, 225, string(ob_lan.M_LSB_4) + " " + string(global.CurChalNum), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, general_ui_alpha);
draw_set_font(global.mainFont20);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text_transformed_colour(1658, 362, string(ChalCurrMonth), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, general_ui_alpha);
draw_set_halign(fa_right);
draw_set_valign(fa_top);
draw_text_transformed_colour(1903, 362, string(challenge_pieces_placed) + "/" + string(ChalCurQnt), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, general_ui_alpha);
if (challenge_is_beat == 1)
{
    draw_sprite_ext(sp_kiosk_uktimate_piece, 0, 1872, 338, 1, 1, 0, -1, general_ui_alpha);
}
if (HolDecals == 1)
{
    draw_sprite_ext(sp_menu3_snow_2, 0, 1651, 211, 1, 1, 0, -1, 1);
}
if (SalePack > 0)
{
    if (SalePack_hov == 1)
    {
        draw_sprite_ext(sp_menu3_capsules_highlight, 0, 1653, 400, 0.698, 0.695, 0, global.col_pal_2, general_ui_alpha);
    }
    draw_sprite_ext(sp_catalogue_pack_backing, 0, 1655, 400, 0.55, 0.55, 0, -1, general_ui_alpha);
    draw_sprite_ext(sp_new_menu_pack_icons, SalePack, 1782, 447, 0.64, 0.64, 0, -1, general_ui_alpha);
    draw_sprite_ext(sp_catalogue_dlc, image_index, 1655, 400, 0.55, 0.55, 0, -1, general_ui_alpha);
    draw_sprite_ext(sp_catalogue_sale, image_index, 1655, 400, 0.55, 0.55, 0, -1, general_ui_alpha);
    draw_set_font(f_steam_sales);
    draw_set_valign(fa_middle);
    draw_set_halign(fa_right);
    draw_text_transformed_colour(1906, 505, "-" + string(SalePackPercent) + "%", 0.7, 0.7, 0, make_colour_rgb(190, 238, 17), make_colour_rgb(190, 238, 17), make_colour_rgb(190, 238, 17), make_colour_rgb(190, 238, 17), general_ui_alpha);
    draw_set_font(f_main_20);
    draw_set_halign(fa_left);
    draw_text_transformed_colour(1657, 508, string(RightSalePackTitle), 0.7, 0.7, 0, c_black, c_black, c_black, c_black, general_ui_alpha);
    draw_text_transformed_colour(1658, 507, string(RightSalePackTitle), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, general_ui_alpha);
}
draw_set_font(global.mainFont20);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if (trade_GfH_open == 1)
{
    if (trade_GfH_open_hov == 1)
    {
        draw_text_transformed_colour(1715, trade_posY, string(ob_lan.M_RSB_9), 0.6, 0.6, 0, c_lime, c_lime, c_lime, c_lime, trade_alpha);
    }
    else
    {
        draw_text_transformed_colour(1715, trade_posY, string(ob_lan.M_RSB_9), 0.6, 0.6, 0, c_white, c_white, c_white, c_white, trade_alpha);
    }
}
if (trade_HfG_open == 1)
{
    if (trade_HfG_open_hov == 1)
    {
        draw_text_transformed_colour(1847, trade_posY, string(ob_lan.M_RSB_9), 0.6, 0.6, 0, c_lime, c_lime, c_lime, c_lime, trade_alpha);
    }
    else
    {
        draw_text_transformed_colour(1847, trade_posY, string(ob_lan.M_RSB_9), 0.6, 0.6, 0, c_white, c_white, c_white, c_white, trade_alpha);
    }
}
draw_sprite_ext(sp_m3_hint_trade, 0, 1655, 531, 1, 1, 0, global.col_pal_2, general_ui_alpha);
draw_sprite_ext(sp_m3_hint_trade, 0, 1786, 531, 1, 1, 0, global.col_pal_2, general_ui_alpha);
draw_sprite_ext(sp_m3_hint_trade, 1, 1655, 531, 1, 1, 0, global.col_pal_1, general_ui_alpha);
draw_sprite_ext(sp_m3_hint_trade, 1, 1786, 531, 1, 1, 0, global.col_pal_1, general_ui_alpha);
draw_sprite_ext(sp_m3_hint_trade_h, 0, 1742, 537, 1, 1, 0, -1, general_ui_alpha);
draw_sprite_ext(sp_m3_hint_trade_g, 0, 1661, 539, 1, 1, 0, -1, general_ui_alpha);
draw_sprite_ext(sp_m3_hint_trade_h, 0, 1791, 537, 1, 1, 0, -1, general_ui_alpha);
draw_sprite_ext(sp_m3_hint_trade_g, 0, 1873, 539, 1, 1, 0, -1, general_ui_alpha);
var b_c_GfH;
if (trade_GfH_hov == 1)
{
    if (hint_quantity >= trade_GfH_cost)
    {
        b_c_GfH = global.col_pal_5;
    }
    else
    {
        b_c_GfH = 255;
    }
}
else
{
    b_c_GfH = -1;
}
draw_sprite_ext(sp_m3_hint_trade, 2, 1655, 531, 1, 1, 0, b_c_GfH, general_ui_alpha);
var b_c_HfG;
if (trade_HfG_hov == 1)
{
    if (gold_quantity >= trade_HfG_cost)
    {
        b_c_HfG = global.col_pal_5;
    }
    else
    {
        b_c_HfG = 255;
    }
}
else
{
    b_c_HfG = -1;
}
draw_sprite_ext(sp_m3_hint_trade, 3, 1786, 531, 1, 1, 0, b_c_HfG, general_ui_alpha);
draw_set_font(global.mainFont20);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
if (trade_GfH_open == 1)
{
    if (trade_GfH_open_hov == 1)
    {
        draw_text_transformed_colour(1715, trade_posY, string(ob_lan.M_RSB_9), 0.6, 0.6, 0, c_lime, c_lime, c_lime, c_lime, trade_alpha);
    }
    else
    {
        draw_text_transformed_colour(1715, trade_posY, string(ob_lan.M_RSB_9), 0.6, 0.6, 0, c_white, c_white, c_white, c_white, trade_alpha);
    }
}
if (trade_HfG_open == 1)
{
    if (trade_HfG_open_hov == 1)
    {
        draw_text_transformed_colour(1847, trade_posY, string(ob_lan.M_RSB_9), 0.6, 0.6, 0, c_lime, c_lime, c_lime, c_lime, trade_alpha);
    }
    else
    {
        draw_text_transformed_colour(1847, trade_posY, string(ob_lan.M_RSB_9), 0.6, 0.6, 0, c_white, c_white, c_white, c_white, trade_alpha);
    }
}
if (global.GoldMultiplier == 3)
{
    draw_sprite_ext(sp_triplegold_banner, Goldx3Banner, 1668, 632, 1, 1, 0, -1, general_ui_alpha);
    draw_sprite_ext(sp_triplegold_banner, 0, 1668, 632, 1, 1, 0, -1, general_ui_alpha);
}
else if (global.GoldMultiplier == 2)
{
    draw_sprite_ext(sp_triplegold_banner, Goldx3Banner, 1668, 632, 1, 1, 0, -1, general_ui_alpha);
    draw_sprite_ext(sp_d_gold_sign, 0, 1668, 632, 1, 1, 0, -1, general_ui_alpha);
}
draw_sprite_ext(sp_social_icons, 0, 1873, 739, 1, 1, 0, -1, general_ui_alpha);
draw_set_font(global.mainFont20);
draw_set_halign(fa_right);
draw_set_valign(fa_middle);
if (social_web_hov == 1)
{
    draw_text_transformed_colour(1865, 756, "PIXELPUZZLES.COM", 0.65, 0.65, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, general_ui_alpha);
}
else
{
    draw_text_transformed_colour(1865, 756, "PIXELPUZZLES.COM", 0.65, 0.65, 0, c_white, c_white, global.col_pal_4, global.col_pal_4, general_ui_alpha);
}
if (social_steam_hov == 1)
{
    draw_text_transformed_colour(1865, 793, string(ob_lan.M_LSB_6), 0.65, 0.65, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, general_ui_alpha);
}
else
{
    draw_text_transformed_colour(1865, 793, "CATALOGUE", 0.65, 0.65, 0, c_white, c_white, global.col_pal_4, global.col_pal_4, general_ui_alpha);
}
if (social_discord_hov == 1)
{
    draw_text_transformed_colour(1865, 830, string(ob_lan.M_RSB_7), 0.65, 0.65, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, general_ui_alpha);
}
else
{
    draw_text_transformed_colour(1865, 830, "JOIN DISCORD", 0.65, 0.65, 0, c_white, c_white, global.col_pal_4, global.col_pal_4, general_ui_alpha);
}
if (social_insta_hov == 1)
{
    draw_text_transformed_colour(1865, 867, "@PIXEL_PUZZLES", 0.65, 0.65, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, general_ui_alpha);
}
else
{
    draw_text_transformed_colour(1865, 867, "@PIXEL_PUZZLES", 0.65, 0.65, 0, c_white, c_white, global.col_pal_4, global.col_pal_4, general_ui_alpha);
}
if (social_twitter_hov == 1)
{
    draw_text_transformed_colour(1865, 904, "@PIXEL_PUZZLES", 0.65, 0.65, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, general_ui_alpha);
}
else
{
    draw_text_transformed_colour(1865, 904, "@PIXEL_PUZZLES", 0.65, 0.65, 0, c_white, c_white, global.col_pal_4, global.col_pal_4, general_ui_alpha);
}
draw_sprite_ext(sp_club_button, 0, 1780, 995, club_but_scale, club_but_scale, 0, -1, general_ui_alpha);
if (CurrentPage == 1)
{
    draw_set_font(f_main_20);
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
    draw_set_font(global.mainFont20);
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
    draw_text_transformed_colour(CPIx, CPIy - 32, string(ob_lan.M_H_1), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    draw_set_halign(fa_right);
    draw_text_transformed_colour(CPIx + CPIprX, CPIy - 32, string(ob_lan.M_H_2) + ": " + string(QP1_pr) + "/" + string(QP1_qnt), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    draw_sprite_ext(CurrentPuzImage, 0, CPIx, CPIy, CPIscale, CPIscale, 0, -1, current_page_alpha);
    if (Quick1Pack != 5000 && Quick1Pack != 126 && Quick1Pack != 7000)
    {
        draw_sprite_ext(sp_new_menu_pack_icons, Quick1Pack, CPIpkX, CPIpkY, 1, 1, 0, -1, current_page_alpha);
    }
    draw_set_font(global.mainFont20);
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    if (CurPlayHov == 1)
    {
        draw_text_transformed_colour(943, CPIpy, string(ob_lan.M_H_3), 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(943, CPIpy, string(ob_lan.M_H_3), 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    draw_set_font(global.mainFont20);
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
    draw_text_transformed_colour(335, 754, string(ob_lan.M_H_4) + ":", 0.65, 0.65, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    draw_set_halign(fa_right);
    if (QP1Hov == 1)
    {
        draw_sprite_ext(sp_puz_but_highlight, 0, 423, 839, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    draw_sprite_ext(QuickPuzIm2, 0, 423, 839, 1, 1, 0, -1, current_page_alpha);
    draw_sprite_ext(sp_puz_beat_icon, QP1win, 423, 839, 1, 1, 0, -1, current_page_alpha);
    draw_sprite(sp_piece_remain_shadow, 0, 511, 892);
    draw_text_transformed_colour(509, 867, string(QP2_pr) + "/" + string(QP2_qnt), 0.65, 0.65, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    if (QP2Hov == 1)
    {
        draw_sprite_ext(sp_puz_but_highlight, 0, 631, 839, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    draw_sprite_ext(QuickPuzIm3, 0, 631, 839, 1, 1, 0, -1, current_page_alpha);
    draw_sprite_ext(sp_puz_beat_icon, QP2win, 631, 839, 1, 1, 0, -1, current_page_alpha);
    draw_sprite(sp_piece_remain_shadow, 0, 719, 892);
    draw_text_transformed_colour(717, 867, string(QP3_pr) + "/" + string(QP3_qnt), 0.65, 0.65, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    if (QP3Hov == 1)
    {
        draw_sprite_ext(sp_puz_but_highlight, 0, 839, 839, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    draw_sprite_ext(QuickPuzIm4, 0, 839, 839, 1, 1, 0, -1, current_page_alpha);
    draw_sprite_ext(sp_puz_beat_icon, QP3win, 839, 839, 1, 1, 0, -1, current_page_alpha);
    draw_sprite(sp_piece_remain_shadow, 0, 927, 892);
    draw_text_transformed_colour(925, 867, string(QP4_pr) + "/" + string(QP4_qnt), 0.65, 0.65, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    if (QP4Hov == 1)
    {
        draw_sprite_ext(sp_puz_but_highlight, 0, 1047, 839, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    draw_sprite_ext(QuickPuzIm5, 0, 1047, 839, 1, 1, 0, -1, current_page_alpha);
    draw_sprite_ext(sp_puz_beat_icon, QP4win, 1047, 839, 1, 1, 0, -1, current_page_alpha);
    draw_sprite(sp_piece_remain_shadow, 0, 1135, 892);
    draw_text_transformed_colour(1133, 867, string(QP5_pr) + "/" + string(QP5_qnt), 0.65, 0.65, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    if (QP5Hov == 1)
    {
        draw_sprite_ext(sp_puz_but_highlight, 0, 1255, 839, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    draw_sprite_ext(QuickPuzIm6, 0, 1255, 839, 1, 1, 0, -1, current_page_alpha);
    draw_sprite_ext(sp_puz_beat_icon, QP5win, 1255, 839, 1, 1, 0, -1, current_page_alpha);
    draw_sprite(sp_piece_remain_shadow, 0, 1343, 892);
    draw_text_transformed_colour(1341, 867, string(QP6_pr) + "/" + string(QP6_qnt), 0.65, 0.65, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    if (QP6Hov == 1)
    {
        draw_sprite_ext(sp_puz_but_highlight, 0, 1463, 839, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    draw_sprite_ext(QuickPuzIm7, 0, 1463, 839, 1, 1, 0, -1, current_page_alpha);
    draw_sprite_ext(sp_puz_beat_icon, QP6win, 1463, 839, 1, 1, 0, -1, current_page_alpha);
    draw_sprite(sp_piece_remain_shadow, 0, 1551, 892);
    draw_text_transformed_colour(1549, 867, string(QP7_pr) + "/" + string(QP7_qnt), 0.65, 0.65, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    draw_set_halign(fa_left);
    draw_text_transformed_colour(335, 917, string(ob_lan.M_H_5) + ":", 0.65, 0.65, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    draw_set_halign(fa_right);
    if (Pin1Hov == 1)
    {
        draw_sprite_ext(sp_puz_but_highlight, 0, 423, 1002, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    draw_sprite_ext(FavPuzIm1, 0, 423, 1002, 1, 1, 0, -1, current_page_alpha);
    draw_sprite_ext(sp_puz_beat_icon, Pin1win, 423, 1002, 1, 1, 0, -1, current_page_alpha);
    draw_sprite(sp_piece_remain_shadow, 0, 511, 1055);
    draw_text_transformed_colour(509, 1030, string(Pin1_pr) + "/" + string(Pin1_qnt), 0.65, 0.65, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    if (Pin2Hov == 1)
    {
        draw_sprite_ext(sp_puz_but_highlight, 0, 631, 1002, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    draw_sprite_ext(FavPuzIm2, 0, 631, 1002, 1, 1, 0, -1, current_page_alpha);
    draw_sprite_ext(sp_puz_beat_icon, Pin2win, 631, 1002, 1, 1, 0, -1, current_page_alpha);
    draw_sprite(sp_piece_remain_shadow, 0, 719, 1055);
    draw_text_transformed_colour(717, 1030, string(Pin2_pr) + "/" + string(Pin2_qnt), 0.65, 0.65, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    if (Pin3Hov == 1)
    {
        draw_sprite_ext(sp_puz_but_highlight, 0, 839, 1002, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    draw_sprite_ext(FavPuzIm3, 0, 839, 1002, 1, 1, 0, -1, current_page_alpha);
    draw_sprite_ext(sp_puz_beat_icon, Pin3win, 839, 1002, 1, 1, 0, -1, current_page_alpha);
    draw_sprite(sp_piece_remain_shadow, 0, 927, 1055);
    draw_text_transformed_colour(925, 1030, string(Pin3_pr) + "/" + string(Pin3_qnt), 0.65, 0.65, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    if (Pin4Hov == 1)
    {
        draw_sprite_ext(sp_puz_but_highlight, 0, 1047, 1002, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    draw_sprite_ext(FavPuzIm4, 0, 1047, 1002, 1, 1, 0, -1, current_page_alpha);
    draw_sprite_ext(sp_puz_beat_icon, Pin4win, 1047, 1002, 1, 1, 0, -1, current_page_alpha);
    draw_sprite(sp_piece_remain_shadow, 0, 1135, 1055);
    draw_text_transformed_colour(1133, 1030, string(Pin4_pr) + "/" + string(Pin4_qnt), 0.65, 0.65, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    if (Pin5Hov == 1)
    {
        draw_sprite_ext(sp_puz_but_highlight, 0, 1255, 1002, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    draw_sprite_ext(FavPuzIm5, 0, 1255, 1002, 1, 1, 0, -1, current_page_alpha);
    draw_sprite_ext(sp_puz_beat_icon, Pin5win, 1255, 1002, 1, 1, 0, -1, current_page_alpha);
    draw_sprite(sp_piece_remain_shadow, 0, 1343, 1055);
    draw_text_transformed_colour(1341, 1030, string(Pin5_pr) + "/" + string(Pin5_qnt), 0.65, 0.65, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    if (Pin6Hov == 1)
    {
        draw_sprite_ext(sp_puz_but_highlight, 0, 1463, 1002, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    draw_sprite_ext(FavPuzIm6, 0, 1463, 1002, 1, 1, 0, -1, current_page_alpha);
    draw_sprite_ext(sp_puz_beat_icon, Pin6win, 1463, 1002, 1, 1, 0, -1, current_page_alpha);
    draw_sprite(sp_piece_remain_shadow, 0, 1551, 1055);
    draw_text_transformed_colour(1549, 1030, string(Pin6_pr) + "/" + string(Pin6_qnt), 0.65, 0.65, 0, c_white, c_white, c_white, c_white, current_page_alpha);
}
if (CurrentPage == 4)
{
    draw_set_font(global.mainFont20);
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
    draw_text_transformed_colour(558, 75, string(ob_lan.M_MP_1) + ": " + string(global.CurChalNum), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    draw_set_halign(fa_right);
    draw_text_transformed_colour(1329, 75, string(ob_lan.M_H_2) + ": " + string(challenge_pieces_placed) + "/" + string(ChalCurQnt), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    draw_sprite_ext(ChalPrev, 0, 558, 107, 0.55, 0.55, 0, -1, current_page_alpha);
    draw_set_font(global.mainFont20);
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    if (CurPlayHov == 1)
    {
        draw_text_transformed_colour(943, 625, string(ChalPlayText), 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, general_ui_alpha);
    }
    else
    {
        draw_text_transformed_colour(943, 625, string(ChalPlayText), 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (UpArrowHov == 2)
    {
        draw_sprite_ext(sp_menuarrowbutton, 0, 283, 839, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    else if (UpArrowHov == 1)
    {
        draw_sprite_ext(sp_menuarrowbutton, 0, 283, 839, 1, 1, 0, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_sprite_ext(sp_menuarrowbutton, 0, 283, 839, 1, 1, 0, -1, current_page_alpha);
    }
    if (DnArrowHov == 2)
    {
        draw_sprite_ext(sp_menuarrowbutton, 0, 283, 989, 1, -1, 0, global.col_pal_2, current_page_alpha);
    }
    else if (DnArrowHov == 1)
    {
        draw_sprite_ext(sp_menuarrowbutton, 0, 283, 989, 1, -1, 0, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_sprite_ext(sp_menuarrowbutton, 0, 283, 989, 1, -1, 0, -1, current_page_alpha);
    }
    draw_set_font(global.mainFont20);
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
    draw_text_transformed_colour(335, 754, string(ob_lan.M_MP_2) + ":", 0.65, 0.65, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    if (challenge_is_beat == 1)
    {
        draw_sprite_ext(sp_kiosk_uktimate_piece, 0, 1294, 140, 1, 1, 0, -1, current_page_alpha);
    }
}
if (CurrentPage == 3)
{
    if (UpArrowHov == 2)
    {
        draw_sprite_ext(sp_menuarrowbutton, 0, 283, 110, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    else if (UpArrowHov == 1)
    {
        draw_sprite_ext(sp_menuarrowbutton, 0, 283, 110, 1, 1, 0, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_sprite_ext(sp_menuarrowbutton, 0, 283, 110, 1, 1, 0, -1, current_page_alpha);
    }
    if (DnArrowHov == 2)
    {
        draw_sprite_ext(sp_menuarrowbutton, 0, 283, 260, 1, -1, 0, global.col_pal_2, current_page_alpha);
    }
    else if (DnArrowHov == 1)
    {
        draw_sprite_ext(sp_menuarrowbutton, 0, 283, 260, 1, -1, 0, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_sprite_ext(sp_menuarrowbutton, 0, 283, 260, 1, -1, 0, -1, current_page_alpha);
    }
}
if (CurrentPage == 5)
{
    if (UpArrowHov == 2)
    {
        draw_sprite_ext(sp_menuarrowbutton, 0, 283, 110, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    else if (UpArrowHov == 1)
    {
        draw_sprite_ext(sp_menuarrowbutton, 0, 283, 110, 1, 1, 0, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_sprite_ext(sp_menuarrowbutton, 0, 283, 110, 1, 1, 0, -1, current_page_alpha);
    }
    if (DnArrowHov == 2)
    {
        draw_sprite_ext(sp_menuarrowbutton, 0, 283, 260, 1, -1, 0, global.col_pal_2, current_page_alpha);
    }
    else if (DnArrowHov == 1)
    {
        draw_sprite_ext(sp_menuarrowbutton, 0, 283, 260, 1, -1, 0, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_sprite_ext(sp_menuarrowbutton, 0, 283, 260, 1, -1, 0, -1, current_page_alpha);
    }
}
if (CurrentPage == 2)
{
    draw_set_font(global.mainFont20);
    draw_set_valign(fa_top);
    draw_set_halign(fa_right);
    if (LibSBSHov == 1)
    {
        draw_text_transformed_colour(1617, 33, string(ob_lan.M_CAT_26), 0.8, 0.8, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(1617, 33, string(ob_lan.M_CAT_26), 0.8, 0.8, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
}
if (CurrentPage == 30)
{
    if (ArrowClicksMax > 0)
    {
        if (UpArrowHov == 2)
        {
            draw_sprite_ext(sp_menuarrowbutton, 0, 283, 234, 1, 1, 0, global.col_pal_2, current_page_alpha);
        }
        else if (UpArrowHov == 1)
        {
            draw_sprite_ext(sp_menuarrowbutton, 0, 283, 234, 1, 1, 0, global.col_pal_5, current_page_alpha);
        }
        else
        {
            draw_sprite_ext(sp_menuarrowbutton, 0, 283, 234, 1, 1, 0, -1, current_page_alpha);
        }
        if (DnArrowHov == 2)
        {
            draw_sprite_ext(sp_menuarrowbutton, 0, 283, 384, 1, -1, 0, global.col_pal_2, current_page_alpha);
        }
        else if (DnArrowHov == 1)
        {
            draw_sprite_ext(sp_menuarrowbutton, 0, 283, 384, 1, -1, 0, global.col_pal_5, current_page_alpha);
        }
        else
        {
            draw_sprite_ext(sp_menuarrowbutton, 0, 283, 384, 1, -1, 0, -1, current_page_alpha);
        }
    }
    draw_set_font(global.mainFont20);
    var Hc2 = global.col_pal_2;
    var Hc5 = global.col_pal_5;
    var HcW = 16777215;
    draw_set_valign(fa_top);
    draw_set_halign(fa_right);
    if (SBSHov == 30)
    {
        draw_text_transformed_colour(1541, 33, string(ob_lan.M_CAT_31), 0.8, 0.8, 0, Hc5, Hc5, Hc5, Hc5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(1541, 33, string(ob_lan.M_CAT_31), 0.8, 0.8, 0, HcW, HcW, HcW, HcW, current_page_alpha);
    }
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
    if (CatCheckCompleteHov == 1)
    {
        draw_sprite_ext(sp_check_box, 0, 336, 29, 1, 1, 0, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_sprite_ext(sp_check_box, 0, 336, 29, 1, 1, 0, -1, current_page_alpha);
    }
    draw_text_transformed_colour(376, 35, string(ob_lan.M_CAT_1), 0.65, 0.65, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    if (SbS_C == 1)
    {
        draw_sprite_ext(sp_check_box_tick, 0, 345, 30, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    if (CatCheckIncompleteHov == 1)
    {
        draw_sprite_ext(sp_check_box, 0, 525, 29, 1, 1, 0, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_sprite_ext(sp_check_box, 0, 525, 29, 1, 1, 0, -1, current_page_alpha);
    }
    draw_text_transformed_colour(566, 35, string(ob_lan.M_CAT_2), 0.65, 0.65, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    if (SbS_I == 1)
    {
        draw_sprite_ext(sp_check_box_tick, 0, 535, 30, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    if (SbS_60 == 1)
    {
        draw_sprite_ext(sp_nm_sbs_box, 0, 471, 89, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    if (SBSHov == 1)
    {
        draw_text_transformed_colour(471, 89, "60", 0.8, 0.8, 0, Hc5, Hc5, Hc5, Hc5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(471, 89, "60", 0.8, 0.8, 0, HcW, HcW, HcW, HcW, current_page_alpha);
    }
    if (SbS_112 == 1)
    {
        draw_sprite_ext(sp_nm_sbs_box, 0, 545, 89, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    if (SBSHov == 2)
    {
        draw_text_transformed_colour(545, 89, "112", 0.8, 0.8, 0, Hc5, Hc5, Hc5, Hc5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(545, 89, "112", 0.8, 0.8, 0, HcW, HcW, HcW, HcW, current_page_alpha);
    }
    if (SbS_153 == 1)
    {
        draw_sprite_ext(sp_nm_sbs_box, 0, 619, 89, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    if (SBSHov == 3)
    {
        draw_text_transformed_colour(619, 89, "153", 0.8, 0.8, 0, Hc5, Hc5, Hc5, Hc5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(619, 89, "153", 0.8, 0.8, 0, HcW, HcW, HcW, HcW, current_page_alpha);
    }
    if (SbS_220 == 1)
    {
        draw_sprite_ext(sp_nm_sbs_box, 0, 693, 89, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    if (SBSHov == 4)
    {
        draw_text_transformed_colour(693, 89, "220", 0.8, 0.8, 0, Hc5, Hc5, Hc5, Hc5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(693, 89, "220", 0.8, 0.8, 0, HcW, HcW, HcW, HcW, current_page_alpha);
    }
    if (SbS_350 == 1)
    {
        draw_sprite_ext(sp_nm_sbs_box, 0, 767, 89, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    if (SBSHov == 5)
    {
        draw_text_transformed_colour(767, 89, "350", 0.8, 0.8, 0, Hc5, Hc5, Hc5, Hc5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(767, 89, "350", 0.8, 0.8, 0, HcW, HcW, HcW, HcW, current_page_alpha);
    }
    if (SbS_96 == 1)
    {
        draw_sprite_ext(sp_nm_sbs_box, 0, 997, 89, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    if (SBSHov == 6)
    {
        draw_text_transformed_colour(997, 89, "96", 0.8, 0.8, 0, Hc5, Hc5, Hc5, Hc5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(997, 89, "96", 0.8, 0.8, 0, HcW, HcW, HcW, HcW, current_page_alpha);
    }
    if (SbS_140 == 1)
    {
        draw_sprite_ext(sp_nm_sbs_box, 0, 1071, 89, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    if (SBSHov == 7)
    {
        draw_text_transformed_colour(1071, 89, "140", 0.8, 0.8, 0, Hc5, Hc5, Hc5, Hc5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(1071, 89, "140", 0.8, 0.8, 0, HcW, HcW, HcW, HcW, current_page_alpha);
    }
    if (SbS_216 == 1)
    {
        draw_sprite_ext(sp_nm_sbs_box, 0, 1145, 89, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    if (SBSHov == 8)
    {
        draw_text_transformed_colour(1145, 89, "216", 0.8, 0.8, 0, Hc5, Hc5, Hc5, Hc5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(1145, 89, "216", 0.8, 0.8, 0, HcW, HcW, HcW, HcW, current_page_alpha);
    }
    if (SbS_330 == 1)
    {
        draw_sprite_ext(sp_nm_sbs_box, 0, 1219, 89, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    if (SBSHov == 9)
    {
        draw_text_transformed_colour(1219, 89, "330", 0.8, 0.8, 0, Hc5, Hc5, Hc5, Hc5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(1219, 89, "330", 0.8, 0.8, 0, HcW, HcW, HcW, HcW, current_page_alpha);
    }
    if (SbS_425 == 1)
    {
        draw_sprite_ext(sp_nm_sbs_box, 0, 1293, 89, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    if (SBSHov == 10)
    {
        draw_text_transformed_colour(1293, 89, "425", 0.8, 0.8, 0, Hc5, Hc5, Hc5, Hc5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(1293, 89, "425", 0.8, 0.8, 0, HcW, HcW, HcW, HcW, current_page_alpha);
    }
    if (SbS_640 == 1)
    {
        draw_sprite_ext(sp_nm_sbs_box, 0, 1367, 89, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    if (SBSHov == 11)
    {
        draw_text_transformed_colour(1367, 89, "640", 0.8, 0.8, 0, Hc5, Hc5, Hc5, Hc5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(1367, 89, "640", 0.8, 0.8, 0, HcW, HcW, HcW, HcW, current_page_alpha);
    }
    if (SbS_840 == 1)
    {
        draw_sprite_ext(sp_nm_sbs_box, 0, 1441, 89, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    if (SBSHov == 12)
    {
        draw_text_transformed_colour(1441, 89, "840", 0.8, 0.8, 0, Hc5, Hc5, Hc5, Hc5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(1441, 89, "840", 0.8, 0.8, 0, HcW, HcW, HcW, HcW, current_page_alpha);
    }
    if (SbS_1410 == 1)
    {
        draw_sprite_ext(sp_nm_sbs_box, 0, 1515, 89, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    if (SBSHov == 13)
    {
        draw_text_transformed_colour(1515, 89, "1410", 0.8, 0.8, 0, Hc5, Hc5, Hc5, Hc5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(1515, 89, "1410", 0.8, 0.8, 0, HcW, HcW, HcW, HcW, current_page_alpha);
    }
    if (SbS_100 == 1)
    {
        draw_sprite_ext(sp_nm_sbs_box, 0, 471, 129, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    if (SBSHov == 14)
    {
        draw_text_transformed_colour(471, 129, "100", 0.8, 0.8, 0, Hc5, Hc5, Hc5, Hc5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(471, 129, "100", 0.8, 0.8, 0, HcW, HcW, HcW, HcW, current_page_alpha);
    }
    if (SbS_169 == 1)
    {
        draw_sprite_ext(sp_nm_sbs_box, 0, 545, 129, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    if (SBSHov == 15)
    {
        draw_text_transformed_colour(545, 129, "169", 0.8, 0.8, 0, Hc5, Hc5, Hc5, Hc5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(545, 129, "169", 0.8, 0.8, 0, HcW, HcW, HcW, HcW, current_page_alpha);
    }
    if (SbS_324 == 1)
    {
        draw_sprite_ext(sp_nm_sbs_box, 0, 619, 129, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    if (SBSHov == 16)
    {
        draw_text_transformed_colour(619, 129, "324", 0.8, 0.8, 0, Hc5, Hc5, Hc5, Hc5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(619, 129, "324", 0.8, 0.8, 0, HcW, HcW, HcW, HcW, current_page_alpha);
    }
    if (SbS_400 == 1)
    {
        draw_sprite_ext(sp_nm_sbs_box, 0, 693, 129, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    if (SBSHov == 17)
    {
        draw_text_transformed_colour(693, 129, "400", 0.8, 0.8, 0, Hc5, Hc5, Hc5, Hc5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(693, 129, "400", 0.8, 0.8, 0, HcW, HcW, HcW, HcW, current_page_alpha);
    }
    if (SbS_676 == 1)
    {
        draw_sprite_ext(sp_nm_sbs_box, 0, 767, 129, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    if (SBSHov == 18)
    {
        draw_text_transformed_colour(767, 129, "676", 0.8, 0.8, 0, Hc5, Hc5, Hc5, Hc5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(767, 129, "676", 0.8, 0.8, 0, HcW, HcW, HcW, HcW, current_page_alpha);
    }
    if (SbS_841 == 1)
    {
        draw_sprite_ext(sp_nm_sbs_box, 0, 841, 129, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    if (SBSHov == 19)
    {
        draw_text_transformed_colour(841, 129, "841", 0.8, 0.8, 0, Hc5, Hc5, Hc5, Hc5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(841, 129, "841", 0.8, 0.8, 0, HcW, HcW, HcW, HcW, current_page_alpha);
    }
    if (SbS_126 == 1)
    {
        draw_sprite_ext(sp_nm_sbs_box, 0, 1071, 129, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    if (SBSHov == 20)
    {
        draw_text_transformed_colour(1071, 129, "126", 0.8, 0.8, 0, Hc5, Hc5, Hc5, Hc5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(1071, 129, "126", 0.8, 0.8, 0, HcW, HcW, HcW, HcW, current_page_alpha);
    }
    if (SbS_168 == 1)
    {
        draw_sprite_ext(sp_nm_sbs_box, 0, 1145, 129, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    if (SBSHov == 21)
    {
        draw_text_transformed_colour(1145, 129, "168", 0.8, 0.8, 0, Hc5, Hc5, Hc5, Hc5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(1145, 129, "168", 0.8, 0.8, 0, HcW, HcW, HcW, HcW, current_page_alpha);
    }
    if (SbS_250 == 1)
    {
        draw_sprite_ext(sp_nm_sbs_box, 0, 1219, 129, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    if (SBSHov == 22)
    {
        draw_text_transformed_colour(1219, 129, "250", 0.8, 0.8, 0, Hc5, Hc5, Hc5, Hc5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(1219, 129, "250", 0.8, 0.8, 0, HcW, HcW, HcW, HcW, current_page_alpha);
    }
    if (SbS_455 == 1)
    {
        draw_sprite_ext(sp_nm_sbs_box, 0, 1293, 129, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    if (SBSHov == 23)
    {
        draw_text_transformed_colour(1293, 129, "455", 0.8, 0.8, 0, Hc5, Hc5, Hc5, Hc5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(1293, 129, "455", 0.8, 0.8, 0, HcW, HcW, HcW, HcW, current_page_alpha);
    }
    if (SbS_640p == 1)
    {
        draw_sprite_ext(sp_nm_sbs_box, 0, 1367, 129, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    if (SBSHov == 31)
    {
        draw_text_transformed_colour(1367, 129, "640", 0.8, 0.8, 0, Hc5, Hc5, Hc5, Hc5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(1367, 129, "640", 0.8, 0.8, 0, HcW, HcW, HcW, HcW, current_page_alpha);
    }
    if (SbS_810 == 1)
    {
        draw_sprite_ext(sp_nm_sbs_box, 0, 1441, 129, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    if (SBSHov == 24)
    {
        draw_text_transformed_colour(1441, 129, "810", 0.8, 0.8, 0, Hc5, Hc5, Hc5, Hc5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(1441, 129, "810", 0.8, 0.8, 0, HcW, HcW, HcW, HcW, current_page_alpha);
    }
    if (SbS_1000 == 1)
    {
        draw_sprite_ext(sp_nm_sbs_box, 0, 1515, 129, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    if (SBSHov == 25)
    {
        draw_text_transformed_colour(1515, 129, "1000", 0.8, 0.8, 0, Hc5, Hc5, Hc5, Hc5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(1515, 129, "1000", 0.8, 0.8, 0, HcW, HcW, HcW, HcW, current_page_alpha);
    }
    draw_set_halign(fa_left);
    if (SBSHov == 26)
    {
        draw_text_transformed_colour(335, 89, string(ob_lan.M_CAT_27), 0.8, 0.8, 0, Hc5, Hc5, Hc5, Hc5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(335, 89, string(ob_lan.M_CAT_27), 0.8, 0.8, 0, HcW, HcW, HcW, HcW, current_page_alpha);
    }
    if (SBSHov == 27)
    {
        draw_text_transformed_colour(822, 89, string(ob_lan.M_CAT_28), 0.8, 0.8, 0, Hc5, Hc5, Hc5, Hc5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(822, 89, string(ob_lan.M_CAT_28), 0.8, 0.8, 0, HcW, HcW, HcW, HcW, current_page_alpha);
    }
    if (SBSHov == 28)
    {
        draw_text_transformed_colour(335, 129, string(ob_lan.M_CAT_29), 0.8, 0.8, 0, Hc5, Hc5, Hc5, Hc5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(335, 129, string(ob_lan.M_CAT_29), 0.8, 0.8, 0, HcW, HcW, HcW, HcW, current_page_alpha);
    }
    if (SBSHov == 29)
    {
        draw_text_transformed_colour(891, 129, string(ob_lan.M_CAT_30), 0.8, 0.8, 0, Hc5, Hc5, Hc5, Hc5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(891, 129, string(ob_lan.M_CAT_30), 0.8, 0.8, 0, HcW, HcW, HcW, HcW, current_page_alpha);
    }
}
if (CurrentPage == 2 || CurrentPage == 6)
{
    if (UpArrowHov == 2)
    {
        draw_sprite_ext(sp_menuarrowbutton, 0, 283, 55, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    else if (UpArrowHov == 1)
    {
        draw_sprite_ext(sp_menuarrowbutton, 0, 283, 55, 1, 1, 0, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_sprite_ext(sp_menuarrowbutton, 0, 283, 55, 1, 1, 0, -1, current_page_alpha);
    }
    if (DnArrowHov == 2)
    {
        draw_sprite_ext(sp_menuarrowbutton, 0, 283, 140, 1, -1, 0, global.col_pal_2, current_page_alpha);
    }
    else if (DnArrowHov == 1)
    {
        draw_sprite_ext(sp_menuarrowbutton, 0, 283, 140, 1, -1, 0, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_sprite_ext(sp_menuarrowbutton, 0, 283, 140, 1, -1, 0, -1, current_page_alpha);
    }
    draw_set_font(global.mainFont20);
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
    if (CurrentPage == 2)
    {
        if (CatCheckCompleteHov == 1)
        {
            draw_sprite_ext(sp_check_box, 0, 491, 29, 1, 1, 0, global.col_pal_5, current_page_alpha);
        }
        else
        {
            draw_sprite_ext(sp_check_box, 0, 491, 29, 1, 1, 0, -1, current_page_alpha);
        }
        draw_text_transformed_colour(531, 35, string(ob_lan.M_CAT_1), 0.65, 0.65, 0, c_white, c_white, c_white, c_white, current_page_alpha);
        if (CatCheckComplete == 1)
        {
            draw_sprite_ext(sp_check_box_tick, 0, 500, 30, 1, 1, 0, global.col_pal_2, current_page_alpha);
        }
    }
    if (CurrentPage == 2)
    {
        if (CatCheckIncompleteHov == 1)
        {
            draw_sprite_ext(sp_check_box, 0, 680, 29, 1, 1, 0, global.col_pal_5, current_page_alpha);
        }
        else
        {
            draw_sprite_ext(sp_check_box, 0, 680, 29, 1, 1, 0, -1, current_page_alpha);
        }
        draw_text_transformed_colour(721, 35, string(ob_lan.M_CAT_2), 0.65, 0.65, 0, c_white, c_white, c_white, c_white, current_page_alpha);
        if (CatCheckIncomplete == 1)
        {
            draw_sprite_ext(sp_check_box_tick, 0, 690, 30, 1, 1, 0, global.col_pal_2, current_page_alpha);
        }
    }
    if (CurrentPage == 6)
    {
        if (CatCheck800Hov == 1)
        {
            draw_sprite_ext(sp_check_box, 0, 491, 29, 1, 1, 0, global.col_pal_5, current_page_alpha);
        }
        else
        {
            draw_sprite_ext(sp_check_box, 0, 491, 29, 1, 1, 0, -1, current_page_alpha);
        }
        draw_text_transformed_colour(532, 35, string(ob_lan.M_CAT_3), 0.65, 0.65, 0, c_white, c_white, c_white, c_white, current_page_alpha);
        if (CatCheck800 == 1)
        {
            draw_sprite_ext(sp_check_box_tick, 0, 501, 30, 1, 1, 0, global.col_pal_2, current_page_alpha);
        }
    }
    if (CurrentPage == 6)
    {
        if (CatCheckFreeHov == 1)
        {
            draw_sprite_ext(sp_check_box, 0, 680, 29, 1, 1, 0, global.col_pal_5, current_page_alpha);
        }
        else
        {
            draw_sprite_ext(sp_check_box, 0, 680, 29, 1, 1, 0, -1, current_page_alpha);
        }
        draw_text_transformed_colour(721, 35, string(ob_lan.M_CAT_4), 0.65, 0.65, 0, c_white, c_white, c_white, c_white, current_page_alpha);
        if (CatCheckFree == 1)
        {
            draw_sprite_ext(sp_check_box_tick, 0, 690, 30, 1, 1, 0, global.col_pal_2, current_page_alpha);
        }
    }
    if (CurrentPage == 2)
    {
        if (CatCheckInProgressHov == 1)
        {
            draw_sprite_ext(sp_check_box, 0, 870, 29, 1, 1, 0, global.col_pal_5, current_page_alpha);
        }
        else
        {
            draw_sprite_ext(sp_check_box, 0, 870, 29, 1, 1, 0, -1, current_page_alpha);
        }
        draw_text_transformed_colour(910, 35, string(ob_lan.M_CAT_25), 0.65, 0.65, 0, c_white, c_white, c_white, c_white, current_page_alpha);
        if (CatCheckInProgress == 1)
        {
            draw_sprite_ext(sp_check_box_tick, 0, 880, 30, 1, 1, 0, global.col_pal_2, current_page_alpha);
        }
    }
    draw_sprite_ext(sp_menu_sidebar_but, 0, 316, 209 + (CatFilter * 43), 1, 1, 0, global.col_pal_1, current_page_alpha);
    draw_sprite_ext(sp_menu_sidebar_but, 1, 316, 209 + (CatFilter * 43), 1, 1, 0, global.col_pal_2, current_page_alpha);
    if (CatF1hov == 1)
    {
        draw_text_transformed_colour(253, 196, string(ob_lan.M_CAT_5), 0.7, 0.7, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(250, 196, string(ob_lan.M_CAT_5), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (CatF2hov == 1)
    {
        draw_text_transformed_colour(253, 239, string(ob_lan.M_CAT_6), 0.7, 0.7, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(250, 239, string(ob_lan.M_CAT_6), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (CatF3hov == 1)
    {
        draw_text_transformed_colour(253, 282, string(ob_lan.M_CAT_7), 0.7, 0.7, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(250, 282, string(ob_lan.M_CAT_7), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (CatF4hov == 1)
    {
        draw_text_transformed_colour(253, 325, string(ob_lan.M_CAT_8), 0.7, 0.7, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(250, 325, string(ob_lan.M_CAT_8), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (CatF5hov == 1)
    {
        draw_text_transformed_colour(253, 368, string(ob_lan.M_CAT_9), 0.7, 0.7, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(250, 368, string(ob_lan.M_CAT_9), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (CatF6hov == 1)
    {
        draw_text_transformed_colour(253, 411, string(ob_lan.M_CAT_10), 0.7, 0.7, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(250, 411, string(ob_lan.M_CAT_10), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (CatF7hov == 1)
    {
        draw_text_transformed_colour(253, 454, string(ob_lan.M_CAT_11), 0.7, 0.7, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(250, 454, string(ob_lan.M_CAT_11), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (CatF8hov == 1)
    {
        draw_text_transformed_colour(253, 497, string(ob_lan.M_CAT_12), 0.7, 0.7, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(250, 497, string(ob_lan.M_CAT_12), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (CatF9hov == 1)
    {
        draw_text_transformed_colour(253, 540, string(ob_lan.M_CAT_13), 0.7, 0.7, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(250, 540, string(ob_lan.M_CAT_13), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (CatF10hov == 1)
    {
        draw_text_transformed_colour(253, 583, string(ob_lan.M_CAT_14), 0.7, 0.7, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(250, 583, string(ob_lan.M_CAT_14), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (CatF11hov == 1)
    {
        draw_text_transformed_colour(253, 626, string(ob_lan.M_CAT_15), 0.7, 0.7, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(250, 626, string(ob_lan.M_CAT_15), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (CatF12hov == 1)
    {
        draw_text_transformed_colour(253, 669, string(ob_lan.M_CAT_16), 0.7, 0.7, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(250, 669, string(ob_lan.M_CAT_16), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (CatF13hov == 1)
    {
        draw_text_transformed_colour(253, 712, string(ob_lan.M_CAT_17), 0.7, 0.7, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(250, 712, string(ob_lan.M_CAT_17), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (CatF14hov == 1)
    {
        draw_text_transformed_colour(253, 755, string(ob_lan.M_CAT_18), 0.7, 0.7, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(250, 755, string(ob_lan.M_CAT_18), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (CatF15hov == 1)
    {
        draw_text_transformed_colour(253, 798, string(ob_lan.M_CAT_19), 0.7, 0.7, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(250, 798, string(ob_lan.M_CAT_19), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (CatF16hov == 1)
    {
        draw_text_transformed_colour(253, 841, string(ob_lan.M_CAT_20), 0.7, 0.7, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(250, 841, string(ob_lan.M_CAT_20), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (CatF17hov == 1)
    {
        draw_text_transformed_colour(253, 884, string(ob_lan.M_CAT_21), 0.7, 0.7, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(250, 884, string(ob_lan.M_CAT_21), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (CatF18hov == 1)
    {
        draw_text_transformed_colour(253, 927, string(ob_lan.M_CAT_22), 0.7, 0.7, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(250, 927, string(ob_lan.M_CAT_22), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (CatF19hov == 1)
    {
        draw_text_transformed_colour(253, 970, string(ob_lan.M_CAT_23), 0.7, 0.7, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(250, 970, string(ob_lan.M_CAT_23), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (CatF20hov == 1)
    {
        draw_text_transformed_colour(253, 1013, string(ob_lan.M_CAT_24), 0.7, 0.7, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(250, 1013, string(ob_lan.M_CAT_24), 0.7, 0.7, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
}
if (CurrentPage == 19 || CurrentPage == 30)
{
    if (BKArrowHov == 2)
    {
        draw_sprite_ext(sp_menuarrowbutton, 0, 277, 109, 1, 1, 90, global.col_pal_2, current_page_alpha);
    }
    else if (BKArrowHov == 1)
    {
        draw_sprite_ext(sp_menuarrowbutton, 0, 277, 109, 1, 1, 90, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_sprite_ext(sp_menuarrowbutton, 0, 277, 109, 1, 1, 90, -1, current_page_alpha);
    }
}
if (CurrentPage == 17)
{
    if (UpArrowHov == 2)
    {
        draw_sprite_ext(sp_menuarrowbutton, 0, 283, 118, 1, 1, 0, global.col_pal_2, current_page_alpha);
    }
    else if (UpArrowHov == 1)
    {
        draw_sprite_ext(sp_menuarrowbutton, 0, 283, 118, 1, 1, 0, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_sprite_ext(sp_menuarrowbutton, 0, 283, 118, 1, 1, 0, -1, current_page_alpha);
    }
    if (DnArrowHov == 2)
    {
        draw_sprite_ext(sp_menuarrowbutton, 0, 283, 260, 1, -1, 0, global.col_pal_2, current_page_alpha);
    }
    else if (DnArrowHov == 1)
    {
        draw_sprite_ext(sp_menuarrowbutton, 0, 283, 260, 1, -1, 0, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_sprite_ext(sp_menuarrowbutton, 0, 283, 260, 1, -1, 0, -1, current_page_alpha);
    }
    draw_set_font(global.mainFont20);
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
    draw_text_transformed_colour(270, 20, string(ob_lan.M_SD_1), 0.8, 0.8, 0, global.col_pal_3, global.col_pal_3, global.col_pal_3, global.col_pal_3, current_page_alpha);
}
if (CurrentPage == 8)
{
    draw_sprite_ext(sp_setting_shadow, 0, 942, ShadHovY + 15, 1, 1, 0, global.col_pal_1, current_page_alpha);
    draw_set_font(global.mainFont20);
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    if (SetHov1 == 1)
    {
        draw_text_transformed_colour(942, 100, string(ob_lan.M_C_1), 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 100, string(ob_lan.M_C_1), 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (SetHov2 == 1)
    {
        draw_text_transformed_colour(942, 180, string(ob_lan.M_C_2), 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 180, string(ob_lan.M_C_2), 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (SetHov3 == 1)
    {
        draw_text_transformed_colour(942, 260, string(ob_lan.M_C_3), 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 260, string(ob_lan.M_C_3), 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (SetHov4 == 1)
    {
        draw_text_transformed_colour(942, 340, string(ob_lan.M_C_4), 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 340, string(ob_lan.M_C_4), 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    draw_text_transformed_colour(942, 420, string(ob_lan.M_C_5), 1, 1, 0, c_black, c_black, c_black, c_black, current_page_alpha);
    draw_text_transformed_colour(942, 500, string(ob_lan.M_C_6), 1, 1, 0, c_black, c_black, c_black, c_black, current_page_alpha);
    draw_text_transformed_colour(942, 580, string(ob_lan.M_C_7), 1, 1, 0, c_black, c_black, c_black, c_black, current_page_alpha);
    draw_text_transformed_colour(942, 660, string(ob_lan.M_C_8), 1, 1, 0, c_black, c_black, c_black, c_black, current_page_alpha);
}
if (CurrentPage == 22)
{
    draw_sprite_ext(sp_setting_shadow, 0, 942, ShadHovY + 15, 1, 1, 0, global.col_pal_1, current_page_alpha);
    draw_set_font(global.mainFont20);
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    if (ob_game_controller.c6223 == 1)
    {
        draw_text_transformed_colour(942, 100, "Breeze", 1, 1, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, current_page_alpha);
    }
    else if (SetHov1 == 1)
    {
        draw_text_transformed_colour(942, 100, "Breeze", 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 100, "Breeze", 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (ob_game_controller.c6223 == 2)
    {
        draw_text_transformed_colour(942, 140, "Lofi Life", 1, 1, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, current_page_alpha);
    }
    else if (SetHov1 == 2)
    {
        draw_text_transformed_colour(942, 140, "Lofi Life", 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 140, "Lofi Life", 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (ob_game_controller.c6223 == 3)
    {
        draw_text_transformed_colour(942, 180, "Shoreline", 1, 1, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, current_page_alpha);
    }
    else if (SetHov1 == 3)
    {
        draw_text_transformed_colour(942, 180, "Shoreline", 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 180, "Shoreline", 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (ob_game_controller.c6223 == 4)
    {
        draw_text_transformed_colour(942, 220, "Vintage Dreams", 1, 1, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, current_page_alpha);
    }
    else if (SetHov1 == 4)
    {
        draw_text_transformed_colour(942, 220, "Vintage Dreams", 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 220, "Vintage Dreams", 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (ob_game_controller.c6223 == 5)
    {
        draw_text_transformed_colour(942, 260, "Cafe Romance", 1, 1, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, current_page_alpha);
    }
    else if (SetHov1 == 5)
    {
        draw_text_transformed_colour(942, 260, "Cafe Romance", 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 260, "Cafe Romance", 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (ob_game_controller.c6223 == 6)
    {
        draw_text_transformed_colour(942, 300, "Zen Garden", 1, 1, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, current_page_alpha);
    }
    else if (SetHov1 == 6)
    {
        draw_text_transformed_colour(942, 300, "Zen Garden", 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 300, "Zen Garden", 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (ob_game_controller.c6223 == 7)
    {
        draw_text_transformed_colour(942, 340, "Snow Day", 1, 1, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, current_page_alpha);
    }
    else if (SetHov1 == 7)
    {
        draw_text_transformed_colour(942, 340, "Snow Day", 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 340, "Snow Day", 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (ob_game_controller.c6223 == 8)
    {
        draw_text_transformed_colour(942, 380, "Christmas Jingles", 1, 1, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, current_page_alpha);
    }
    else if (SetHov1 == 8)
    {
        draw_text_transformed_colour(942, 380, "Christmas Jingles", 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 380, "Christmas Jingles", 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (ob_game_controller.c6223 == 9)
    {
        draw_text_transformed_colour(942, 420, "Piano Lullaby", 1, 1, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, current_page_alpha);
    }
    else if (SetHov1 == 9)
    {
        draw_text_transformed_colour(942, 420, "Piano Lullaby", 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 420, "Piano Lullaby", 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (ob_game_controller.c6223 == 10)
    {
        draw_text_transformed_colour(942, 460, "Sunset Lake", 1, 1, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, current_page_alpha);
    }
    else if (SetHov1 == 10)
    {
        draw_text_transformed_colour(942, 460, "Sunset Lake", 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 460, "Sunset Lake", 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (ob_game_controller.c6223 == 11)
    {
        draw_text_transformed_colour(942, 500, "Rainy Day", 1, 1, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, current_page_alpha);
    }
    else if (SetHov1 == 11)
    {
        draw_text_transformed_colour(942, 500, "Rainy Day", 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 500, "Rainy Day", 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (ob_game_controller.c6223 == 12)
    {
        draw_text_transformed_colour(942, 540, "Soulful Stream", 1, 1, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, current_page_alpha);
    }
    else if (SetHov1 == 12)
    {
        draw_text_transformed_colour(942, 540, "Soulful Stream", 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 540, "Soulful Stream", 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (ob_game_controller.c6223 == 13)
    {
        draw_text_transformed_colour(942, 580, "Spy Mission", 1, 1, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, current_page_alpha);
    }
    else if (SetHov1 == 13)
    {
        draw_text_transformed_colour(942, 580, "Spy Mission", 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 580, "Spy Mission", 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (ob_game_controller.c6223 == 14)
    {
        draw_text_transformed_colour(942, 620, "Blues Town", 1, 1, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, current_page_alpha);
    }
    else if (SetHov1 == 14)
    {
        draw_text_transformed_colour(942, 620, "Blues Town", 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 620, "Blues Town", 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (ob_game_controller.c6223 == 15)
    {
        draw_text_transformed_colour(942, 660, "Arcade Madness", 1, 1, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, current_page_alpha);
    }
    else if (SetHov1 == 15)
    {
        draw_text_transformed_colour(942, 660, "Arcade Madness", 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 660, "Arcade Madness", 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (ob_game_controller.c6223 == 16)
    {
        draw_text_transformed_colour(942, 700, "Smooth Jazz", 1, 1, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, current_page_alpha);
    }
    else if (SetHov1 == 16)
    {
        draw_text_transformed_colour(942, 700, "Smooth Jazz", 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 700, "Smooth Jazz", 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (ob_game_controller.c6223 == 17)
    {
        draw_text_transformed_colour(942, 740, "Rock Jam", 1, 1, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, current_page_alpha);
    }
    else if (SetHov1 == 17)
    {
        draw_text_transformed_colour(942, 740, "Rock Jam", 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 740, "Rock Jam", 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (ob_game_controller.c6223 == 18)
    {
        draw_text_transformed_colour(942, 780, "Space Traveler", 1, 1, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, current_page_alpha);
    }
    else if (SetHov1 == 18)
    {
        draw_text_transformed_colour(942, 780, "Space Traveler", 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 780, "Space Traveler", 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (ob_game_controller.c6223 == 19)
    {
        draw_text_transformed_colour(942, 820, "Mega City", 1, 1, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, current_page_alpha);
    }
    else if (SetHov1 == 19)
    {
        draw_text_transformed_colour(942, 820, "Mega City", 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 820, "Mega City", 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (ob_game_controller.c6223 == 20)
    {
        draw_text_transformed_colour(942, 860, "Relaxed Vibes", 1, 1, 0, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, current_page_alpha);
    }
    else if (SetHov1 == 20)
    {
        draw_text_transformed_colour(942, 860, "Relaxed Vibes", 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 860, "Relaxed Vibes", 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
}
if (CurrentPage == 20 || CurrentPage == 21 || CurrentPage == 22 || CurrentPage == 23 || CurrentPage == 24 || CurrentPage == 25 || CurrentPage == 26 || CurrentPage == 27)
{
    if (BKArrowHov == 2)
    {
        draw_sprite_ext(sp_menuarrowbutton, 0, 277, 109, 1, 1, 90, global.col_pal_2, current_page_alpha);
    }
    else if (BKArrowHov == 1)
    {
        draw_sprite_ext(sp_menuarrowbutton, 0, 277, 109, 1, 1, 90, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_sprite_ext(sp_menuarrowbutton, 0, 277, 109, 1, 1, 90, -1, current_page_alpha);
    }
}
if (CurrentPage == 13)
{
    draw_sprite_ext(sp_setting_shadow, 0, 942, ShadHovY + 15, 1, 1, 0, global.col_pal_1, current_page_alpha);
    draw_set_font(global.mainFont20);
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    draw_set_color(global.col_pal_2);
    var Pr = 0;
    if (global.piece_rotation == 1)
    {
        Pr = string(ob_lan.M_S_6);
    }
    else
    {
        Pr = string(ob_lan.M_S_7);
    }
    if (SetHov1 == 1 || SetHov1 == 2)
    {
        draw_text_transformed_colour(942, 100, string(ob_lan.M_P_2) + ": " + string(Pr), 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 100, string(ob_lan.M_P_2) + ": " + string(Pr), 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (SetHov1 == 1)
    {
        draw_text(530, 100, "<<");
    }
    if (SetHov1 == 2)
    {
        draw_text(1356, 100, ">>");
    }
    if (SetHov2 == 1 || SetHov2 == 2)
    {
        draw_text_transformed_colour(942, 140, string(ob_lan.M_P_3) + ": x" + string(global.piece_snap), 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 140, string(ob_lan.M_P_3) + ": x" + string(global.piece_snap), 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (SetHov2 == 1)
    {
        draw_text(530, 140, "<<");
    }
    if (SetHov2 == 2)
    {
        draw_text(1356, 140, ">>");
    }
    var Ps = 0;
    if (global.pieces_stick == 1)
    {
        Ps = string(ob_lan.M_S_6);
    }
    else
    {
        Ps = string(ob_lan.M_S_7);
    }
    draw_text_transformed_colour(942, 180, string(ob_lan.M_P_4) + ": " + string(Ps), 1, 1, 0, c_black, c_black, c_black, c_black, current_page_alpha);
    if (SetHov4 == 1 || SetHov4 == 2)
    {
        draw_text_transformed_colour(942, 260, string(ob_lan.M_P_5) + ": x" + string(global.piece_floating), 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 260, string(ob_lan.M_P_5) + ": x" + string(global.piece_floating), 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (SetHov4 == 1)
    {
        draw_text(530, 260, "<<");
    }
    if (SetHov4 == 2)
    {
        draw_text(1356, 260, ">>");
    }
    if (SetHov5 == 1 || SetHov5 == 2)
    {
        draw_text_transformed_colour(942, 300, string(ob_lan.M_P_6) + ": x" + string(global.float_rot), 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 300, string(ob_lan.M_P_6) + ": x" + string(global.float_rot), 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (SetHov5 == 1)
    {
        draw_text(530, 300, "<<");
    }
    if (SetHov5 == 2)
    {
        draw_text(1356, 300, ">>");
    }
    var Fs = 0;
    if (global.float_shadow == 1)
    {
        Fs = string(ob_lan.M_S_6);
    }
    else
    {
        Fs = string(ob_lan.M_S_7);
    }
    draw_text_transformed_colour(942, 340, string(ob_lan.M_P_7) + ": " + string(Fs), 1, 1, 0, c_black, c_black, c_black, c_black, current_page_alpha);
    var Hcol = 0;
    if (global.highlight_col == 1)
    {
        Hcol = ob_lan.M_P_20;
    }
    else if (global.highlight_col == 2)
    {
        Hcol = ob_lan.M_P_21;
    }
    else if (global.highlight_col == 3)
    {
        Hcol = ob_lan.M_P_22;
    }
    else if (global.highlight_col == 4)
    {
        Hcol = ob_lan.M_P_23;
    }
    else
    {
        Hcol = ob_lan.M_P_18;
    }
    if (SetHov9 == 1 || SetHov9 == 2)
    {
        draw_text_transformed_colour(942, 420, string(ob_lan.M_P_10) + ": " + string(Hcol), 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 420, string(ob_lan.M_P_10) + ": " + string(Hcol), 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (SetHov9 == 1)
    {
        draw_text(530, 420, "<<");
    }
    if (SetHov9 == 2)
    {
        draw_text(1356, 420, ">>");
    }
    var Hst = 0;
    if (global.highlight_style == 0)
    {
        Hst = string(ob_lan.M_P_13);
    }
    else
    {
        Hst = string(ob_lan.M_P_12);
    }
    if (SetHov10 == 1 || SetHov10 == 2)
    {
        draw_text_transformed_colour(942, 460, string(ob_lan.M_P_11) + ": " + string(Hst), 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 460, string(ob_lan.M_P_11) + ": " + string(Hst), 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (SetHov10 == 1)
    {
        draw_text(530, 460, "<<");
    }
    if (SetHov10 == 2)
    {
        draw_text(1356, 460, ">>");
    }
    var Is = 0;
    if (global.idle_shadow == 1)
    {
        Is = string(ob_lan.M_S_6);
    }
    else
    {
        Is = string(ob_lan.M_S_7);
    }
    draw_text_transformed_colour(942, 500, string(ob_lan.M_P_14) + ": " + string(Is), 1, 1, 0, c_black, c_black, c_black, c_black, current_page_alpha);
    var Hs = 0;
    if (global.held_shadow == 1)
    {
        Hs = string(ob_lan.M_S_6);
    }
    else
    {
        Hs = string(ob_lan.M_S_7);
    }
    draw_text_transformed_colour(942, 540, string(ob_lan.M_P_15) + ": " + string(Hs), 1, 1, 0, c_black, c_black, c_black, c_black, current_page_alpha);
    var value = global.image_guide;
    var percentage = value * 100;
    var percentage_string = string_format(percentage, 0, 0);
    if (SetHov13 == 1 || SetHov13 == 2)
    {
        draw_text_transformed_colour(942, 620, string(ob_lan.M_P_16) + ": " + string(percentage) + "%", 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 620, string(ob_lan.M_P_16) + ": " + string(percentage) + "%", 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (SetHov13 == 1)
    {
        draw_text(530, 620, "<<");
    }
    if (SetHov13 == 2)
    {
        draw_text(1356, 620, ">>");
    }
    var Ol = 0;
    if (global.puzzle_outline == 1)
    {
        Ol = string(ob_lan.M_S_6);
    }
    else
    {
        Ol = string(ob_lan.M_S_7);
    }
    draw_text_transformed_colour(942, 660, string(ob_lan.M_P_17) + ": " + string(Ol), 1, 1, 0, c_black, c_black, c_black, c_black, current_page_alpha);
    value = global.fin_outline;
    percentage = value * 100;
    percentage_string = string_format(percentage, 0, 0);
    if (SetHov16 == 1 || SetHov16 == 2)
    {
        draw_text_transformed_colour(942, 700, string(ob_lan.M_P_19) + ": " + string(percentage_string) + "%", 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 700, string(ob_lan.M_P_19) + ": " + string(percentage_string) + "%", 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (SetHov16 == 1)
    {
        draw_text(530, 700, "<<");
    }
    if (SetHov16 == 2)
    {
        draw_text(1356, 700, ">>");
    }
    value = global.TrayOpacity;
    percentage = value * 100;
    percentage_string = string_format(percentage, 0, 0);
    if (SetHov15 == 1 || SetHov15 == 2)
    {
        draw_text_transformed_colour(942, 780, string(ob_lan.M_P_24) + ": " + string(percentage_string) + "%", 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 780, string(ob_lan.M_P_24) + ": " + string(percentage_string) + "%", 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (SetHov15 == 1)
    {
        draw_text(530, 780, "<<");
    }
    if (SetHov15 == 2)
    {
        draw_text(1356, 780, ">>");
    }
    var ShT = 0;
    if (global.UseHints_PopUP == 1)
    {
        ShT = string(ob_lan.M_P_26);
    }
    else
    {
        ShT = string(ob_lan.M_P_27);
    }
    if (SetHov17 == 1 || SetHov17 == 2)
    {
        draw_text_transformed_colour(942, 820, string(ob_lan.M_P_25) + ": " + string(ShT), 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 820, string(ob_lan.M_P_25) + ": " + string(ShT), 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (SetHov17 == 1)
    {
        draw_text(530, 820, "<<");
    }
    if (SetHov17 == 2)
    {
        draw_text(1356, 820, ">>");
    }
    draw_set_color(c_white);
}
if (CurrentPage == 14)
{
    draw_sprite_ext(sp_setting_shadow, 0, 942, ShadHovY + 15, 1, 1, 0, global.col_pal_1, current_page_alpha);
    draw_set_font(global.mainFont20);
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);
    draw_set_color(global.col_pal_2);
    var FS = 0;
    if (global.fullscreen_mode == 1)
    {
        FS = string(ob_lan.UI_Fullscreen);
    }
    else
    {
        FS = string(ob_lan.UI_Windowed);
    }
    if (SetHov1 == 1 || SetHov1 == 2)
    {
        draw_text_transformed_colour(942, 100, string(ob_lan.M_S_1) + ": " + string(FS), 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 100, string(ob_lan.M_S_1) + ": " + string(FS), 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (SetHov1 == 1)
    {
        draw_text(530, 100, "<<");
    }
    if (SetHov1 == 2)
    {
        draw_text(1356, 100, ">>");
    }
    var Ww = window_get_width();
    var Wh = window_get_height();
    if (SetHov2 == 1 || SetHov2 == 2)
    {
        draw_text_transformed_colour(942, 140, string(ob_lan.M_S_10) + ": " + string(Ww) + "*" + string(Wh), 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 140, string(ob_lan.M_S_10) + ": " + string(Ww) + "*" + string(Wh), 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (SetHov2 == 1)
    {
        draw_text(530, 140, "<<");
    }
    if (SetHov2 == 2)
    {
        draw_text(1356, 140, ">>");
    }
    if (SetHov3 == 1 || SetHov3 == 2)
    {
        draw_text_transformed_colour(942, 220, string(ob_lan.M_S_2) + ": x" + string(round(global.master_vol * 10)), 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 220, string(ob_lan.M_S_2) + ": x" + string(round(global.master_vol * 10)), 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (SetHov3 == 1)
    {
        draw_text(530, 220, "<<");
    }
    if (SetHov3 == 2)
    {
        draw_text(1356, 220, ">>");
    }
    if (SetHov4 == 1 || SetHov4 == 2)
    {
        draw_text_transformed_colour(942, 260, string(ob_lan.M_S_3) + ": x" + string(round(global.effect_vol * 10)), 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 260, string(ob_lan.M_S_3) + ": x" + string(round(global.effect_vol * 10)), 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (SetHov4 == 1)
    {
        draw_text(530, 260, "<<");
    }
    if (SetHov4 == 2)
    {
        draw_text(1356, 260, ">>");
    }
    if (SetHov5 == 1 || SetHov5 == 2)
    {
        draw_text_transformed_colour(942, 300, string(ob_lan.M_S_4) + ": x" + string(round(global.music_vol * 10)), 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 300, string(ob_lan.M_S_4) + ": x" + string(round(global.music_vol * 10)), 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (SetHov5 == 1)
    {
        draw_text(530, 300, "<<");
    }
    if (SetHov5 == 2)
    {
        draw_text(1356, 300, ">>");
    }
    if (SetHov6 == 1 || SetHov6 == 2)
    {
        draw_text_transformed_colour(942, 340, string(ob_lan.M_S_5) + ": x" + string(round(global.ambiance_vol * 10)), 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 340, string(ob_lan.M_S_5) + ": x" + string(round(global.ambiance_vol * 10)), 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (SetHov6 == 1)
    {
        draw_text(530, 340, "<<");
    }
    if (SetHov6 == 2)
    {
        draw_text(1356, 340, ">>");
    }
    draw_text_transformed_colour(942, 420, string(ob_lan.M_S_8) + ": " + string(ob_lan.M_S_9), 1, 1, 0, c_black, c_black, c_black, c_black, current_page_alpha);
    if (SetHov8 == 1 || SetHov8 == 2)
    {
        draw_text_transformed_colour(942, 500, string(ob_lan.M_S_12) + ": x" + string(string(global.zoom_pan_speed)), 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 500, string(ob_lan.M_S_12) + ": x" + string(global.zoom_pan_speed), 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (SetHov8 == 1)
    {
        draw_text(530, 500, "<<");
    }
    if (SetHov8 == 2)
    {
        draw_text(1356, 500, ">>");
    }
    if (global.hide_zoom_text == 0)
    {
        Zi = string(ob_lan.M_S_6);
    }
    else
    {
        Zi = string(ob_lan.M_S_7);
    }
    if (SetHov9 == 1 || SetHov9 == 2)
    {
        draw_text_transformed_colour(942, 540, string(ob_lan.M_S_13) + ": " + string(Zi), 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 540, string(ob_lan.M_S_13) + ": " + string(Zi), 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (SetHov9 == 1)
    {
        draw_text(530, 540, "<<");
    }
    if (SetHov9 == 2)
    {
        draw_text(1356, 540, ">>");
    }
    if (SetHov10 == 1 || SetHov10 == 2)
    {
        draw_text_transformed_colour(942, 620, string(ob_lan.M_S_11) + ": x" + string(string(global.cursor_speed)), 1, 1, 0, global.col_pal_5, global.col_pal_5, global.col_pal_5, global.col_pal_5, current_page_alpha);
    }
    else
    {
        draw_text_transformed_colour(942, 620, string(ob_lan.M_S_11) + ": x" + string(global.cursor_speed), 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    }
    if (SetHov10 == 1)
    {
        draw_text(530, 620, "<<");
    }
    if (SetHov10 == 2)
    {
        draw_text(1356, 620, ">>");
    }
    if (global.thumb_side == 0)
    {
        Hm = string(ob_lan.M_S_15);
    }
    else
    {
        Hm = string(ob_lan.M_S_16);
    }
    draw_text_transformed_colour(942, 660, string(ob_lan.M_S_14) + ": " + string(Hm), 1, 1, 0, c_black, c_black, c_black, c_black, current_page_alpha);
    draw_text_transformed_colour(942, 740, string(ob_lan.M_S_17) + ": " + string(round(MenuBackingAlpha * 100)) + "%", 1, 1, 0, c_white, c_white, c_white, c_white, current_page_alpha);
    draw_set_color(c_white);
}
if (CurrentPage == 10)
{
    if (EventTYPE == 1)
    {
        draw_sprite(sp_advent_title, 0, 406, 44);
    }
    if (EventTYPE == 2)
    {
        draw_sprite_ext(sp_ny_puzbut, 0, 280, 300, 1, 1, 0, -1, current_page_alpha);
        draw_set_font(f_new_year);
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
        draw_sprite_ext(sp_new_year_titleshadow, 0, 311, 100, 1, 1, 0, -1, current_page_alpha);
        draw_text_ext_colour(942, 130, "HAPPY NEW YEAR", 130, 10000, nyCOL1, nyCOL2, nyCOL3, nyCOL4, current_page_alpha);
        if (QP1Hov == 1)
        {
            draw_rectangle_colour(278, 300, 280, 804, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, 0);
            draw_rectangle_colour(280, 802, 1607, 804, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, 0);
        }
    }
    if (EventTYPE == 4)
    {
        draw_sprite_ext(sp_ny_puzbut, 0, 942, 500, 1, 1, 0, -1, current_page_alpha);
        draw_set_font(f_new_year);
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
        draw_sprite_ext(sp_new_yealunarr_titleshadow, 0, 275, 73, 2, 2, 0, -1, current_page_alpha);
        draw_text_ext_transformed_colour(942, 100, "HAPPY LUNAR NEW YEAR", 130, 10000, 0.75, 0.75, 0, nyCOL1, nyCOL2, nyCOL3, nyCOL4, current_page_alpha);
        if (QP1Hov == 1)
        {
            draw_rectangle_colour(548, 248, 550, 754, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, 0);
            draw_rectangle_colour(548, 752, 1334, 754, global.col_pal_2, global.col_pal_2, global.col_pal_2, global.col_pal_2, 0);
        }
    }
}
