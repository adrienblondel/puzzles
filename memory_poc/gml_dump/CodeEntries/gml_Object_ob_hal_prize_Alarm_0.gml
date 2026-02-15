var type_got = "";
if (type == 0)
{
    type_got = "gold_bits_earned";
    ob_menu_3_controller.gold_quantity += item_qnt;
}
if (type == 1)
{
    type_got = "hints_earned";
    ob_menu_3_controller.hint_quantity += item_qnt;
}
if (type == 2)
{
    type_got = "ultimate_pieces_earned";
    ob_menu_3_controller.diamond_quantity += item_qnt;
}
var new_earned = steam_get_stat_int(string(type_got)) + item_qnt;
steam_set_stat_int(string(type_got), new_earned);
var found = steam_get_stat_int("a_hal_2024") + 1;
steam_set_stat_int("a_hal_2024", found);
steam_upload_score("a_hal_2024", found);
audio_play_sound(s_halloween_collect, 1, false);
