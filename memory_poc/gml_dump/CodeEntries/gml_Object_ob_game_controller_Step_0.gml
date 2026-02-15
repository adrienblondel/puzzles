if (room == r_intro)
{
    if (intro_part == 0 || intro_part == 1)
    {
        if (keyboard_check_released(vk_space) || mouse_check_button_released(mb_left))
        {
            logo_alpha = 0;
            intro_part = 2;
            alarm[0] = 1;
        }
    }
    else if (intro_part == 2)
    {
        if (keyboard_check_pressed(vk_space) || mouse_check_button_released(mb_left))
        {
            sentence_complete = 1;
            hello_alpha = 0;
            alarm[1] = 1;
        }
    }
    else if (intro_part == 4)
    {
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 718, 1018, 1202, 1058))
        {
            if (mouse_check_button_pressed(mb_left))
            {
                SaveConversionInfo = 2;
                alarm[3] = 1;
            }
        }
    }
    else if (intro_part == 5)
    {
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 718, 1018, 1202, 1058))
        {
            if (mouse_check_button_released(mb_left))
            {
                SaveConversionInfo = 2;
                alarm[3] = 1;
            }
        }
    }
}
if (steam_is_screenshot_requested())
{
    var screenshot_file = "Pixel_Puzzles_Ultimate_" + string(screenshot_num) + ".png";
    screen_save(screenshot_file);
    steam_send_screenshot(screenshot_file, window_get_width(), window_get_height());
    screenshot_num += 1;
}
