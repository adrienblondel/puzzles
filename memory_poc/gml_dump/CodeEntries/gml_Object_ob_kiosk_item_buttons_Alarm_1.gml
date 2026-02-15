if (global.kiosk_items_to_show == 1)
{
    if (kiosk_item_number == 1)
    {
        item_is_owned = 1;
        pack_sprite_index = sp_kiosk_cursor_icons;
        colour_set_to_use = choose(1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 12, 14, 15, 16, 17, 19);
    }
    else if (kiosk_item_number > 0)
    {
        pack_sprite_index = sp_kiosk_cursor_icons;
        colour_set_to_use = choose(1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 12, 14, 15, 16, 17, 19);
        var achievemnet_to_check = "kioskcursor" + string(kiosk_item_number);
        if (steam_get_achievement(achievemnet_to_check))
        {
            item_is_owned = 1;
        }
    }
    if (kiosk_item_number == 1)
    {
        title_to_display = "DEFAULT";
    }
    else if (kiosk_item_number == 2)
    {
        title_to_display = "IRON ARROW";
        item_price = 5;
    }
    else if (kiosk_item_number == 3)
    {
        title_to_display = "ARROW";
        item_price = 5;
    }
    else if (kiosk_item_number == 4)
    {
        title_to_display = "T.C.O.T.C";
        item_price = 5;
    }
    else if (kiosk_item_number == 5)
    {
        title_to_display = "LIME";
        item_price = 5;
    }
    else if (kiosk_item_number == 6)
    {
        title_to_display = "GAUNTLET";
        item_price = 5;
    }
    else if (kiosk_item_number == 7)
    {
        title_to_display = "BLUE GEM";
        item_price = 5;
    }
    else if (kiosk_item_number == 8)
    {
        title_to_display = "GREEN GEM";
        item_price = 5;
    }
    else if (kiosk_item_number == 9)
    {
        title_to_display = "GREEN";
        item_price = 5;
    }
    else if (kiosk_item_number == 10)
    {
        title_to_display = "GARNET";
        item_price = 5;
    }
    else if (kiosk_item_number == 11)
    {
        title_to_display = "INDIGO";
        item_price = 5;
    }
    else if (kiosk_item_number == 12)
    {
        title_to_display = "HOLLOW";
        item_price = 5;
    }
    else if (kiosk_item_number == 13)
    {
        title_to_display = "WHITE PIP";
        item_price = 5;
    }
    else if (kiosk_item_number == 14)
    {
        title_to_display = "PURPLE PIP";
        item_price = 5;
    }
    else if (kiosk_item_number == 15)
    {
        title_to_display = "BLUE DART";
        item_price = 5;
    }
    else if (kiosk_item_number == 16)
    {
        title_to_display = "RED DART";
        item_price = 5;
    }
    else if (kiosk_item_number == 17)
    {
        title_to_display = "ONIGIRI";
        item_price = 5;
    }
    else if (kiosk_item_number == 18)
    {
        title_to_display = "ROBO METAL";
        item_price = 5;
    }
    else if (kiosk_item_number == 19)
    {
        title_to_display = "ROBO RED";
        item_price = 5;
    }
    else if (kiosk_item_number == 20)
    {
        title_to_display = "SKELLY WHITE";
        item_price = 5;
    }
    else if (kiosk_item_number == 21)
    {
        title_to_display = "SKELLY GREEN";
        item_price = 5;
    }
    else if (kiosk_item_number == 22)
    {
        title_to_display = "TREE";
        item_price = 5;
    }
    else if (kiosk_item_number == 23)
    {
        title_to_display = "CANDY CANE";
        item_price = 5;
    }
    else if (kiosk_item_number == 24)
    {
        title_to_display = "GINGERBREAD";
        item_price = 5;
    }
    else
    {
        colour_set_to_use = choose(24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34);
    }
}
else if (global.kiosk_items_to_show == 2)
{
    if (kiosk_item_number == 1000)
    {
        item_is_owned = 1;
        pack_sprite_index = sp_kiosk_music_icons;
        colour_set_to_use = choose(1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 12, 14, 15, 16, 17, 19);
    }
    else if (kiosk_item_number > 0)
    {
        pack_sprite_index = sp_kiosk_music_icons;
        colour_set_to_use = choose(1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 12, 14, 15, 16, 17, 19);
        var achievemnet_to_check = "kioskmusic" + string(kiosk_item_number);
        if (steam_get_achievement(achievemnet_to_check))
        {
            item_is_owned = 1;
        }
    }
    if (kiosk_item_number == 1000)
    {
        title_to_display = "DEFAULT";
    }
    else if (kiosk_item_number == 1)
    {
        title_to_display = "BLUES";
        item_price = 10;
    }
    else if (kiosk_item_number == 2)
    {
        title_to_display = "ZEN";
        item_price = 10;
    }
    else if (kiosk_item_number == 3)
    {
        title_to_display = "RETRO";
        item_price = 10;
    }
    else if (kiosk_item_number == 4)
    {
        title_to_display = "JAZZ";
        item_price = 10;
    }
    else if (kiosk_item_number == 5)
    {
        title_to_display = "ROCK";
        item_price = 10;
    }
    else if (kiosk_item_number == 6)
    {
        title_to_display = "RELAXED";
        item_price = 10;
    }
    else if (kiosk_item_number == 7)
    {
        title_to_display = "FESTIVE";
        item_price = 10;
    }
    else if (kiosk_item_number == 8)
    {
        title_to_display = "ABYSS";
        item_price = 10;
    }
    else if (kiosk_item_number == 9)
    {
        title_to_display = "CRISIS";
        item_price = 10;
    }
    else
    {
        colour_set_to_use = choose(24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34);
    }
}
else if (global.kiosk_items_to_show == 3)
{
    if (kiosk_item_number > 0)
    {
        pack_sprite_index = sp_kiosk_experimentals_icons;
        colour_set_to_use = choose(1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 12, 14, 15, 16, 17, 19);
        var achievemnet_to_check = "kioskexperimentals" + string(kiosk_item_number);
        if (steam_get_achievement(achievemnet_to_check))
        {
            item_is_owned = 1;
        }
    }
    if (kiosk_item_number == 1)
    {
        title_to_display = "RAINBOWFIELD";
        item_price = 250;
        piece_count = 1410;
    }
    else if (kiosk_item_number == 2)
    {
        title_to_display = "BLOCKS";
        item_price = 250;
        piece_count = 840;
    }
    else if (kiosk_item_number == 3)
    {
        title_to_display = "WOOD WHEEL";
        item_price = 250;
        piece_count = 36;
    }
    else if (kiosk_item_number == 4)
    {
        title_to_display = "0";
        item_price = 0;
        piece_count = 0;
    }
    else if (kiosk_item_number == 5)
    {
        title_to_display = "ORANGE";
        item_price = 250;
        piece_count = 425;
    }
    else if (kiosk_item_number == 6)
    {
        title_to_display = "CITYSCAPE";
        item_price = 250;
        piece_count = 1410;
    }
    else if (kiosk_item_number == 7)
    {
        title_to_display = "TERRACOTTA";
        item_price = 250;
        piece_count = 1410;
    }
    else if (kiosk_item_number == 9)
    {
        title_to_display = "INDUSTRIAL";
        item_price = 250;
        piece_count = 841;
    }
    else if (kiosk_item_number == 10)
    {
        title_to_display = "MONKS";
        item_price = 250;
        piece_count = 1410;
    }
    else if (kiosk_item_number == 11)
    {
        title_to_display = "FRACTAL";
        item_price = 250;
        piece_count = 840;
    }
    else if (kiosk_item_number == 12)
    {
        title_to_display = "EGGS";
        item_price = 250;
        piece_count = 840;
    }
    else if (kiosk_item_number == 13)
    {
        title_to_display = "CIRCUIT";
        item_price = 250;
        piece_count = 1000;
    }
    else if (kiosk_item_number == 14)
    {
        title_to_display = "NORMANDY";
        item_price = 250;
        piece_count = 400;
    }
    else
    {
        colour_set_to_use = choose(24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34);
    }
}
else if (global.kiosk_items_to_show == 4)
{
    if (kiosk_item_number > 0)
    {
        pack_sprite_index = sp_kiosk_theme_icons;
        colour_set_to_use = choose(1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 12, 14, 15, 16, 17, 19);
        var achievemnet_to_check = "kiosktheme" + string(kiosk_item_number);
        if (steam_get_achievement(achievemnet_to_check))
        {
            item_is_owned = 1;
        }
    }
    if (kiosk_item_number == 1)
    {
        title_to_display = "RUST";
        item_price = 30;
    }
    else if (kiosk_item_number == 2)
    {
        title_to_display = "LINES";
        item_price = 30;
    }
    else if (kiosk_item_number == 3)
    {
        title_to_display = "TABLE";
        item_price = 30;
    }
    else if (kiosk_item_number == 4)
    {
        title_to_display = "RUINS";
        item_price = 30;
    }
    else
    {
        colour_set_to_use = choose(24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34);
    }
}
else if (global.kiosk_items_to_show == 5)
{
    if (kiosk_item_number > 0)
    {
        pack_sprite_index = sp_kiosk_figural_icons;
        colour_set_to_use = choose(1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 12, 14, 15, 16, 17, 19);
        var achievemnet_to_check = "kioskfigurals" + string(kiosk_item_number);
        if (steam_get_achievement(achievemnet_to_check))
        {
            item_is_owned = 1;
        }
    }
    if (kiosk_item_number == 1)
    {
        title_to_display = "ANIME";
        item_price = 15;
        piece_count = 21;
    }
    else if (kiosk_item_number == 2)
    {
        title_to_display = "EAGLE";
        item_price = 15;
        piece_count = 29;
    }
    else if (kiosk_item_number == 3)
    {
        title_to_display = "DEMON";
        item_price = 15;
        piece_count = 29;
    }
    else if (kiosk_item_number == 4)
    {
        title_to_display = "RAD ROACH";
        item_price = 15;
        piece_count = 46;
    }
    else if (kiosk_item_number == 5)
    {
        title_to_display = "SHUTTLE";
        item_price = 15;
        piece_count = 37;
    }
    else if (kiosk_item_number == 6)
    {
        title_to_display = "SHELL";
        item_price = 15;
        piece_count = 48;
    }
    else if (kiosk_item_number == 7)
    {
        title_to_display = "SPORTS BIKE";
        item_price = 15;
        piece_count = 60;
    }
    else if (kiosk_item_number == 8)
    {
        title_to_display = "SWEETS";
        item_price = 15;
        piece_count = 59;
    }
    else if (kiosk_item_number == 9)
    {
        title_to_display = "GUN";
        item_price = 15;
        piece_count = 30;
    }
    else if (kiosk_item_number == 10)
    {
        title_to_display = "BUDDHA";
        item_price = 15;
        piece_count = 54;
    }
    else if (kiosk_item_number == 11)
    {
        title_to_display = "SNAIL";
        item_price = 15;
        piece_count = 71;
    }
    else if (kiosk_item_number == 12)
    {
        title_to_display = "BOAT";
        item_price = 15;
        piece_count = 47;
    }
    else if (kiosk_item_number == 13)
    {
        title_to_display = "SANTA";
        item_price = 15;
        piece_count = 33;
    }
    else if (kiosk_item_number == 14)
    {
        title_to_display = "CRACKER";
        item_price = 15;
        piece_count = 38;
    }
    else if (kiosk_item_number == 15)
    {
        title_to_display = "PRESENT";
        item_price = 15;
        piece_count = 28;
    }
    else if (kiosk_item_number == 16)
    {
        title_to_display = "SNOW GLOBE";
        item_price = 15;
        piece_count = 32;
    }
    else if (kiosk_item_number == 17)
    {
        title_to_display = "SNOWMAN";
        item_price = 15;
        piece_count = 36;
    }
    else if (kiosk_item_number == 18)
    {
        title_to_display = "STOCKING";
        item_price = 15;
        piece_count = 57;
    }
    else
    {
        colour_set_to_use = choose(24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34);
    }
}
else if (global.kiosk_items_to_show == 6)
{
    if (kiosk_item_number == 1)
    {
        item_is_owned = 1;
        pack_sprite_index = sp_kiosk_toolbar_icons;
        colour_set_to_use = choose(1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 12, 14, 15, 16, 17, 19);
    }
    else if (kiosk_item_number > 0)
    {
        pack_sprite_index = sp_kiosk_toolbar_icons;
        colour_set_to_use = choose(1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 12, 14, 15, 16, 17, 19);
        var achievemnet_to_check = "kiosktoolbar" + string(kiosk_item_number);
        if (steam_get_achievement(achievemnet_to_check))
        {
            item_is_owned = 1;
        }
    }
    if (kiosk_item_number == 1)
    {
        title_to_display = "DEFAULT";
    }
    else if (kiosk_item_number == 2)
    {
        title_to_display = "ICE";
        item_price = 5;
    }
    else if (kiosk_item_number == 3)
    {
        title_to_display = "SAND";
        item_price = 5;
    }
    else if (kiosk_item_number == 4)
    {
        title_to_display = "PURPLE";
        item_price = 5;
    }
    else if (kiosk_item_number == 5)
    {
        title_to_display = "TOXIC";
        item_price = 5;
    }
    else if (kiosk_item_number == 6)
    {
        title_to_display = "WOOD";
        item_price = 5;
    }
    else if (kiosk_item_number == 7)
    {
        title_to_display = "STONE";
        item_price = 5;
    }
    else if (kiosk_item_number == 8)
    {
        title_to_display = "GOO";
        item_price = 5;
    }
    else if (kiosk_item_number == 9)
    {
        title_to_display = "ROSES";
        item_price = 5;
    }
    else if (kiosk_item_number == 10)
    {
        title_to_display = "DIAMOND";
        item_price = 5;
    }
    else if (kiosk_item_number == 11)
    {
        title_to_display = "ALIEN";
        item_price = 5;
    }
    else if (kiosk_item_number == 12)
    {
        title_to_display = "LAVA";
        item_price = 5;
    }
    else if (kiosk_item_number == 13)
    {
        title_to_display = "COLOURS";
        item_price = 5;
    }
    else if (kiosk_item_number == 14)
    {
        title_to_display = "TILES";
        item_price = 5;
    }
    else if (kiosk_item_number == 15)
    {
        title_to_display = "FLAKES";
        item_price = 5;
    }
    else if (kiosk_item_number == 16)
    {
        title_to_display = "TREES";
        item_price = 5;
    }
    else if (kiosk_item_number == 17)
    {
        title_to_display = "WINTER";
        item_price = 5;
    }
    else
    {
        colour_set_to_use = choose(24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34);
    }
}
else if (global.kiosk_items_to_show == 7)
{
    if (kiosk_item_number == 1)
    {
        item_is_owned = 1;
        pack_sprite_index = sp_kiosk_avatar_icons;
        colour_set_to_use = choose(1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 12, 14, 15, 16, 17, 19);
    }
    else if (kiosk_item_number > 0)
    {
        pack_sprite_index = sp_kiosk_avatar_icons;
        colour_set_to_use = choose(1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 12, 14, 15, 16, 17, 19);
        var achievemnet_to_check = "kioskavatar" + string(kiosk_item_number);
        if (steam_get_achievement(achievemnet_to_check))
        {
            item_is_owned = 1;
        }
    }
    if (kiosk_item_number == 1)
    {
        title_to_display = "DEFAULT";
        item_price = 5;
    }
    else if (kiosk_item_number == 2)
    {
        title_to_display = "X-MAS";
        item_price = 5;
    }
    else if (kiosk_item_number == 3)
    {
        title_to_display = "CAMO";
        item_price = 5;
    }
    else if (kiosk_item_number == 4)
    {
        title_to_display = "DESERT";
        item_price = 5;
    }
    else if (kiosk_item_number == 5)
    {
        title_to_display = "ACU";
        item_price = 5;
    }
    else if (kiosk_item_number == 6)
    {
        title_to_display = "WALL";
        item_price = 5;
    }
    else if (kiosk_item_number == 7)
    {
        title_to_display = "TILES";
        item_price = 5;
    }
    else if (kiosk_item_number == 8)
    {
        title_to_display = "JUPITER";
        item_price = 5;
    }
    else if (kiosk_item_number == 9)
    {
        title_to_display = "LAVA";
        item_price = 5;
    }
    else if (kiosk_item_number == 10)
    {
        title_to_display = "FROSTY";
        item_price = 5;
    }
    else if (kiosk_item_number == 11)
    {
        title_to_display = "GOO";
        item_price = 5;
    }
    else if (kiosk_item_number == 12)
    {
        title_to_display = "STREAKS";
        item_price = 5;
    }
    else if (kiosk_item_number == 13)
    {
        title_to_display = "CELLS";
        item_price = 5;
    }
    else if (kiosk_item_number == 14)
    {
        title_to_display = "BUBBLEGUM";
        item_price = 5;
    }
    else if (kiosk_item_number == 15)
    {
        title_to_display = "ICE";
        item_price = 5;
    }
    else if (kiosk_item_number == 16)
    {
        title_to_display = "FIELDS";
        item_price = 5;
    }
    else if (kiosk_item_number == 17)
    {
        title_to_display = "TRACKS";
        item_price = 5;
    }
    else if (kiosk_item_number == 18)
    {
        title_to_display = "COUCH";
        item_price = 5;
    }
    else if (kiosk_item_number == 19)
    {
        title_to_display = "ALIEN";
        item_price = 5;
    }
    else if (kiosk_item_number == 20)
    {
        title_to_display = "LEAVES";
        item_price = 5;
    }
    else if (kiosk_item_number == 21)
    {
        title_to_display = "ROSES";
        item_price = 5;
    }
    else if (kiosk_item_number == 22)
    {
        title_to_display = "BRICKS";
        item_price = 5;
    }
    else if (kiosk_item_number == 23)
    {
        title_to_display = "BLOCKS";
        item_price = 5;
    }
    else if (kiosk_item_number == 24)
    {
        title_to_display = "BUMPS";
        item_price = 5;
    }
    else if (kiosk_item_number == 25)
    {
        title_to_display = "RUST";
        item_price = 5;
    }
    else if (kiosk_item_number == 26)
    {
        title_to_display = "WATER";
        item_price = 5;
    }
    else if (kiosk_item_number == 27)
    {
        title_to_display = "WOOD";
        item_price = 5;
    }
    else if (kiosk_item_number == 28)
    {
        title_to_display = "METAL";
        item_price = 5;
    }
    else if (kiosk_item_number == 29)
    {
        title_to_display = "SMUDGE";
        item_price = 5;
    }
    else if (kiosk_item_number == 30)
    {
        title_to_display = "CRYSTAL";
        item_price = 5;
    }
    else if (kiosk_item_number == 31)
    {
        title_to_display = "SHARDS";
        item_price = 5;
    }
    else if (kiosk_item_number == 32)
    {
        title_to_display = "AMBER";
        item_price = 5;
    }
    else if (kiosk_item_number == 33)
    {
        title_to_display = "FENCE";
        item_price = 5;
    }
    else if (kiosk_item_number == 34)
    {
        title_to_display = "MAGMA";
        item_price = 5;
    }
    else if (kiosk_item_number == 35)
    {
        title_to_display = "ROOF";
        item_price = 5;
    }
    else if (kiosk_item_number == 36)
    {
        title_to_display = "NEBULA";
        item_price = 5;
    }
    else if (kiosk_item_number == 37)
    {
        title_to_display = "HONEY";
        item_price = 5;
    }
    else if (kiosk_item_number == 38)
    {
        title_to_display = "SPACE";
        item_price = 5;
    }
    else if (kiosk_item_number == 39)
    {
        title_to_display = "POLY";
        item_price = 5;
    }
    else if (kiosk_item_number == 40)
    {
        title_to_display = "FABRIC";
        item_price = 5;
    }
    else
    {
        colour_set_to_use = choose(24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34);
    }
}
else if (global.kiosk_items_to_show == 8)
{
    if (kiosk_item_number > 0)
    {
        pack_sprite_index = sp_kiosk_challenges_icons;
        colour_set_to_use = choose(1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 12, 14, 15, 16, 17, 19);
        var achievemnet_to_check = "kioskchallenges" + string(kiosk_item_number);
        if (steam_get_achievement(achievemnet_to_check))
        {
            item_is_owned = 1;
        }
    }
    if (kiosk_item_number == 1)
    {
        title_to_display = "CHALLENGE 1";
        item_price = 50;
        piece_count = 676;
    }
    else if (kiosk_item_number == 2)
    {
        title_to_display = "CHALLENGE 2";
        item_price = 50;
        piece_count = 810;
    }
    else if (kiosk_item_number == 3)
    {
        title_to_display = "CHALLENGE 3";
        item_price = 50;
        piece_count = 840;
    }
    else if (kiosk_item_number == 4)
    {
        title_to_display = "CHALLENGE 4";
        item_price = 50;
        piece_count = 841;
    }
    else if (kiosk_item_number == 5)
    {
        title_to_display = "CHALLENGE 5";
        item_price = 50;
        piece_count = 841;
    }
    else if (kiosk_item_number == 6)
    {
        title_to_display = "CHALLENGE 6";
        item_price = 50;
        piece_count = 640;
    }
    else if (kiosk_item_number == 7)
    {
        title_to_display = "CHALLENGE 7";
        item_price = 50;
        piece_count = 810;
    }
    else if (kiosk_item_number == 8)
    {
        title_to_display = "CHALLENGE 8";
        item_price = 50;
        piece_count = 640;
    }
    else if (kiosk_item_number == 9)
    {
        title_to_display = "CHALLENGE 9";
        item_price = 50;
        piece_count = 840;
    }
    else if (kiosk_item_number == 10)
    {
        title_to_display = "CHALLENGE 10";
        item_price = 50;
        piece_count = 840;
    }
    else if (kiosk_item_number == 11)
    {
        title_to_display = "CHALLENGE 11";
        item_price = 50;
        piece_count = 400;
    }
    else if (kiosk_item_number == 12)
    {
        title_to_display = "CHALLENGE 12";
        item_price = 50;
        piece_count = 425;
    }
    else if (kiosk_item_number == 13)
    {
        title_to_display = "CHALLENGE 13";
        item_price = 50;
        piece_count = 425;
    }
    else if (kiosk_item_number == 14)
    {
        title_to_display = "CHALLENGE 14";
        item_price = 50;
        piece_count = 640;
    }
    else if (kiosk_item_number == 15)
    {
        title_to_display = "CHALLENGE 15";
        item_price = 50;
        piece_count = 640;
    }
    else if (kiosk_item_number == 16)
    {
        title_to_display = "CHALLENGE 16";
        item_price = 50;
        piece_count = 676;
    }
    else if (kiosk_item_number == 17)
    {
        title_to_display = "CHALLENGE 17";
        item_price = 50;
        piece_count = 640;
    }
    else if (kiosk_item_number == 18)
    {
        title_to_display = "CHALLENGE 18";
        item_price = 50;
        piece_count = 640;
    }
    else if (kiosk_item_number == 19)
    {
        title_to_display = "CHALLENGE 19";
        item_price = 50;
        piece_count = 1410;
    }
    else if (kiosk_item_number == 20)
    {
        title_to_display = "CHALLENGE 20";
        item_price = 50;
        piece_count = 640;
    }
    else if (kiosk_item_number == 21)
    {
        title_to_display = "CHALLENGE 21";
        item_price = 50;
        piece_count = 640;
    }
    else if (kiosk_item_number == 22)
    {
        title_to_display = "CHALLENGE 22";
        item_price = 50;
        piece_count = 640;
    }
    else if (kiosk_item_number == 23)
    {
        title_to_display = "CHALLENGE 23";
        item_price = 50;
        piece_count = 640;
    }
    else if (kiosk_item_number == 24)
    {
        title_to_display = "CHALLENGE 24";
        item_price = 50;
        piece_count = 640;
    }
    else if (kiosk_item_number == 25)
    {
        title_to_display = "CHALLENGE 25";
        item_price = 50;
        piece_count = 640;
    }
    else if (kiosk_item_number == 26)
    {
        title_to_display = "CHALLENGE 26";
        item_price = 50;
        piece_count = 425;
    }
    else if (kiosk_item_number == 27)
    {
        title_to_display = "CHALLENGE 27";
        item_price = 50;
        piece_count = 640;
    }
    else if (kiosk_item_number == 28)
    {
        title_to_display = "CHALLENGE 28";
        item_price = 50;
        piece_count = 676;
    }
    else if (kiosk_item_number == 29)
    {
        title_to_display = "CHALLENGE 29";
        item_price = 50;
        piece_count = 425;
    }
    else if (kiosk_item_number == 30)
    {
        title_to_display = "CHALLENGE 30";
        item_price = 50;
        piece_count = 455;
    }
    else if (kiosk_item_number == 31)
    {
        title_to_display = "CHALLENGE 31";
        item_price = 50;
        piece_count = 425;
    }
    else if (kiosk_item_number == 32)
    {
        title_to_display = "CHALLENGE 32";
        item_price = 50;
        piece_count = 425;
    }
    else if (kiosk_item_number == 33)
    {
        title_to_display = "CHALLENGE 33";
        item_price = 50;
        piece_count = 425;
    }
    else if (kiosk_item_number == 34)
    {
        title_to_display = "CHALLENGE 34";
        item_price = 50;
        piece_count = 425;
    }
    else if (kiosk_item_number == 35)
    {
        title_to_display = "CHALLENGE 35";
        item_price = 50;
        piece_count = 330;
    }
    else if (kiosk_item_number == 36)
    {
        title_to_display = "CHALLENGE 36";
        item_price = 50;
        piece_count = 425;
    }
    else if (kiosk_item_number == 37)
    {
        title_to_display = "CHALLENGE 37";
        item_price = 50;
        piece_count = 330;
    }
    else if (kiosk_item_number == 38)
    {
        title_to_display = "CHALLENGE 38";
        item_price = 50;
        piece_count = 324;
    }
    else if (kiosk_item_number == 39)
    {
        title_to_display = "CHALLENGE 39";
        item_price = 50;
        piece_count = 330;
    }
    else if (kiosk_item_number == 40)
    {
        title_to_display = "CHALLENGE 40";
        item_price = 50;
        piece_count = 330;
    }
    else if (kiosk_item_number == 41)
    {
        title_to_display = "CHALLENGE 41";
        item_price = 50;
        piece_count = 425;
    }
    else if (kiosk_item_number == 42)
    {
        title_to_display = "CHALLENGE 42";
        item_price = 50;
        piece_count = 425;
    }
    else if (kiosk_item_number == 43)
    {
        title_to_display = "CHALLENGE 43";
        item_price = 50;
        piece_count = 425;
    }
    else if (kiosk_item_number == 44)
    {
        title_to_display = "CHALLENGE 44";
        item_price = 50;
        piece_count = 425;
    }
    else if (kiosk_item_number == 45)
    {
        title_to_display = "CHALLENGE 45";
        item_price = 50;
        piece_count = 330;
    }
    else if (kiosk_item_number == 46)
    {
        title_to_display = "CHALLENGE 46";
        item_price = 50;
        piece_count = 425;
    }
    else if (kiosk_item_number == 47)
    {
        title_to_display = "CHALLENGE 47";
        item_price = 50;
        piece_count = 840;
    }
    else if (kiosk_item_number == 48)
    {
        title_to_display = "CHALLENGE 48";
        item_price = 50;
        piece_count = 425;
    }
    else if (kiosk_item_number == 49)
    {
        title_to_display = "CHALLENGE 49";
        item_price = 50;
        piece_count = 425;
    }
    else if (kiosk_item_number == 50)
    {
        title_to_display = "CHALLENGE 50";
        item_price = 50;
        piece_count = 640;
    }
    else if (kiosk_item_number == 51)
    {
        title_to_display = "CHALLENGE 51";
        item_price = 50;
        piece_count = 425;
    }
    else if (kiosk_item_number == 52)
    {
        title_to_display = "CHALLENGE 52";
        item_price = 50;
        piece_count = 640;
    }
    else if (kiosk_item_number == 53)
    {
        title_to_display = "CHALLENGE 53";
        item_price = 50;
        piece_count = 425;
    }
    else if (kiosk_item_number == 54)
    {
        title_to_display = "CHALLENGE 54";
        item_price = 50;
        piece_count = 425;
    }
    else if (kiosk_item_number == 55)
    {
        title_to_display = "CHALLENGE 55";
        item_price = 50;
        piece_count = 640;
    }
    else if (kiosk_item_number == 56)
    {
        title_to_display = "CHALLENGE 56";
        item_price = 50;
        piece_count = 640;
    }
    else if (kiosk_item_number == 57)
    {
        title_to_display = "CHALLENGE 57";
        item_price = 50;
        piece_count = 425;
    }
    else if (kiosk_item_number == 58)
    {
        title_to_display = "CHALLENGE 58";
        item_price = 50;
        piece_count = 330;
    }
    else if (kiosk_item_number == 59)
    {
        title_to_display = "CHALLENGE 59";
        item_price = 50;
        piece_count = 324;
    }
    else if (kiosk_item_number == 60)
    {
        title_to_display = "CHALLENGE 60";
        item_price = 50;
        piece_count = 330;
    }
    else if (kiosk_item_number == 61)
    {
        title_to_display = "CHALLENGE 61";
        item_price = 50;
        piece_count = 425;
    }
    else if (kiosk_item_number == 62)
    {
        title_to_display = "CHALLENGE 62";
        item_price = 50;
        piece_count = 425;
    }
    else if (kiosk_item_number == 63)
    {
        title_to_display = "CHALLENGE 63";
        item_price = 50;
        piece_count = 330;
    }
    else if (kiosk_item_number == 64)
    {
        title_to_display = "CHALLENGE 64";
        item_price = 50;
        piece_count = 330;
    }
    else
    {
        colour_set_to_use = choose(24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34);
    }
}
else if (global.kiosk_items_to_show == 9)
{
    if (kiosk_item_number > 0)
    {
        pack_sprite_index = sp_kiosk_puzzles_icons;
        colour_set_to_use = choose(1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 12, 14, 15, 16, 17, 19);
        var achievemnet_to_check = "kioskpuzzles" + string(kiosk_item_number);
        if (steam_get_achievement(achievemnet_to_check))
        {
            item_is_owned = 1;
        }
    }
    if (kiosk_item_number == 1)
    {
        title_to_display = "PUMPKIN COMP";
        item_price = 75;
        piece_count = 455;
    }
    else if (kiosk_item_number == 2)
    {
        title_to_display = "BUTTERFLY";
        item_price = 50;
        piece_count = 250;
    }
    else if (kiosk_item_number == 3)
    {
        title_to_display = "BERRY DRINK";
        item_price = 75;
        piece_count = 425;
    }
    else if (kiosk_item_number == 4)
    {
        title_to_display = "LAKE";
        item_price = 30;
        piece_count = 168;
    }
    else if (kiosk_item_number == 5)
    {
        title_to_display = "LIGHTHOUSE";
        item_price = 30;
        piece_count = 169;
    }
    else if (kiosk_item_number == 6)
    {
        title_to_display = "PINEAPPLE";
        item_price = 50;
        piece_count = 330;
    }
    else if (kiosk_item_number == 7)
    {
        title_to_display = "MUSHROOM";
        item_price = 75;
        piece_count = 425;
    }
    else if (kiosk_item_number == 8)
    {
        title_to_display = "POPPY FIELD";
        item_price = 100;
        piece_count = 640;
    }
    else if (kiosk_item_number == 9)
    {
        title_to_display = "WIGWAM";
        item_price = 30;
        piece_count = 140;
    }
    else if (kiosk_item_number == 10)
    {
        title_to_display = "PYRAMIDS";
        item_price = 75;
        piece_count = 455;
    }
    else if (kiosk_item_number == 11)
    {
        title_to_display = "OPEN ROAD";
        item_price = 30;
        piece_count = 126;
    }
    else if (kiosk_item_number == 12)
    {
        title_to_display = "TANK";
        item_price = 30;
        piece_count = 168;
    }
    else if (kiosk_item_number == 13)
    {
        title_to_display = "TIGER";
        item_price = 100;
        piece_count = 810;
    }
    else if (kiosk_item_number == 14)
    {
        title_to_display = "PRESENTS";
        item_price = 30;
        piece_count = 140;
    }
    else if (kiosk_item_number == 15)
    {
        title_to_display = "DECORATIONS";
        item_price = 40;
        piece_count = 216;
    }
    else if (kiosk_item_number == 16)
    {
        title_to_display = "X-MAS OWL";
        item_price = 30;
        piece_count = 168;
    }
    else if (kiosk_item_number == 17)
    {
        title_to_display = "SLEIGH";
        item_price = 25;
        piece_count = 100;
    }
    else if (kiosk_item_number == 18)
    {
        title_to_display = "GIANT HOUND";
        item_price = 75;
        piece_count = 455;
    }
    else if (kiosk_item_number == 19)
    {
        title_to_display = "BACCHANALE";
        item_price = 100;
        piece_count = 676;
    }
    else if (kiosk_item_number == 20)
    {
        title_to_display = "OWL";
        item_price = 50;
        piece_count = 324;
    }
    else if (kiosk_item_number == 21)
    {
        title_to_display = "MOUNTAIN";
        item_price = 50;
        piece_count = 250;
    }
    else if (kiosk_item_number == 22)
    {
        title_to_display = "JIGSAW";
        item_price = 50;
        piece_count = 330;
    }
    else if (kiosk_item_number == 23)
    {
        title_to_display = "GIFTS";
        item_price = 50;
        piece_count = 169;
    }
    else if (kiosk_item_number == 24)
    {
        title_to_display = "DINNER TIME";
        item_price = 50;
        piece_count = 330;
    }
    else if (kiosk_item_number == 25)
    {
        title_to_display = "OWL IN A HAT";
        item_price = 50;
        piece_count = 96;
    }
    else if (kiosk_item_number == 26)
    {
        title_to_display = "WRAPPING";
        item_price = 50;
        piece_count = 216;
    }
    else if (kiosk_item_number == 27)
    {
        title_to_display = "OLD SANTA";
        item_price = 50;
        piece_count = 140;
    }
    else if (kiosk_item_number == 28)
    {
        title_to_display = "DESSERT";
        item_price = 50;
        piece_count = 140;
    }
    else if (kiosk_item_number == 29)
    {
        title_to_display = "SAVANNA";
        item_price = 50;
        piece_count = 126;
    }
    else if (kiosk_item_number == 30)
    {
        title_to_display = "CANDY HANDS";
        item_price = 50;
        piece_count = 140;
    }
    else if (kiosk_item_number == 31)
    {
        title_to_display = "FORT";
        item_price = 50;
        piece_count = 96;
    }
    else if (kiosk_item_number == 32)
    {
        title_to_display = "DA VINCI";
        item_price = 50;
        piece_count = 96;
    }
    else if (kiosk_item_number == 33)
    {
        title_to_display = "BIRD";
        item_price = 50;
        piece_count = 140;
    }
    else if (kiosk_item_number == 34)
    {
        title_to_display = "FACE";
        item_price = 50;
        piece_count = 216;
    }
    else if (kiosk_item_number == 35)
    {
        title_to_display = "CASTLE";
        item_price = 75;
        piece_count = 330;
    }
    else if (kiosk_item_number == 36)
    {
        title_to_display = "SALAD";
        item_price = 50;
        piece_count = 140;
    }
    else if (kiosk_item_number == 37)
    {
        title_to_display = "HORSE";
        item_price = 50;
        piece_count = 216;
    }
    else if (kiosk_item_number == 38)
    {
        title_to_display = "ADVENT";
        item_price = 50;
        piece_count = 140;
    }
    else if (kiosk_item_number == 39)
    {
        title_to_display = "DEERS";
        item_price = 50;
        piece_count = 96;
    }
    else if (kiosk_item_number == 40)
    {
        title_to_display = "MANGER";
        item_price = 50;
        piece_count = 96;
    }
    else if (kiosk_item_number == 41)
    {
        title_to_display = "MERRY XMAS";
        item_price = 50;
        piece_count = 216;
    }
    else if (kiosk_item_number == 42)
    {
        title_to_display = "MINCE PIES";
        item_price = 50;
        piece_count = 140;
    }
    else if (kiosk_item_number == 43)
    {
        title_to_display = "MINI SANTAS";
        item_price = 50;
        piece_count = 96;
    }
    else if (kiosk_item_number == 44)
    {
        title_to_display = "MUG";
        item_price = 50;
        piece_count = 140;
    }
    else if (kiosk_item_number == 45)
    {
        title_to_display = "NAP TIME";
        item_price = 50;
        piece_count = 216;
    }
    else if (kiosk_item_number == 46)
    {
        title_to_display = "PETS";
        item_price = 50;
        piece_count = 216;
    }
    else if (kiosk_item_number == 47)
    {
        title_to_display = "TAKE A DRINK";
        item_price = 50;
        piece_count = 140;
    }
    else if (kiosk_item_number == 48)
    {
        title_to_display = "TEDDY";
        item_price = 50;
        piece_count = 216;
    }
    else if (kiosk_item_number == 49)
    {
        title_to_display = "UNWRAPPING";
        item_price = 50;
        piece_count = 169;
    }
    else if (kiosk_item_number == 50)
    {
        title_to_display = "YUM YUM";
        item_price = 50;
        piece_count = 140;
    }
    else
    {
        colour_set_to_use = choose(24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34);
    }
}
if (item_is_owned == 0)
{
    colour_set_to_use = choose(24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34);
}
if (colour_set_to_use == 1)
{
    backing_image_blend = choose(make_colour_rgb(227, 58, 40), make_colour_rgb(244, 71, 57), make_colour_rgb(205, 29, 10), make_colour_rgb(207, 3, 1), make_colour_rgb(228, 3, 0), make_colour_rgb(220, 45, 43), make_colour_rgb(218, 64, 62), make_colour_rgb(238, 57, 57));
}
else if (colour_set_to_use == 2)
{
    backing_image_blend = choose(make_colour_rgb(189, 35, 42), make_colour_rgb(179, 38, 38), make_colour_rgb(175, 16, 16), make_colour_rgb(170, 21, 0), make_colour_rgb(143, 20, 3), make_colour_rgb(257, 32, 23), make_colour_rgb(2163, 63, 55), make_colour_rgb(158, 60, 65));
}
else if (colour_set_to_use == 3)
{
    backing_image_blend = choose(make_colour_rgb(241, 142, 142), make_colour_rgb(254, 175, 175), make_colour_rgb(227, 150, 150), make_colour_rgb(238, 144, 137), make_colour_rgb(251, 137, 128), make_colour_rgb(251, 187, 189), make_colour_rgb(240, 200, 200), make_colour_rgb(252, 134, 143));
}
else if (colour_set_to_use == 4)
{
    backing_image_blend = choose(make_colour_rgb(232, 88, 32), make_colour_rgb(255, 96, 34), make_colour_rgb(248, 77, 10), make_colour_rgb(224, 59, 21), make_colour_rgb(222, 81, 48), make_colour_rgb(229, 111, 47), make_colour_rgb(236, 103, 15), make_colour_rgb(208, 87, 6));
}
else if (colour_set_to_use == 5)
{
    backing_image_blend = choose(make_colour_rgb(225, 134, 94), make_colour_rgb(225, 152, 119), make_colour_rgb(225, 159, 117), make_colour_rgb(225, 156, 97), make_colour_rgb(236, 174, 123), make_colour_rgb(225, 165, 92), make_colour_rgb(220, 166, 137), make_colour_rgb(225, 155, 81));
}
else if (colour_set_to_use == 6)
{
    backing_image_blend = choose(make_colour_rgb(255, 184, 92), make_colour_rgb(243, 167, 70), make_colour_rgb(239, 179, 84), make_colour_rgb(252, 201, 121), make_colour_rgb(230, 192, 119), make_colour_rgb(250, 196, 93), make_colour_rgb(248, 197, 73), make_colour_rgb(251, 206, 119));
}
else if (colour_set_to_use == 8)
{
    backing_image_blend = choose(make_colour_rgb(186, 198, 50), make_colour_rgb(198, 215, 12), make_colour_rgb(164, 177, 19), make_colour_rgb(153, 178, 36), make_colour_rgb(168, 185, 89), make_colour_rgb(190, 206, 117), make_colour_rgb(191, 221, 88), make_colour_rgb(182, 218, 56));
}
else if (colour_set_to_use == 9)
{
    backing_image_blend = choose(make_colour_rgb(95, 189, 73), make_colour_rgb(147, 207, 133), make_colour_rgb(97, 220, 69), make_colour_rgb(72, 189, 20), make_colour_rgb(23, 199, 0), make_colour_rgb(41, 220, 17), make_colour_rgb(73, 232, 69), make_colour_rgb(123, 220, 127));
}
else if (colour_set_to_use == 10)
{
    backing_image_blend = choose(make_colour_rgb(92, 154, 86), make_colour_rgb(64, 144, 55), make_colour_rgb(38, 145, 27), make_colour_rgb(70, 120, 53), make_colour_rgb(88, 116, 67), make_colour_rgb(17, 122, 27), make_colour_rgb(51, 120, 64), make_colour_rgb(68, 107, 76));
}
else if (colour_set_to_use == 11)
{
    backing_image_blend = choose(make_colour_rgb(100, 200, 143), make_colour_rgb(64, 214, 127), make_colour_rgb(105, 179, 137), make_colour_rgb(110, 222, 168), make_colour_rgb(83, 230, 159), make_colour_rgb(129, 176, 153), make_colour_rgb(87, 165, 136), make_colour_rgb(56, 175, 132));
}
else if (colour_set_to_use == 12)
{
    backing_image_blend = choose(make_colour_rgb(88, 214, 213), make_colour_rgb(51, 236, 234), make_colour_rgb(56, 255, 253), make_colour_rgb(136, 232, 231), make_colour_rgb(101, 197, 211), make_colour_rgb(163, 221, 230), make_colour_rgb(49, 207, 221), make_colour_rgb(56, 173, 183));
}
else if (colour_set_to_use == 14)
{
    backing_image_blend = choose(make_colour_rgb(50, 100, 211), make_colour_rgb(81, 129, 227), make_colour_rgb(56, 89, 185), make_colour_rgb(30, 75, 204), make_colour_rgb(0, 52, 199), make_colour_rgb(51, 86, 219), make_colour_rgb(32, 100, 255), make_colour_rgb(70, 127, 255));
}
else if (colour_set_to_use == 15)
{
    backing_image_blend = choose(make_colour_rgb(44, 67, 184), make_colour_rgb(25, 49, 170), make_colour_rgb(0, 24, 144), make_colour_rgb(31, 47, 127), make_colour_rgb(59, 66, 128), make_colour_rgb(40, 50, 148), make_colour_rgb(42, 49, 119), make_colour_rgb(15, 25, 119));
}
else if (colour_set_to_use == 16)
{
    backing_image_blend = choose(make_colour_rgb(32, 21, 140), make_colour_rgb(32, 18, 166), make_colour_rgb(54, 38, 208), make_colour_rgb(80, 66, 223), make_colour_rgb(92, 80, 199), make_colour_rgb(77, 68, 160), make_colour_rgb(49, 41, 131), make_colour_rgb(138, 129, 223));
}
else if (colour_set_to_use == 17)
{
    backing_image_blend = choose(make_colour_rgb(130, 102, 200), make_colour_rgb(143, 103, 244), make_colour_rgb(106, 58, 230), make_colour_rgb(76, 13, 237), make_colour_rgb(74, 22, 204), make_colour_rgb(83, 50, 167), make_colour_rgb(73, 50, 133), make_colour_rgb(52, 17, 143));
}
else if (colour_set_to_use == 19)
{
    backing_image_blend = choose(make_colour_rgb(198, 30, 204), make_colour_rgb(228, 25, 235), make_colour_rgb(249, 72, 255), make_colour_rgb(229, 89, 214), make_colour_rgb(204, 70, 196), make_colour_rgb(182, 6, 172), make_colour_rgb(255, 107, 208), make_colour_rgb(207, 95, 193));
}
else if (colour_set_to_use == 24)
{
    backing_image_blend = choose(make_colour_rgb(122, 99, 99), make_colour_rgb(133, 114, 114), make_colour_rgb(106, 91, 91), make_colour_rgb(113, 92, 89), make_colour_rgb(122, 89, 84), make_colour_rgb(105, 82, 86), make_colour_rgb(128, 108, 110), make_colour_rgb(99, 75, 76));
}
else if (colour_set_to_use == 25)
{
    backing_image_blend = choose(make_colour_rgb(123, 112, 99), make_colour_rgb(133, 124, 114), make_colour_rgb(107, 100, 91), make_colour_rgb(114, 106, 89), make_colour_rgb(123, 110, 84), make_colour_rgb(106, 91, 82), make_colour_rgb(128, 116, 108), make_colour_rgb(100, 89, 75));
}
else if (colour_set_to_use == 26)
{
    backing_image_blend = choose(make_colour_rgb(123, 120, 99), make_colour_rgb(133, 130, 114), make_colour_rgb(107, 105, 91), make_colour_rgb(114, 114, 89), make_colour_rgb(123, 123, 84), make_colour_rgb(106, 99, 82), make_colour_rgb(128, 123, 108), make_colour_rgb(100, 97, 75));
}
else if (colour_set_to_use == 27)
{
    backing_image_blend = choose(make_colour_rgb(118, 123, 99), make_colour_rgb(129, 133, 114), make_colour_rgb(103, 107, 91), make_colour_rgb(105, 114, 89), make_colour_rgb(109, 123, 84), make_colour_rgb(104, 106, 82), make_colour_rgb(126, 128, 108), make_colour_rgb(94, 100, 75));
}
else if (colour_set_to_use == 28)
{
    backing_image_blend = choose(make_colour_rgb(103, 123, 99), make_colour_rgb(117, 133, 114), make_colour_rgb(93, 107, 91), make_colour_rgb(89, 114, 89), make_colour_rgb(84, 123, 84), make_colour_rgb(89, 106, 82), make_colour_rgb(113, 128, 108), make_colour_rgb(78, 100, 75));
}
else if (colour_set_to_use == 29)
{
    backing_image_blend = choose(make_colour_rgb(99, 123, 112), make_colour_rgb(114, 133, 125), make_colour_rgb(91, 107, 100), make_colour_rgb(89, 114, 107), make_colour_rgb(84, 123, 112), make_colour_rgb(82, 106, 92), make_colour_rgb(108, 128, 117), make_colour_rgb(75, 100, 90));
}
else if (colour_set_to_use == 30)
{
    backing_image_blend = choose(make_colour_rgb(99, 123, 119), make_colour_rgb(114, 133, 130), make_colour_rgb(91, 107, 104), make_colour_rgb(89, 114, 114), make_colour_rgb(84, 123, 123), make_colour_rgb(82, 106, 99), make_colour_rgb(108, 128, 123), make_colour_rgb(75, 100, 97));
}
else if (colour_set_to_use == 31)
{
    backing_image_blend = choose(make_colour_rgb(99, 115, 123), make_colour_rgb(114, 126, 133), make_colour_rgb(91, 102, 107), make_colour_rgb(89, 101, 114), make_colour_rgb(84, 103, 123), make_colour_rgb(82, 101, 106), make_colour_rgb(108, 123, 128), make_colour_rgb(75, 90, 100));
}
else if (colour_set_to_use == 32)
{
    backing_image_blend = choose(make_colour_rgb(99, 105, 123), make_colour_rgb(114, 118, 133), make_colour_rgb(91, 95, 107), make_colour_rgb(89, 91, 114), make_colour_rgb(84, 87, 123), make_colour_rgb(82, 91, 106), make_colour_rgb(108, 115, 128), make_colour_rgb(75, 80, 100));
}
else if (colour_set_to_use == 33)
{
    backing_image_blend = choose(make_colour_rgb(115, 101, 121), make_colour_rgb(127, 115, 131), make_colour_rgb(102, 92, 106), make_colour_rgb(109, 91, 112), make_colour_rgb(116, 87, 120), make_colour_rgb(95, 84, 104), make_colour_rgb(119, 109, 126), make_colour_rgb(93, 77, 98));
}
else if (colour_set_to_use == 34)
{
    backing_image_blend = choose(make_colour_rgb(85, 83, 82), make_colour_rgb(94, 93, 92), make_colour_rgb(75, 74, 73), make_colour_rgb(78, 76, 75), make_colour_rgb(80, 77, 75), make_colour_rgb(72, 69, 69), make_colour_rgb(90, 87, 87), make_colour_rgb(67, 65, 64));
}
