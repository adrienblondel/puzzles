alarm[0] = 60 + random(200);
if (ob_puzzles_generic_room_controller.ArcadeAliens == 1)
{
    instance_create(x, y, ob_theme_arcade_ship_bullet);
    audio_play_sound(s_theme_arcade_ship_shoot, 1, false);
}
