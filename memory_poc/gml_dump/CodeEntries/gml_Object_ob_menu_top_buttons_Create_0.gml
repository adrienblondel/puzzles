image_speed = 0;
mouse_is_over_button = 0;
current_button_frame = 0;
button_number = 0;
alarm[2] = 1;
alarm[0] = 1;
mask_index = sp_menu_top_button_base;
if (global.toolbar_buttons_can_drop_down == 1)
{
    can_drop_down = 1;
    button_can_be_pressed = 0;
    alarm[1] = 1;
}
else
{
    y = 119;
    can_drop_down = 0;
    button_can_be_pressed = 1;
}
