if (token_has_been_clicked == 0)
{
    draw_sprite_ext(sp_level_hint_pickup_glow, 0, x, y, hint_glow_scale, hint_glow_scale, hint_glow_rotation, c_white, 1);
    draw_sprite_ext(sp_level_hint_pickup_glow, 1, x, y, hint_glow_scale, hint_glow_scale, hint_glow_rotation_2, c_white, 1);
    draw_sprite_ext(sp_level_hint_pickup_glow, 2, x, y, hint_glow_scale, hint_glow_scale, hint_glow_rotation_3, c_white, 1);
    draw_sprite_ext(sp_level_hint_pickup, 0, x, y, hint_token_scale, hint_token_scale, 0, c_white, 1);
}
else
{
    draw_sprite_ext(sp_level_hint_pickup_glow, 0, x, y, hint_token_scale, hint_token_scale, hint_glow_rotation, c_white, hint_glow_alpha);
    draw_sprite_ext(sp_level_hint_pickup, 0, x, y, hint_token_scale, hint_token_scale, hint_toekn_rotation, c_white, 1);
}
