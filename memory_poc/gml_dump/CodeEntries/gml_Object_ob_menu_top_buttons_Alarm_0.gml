if (mouse_is_over_button == 1)
{
    if (current_button_frame < topper_sprite_number_of_frames)
    {
        current_button_frame += 1;
        alarm[0] = 5;
    }
    else
    {
        current_button_frame = 0;
        alarm[0] = 5;
    }
}
