if (global.dev_tools_are_active == 1)
{
    room_goto(r_menu_3);
}
else
{
    var players = steam_get_stat_int("players") + 1;
    steam_upload_score("a_players", players);
    steam_set_stat_int("players", players);
    var a_players_301118 = steam_get_stat_int("a_players_301118") + 1;
    steam_upload_score("a_players_1__30_11_18", a_players_301118);
    steam_set_stat_int("a_players_301118", a_players_301118);
    var a_players_5__01_12_19 = steam_get_stat_int("a_players_5__01_12_19") + 1;
    steam_upload_score("a_players_5__01_12_19", a_players_5__01_12_19);
    steam_set_stat_int("a_players_5__01_12_19", a_players_5__01_12_19);
    var a_players_9c__1_12_20 = steam_get_stat_int("a_players_9c__1_12_20") + 1;
    steam_upload_score("a_players_9c__1_12_20", a_players_9c__1_12_20);
    steam_set_stat_int("a_players_9c__1_12_20", a_players_9c__1_12_20);
    var a_players_9g__15_12_21 = steam_get_stat_int("a_players_9g__15_12_21") + 1;
    steam_upload_score("a_players_9g__15_12_21", a_players_9g__15_12_21);
    steam_set_stat_int("a_players_9g__15_12_21", a_players_9g__15_12_21);
    var a_players_9i__19_4_22 = steam_get_stat_int("a_players_9i__19_4_22") + 1;
    steam_upload_score("a_players_9i__19_4_22", a_players_9i__19_4_22);
    steam_set_stat_int("a_players_9i__19_4_22", a_players_9i__19_4_22);
    var a_players_9l__25_9_23 = steam_get_stat_int("a_players_9l__25_9_23") + 1;
    steam_upload_score("a_players_9l__25_9_23", a_players_9l__25_9_23);
    steam_set_stat_int("a_players_9l__25_9_23", a_players_9l__25_9_23);
    var a_players_9j__1_1_24 = steam_get_stat_int("a_players_9j__1_1_24") + 1;
    steam_upload_score("a_players_9j__1_1_24", a_players_9j__1_1_24);
    steam_set_stat_int("a_players_9j__1_1_24", a_players_9j__1_1_24);
    var a_players_10__12_7_24 = steam_get_stat_int("a_players_10__12_7_24") + 1;
    steam_upload_score("a_players_10__12_7_24", a_players_10__12_7_24);
    steam_set_stat_int("a_players_10__12_7_24", a_players_10__12_7_24);
    room_goto(r_menu_3);
}
