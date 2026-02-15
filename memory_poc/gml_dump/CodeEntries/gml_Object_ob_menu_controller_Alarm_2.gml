if (steam_stats_ready())
{
    var gold_earned = steam_get_stat_int("gold_bits_earned");
    var gold_spent = steam_get_stat_int("gold_bits_used");
    var hints_earned = steam_get_stat_int("hints_earned");
    var hints_spent = steam_get_stat_int("hints_used");
    var ultimate_earned = steam_get_stat_int("ultimate_pieces_earned");
    var ultimate_spent = steam_get_stat_int("ultimate_pieces_used");
    total_ultimate = ultimate_earned - ultimate_spent;
    total_gold_bits = gold_earned - gold_spent;
    total_hints = hints_earned - hints_spent;
}
