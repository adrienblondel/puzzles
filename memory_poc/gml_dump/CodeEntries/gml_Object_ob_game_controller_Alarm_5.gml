audio_master_gain(global.master_vol);
audio_group_set_gain(0, global.effect_vol, 0);
audio_sound_gain(LoadedMusic, global.music_vol, 0);
audio_group_set_gain(1, global.ambiance_vol, 0);
