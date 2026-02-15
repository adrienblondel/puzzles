image_index_to_use = button_number - 1;
var chal_to_check = "challenge_" + string(button_number);
if (steam_get_achievement(chal_to_check))
{
    challenge_is_beat = 1;
}
