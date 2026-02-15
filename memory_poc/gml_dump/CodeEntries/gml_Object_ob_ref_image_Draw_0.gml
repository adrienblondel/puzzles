draw_sprite_ext(global.current_puzzle_ghost_image, 0, x - 25, y + 30, ref_scale, ref_scale, 0, c_black, 0.3);
draw_sprite_ext(global.current_puzzle_ghost_image, 0, x, y, ref_scale, ref_scale, 0, -1, 1);
if (ref_scale == 0.25)
{
    draw_sprite_ext(ref_frame_1, 0, x - ref_frame_1x, y - ref_frame_1y, 1, 1, 0, -1, ref_alpha);
    draw_sprite_ext(ref_frame_2, 0, x + ref_frame_2x, y - ref_frame_2y, 1, 1, 0, -1, ref_alpha);
    draw_sprite_ext(ref_frame_3, 0, x + ref_frame_3x, y - ref_frame_3y, 1, 1, 0, -1, ref_alpha);
    draw_sprite_ext(ref_frame_4, 0, x + ref_frame_4x, y + ref_frame_4y, 1, 1, 0, -1, ref_alpha);
}
else
{
    draw_sprite_ext(ref_framebig_1, 0, x - ref_framebig_1x, y - ref_framebig_1y, 1, 1, 0, -1, ref_alpha);
    draw_sprite_ext(ref_framebig_2, 0, x + ref_framebig_2x, y - ref_framebig_2y, 1, 1, 0, -1, ref_alpha);
    draw_sprite_ext(ref_framebig_3, 0, x + ref_framebig_3x, y - ref_framebig_3y, 1, 1, 0, -1, ref_alpha);
    draw_sprite_ext(ref_framebig_4, 0, x + ref_framebig_4x, y + ref_framebig_4y, 1, 1, 0, -1, ref_alpha);
}
draw_sprite_ext(sp_nl_ref_x, 0, refx_x, y - 4, exit_scale, exit_scale, 0, -1, 1);
