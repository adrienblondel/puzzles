if (steam_stats_ready())
{
    var regulars_beat1 = steam_get_stat_int("total_normal_puzzles_beat");
    var uniques_beat1 = steam_get_stat_int("total_uniques_beat");
    var total_ultimate_complete1 = steam_get_stat_int("ultimate_puzzles_complete");
    stat_puzzles_complete = regulars_beat1 + uniques_beat1 + total_ultimate_complete1;
    var gold_earned1 = steam_get_stat_int("gold_bits_earned");
    var gold_spent1 = steam_get_stat_int("gold_bits_used");
    stat_gold_owned = gold_earned1 - gold_spent1;
    var hint_earned1 = steam_get_stat_int("hints_earned");
    var hint_spent1 = steam_get_stat_int("hints_used");
    stat_hints_owned = hint_earned1 - hint_spent1;
    var ultimates_earned1 = steam_get_stat_int("ultimate_pieces_earned");
    var ultimates_spent1 = steam_get_stat_int("ultimate_pieces_used");
    stat_ultimates_owned = ultimates_earned1 - ultimates_spent1;
}
