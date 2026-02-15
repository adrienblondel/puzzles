if (ref_scale == 0.25)
{
    if (point_in_rectangle(mouse_x, mouse_y, x, y, x + s_x2pos, y + s_y2pos))
    {
        global.mouse_over_ref = 1;
        if (mouse_check_button_pressed(mb_left))
        {
            if (is_being_dragged == 0)
            {
                dragged_x = mouse_x - x;
                dragged_y = mouse_y - y;
                is_being_dragged = 1;
            }
            if (has_clicked_once == 0)
            {
                has_clicked_once = 1;
                alarm[0] = 20;
            }
            else
            {
                has_clicked_once = 0;
                ref_scale = 0.75;
                audio_play_sound(s_special_button_press, 1, false);
            }
        }
        if (mouse_check_button(mb_left))
        {
        }
        else
        {
            is_being_dragged = 0;
        }
    }
    else
    {
        global.mouse_over_ref = 0;
    }
}
else if (point_in_rectangle(mouse_x, mouse_y, x, y, x + b_x2pos, y + b_y2pos))
{
    global.mouse_over_ref = 1;
    if (mouse_check_button_pressed(mb_left))
    {
        if (is_being_dragged == 0)
        {
            dragged_x = mouse_x - x;
            dragged_y = mouse_y - y;
            is_being_dragged = 1;
        }
        if (has_clicked_once == 0)
        {
            has_clicked_once = 1;
            alarm[0] = 20;
        }
        else
        {
            has_clicked_once = 0;
            ref_scale = 0.25;
            audio_play_sound(s_special_button_press, 1, false);
        }
    }
    if (mouse_check_button(mb_left))
    {
    }
    else
    {
        is_being_dragged = 0;
    }
}
else
{
    global.mouse_over_ref = 0;
}
if (mouse_check_button_released(mb_left))
{
    is_being_dragged = 0;
}
if (ref_scale == 0.25)
{
    if (point_in_rectangle(mouse_x, mouse_y, x + exit_x, y - 14, x + exit_x2, y + 14))
    {
        exit_scale = 1.03;
        if (mouse_check_button_pressed(mb_left))
        {
            audio_play_sound(s_ui_x_button, 1, false);
            instance_destroy();
        }
    }
    else
    {
        exit_scale = 1;
    }
}
else if (point_in_rectangle(mouse_x, mouse_y, x + exitbig_x, y - 14, x + exitbig_x2, y + 14))
{
    exit_scale = 1.03;
    if (mouse_check_button_pressed(mb_left))
    {
        audio_play_sound(s_ui_x_button, 1, false);
        instance_destroy();
    }
}
else
{
    exit_scale = 1;
}
