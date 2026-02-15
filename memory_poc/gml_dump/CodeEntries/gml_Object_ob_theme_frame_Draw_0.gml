if (T_Frame != -1)
{
    draw_sprite_ext(T_Frame, 0, 0, 0, 1, 1, 0, ob_puzzles_generic_room_controller.T_FrameColor, 1);
}
if (global.theme_to_use == 2)
{
    if (GlowLines != -1)
    {
        draw_sprite_ext(GlowLines, 0, 0, 0, 1, 1, 0, ob_puzzles_generic_room_controller.T_Frame2Color, 1);
    }
}
