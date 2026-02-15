if (steam_stats_ready())
{
    var all_gold_earned = steam_get_stat_int("gold_bits_earned");
    var all_gold_spent = steam_get_stat_int("gold_bits_used");
    var current_gold = all_gold_earned - all_gold_spent;
    if (current_gold > 0)
    {
        you_have_no_gold_left_text = 0;
    }
    else
    {
        you_have_no_gold_left_text = 1;
    }
}
else
{
    you_have_no_gold_left_text = 1;
}
