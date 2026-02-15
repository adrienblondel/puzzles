draw_sprite_ext(s_nm_shadow, 0, 0, 0, 2, 2, 0, c_white, 1);
draw_sprite(sp_new_menu_top_bumper, 0, 0, -4);
if (global.menu_seasonal_decor == 1)
{
    draw_sprite(sp_new_menu_seasonal_fall_border, 0, 0, 0);
}
if (global.menu_seasonal_decor == 2)
{
    draw_sprite_ext(sp_nm_snow_6, 0, 0, 996, 1, 1, 0, -1, 1);
}
draw_sprite(sp_new_menu_top_bumper, 0, 0, 1039);
if (global.menu_seasonal_decor == 1)
{
    draw_sprite_ext(sp_new_menu_seasonal_fall_border, 0, 1920, 1080, -1, -1, 0, -1, 1);
}
if (global.menu_seasonal_decor == 2)
{
    draw_sprite_ext(sp_nm_snow_5, 0, 0, 1034, 1, 1, 0, -1, 1);
}
draw_sprite(sp_new_menu_wide_thin_box_short, 0, 238, 640);
draw_sprite(sp_new_menu_wide_thin_box_short, 0, 238, 164);
draw_sprite(sp_new_menu_wide_thin_box_short, 0, 1682, 532);
draw_sprite(sp_new_menu_wide_thin_box_short, 0, 1682, 164);
draw_sprite(sp_new_menu_wide_thin_box_shorter, 0, 570, 164);
draw_sprite(sp_new_menu_wide_thin_box_long, 0, 710, 146);
draw_sprite(sp_new_menu_mini_stat_icons, 0, 83, 443);
draw_set_halign(fa_left);
draw_set_font(f_main_title);
draw_set_colour(c_black);
draw_text(78, 59, "PIXEL PUZZLES ULTIMATE");
draw_set_colour(c_white);
draw_text(80, 56, "PIXEL PUZZLES ULTIMATE");
draw_set_font(f_new_menu_small);
draw_set_colour(c_black);
draw_text(89, 155, "LOGGED IN: " + string(global.user_id_name));
draw_text(89, 630, "NEWS:");
if (tags_menu_open == 1)
{
    draw_text(450, 154, "PACK SORTING:");
}
else
{
    draw_text(450, 154, "CATALOGUE:");
}
draw_text(1533, 154, "JIGSAW OPTIONS:");
draw_text(1533, 522, "QUICK SELECT:");
draw_text(114, 448, "PUZZLES COMPLETE:");
draw_text(114, 483, "GOLD PIECES:");
draw_text(114, 518, "ULTIMATE PIECES:");
draw_text(114, 553, "HINT TOKENS:");
draw_set_colour(c_white);
draw_text(90, 153, "LOGGED IN: " + string(global.user_id_name));
draw_text(90, 628, "NEWS:");
if (tags_menu_open == 1)
{
    draw_text(451, 152, "PACK SORTING:");
}
else
{
    draw_text(451, 152, "CATALOGUE:");
}
draw_text(1534, 152, "JIGSAW OPTIONS:");
draw_text(1534, 520, "QUICK SELECT:");
draw_text(115, 446, "PUZZLES COMPLETE:");
draw_text(115, 481, "GOLD PIECES:");
draw_text(115, 516, "ULTIMATE PIECES:");
draw_text(115, 551, "HINT TOKENS:");
draw_set_halign(fa_right);
draw_set_colour(c_black);
draw_text(384, 448, stat_puzzles_complete);
draw_text(384, 483, stat_gold_owned);
draw_text(384, 518, stat_ultimates_owned);
draw_text(384, 553, stat_hints_owned);
draw_set_colour(c_white);
draw_text(385, 446, stat_puzzles_complete);
draw_text(385, 481, stat_gold_owned);
draw_text(385, 516, stat_ultimates_owned);
draw_text(385, 551, stat_hints_owned);
draw_set_halign(fa_left);
if (global.menu_seasonal_decor == 2)
{
    draw_sprite_ext(sp_nm_snow_1, 0, 12, 72, 1, 1, 0, -1, 1);
}
if (global.menu_seasonal_decor == 2)
{
    draw_sprite_ext(sp_nm_snow_2, 0, 75, 130, 1, 1, 0, -1, 1);
}
if (global.menu_seasonal_decor == 2)
{
    draw_sprite_ext(sp_nm_snow_3, 0, 76, 610, 1, 1, 0, -1, 1);
}
if (global.menu_seasonal_decor == 2)
{
    draw_sprite_ext(sp_nm_snow_4, 0, 1520, 505, 1, 1, 0, -1, 1);
}
draw_set_halign(fa_left);
draw_set_font(f_new_menu_small);
draw_set_colour(c_black);
draw_text(728, 95, "2.0");
draw_set_colour(c_white);
draw_text(729, 94, "2.0");
draw_set_halign(fa_right);
draw_set_font(f_new_menu_small);
draw_set_colour(c_black);
draw_text(1911, 1050, "VERSION: 3.2.29.633");
draw_set_colour(c_white);
draw_text(1912, 1048, "VERSION: 3.2.29.633");
draw_set_halign(fa_right);
draw_set_font(f_new_menu_small);
draw_set_colour(c_black);
draw_text(1911, 6, "STATS      SETTINGS      HOW-TO-PLAY      ACHIEVEMENTS      COMMUNITY      CREDITS      EXIT");
draw_set_colour(c_white);
draw_text(1912, 5, "STATS      SETTINGS      HOW-TO-PLAY      ACHIEVEMENTS      COMMUNITY      CREDITS      EXIT");
draw_set_halign(fa_left);
draw_set_colour(c_black);
draw_text(9, 6, "PIXELPUZZLES.CO.UK");
draw_text(46, 1052, "CLICK HERE TO JOIN OUR DISCORD SERVER");
draw_sprite(sp_new_menu_discord_icon, 0, 10, 1049);
draw_set_colour(c_white);
draw_text(10, 5, "PIXELPUZZLES.CO.UK");
draw_text(47, 1050, "CLICK HERE TO JOIN OUR DISCORD SERVER");
draw_sprite(sp_new_menu_discord_icon, 0, 10, 1049);
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1142, 10, 1198, 26))
{
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 1142, 27, hover_bar_max_scale, 1, 0, c_black, 0.3);
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 1141, 29, hover_bar_scale, 1, 0, c_black, 1);
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 1142, 27, hover_bar_scale, 1, 0, -1, 1);
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1227, 10, 1310, 26))
{
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 1228, 27, hover_bar_max_scale, 1, 0, c_black, 0.3);
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 1227, 29, hover_bar_scale, 1, 0, c_black, 1);
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 1228, 27, hover_bar_scale, 1, 0, -1, 1);
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1340, 10, 1457, 26))
{
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 1341, 27, hover_bar_max_scale, 1, 0, c_black, 0.3);
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 1340, 29, hover_bar_scale, 1, 0, c_black, 1);
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 1341, 27, hover_bar_scale, 1, 0, -1, 1);
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1487, 10, 1610, 26))
{
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 1488, 27, hover_bar_max_scale, 1, 0, c_black, 0.3);
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 1487, 29, hover_bar_scale, 1, 0, c_black, 1);
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 1488, 27, hover_bar_scale, 1, 0, -1, 1);
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1644, 10, 1744, 26))
{
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 1645, 27, hover_bar_max_scale, 1, 0, c_black, 0.3);
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 1644, 29, hover_bar_scale, 1, 0, c_black, 1);
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 1645, 27, hover_bar_scale, 1, 0, -1, 1);
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1774, 10, 1845, 26))
{
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 1775, 27, hover_bar_max_scale, 1, 0, c_black, 0.3);
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 1774, 29, hover_bar_scale, 1, 0, c_black, 1);
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 1775, 27, hover_bar_scale, 1, 0, -1, 1);
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1875, 10, 1912, 26))
{
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 1876, 27, hover_bar_max_scale, 1, 0, c_black, 0.3);
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 1875, 29, hover_bar_scale, 1, 0, c_black, 1);
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 1876, 27, hover_bar_scale, 1, 0, -1, 1);
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 10, 10, 166, 26))
{
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 10, 27, hover_bar_max_scale, 1, 0, c_black, 0.3);
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 9, 29, hover_bar_scale, 1, 0, c_black, 1);
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 10, 27, hover_bar_scale, 1, 0, -1, 1);
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 47, 1055, 350, 1072))
{
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 48, 1072, hover_bar_max_scale, 1, 0, c_black, 0.3);
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 47, 1073, hover_bar_scale, 1, 0, c_black, 1);
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 48, 1072, hover_bar_scale, 1, 0, -1, 1);
}
draw_set_halign(fa_right);
draw_set_font(f_tray_small_numbers);
draw_set_colour(c_black);
draw_text(1833, 81, "CATALOGUE       CHALLENGES       SPECIALS       FREE PUZZLES       PUZ-SHOP       KIOSK");
draw_set_colour(c_white);
draw_text(1834, 79, "CATALOGUE       CHALLENGES       SPECIALS       FREE PUZZLES       PUZ-SHOP       KIOSK");
draw_set_halign(fa_left);
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 892, 86, 1050, 107))
{
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 915, 109, hover_bar_max_scale, 1, 0, c_black, 0.3);
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 913, 109, hover_bar_scale, 1, 0, c_black, 1);
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 915, 107, hover_bar_scale, 1, 0, -1, 1);
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1278, 86, 1381, 107))
{
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 1278, 109, hover_bar_max_scale, 1, 0, c_black, 0.3);
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 1276, 109, hover_bar_scale, 1, 0, c_black, 1);
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 1278, 107, hover_bar_scale, 1, 0, -1, 1);
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1424, 86, 1577, 107))
{
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 1424, 109, hover_bar_max_scale, 1, 0, c_black, 0.3);
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 1422, 109, hover_bar_scale, 1, 0, c_black, 1);
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 1424, 107, hover_bar_scale, 1, 0, -1, 1);
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1619, 86, 1727, 107))
{
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 1619, 109, hover_bar_max_scale, 1, 0, c_black, 0.3);
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 1617, 109, hover_bar_scale, 1, 0, c_black, 1);
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 1619, 107, hover_bar_scale, 1, 0, -1, 1);
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1768, 86, 1835, 107))
{
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 1768, 109, hover_bar_max_scale, 1, 0, c_black, 0.3);
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 1766, 109, hover_bar_scale, 1, 0, c_black, 1);
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 1768, 107, hover_bar_scale, 1, 0, -1, 1);
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1093, 86, 1236, 107))
{
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 1093, 109, hover_bar_max_scale, 1, 0, c_black, 0.3);
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 1091, 109, hover_bar_scale, 1, 0, c_black, 1);
    draw_sprite_ext(sp_nm_nav_hover_line, 0, 1093, 107, hover_bar_scale, 1, 0, -1, 1);
}
draw_sprite_ext(sp_new_menu_news_pages, news_pages, 87, 676, 1, 1, 0, -1, news_page_alpha);
draw_sprite(sp_new_menu_news_prog, 0, 160, 965);
draw_sprite_ext(sp_new_menu_news_pip, 0, news_pip_x, 957, 1, 1, 0, -1, 1);
draw_set_halign(fa_center);
draw_set_font(f_new_menu_small);
draw_set_colour(c_black);
draw_set_colour(c_white);
draw_set_halign(fa_left);
draw_sprite(sp_new_menu_featured_text, 0, 87, 363);
if (current_menu_page == 0)
{
    if (type_of_special_page == 0)
    {
        draw_set_halign(fa_left);
        draw_set_font(f_new_menu_small);
        draw_set_colour(c_black);
        draw_text(720, 154, "WELCOME TO PPU:");
        draw_set_colour(c_white);
        draw_text(721, 152, "WELCOME TO PPU:");
        draw_set_halign(fa_center);
        draw_set_font(f_26px_title_text);
        draw_set_colour(c_black);
        draw_text(1110, 218, "PIXEL PUZZLES ULTIMATE 2.0");
        draw_set_colour(c_white);
        draw_text(1112, 216, "PIXEL PUZZLES ULTIMATE 2.0");
        draw_set_halign(fa_left);
        draw_set_font(f_tray_small_numbers);
        draw_set_colour(c_black);
        draw_text_ext(727, 279, "Welcome to the new and improved Pixel Puzzles Ultimate. A lot has been moved around and new features have been added. Message in the steam community forum if you have any questions or suggestions.", 30, 760);
        draw_text_ext(727, 399, "A list of noteworthy changes and updates can be found in the steam community hub news section (button below).", 30, 760);
        draw_text_ext(727, 560, "There are still things that need finishing for the new PPU 2.0 to be complete, so for now it's still very much a living work in progress and all your feedback is welcome to help to continue to improve upon the game and keep moving it forward.", 30, 760);
        draw_text_ext(727, 710, "Please let us know of any bugs found or any crashes or errors encountered. You can contact us via the STEAM group 'The Puzzle Club' or the PPU community forums or by joining the conversation at the Pixel Puzzles discord server.", 30, 760);
        draw_set_colour(c_white);
        draw_text_ext(729, 277, "Welcome to the new and improved Pixel Puzzles Ultimate. A lot has been moved around and new features have been added. Message in the steam community forum if you have any questions or suggestions.", 30, 760);
        draw_text_ext(729, 397, "A list of noteworthy changes and updates can be found in the steam community hub news section (button below).", 30, 760);
        draw_text_ext(729, 558, "There are still things that need finishing for the new PPU 2.0 to be complete, so for now it's still very much a living work in progress and all your feedback is welcome to help to continue to improve upon the game and keep moving it forward.", 30, 760);
        draw_text_ext(729, 708, "Please let us know of any bugs found or any crashes or errors encountered. You can contact us via the STEAM group 'The Puzzle Club' or the PPU community forums or by joining the conversation at the Pixel Puzzles discord server.", 30, 760);
        draw_sprite(sp_welcome_nm_hp2, 0, 740, 205);
        draw_sprite(sp_welcome_nm_hp, 0, 718, 821);
    }
    else if (type_of_special_page == 1)
    {
    }
    else if (type_of_special_page == 2)
    {
        draw_sprite(sp_nm_advent_page, 0, 712, 181);
        if (adv_d1 == 0)
        {
            draw_sprite(sp_nm_advent_doors, 2, 725, 268);
        }
        if (adv_d2 == 0)
        {
            draw_sprite(sp_nm_advent_doors, 1, 882, 268);
        }
        if (adv_d3 == 0)
        {
            draw_sprite(sp_nm_advent_doors, 4, 1039, 268);
        }
        if (adv_d4 == 0)
        {
            draw_sprite(sp_nm_advent_doors, 3, 1196, 268);
        }
        if (adv_d5 == 0)
        {
            draw_sprite(sp_nm_advent_doors, 5, 1353, 268);
        }
        if (adv_d6 == 0)
        {
            draw_sprite(sp_nm_advent_doors, 5, 725, 403);
        }
        if (adv_d7 == 0)
        {
            draw_sprite(sp_nm_advent_doors, 3, 882, 403);
        }
        if (adv_d8 == 0)
        {
            draw_sprite(sp_nm_advent_doors, 2, 1039, 403);
        }
        if (adv_d9 == 0)
        {
            draw_sprite(sp_nm_advent_doors, 1, 1196, 403);
        }
        if (adv_d10 == 0)
        {
            draw_sprite(sp_nm_advent_doors, 4, 1353, 403);
        }
        if (adv_d11 == 0)
        {
            draw_sprite(sp_nm_advent_doors, 2, 725, 538);
        }
        if (adv_d12 == 0)
        {
            draw_sprite(sp_nm_advent_doors, 1, 882, 538);
        }
        if (adv_d13 == 0)
        {
            draw_sprite(sp_nm_advent_doors, 4, 1039, 538);
        }
        if (adv_d14 == 0)
        {
            draw_sprite(sp_nm_advent_doors, 5, 1196, 538);
        }
        if (adv_d15 == 0)
        {
            draw_sprite(sp_nm_advent_doors, 3, 1353, 538);
        }
        if (adv_d16 == 0)
        {
            draw_sprite(sp_nm_advent_doors, 3, 725, 673);
        }
        if (adv_d17 == 0)
        {
            draw_sprite(sp_nm_advent_doors, 4, 882, 673);
        }
        if (adv_d18 == 0)
        {
            draw_sprite(sp_nm_advent_doors, 3, 1039, 673);
        }
        if (adv_d19 == 0)
        {
            draw_sprite(sp_nm_advent_doors, 2, 1196, 673);
        }
        if (adv_d20 == 0)
        {
            draw_sprite(sp_nm_advent_doors, 1, 1353, 673);
        }
        if (adv_d21 == 0)
        {
            draw_sprite(sp_nm_advent_doors, 5, 725, 808);
        }
        if (adv_d22 == 0)
        {
            draw_sprite(sp_nm_advent_doors, 1, 882, 808);
        }
        if (adv_d23 == 0)
        {
            draw_sprite(sp_nm_advent_doors, 2, 1039, 808);
        }
        if (adv_d24 == 0)
        {
            draw_sprite(sp_nm_advent_doors, 1, 1196, 808);
        }
        if (adv_d25 == 0)
        {
            draw_sprite(sp_nm_advent_doors, 0, 1353, 808);
        }
    }
}
if (current_menu_page == 14)
{
    draw_set_halign(fa_left);
    draw_set_font(f_new_menu_small);
    draw_set_colour(c_black);
    draw_text(720, 154, "FAVORITE PUZZLE PACKS:");
    draw_set_colour(c_white);
    draw_text(721, 152, "FAVORITE PUZZLE PACKS:");
    draw_set_halign(fa_center);
    draw_set_colour(c_black);
    draw_text(1110, 965, "USE [right_mouse] TO ADD UP TO 25 PACKS TO YOUR FAVORITES LIST");
    draw_set_colour(c_white);
    draw_text(1112, 963, "USE [right_mouse] TO ADD UP TO 25 PACKS TO YOUR FAVORITES LIST");
    draw_set_halign(fa_left);
}
if (current_menu_page == 3)
{
    draw_set_color(c_black);
    draw_rectangle(1093, 109, 1235, 111, false);
    draw_set_color(c_white);
    draw_rectangle(1094, 107, 1236, 109, false);
    draw_sprite_ext(sp_new_menu_chal_main_shadow, 0, 817, 216, 1, 1, 0, -1, page_content_alpha);
    draw_sprite_ext(sp_new_menu_chal_current, 0, 823, 222, 1, 1, 0, -1, page_content_alpha);
    draw_sprite_ext(sp_new_menu_chal_coin, 0, 1301, 508, 1, 1, 0, -1, page_content_alpha);
    if (challenge_is_beat == 1)
    {
        draw_sprite_ext(sp_new_menu_chal_coin, 1, 1301, 508, 1, 1, 0, -1, page_content_alpha);
    }
    draw_sprite_ext(sp_new_menu_chal_bits_left_line, 0, 1406, 246, 1, 1, 0, -1, page_content_alpha);
    draw_set_alpha(page_content_alpha);
    draw_set_font(f_main_title);
    draw_set_halign(fa_right);
    draw_set_colour(c_black);
    draw_text(812, 208, current_challenge_number);
    draw_set_colour(c_white);
    draw_text(814, 206, current_challenge_number);
    draw_set_halign(fa_left);
    draw_set_alpha(1);
    draw_set_halign(fa_left);
    draw_set_font(f_new_menu_small);
    draw_set_colour(c_black);
    draw_text(720, 154, "MONTHLY CHALLENGE:");
    draw_set_colour(c_white);
    draw_text(721, 152, "MONTHLY CHALLENGE:");
    draw_set_alpha(page_content_alpha);
    draw_set_halign(fa_left);
    draw_set_font(f_new_menu_small);
    draw_set_colour(c_black);
    draw_text(822, 593, "2024");
    draw_set_colour(c_white);
    draw_text(823, 591, "2024");
    draw_set_halign(fa_center);
    draw_set_colour(c_black);
    draw_text(1111, 683, "UNLOCK & PLAY PREVIOUS CHALLENGES");
    draw_text(811, 391, current_challenge_month_letter_1);
    draw_text(811, 414, current_challenge_month_letter_2);
    draw_text(811, 437, current_challenge_month_letter_3);
    draw_text(811, 460, current_challenge_month_letter_4);
    draw_text(811, 483, current_challenge_month_letter_5);
    draw_text(811, 506, current_challenge_month_letter_6);
    draw_text(811, 529, current_challenge_month_letter_7);
    draw_text(811, 552, current_challenge_month_letter_8);
    draw_text(811, 575, current_challenge_month_letter_9);
    draw_set_colour(c_white);
    draw_text(1112, 681, "UNLOCK & PLAY PREVIOUS CHALLENGES");
    draw_text(812, 389, current_challenge_month_letter_1);
    draw_text(812, 412, current_challenge_month_letter_2);
    draw_text(812, 435, current_challenge_month_letter_3);
    draw_text(812, 458, current_challenge_month_letter_4);
    draw_text(812, 481, current_challenge_month_letter_5);
    draw_text(812, 504, current_challenge_month_letter_6);
    draw_text(812, 527, current_challenge_month_letter_7);
    draw_text(812, 550, current_challenge_month_letter_8);
    draw_text(812, 573, current_challenge_month_letter_9);
    draw_set_halign(fa_left);
    draw_set_halign(fa_right);
    draw_set_colour(c_black);
    if (challenge_is_beat == 1)
    {
        draw_text(1396, 593, "COMPLETE");
    }
    else
    {
        draw_text(1396, 593, "INCOMPLETE");
    }
    draw_set_colour(c_white);
    if (challenge_is_beat == 1)
    {
        draw_text(1397, 591, "COMPLETE");
    }
    else
    {
        draw_text(1397, 591, "INCOMPLETE");
    }
    draw_set_halign(fa_left);
    draw_set_font(f_22px_title_text);
    draw_set_halign(fa_center);
    draw_set_colour(c_black);
    draw_text(1111, 950, string(total_challenges_complete) + "/" + string(current_challenge_number) + " COMPLETE");
    draw_text(1430, 216, string(challenge_pieces_placed));
    draw_text(1430, 245, string(challenge_pieces_total));
    draw_set_colour(c_white);
    draw_text(1112, 948, string(total_challenges_complete) + "/" + string(current_challenge_number) + " COMPLETE");
    draw_text(1431, 214, string(challenge_pieces_placed));
    draw_text(1431, 243, string(challenge_pieces_total));
    draw_set_halign(fa_left);
    draw_set_alpha(1);
}
if (current_menu_page == 1)
{
    draw_set_halign(fa_left);
    draw_set_font(f_new_menu_small);
    draw_set_colour(c_black);
    draw_text(720, 154, "CHOOSE A PUZZLE PACK TO OPEN:");
    draw_set_colour(c_white);
    draw_text(721, 152, "CHOOSE A PUZZLE PACK TO OPEN:");
    draw_set_color(c_black);
    draw_rectangle(914, 109, 1049, 111, false);
    draw_set_color(c_white);
    draw_rectangle(915, 107, 1050, 109, false);
}
if (current_menu_page == 2)
{
    draw_set_font(f_new_menu_small);
    draw_set_halign(fa_right);
    draw_set_font(f_new_menu_small);
    draw_set_colour(c_black);
    draw_text(1500, 154, open_pack_name_to_display);
    draw_set_colour(c_white);
    draw_text(1501, 152, open_pack_name_to_display);
    draw_set_halign(fa_left);
    draw_set_colour(c_black);
    draw_text(720, 154, "SELECT A JIGSAW TO SOLVE:");
    draw_set_colour(c_white);
    draw_text(721, 152, "SELECT A JIGSAW TO SOLVE:");
    draw_set_alpha(page_content_alpha);
    draw_set_font(f_22px_title_text);
    draw_set_halign(fa_center);
    draw_set_colour(c_black);
    draw_text(1111, 950, string(pack_open_total_puzzles_beat) + "/" + string(pack_open_total_puzzles) + " COMPLETE");
    draw_set_colour(c_white);
    draw_text(1112, 948, string(pack_open_total_puzzles_beat) + "/" + string(pack_open_total_puzzles) + " COMPLETE");
    draw_set_halign(fa_left);
    draw_set_alpha(1);
}
if (current_menu_page == 4)
{
    draw_set_halign(fa_left);
    draw_set_font(f_new_menu_small);
    draw_set_colour(c_black);
    draw_text(720, 154, "SPECIAL PUZZLES:");
    draw_set_colour(c_white);
    draw_text(721, 152, "SPECIAL PUZZLES:");
    draw_set_color(c_black);
    draw_rectangle(1277, 109, 1380, 111, false);
    draw_set_color(c_white);
    draw_rectangle(1278, 107, 1381, 109, false);
}
if (current_menu_page == 5)
{
    draw_set_halign(fa_left);
    draw_set_font(f_new_menu_small);
    draw_set_colour(c_black);
    draw_text(720, 154, "COMPLIMENTARY FREE JIGSAWS:");
    draw_set_colour(c_white);
    draw_text(721, 152, "COMPLIMENTARY FREE JIGSAWS:");
    draw_set_color(c_black);
    draw_rectangle(1423, 109, 1576, 111, false);
    draw_set_color(c_white);
    draw_rectangle(1424, 107, 1577, 109, false);
}
if (current_menu_page == 6)
{
    draw_set_halign(fa_left);
    draw_set_font(f_new_menu_small);
    draw_set_colour(c_black);
    draw_text(720, 154, "PUZ-SHOP:");
    draw_set_colour(c_white);
    draw_text(721, 152, "PUZ-SHOP:");
    if (puz_shop_page == 0)
    {
        draw_set_alpha(page_content_alpha);
        draw_set_colour(c_black);
        draw_text_ext_transformed(729, 214, "Use you Golden Jigsaw Puzzle Pieces to purchase a range of puzzles in the Puz-Shop.", 22, 730, 1, 1, 0);
        draw_text_ext_transformed(729, 251, "Acquire Gold Pieces by completing any jigsaw puzzles, Ultimate Pieces are gained by completing the free monthly challenges.", 22, 730, 1, 1, 0);
        draw_text_ext_transformed(729, 316, "Each puzzles price is displayed on the button. You can view the amount of Golden Pieces you currently hold in the left sidebar.", 22, 730, 1, 1, 0);
        draw_text_ext_transformed(729, 381, "Clicking on a puzzle you want to purchase will bring up the trade menu where you can choose to spend either Golden Pieces or use one of your Ultimate Pieces.", 22, 730, 1, 1, 0);
        draw_text_ext_transformed(729, 446, "Puz-Shop trades can not be undone. Please make sure you want to solve puzzles you spend your gold pieces on.", 22, 730, 1, 1, 0);
        draw_set_colour(c_white);
        draw_text_ext_transformed(730, 212, "Use you Golden Jigsaw Puzzle Pieces to purchase a range of puzzles in the Puz-Shop.", 22, 730, 1, 1, 0);
        draw_text_ext_transformed(730, 249, "Acquire Gold Pieces by completing any jigsaw puzzles, Ultimate Pieces are gained by completing the free monthly challenges.", 22, 730, 1, 1, 0);
        draw_text_ext_transformed(730, 314, "Each puzzles price is displayed on the button. You can view the amount of Golden Pieces you currently hold in the left sidebar.", 22, 730, 1, 1, 0);
        draw_text_ext_transformed(730, 379, "Clicking on a puzzle you want to purchase will bring up the trade menu where you can choose to spend either Golden Pieces or use one of your Ultimate Pieces.", 22, 730, 1, 1, 0);
        draw_text_ext_transformed(730, 444, "Puz-Shop trades can not be undone. Please make sure you want to solve puzzles you spend your gold pieces on.", 22, 730, 1, 1, 0);
        draw_set_alpha(1);
    }
    draw_set_color(c_black);
    draw_rectangle(1619, 109, 1726, 111, false);
    draw_set_color(c_white);
    draw_rectangle(1620, 107, 1727, 109, false);
    if (puz_shop_page == 0)
    {
        draw_sprite_ext(sp_new_menu_shop_cat_buton, 0, 820, 745, kiosk_but_1_scale, kiosk_but_1_scale, 0, -1, page_content_alpha);
        draw_sprite_ext(sp_new_menu_shop_cat_buton, 0, 1015, 745, kiosk_but_2_scale, kiosk_but_2_scale, 0, -1, page_content_alpha);
        draw_sprite_ext(sp_new_menu_shop_cat_buton, 0, 1210, 745, kiosk_but_3_scale, kiosk_but_3_scale, 0, -1, page_content_alpha);
        draw_sprite_ext(sp_new_menu_shop_cat_buton, 0, 1405, 745, kiosk_but_4_scale, kiosk_but_4_scale, 0, -1, page_content_alpha);
        draw_sprite_ext(sp_new_menu_shop_cat_buton_1, kiosk_but_1_ani, 820, 745, kiosk_but_1_scale, kiosk_but_1_scale, 0, -1, page_content_alpha);
        draw_sprite_ext(sp_new_menu_shop_cat_buton_2, kiosk_but_2_ani, 1015, 745, kiosk_but_2_scale, kiosk_but_2_scale, 0, c_dkgray, page_content_alpha);
        draw_sprite_ext(sp_new_menu_shop_cat_buton_3, kiosk_but_3_ani, 1210, 745, kiosk_but_3_scale, kiosk_but_3_scale, 0, -1, page_content_alpha);
        draw_sprite_ext(sp_new_menu_shop_cat_buton_4, kiosk_but_4_ani, 1405, 745, kiosk_but_4_scale, kiosk_but_4_scale, 0, -1, page_content_alpha);
        draw_set_font(f_tray_small_numbers);
        draw_set_alpha(page_content_alpha);
        draw_set_halign(fa_center);
        draw_set_colour(c_black);
        draw_text(819, 522, "REGULAR");
        draw_text(1209, 522, "FIGURAL");
        draw_text(1398, 522, "OTHER");
        draw_text(819, 917, string(kiosk_but_1_total_complete) + "/" + string(kiosk_1_total_puz));
        draw_text(1014, 917, string(kiosk_but_2_total_complete) + "/" + string(kiosk_2_total_puz));
        draw_text(1209, 917, string(kiosk_but_3_total_complete) + "/" + string(kiosk_3_total_puz));
        draw_text(1398, 917, string(kiosk_but_4_total_complete) + "/" + string(kiosk_4_total_puz));
        draw_text(819, 942, "COMPLETE");
        draw_text(1014, 942, "COMPLETE");
        draw_text(1209, 942, "COMPLETE");
        draw_text(1398, 942, "COMPLETE");
        draw_set_colour(c_white);
        draw_text(820, 522, "REGULAR");
        draw_text(1210, 522, "FIGURAL");
        draw_text(1399, 522, "OTHER");
        draw_text(820, 915, string(kiosk_but_1_total_complete) + "/" + string(kiosk_1_total_puz));
        draw_text(1015, 915, string(kiosk_but_2_total_complete) + "/" + string(kiosk_2_total_puz));
        draw_text(1210, 915, string(kiosk_but_3_total_complete) + "/" + string(kiosk_3_total_puz));
        draw_text(1399, 915, string(kiosk_but_4_total_complete) + "/" + string(kiosk_4_total_puz));
        draw_text(820, 940, "COMPLETE");
        draw_text(1015, 940, "COMPLETE");
        draw_text(1210, 940, "COMPLETE");
        draw_text(1399, 940, "COMPLETE");
        draw_set_colour(c_black);
        draw_text(1014, 522, "XXL");
        draw_set_colour(c_dkgray);
        draw_text(1015, 522, "XXL");
        draw_set_alpha(1);
    }
    else if (puz_shop_page == 1)
    {
        draw_set_alpha(page_content_alpha);
        draw_set_font(f_22px_title_text);
        draw_set_halign(fa_center);
        draw_set_colour(c_black);
        draw_text(1111, 202, "REGULAR");
        draw_text(1111, 950, string(kiosk_but_1_total_complete) + "/" + string(total_puz_number) + " COMPLETE");
        draw_set_colour(c_white);
        draw_text(1112, 200, "REGULAR");
        draw_text(1112, 948, string(kiosk_but_1_total_complete) + "/" + string(total_puz_number) + " COMPLETE");
        draw_set_halign(fa_left);
        draw_set_alpha(1);
    }
    else if (puz_shop_page == 2)
    {
        draw_set_alpha(page_content_alpha);
        draw_set_font(f_22px_title_text);
        draw_set_halign(fa_center);
        draw_set_colour(c_black);
        draw_text(1111, 202, "XXL");
        draw_text(1111, 950, string(kiosk_but_2_total_complete) + "/" + string(total_puz_number) + " COMPLETE");
        draw_set_colour(c_white);
        draw_text(1112, 200, "XXL");
        draw_text(1112, 948, string(kiosk_but_2_total_complete) + "/" + string(total_puz_number) + " COMPLETE");
        draw_set_halign(fa_left);
        draw_set_alpha(1);
    }
    else if (puz_shop_page == 3)
    {
        draw_set_alpha(page_content_alpha);
        draw_set_font(f_22px_title_text);
        draw_set_halign(fa_center);
        draw_set_colour(c_black);
        draw_text(1111, 202, "FIGURAL");
        draw_text(1111, 950, string(kiosk_but_3_total_complete) + "/" + string(total_puz_number) + " COMPLETE");
        draw_set_colour(c_white);
        draw_text(1112, 200, "FIGURAL");
        draw_text(1112, 948, string(kiosk_but_3_total_complete) + "/" + string(total_puz_number) + " COMPLETE");
        draw_set_halign(fa_left);
        draw_set_alpha(1);
    }
    else if (puz_shop_page == 4)
    {
        draw_set_alpha(page_content_alpha);
        draw_set_font(f_22px_title_text);
        draw_set_halign(fa_center);
        draw_set_colour(c_black);
        draw_text(1111, 202, "OTHER");
        draw_text(1111, 950, string(kiosk_but_4_total_complete) + "/" + string(total_puz_number) + " COMPLETE");
        draw_set_colour(c_white);
        draw_text(1112, 200, "OTHER");
        draw_text(1112, 948, string(kiosk_but_4_total_complete) + "/" + string(total_puz_number) + " COMPLETE");
        draw_set_halign(fa_left);
        draw_set_alpha(1);
    }
}
if (current_menu_page == 7)
{
    draw_set_halign(fa_left);
    draw_set_font(f_new_menu_small);
    draw_set_colour(c_black);
    draw_text(720, 154, "KIOSK:");
    draw_set_colour(c_white);
    draw_text(721, 152, "KIOSK:");
    draw_set_color(c_black);
    draw_rectangle(1768, 109, 1834, 111, false);
    draw_set_color(c_white);
    draw_rectangle(1769, 107, 1835, 109, false);
    if (kiosk_items_showing == 0)
    {
        draw_sprite(sp_nm_kiosk_trade, 0, 960, 900);
        draw_set_font(f_tray_small_numbers);
        draw_set_halign(fa_left);
        draw_set_colour(c_black);
        draw_text_ext(726, 279, "Your gold and ultimate pieces acquired from solving puzzles can be used here in the Kiosk to buy a variety of different items.", 30, 770);
        draw_text_ext(726, 370, "You can view your current Gold Piece amount in menus the left sidebar.", 30, 770);
        draw_text_ext(726, 431, "Each item's price is displayed on the items button.", 30, 770);
        draw_text_ext(726, 492, "Purchases are final and can not be undone, please make sure you want to buy the items you spend your Gold on.", 30, 770);
        draw_set_colour(c_white);
        draw_text_ext(728, 277, "Your gold and ultimate pieces acquired from solving puzzles can be used here in the Kiosk to buy a variety of different items.", 30, 770);
        draw_text_ext(728, 368, "You can view your current Gold Piece amount in menus the left sidebar.", 30, 770);
        draw_text_ext(728, 429, "Each item's price is displayed on the items button.", 30, 770);
        draw_text_ext(728, 490, "Purchases are final and can not be undone, please make sure you want to buy the items you spend your Gold on.", 30, 770);
        draw_set_font(f_22px_title_text);
        draw_set_halign(fa_center);
        draw_set_colour(c_black);
        draw_text(1110, 217, "WELCOME TO THE PIXEL PUZZLE KIOSK");
        draw_text(1110, 589, "ITEM CATEGORIES");
        draw_set_colour(c_white);
        draw_text(1112, 215, "WELCOME TO THE PIXEL PUZZLE KIOSK");
        draw_text(1112, 587, "ITEM CATEGORIES");
        draw_set_halign(fa_left);
    }
}
if (current_menu_page == 8)
{
    draw_set_halign(fa_left);
    draw_set_font(f_new_menu_small);
    draw_set_colour(c_black);
    draw_text(720, 154, "SETTINGS:");
    draw_set_colour(c_white);
    draw_text(721, 152, "SETTINGS:");
    draw_set_color(c_black);
    draw_rectangle(1227, 28, 1309, 30, false);
    draw_set_color(c_white);
    draw_rectangle(1228, 27, 1310, 29, false);
    draw_set_font(f_tray_small_numbers);
    draw_set_halign(fa_center);
    draw_set_colour(c_black);
    draw_text(1110, 212, "VIDEO:");
    draw_text(1110, 322, "AUDIO:");
    draw_text(1110, 537, "OTHER");
    draw_set_colour(c_white);
    draw_text(1112, 210, "VIDEO:");
    draw_text(1112, 320, "AUDIO:");
    draw_text(1112, 535, "OTHER:");
    draw_set_halign(fa_left);
}
if (current_menu_page == 9)
{
    draw_set_halign(fa_left);
    draw_set_font(f_new_menu_small);
    draw_set_colour(c_black);
    draw_text(720, 154, "HOW-TO-PLAY:");
    draw_set_colour(c_white);
    draw_text(721, 152, "HOW-TO-PLAY:");
    draw_set_color(c_black);
    draw_rectangle(1340, 28, 1456, 30, false);
    draw_set_color(c_white);
    draw_rectangle(1341, 27, 1457, 29, false);
    draw_sprite_ext(sp_nm_tutorial_image, 0, 732, 213, 1, 1, 0, -1, page_content_alpha);
    draw_set_alpha(page_content_alpha);
    draw_set_halign(fa_left);
    draw_set_font(f_new_menu_small);
    draw_set_colour(c_black);
    draw_text(736, 649, "Tray Tabs");
    draw_text(830, 649, "Loose Pieces");
    draw_text(955, 649, "Stored Pieces");
    draw_text(1090, 649, "Storage Tray");
    draw_text(1211, 649, "Placed Pieces");
    draw_text(1337, 649, "Options & Settings");
    draw_set_colour(c_white);
    draw_text(737, 647, "Tray Tabs");
    draw_text(831, 647, "Loose Pieces");
    draw_text(956, 647, "Stored Pieces");
    draw_text(1091, 647, "Storage Tray");
    draw_text(1212, 647, "Placed Pieces");
    draw_text(1338, 647, "Options & Settings");
    draw_set_alpha(1);
    draw_set_halign(fa_center);
    draw_set_font(f_tray_small_numbers);
    draw_set_colour(c_black);
    draw_text(795, 703, "HINT: GHOST");
    draw_text(1110, 703, "HINT: LOCATION");
    draw_text(1428, 703, "HINT: ANGLE");
    draw_text(1110, 842, "CONTROLS:");
    draw_set_colour(c_white);
    draw_text(797, 701, "HINT: GHOST");
    draw_text(1112, 701, "HINT: LOCATION");
    draw_text(1430, 701, "HINT: ANGLE");
    draw_text(1112, 840, "CONTROLS:");
    draw_set_font(f_new_menu_small);
    draw_set_halign(fa_left);
    draw_set_colour(c_black);
    draw_text(726, 737, "The ghost hint can be");
    draw_text(726, 759, "accessed in the Puzzle");
    draw_text(726, 781, "Ghost's button menu.");
    draw_text(726, 877, "Pick up piece =[MOUSE_LEFT]");
    draw_text(726, 899, "Rotate piece =[MOUSE_RIGHT]");
    draw_text(726, 921, "Highlight loose pieces =[H]");
    draw_text(726, 943, "Remove loose pieces =[R]");
    draw_text(726, 965, "Zoom =[Z]/[MOUSE_WHEEL]");
    draw_set_colour(c_white);
    draw_text(728, 735, "The ghost hint can be");
    draw_text(728, 757, "accessed in the Puzzle");
    draw_text(728, 779, "Ghost's button menu.");
    draw_text(728, 875, "Pick up piece =[MOUSE_LEFT]");
    draw_text(728, 897, "Rotate piece =[MOUSE_RIGHT]");
    draw_text(728, 919, "Highlight loose pieces =[H]");
    draw_text(728, 941, "Remove loose pieces =[R]");
    draw_text(728, 963, "Zoom =[Z]/[MOUSE_WHEEL]");
    draw_set_halign(fa_center);
    draw_set_colour(c_black);
    draw_text(1110, 737, "When holding a piece press");
    draw_text(1110, 759, "the [SPACEBAR] to have");
    draw_text(1110, 781, "it's location revealed.");
    draw_text(1110, 877, "Open control panel =[TAB]");
    draw_text(1110, 899, "Theme colour =[C]");
    draw_text(1110, 921, "Shuffle floating pieces =[S]");
    draw_text(1110, 943, "Sorting tray =[1]/[2]/[3]/[4]/[5]");
    draw_text(1110, 965, "Fullscreen =[F11]");
    draw_set_colour(c_white);
    draw_text(1112, 735, "When holding a piece press");
    draw_text(1112, 757, "the [SPACEBAR] to have");
    draw_text(1112, 779, "it's location revealed.");
    draw_text(1112, 875, "Open control panel =[TAB]");
    draw_text(1112, 897, "Theme colour =[C]");
    draw_text(1112, 919, "Shuffle floating pieces =[S]");
    draw_text(1112, 941, "Sorting tray =[1]/[2]/[3]/[4]/[5]");
    draw_text(1112, 963, "Fullscreen =[F11]");
    draw_set_halign(fa_right);
    draw_set_colour(c_black);
    draw_text(1497, 737, "Press [L_SHIFT] holding a");
    draw_text(1497, 759, "piece and the Puzzle Ghost");
    draw_text(1497, 781, "will correct it's angle.");
    draw_set_colour(c_white);
    draw_text(1497, 735, "Press [L_SHIFT] holding a");
    draw_text(1497, 757, "piece and the Puzzle Ghost");
    draw_text(1497, 779, "will correct it's angle.");
    draw_set_halign(fa_left);
}
if (current_menu_page == 10)
{
    draw_set_halign(fa_left);
    draw_set_font(f_new_menu_small);
    draw_set_colour(c_black);
    draw_text(720, 154, "CREDITS:");
    draw_set_colour(c_white);
    draw_text(721, 152, "CREDITS:");
    draw_set_color(c_black);
    draw_rectangle(1774, 28, 1844, 30, false);
    draw_set_color(c_white);
    draw_rectangle(1775, 27, 1845, 29, false);
    draw_set_font(f_tray_small_numbers);
    draw_set_alpha(page_content_alpha);
    draw_set_colour(c_black);
    draw_text(768, 827, "FOLLOW US ONLINE");
    draw_set_colour(c_white);
    draw_text(770, 825, "FOLLOW US ONLINE");
    draw_set_alpha(1);
    draw_sprite_ext(sp_intro_flag, 0, 1112, 490, 0.74, 0.74, credit_logo_angle2, -1, page_content_alpha);
    draw_sprite_ext(sp_intro_flag, 0, 1112, 490, 0.72, 0.72, credit_logo_angle, -1, page_content_alpha);
    draw_sprite_ext(sp_intro_flag, 0, 1112, 490, 0.7, 0.7, 0, -1, page_content_alpha);
    draw_sprite_ext(sp_nm_copyright, 0, 1224, 971, 1, 1, 0, c_black, page_content_alpha);
    draw_sprite_ext(sp_nm_copyright, 0, 1226, 969, 1, 1, 0, -1, page_content_alpha);
    draw_sprite_ext(sp_new_menu_credits_socialicons, 0, 726, 820, 1, 1, 0, -1, page_content_alpha);
}
if (current_menu_page == 11)
{
    draw_set_halign(fa_left);
    draw_set_font(f_new_menu_small);
    draw_set_colour(c_black);
    draw_text(720, 154, "EXIT GAME:");
    draw_set_colour(c_white);
    draw_text(721, 152, "EXIT GAME:");
    draw_set_font(f_tray_small_numbers);
    draw_set_alpha(page_content_alpha);
    draw_set_colour(c_black);
    draw_text(720, 963, "Thanks for playing!");
    draw_set_colour(c_white);
    draw_text(721, 961, "Thanks for playing!");
    draw_set_color(c_black);
    draw_rectangle(1875, 28, 1911, 30, false);
    draw_set_color(c_white);
    draw_rectangle(1876, 27, 1912, 29, false);
    draw_sprite_ext(sp_new_exit_door_ani, exit_door_animation, 1463, 936, 1, 1, 0, -1, page_content_alpha);
    draw_set_alpha(1);
}
if (current_menu_page == 15)
{
    draw_set_halign(fa_left);
    draw_set_font(f_new_menu_small);
    draw_set_colour(c_black);
    draw_text(720, 154, "GAME STATISTICS:");
    draw_set_colour(c_white);
    draw_text(721, 152, "GAME STATISTICS:");
    draw_set_color(c_black);
    draw_rectangle(1141, 28, 1199, 30, false);
    draw_set_color(c_white);
    draw_rectangle(1142, 27, 1198, 29, false);
    draw_set_halign(fa_center);
    draw_set_font(f_tray_small_numbers);
    draw_set_colour(c_black);
    draw_text(1110, 223, "Total Pieces Placed: " + string(total_pieces_placed));
    draw_text(1110, 253, "Total Puzzles Solved: " + string(total_puzzles_complete));
    draw_text(1110, 283, "Total Packs Complete: " + string(total_packs_complete));
    draw_text(1110, 343, "Challenges Complete: " + string(total_challenges_complete));
    draw_text(1110, 403, "Gold Pieces Held: " + string(total_current_gold));
    draw_text(1110, 433, "Gold Pieces Acquired: " + string(gold_earned));
    draw_text(1110, 463, "Gold Pieces Spent: " + string(gold_spent));
    draw_text(1110, 523, "Hint Token Held: " + string(total_current_hints));
    draw_text(1110, 553, "Hint Tokens Acquired: " + string(hints_earned));
    draw_text(1110, 583, "Hint Tokens Spent: " + string(hints_spent));
    draw_text(1110, 643, "Ultimate Pieces Held: " + string(total_current_ultimates));
    draw_text(1110, 673, "Ultimate Pieces Acquired: " + string(ultimates_earned));
    draw_text(1110, 703, "Ultimate Pieces Spent: " + string(ultimates_spent));
    draw_text(1110, 763, "Ghost Hints Used: " + string(ghost_hints_used));
    draw_text(1110, 793, "Angle Hints Used: " + string(angle_hints_used));
    draw_text(1110, 823, "Location Hints Used: " + string(location_hints_used));
    draw_set_colour(c_white);
    draw_text(1112, 221, "Total Pieces Placed: " + string(total_pieces_placed));
    draw_text(1112, 251, "Total Puzzles Solved: " + string(total_puzzles_complete));
    draw_text(1112, 281, "Total Packs Complete: " + string(total_packs_complete));
    draw_text(1112, 341, "Challenges Complete: " + string(total_challenges_complete));
    draw_text(1112, 401, "Gold Pieces Held: " + string(total_current_gold));
    draw_text(1112, 431, "Gold Pieces Acquired: " + string(gold_earned));
    draw_text(1112, 461, "Gold Pieces Spent: " + string(gold_spent));
    draw_text(1112, 521, "Hint Token Held: " + string(total_current_hints));
    draw_text(1112, 551, "Hint Tokens Acquired: " + string(hints_earned));
    draw_text(1112, 581, "Hint Tokens Spent: " + string(hints_spent));
    draw_text(1112, 641, "Ultimate Pieces Held: " + string(total_current_ultimates));
    draw_text(1112, 671, "Ultimate Pieces Acquired: " + string(ultimates_earned));
    draw_text(1112, 701, "Ultimate Pieces Spent: " + string(ultimates_spent));
    draw_text(1112, 761, "Ghost Hints Used: " + string(ghost_hints_used));
    draw_text(1112, 791, "Angle Hints Used: " + string(angle_hints_used));
    draw_text(1112, 821, "Location Hints Used: " + string(location_hints_used));
    draw_set_halign(fa_left);
}
if (current_menu_page == 12)
{
    draw_set_halign(fa_left);
    draw_set_font(f_new_menu_small);
    draw_set_colour(c_black);
    draw_text(720, 154, "ADVENT CALENDAR 2022:");
    draw_set_colour(c_white);
    draw_text(721, 152, "ADVENT CALENDAR 2022:");
}
if (current_menu_page == 13)
{
    draw_set_halign(fa_left);
    draw_set_font(f_new_menu_small);
    draw_set_colour(c_black);
    draw_text(720, 154, "SPECIAL EVENT:");
    draw_set_colour(c_white);
    draw_text(721, 152, "SPECIAL EVENT:");
}
