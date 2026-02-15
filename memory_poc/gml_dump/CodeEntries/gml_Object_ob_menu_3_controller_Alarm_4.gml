if (EventTYPE == 1)
{
    if (!audio_is_playing(s_advent))
    {
        audio_play_sound(s_advent, 20, true);
    }
    adventMUTEvol = global.music_vol;
    global.music_vol = 0;
    ob_game_controller.alarm[5] = 1;
    instance_create(950, 1110, ob_event_pp);
    var doorID = instance_create(286, 156, ob_advent_doors);
    doorID.doorNUM = 7;
    doorID.image_index = 4;
    doorID.mask_index = sp_advent_door;
    doorID.door_open = steam_get_stat_int("ac_7");
    doorID.gold = 30;
    doorID = instance_create(508, 156, ob_advent_doors);
    doorID.doorNUM = 14;
    doorID.image_index = 0;
    doorID.mask_index = sp_advent_door;
    doorID.door_open = steam_get_stat_int("ac_14");
    doorID.jigsaw = 4;
    doorID = instance_create(730, 156, ob_advent_doors);
    doorID.doorNUM = 24;
    doorID.image_index = 12;
    doorID.mask_index = sp_advent_door;
    doorID.door_open = steam_get_stat_int("ac_24");
    doorID.diamonds = 10;
    doorID = instance_create(952, 156, ob_advent_doors);
    doorID.doorNUM = 18;
    doorID.image_index = 4;
    doorID.mask_index = sp_advent_door;
    doorID.door_open = steam_get_stat_int("ac_18");
    doorID.gold = 50;
    doorID = instance_create(1174, 156, ob_advent_doors);
    doorID.doorNUM = 13;
    doorID.image_index = 8;
    doorID.mask_index = sp_advent_door;
    doorID.door_open = steam_get_stat_int("ac_13");
    doorID.hints = 50;
    doorID = instance_create(1396, 156, ob_advent_doors);
    doorID.doorNUM = 6;
    doorID.image_index = 16;
    doorID.mask_index = sp_advent_door;
    doorID.door_open = steam_get_stat_int("ac_6");
    doorID.jigsaw = 2;
    doorID = instance_create(286, 330, ob_advent_doors);
    doorID.doorNUM = 12;
    doorID.image_index = 20;
    doorID.mask_index = sp_advent_door;
    doorID.door_open = steam_get_stat_int("ac_12");
    doorID.diamonds = 2;
    doorID = instance_create(508, 330, ob_advent_doors);
    doorID.doorNUM = 5;
    doorID.image_index = 12;
    doorID.mask_index = sp_advent_door;
    doorID.door_open = steam_get_stat_int("ac_5");
    doorID.diamonds = 1;
    doorID = instance_create(730, 330, ob_advent_doors);
    doorID.doorNUM = 15;
    doorID.image_index = 16;
    doorID.mask_index = sp_advent_door;
    doorID.door_open = steam_get_stat_int("ac_15");
    doorID.gold = 50;
    doorID = instance_create(952, 330, ob_advent_doors);
    doorID.doorNUM = 11;
    doorID.image_index = 4;
    doorID.mask_index = sp_advent_door;
    doorID.door_open = steam_get_stat_int("ac_11");
    doorID.hints = 50;
    doorID = instance_create(1174, 330, ob_advent_doors);
    doorID.doorNUM = 4;
    doorID.image_index = 12;
    doorID.mask_index = sp_advent_door;
    doorID.door_open = steam_get_stat_int("ac_4");
    doorID.hints = 40;
    doorID = instance_create(1396, 330, ob_advent_doors);
    doorID.doorNUM = 23;
    doorID.image_index = 0;
    doorID.mask_index = sp_advent_door;
    doorID.door_open = steam_get_stat_int("ac_23");
    doorID.hints = 100;
    doorID = instance_create(286, 504, ob_advent_doors);
    doorID.doorNUM = 19;
    doorID.image_index = 4;
    doorID.mask_index = sp_advent_door;
    doorID.door_open = steam_get_stat_int("ac_19");
    doorID.hints = 75;
    doorID = instance_create(508, 504, ob_advent_doors);
    doorID.doorNUM = 2;
    doorID.image_index = 16;
    doorID.mask_index = sp_advent_door;
    doorID.door_open = steam_get_stat_int("ac_2");
    doorID.gold = 20;
    doorID = instance_create(730, 504, ob_advent_doors);
    doorID.doorNUM = 10;
    doorID.image_index = 0;
    doorID.mask_index = sp_advent_door;
    doorID.door_open = steam_get_stat_int("ac_10");
    doorID.gold = 35;
    doorID = instance_create(952, 504, ob_advent_doors);
    doorID.doorNUM = 8;
    doorID.image_index = 20;
    doorID.mask_index = sp_advent_door;
    doorID.door_open = steam_get_stat_int("ac_8");
    doorID.hints = 50;
    doorID = instance_create(286, 678, ob_advent_doors);
    doorID.doorNUM = 21;
    doorID.image_index = 0;
    doorID.mask_index = sp_advent_door;
    doorID.door_open = steam_get_stat_int("ac_21");
    doorID.jigsaw = 6;
    doorID = instance_create(508, 678, ob_advent_doors);
    doorID.doorNUM = 1;
    doorID.image_index = 0;
    doorID.mask_index = sp_advent_door;
    doorID.door_open = steam_get_stat_int("ac_1");
    doorID.jigsaw = 1;
    doorID = instance_create(730, 678, ob_advent_doors);
    doorID.doorNUM = 20;
    doorID.image_index = 4;
    doorID.mask_index = sp_advent_door;
    doorID.door_open = steam_get_stat_int("ac_20");
    doorID.diamonds = 5;
    doorID = instance_create(952, 678, ob_advent_doors);
    doorID.doorNUM = 16;
    doorID.image_index = 12;
    doorID.mask_index = sp_advent_door;
    doorID.door_open = steam_get_stat_int("ac_16");
    doorID.jigsaw = 5;
    doorID = instance_create(286, 852, ob_advent_doors);
    doorID.doorNUM = 22;
    doorID.image_index = 20;
    doorID.mask_index = sp_advent_door;
    doorID.door_open = steam_get_stat_int("ac_22");
    doorID.gold = 75;
    doorID = instance_create(508, 852, ob_advent_doors);
    doorID.doorNUM = 17;
    doorID.image_index = 12;
    doorID.mask_index = sp_advent_door;
    doorID.door_open = steam_get_stat_int("ac_17");
    doorID.diamonds = 3;
    doorID = instance_create(1174, 852, ob_advent_doors);
    doorID.doorNUM = 3;
    doorID.image_index = 8;
    doorID.mask_index = sp_advent_door;
    doorID.door_open = steam_get_stat_int("ac_3");
    doorID.gold = 25;
    doorID = instance_create(1396, 852, ob_advent_doors);
    doorID.doorNUM = 9;
    doorID.image_index = 20;
    doorID.mask_index = sp_advent_door;
    doorID.door_open = steam_get_stat_int("ac_9");
    doorID.jigsaw = 3;
    doorID = instance_create(1174, 494, ob_advent_doors);
    doorID.doorNUM = 25;
    doorID.image_index = 0;
    doorID.mask_index = sp_advent_door25;
    doorID.door_open = steam_get_stat_int("ac_25");
    doorID.jigsaw = 7;
}
if (EventTYPE == 2)
{
    if (!audio_is_playing(s_event_newyears))
    {
        audio_play_sound(s_event_newyears, 20, true);
    }
    adventMUTEvol = global.music_vol;
    global.music_vol = 0;
    ob_game_controller.alarm[5] = 1;
    ppd_id = instance_create(960, 990, ob_event_pp);
    ppd_id.ppTYPE = 1;
    ppd_id.sprite_index = sp_pp_celebrate_2_loop;
}
if (EventTYPE == 4)
{
    if (!audio_is_playing(s_lunarnewyears))
    {
        audio_play_sound(s_lunarnewyears, 20, true);
    }
    adventMUTEvol = global.music_vol;
    global.music_vol = 0;
    ob_game_controller.alarm[5] = 1;
    ppd_id = instance_create(960, 990, ob_event_pp);
    ppd_id.ppTYPE = 1;
    ppd_id.sprite_index = sp_pp_celebrate_2_loop;
}
