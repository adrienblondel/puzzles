if (pack_is_owned == 0)
{
    if (pack_is_not_owned_display_alpha < 1)
    {
        pack_is_not_owned_display_alpha += 0.05;
    }
    if (pack_is_not_owned_backing_alpha < 0.75)
    {
        pack_is_not_owned_backing_alpha += 0.05;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 722, 633, 1045, 718))
    {
        if (mouse_check_button(mb_left))
        {
            buy_button_size = 0.985;
        }
        else
        {
            buy_button_size = 1.015;
        }
        if (mouse_check_button_pressed(mb_left))
        {
        }
    }
    else
    {
        buy_button_size = 1;
    }
}
