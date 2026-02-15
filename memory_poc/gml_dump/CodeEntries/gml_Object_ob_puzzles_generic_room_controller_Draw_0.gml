if (global.theme_to_use == 0 || global.theme_to_use == 1 || global.theme_to_use == 7 || global.theme_to_use == 8 || global.theme_to_use == 9)
{
    if (global.level_type == 2)
    {
        draw_rectangle_colour(259, 0, 1661, 901, T_BoardColor, T_BoardColor, T_BoardColor, T_BoardColor, 0);
    }
    else if (global.level_type == 1)
    {
        draw_rectangle_colour(264, 0, 1655, 762, T_BoardColor, T_BoardColor, T_BoardColor, T_BoardColor, 0);
    }
    else if (global.level_type == 3)
    {
        draw_rectangle_colour(438, 0, 1481, 1041, T_BoardColor, T_BoardColor, T_BoardColor, T_BoardColor, 0);
    }
    else if (global.level_type == 4)
    {
        draw_rectangle_colour(18, 0, 1901, 711, T_BoardColor, T_BoardColor, T_BoardColor, T_BoardColor, 0);
    }
}
if (T_PuzBoard != -1)
{
    draw_sprite_ext(T_PuzBoard, 0, 0, 0, 1, 1, 0, T_BoardColor, T_BoardOpacity);
}
if (T_BoardTop != -1)
{
    draw_sprite_ext(T_BoardTop, 0, 0, 0, 1, 1, 0, T_BoardTopColor, T_BoardOpacity);
}
if (global.current_pack_open == 6000)
{
    draw_sprite_ext(global.current_puzzle_ghost_image, 0, PuzImageX, PuzImageY, 1, 1, 0, c_black, 0.5);
}
if (global.image_guide != 0)
{
    draw_sprite_ext(global.current_puzzle_ghost_image, 0, PuzImageX, PuzImageY, 1, 1, 0, c_white, global.image_guide);
}
if (puzzle_is_over == 1)
{
    draw_sprite_ext(global.current_puzzle_ghost_image, 0, PuzImageX, PuzImageY, 1, 1, 0, c_white, 1);
}
if (preview_hint != 0)
{
    draw_sprite_ext(global.current_puzzle_ghost_image, 0, PuzImageX, PuzImageY, 1, 1, 0, c_white, preview_hint);
}
