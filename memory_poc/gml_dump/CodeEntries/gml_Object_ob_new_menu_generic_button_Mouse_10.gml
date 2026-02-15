if (global.nm_block_for_intro == 0)
{
    if (button_number == 47)
    {
    }
    else if (ob_new_menu_controller.can_enter_pop_sound == 1)
    {
        ob_new_menu_controller.can_enter_pop_sound = 0;
        ob_new_menu_controller.alarm[9] = 5;
        audio_play_sound(s_hint_rotate, 1, false);
    }
}
if (global.nm_block_for_intro == 1)
{
    if (button_number == 95)
    {
        if (ob_new_menu_controller.can_enter_pop_sound == 1)
        {
            ob_new_menu_controller.can_enter_pop_sound = 0;
            ob_new_menu_controller.alarm[9] = 5;
            audio_play_sound(s_hint_rotate, 1, false);
        }
    }
}
