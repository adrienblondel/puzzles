if (is_being_dragged == 1)
{
    x = mouse_x - dragged_x;
    y = mouse_y - dragged_y;
}
if (global.level_type == 1)
{
    if (ref_scale == 0.25)
    {
        refx_x = x + 348;
    }
    else
    {
        refx_x = x + 1043;
    }
}
else if (global.level_type == 2)
{
    if (ref_scale == 0.25)
    {
        refx_x = x + 351;
    }
    else
    {
        refx_x = x + 1051;
    }
}
else if (global.level_type == 3)
{
    if (ref_scale == 0.25)
    {
        refx_x = x + 261;
    }
    else
    {
        refx_x = x + 781;
    }
}
else if (global.level_type == 4)
{
    if (ref_scale == 0.25)
    {
        refx_x = x + 471;
    }
    else
    {
        refx_x = x + 1411;
    }
}
