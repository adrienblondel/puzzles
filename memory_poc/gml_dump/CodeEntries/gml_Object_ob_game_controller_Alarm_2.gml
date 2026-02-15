if (!audio_is_playing(LoadedMusic))
{
    audio_play_sound(LoadedMusic, 20, true);
    alarm[2] = 1;
}
else
{
    alarm[5] = 1;
}
