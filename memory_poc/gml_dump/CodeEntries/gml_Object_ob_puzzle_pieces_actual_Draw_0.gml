if (CurrentState == 0 || CurrentState == 1)
{
    if (global.highlight_on == 1)
    {
        if (global.highlight_style == 0)
        {
            draw_sprite_ext(sprite_index, image_index, x - 1, y - 1, image_xscale, image_yscale, image_angle, global.highlight_color, Img_alpha);
            draw_sprite_ext(sprite_index, image_index, x + 1, y + 1, image_xscale, image_yscale, image_angle, global.highlight_color, Img_alpha);
            draw_sprite_ext(sprite_index, image_index, x + 1, y - 1, image_xscale, image_yscale, image_angle, global.highlight_color, Img_alpha);
            draw_sprite_ext(sprite_index, image_index, x - 1, y + 1, image_xscale, image_yscale, image_angle, global.highlight_color, Img_alpha);
            draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, -1, Img_alpha);
        }
        else
        {
            draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, global.highlight_color, Img_alpha);
        }
    }
    else
    {
        draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, -1, Img_alpha);
    }
}
else if (CurrentState == 8)
{
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, -1, Img_alpha);
}
else
{
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, -1, Img_alpha);
}
