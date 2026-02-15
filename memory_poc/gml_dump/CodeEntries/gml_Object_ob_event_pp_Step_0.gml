if (ob_menu_3_controller.CurrentPage != 10)
{
    instance_destroy();
}
if (ppTYPE == 0)
{
    if (sprite_index == sp_pp_celebrate_loop)
    {
        if (y > 1050)
        {
            y -= 5;
        }
    }
    else if (y < 1110)
    {
        y += 2;
    }
}
