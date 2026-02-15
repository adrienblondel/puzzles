if (steam_stats_ready())
{
    gold_earned = steam_get_stat_int("gold_bits_earned");
    gold_spent = steam_get_stat_int("gold_bits_used");
    total_current_gold = gold_earned - gold_spent;
    hints_earned = steam_get_stat_int("hints_earned");
    hints_spent = steam_get_stat_int("hints_used");
    total_current_hints = hints_earned - hints_spent;
}
