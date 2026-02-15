if (place_meeting(x, y, ob_menu_cursor))
{
    can_animate = 1;
}
else
{
    can_animate = 0;
}
if (place_meeting(x, y, ob_menu_cursor))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (global.theme_chooser_is_open == 0)
            {
                if (image_alpha == 1)
                {
                    if (ob_menu_cursor.y > 300)
                    {
                        if (unique_category_button > 0)
                        {
                            global.uniques_items_to_show = unique_category_button;
                            with (ob_uniques_category_buttons)
                            {
                                instance_destroy();
                            }
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            ob_uniques_controller.alarm[0] = 1;
                        }
                    }
                }
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        if (unique_category_button > 0)
        {
            button_size = 0.85;
        }
        else
        {
            button_size = 0.89;
        }
    }
    else
    {
        button_size = 0.89;
    }
}
else
{
    button_size = 0.87;
}
