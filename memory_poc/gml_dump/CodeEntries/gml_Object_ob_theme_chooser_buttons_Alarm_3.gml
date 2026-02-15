alarm[3] = 100 + random(300);
if (current_button_sprite_showing_1_or_2 == 0)
{
    button_sprite_to_show_2 = choose(0, 1, 2, 3);
    if (button_sprite_to_show_2 == button_sprite_to_show_1)
    {
        button_sprite_to_show_2 = choose(0, 1, 2, 3);
    }
    current_button_sprite_showing_1_or_2 = 1;
}
else
{
    button_sprite_to_show_1 = choose(0, 1, 2, 3);
    if (button_sprite_to_show_1 == button_sprite_to_show_2)
    {
        button_sprite_to_show_1 = choose(0, 1, 2, 3);
    }
    current_button_sprite_showing_1_or_2 = 0;
}
