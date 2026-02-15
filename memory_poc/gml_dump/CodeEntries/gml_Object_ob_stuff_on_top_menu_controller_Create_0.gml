alarm[0] = 200;
no_favs_display_alpha = 0;
no_favs_display_backing_alpha = 0;
active_comp_button_scale = 1;
all_dlc_button_scale = 1;
sugestion_box_button_scale = 1;
comunity_hub_button_scale = 1;
anouncements_button_scale = 1;
language_flag_highlight_x = 0;
challenge_button_number = "";
challenge_button_total_pieces = "";
challenge_button_end_date = "";
challenge_button_title = "";
challenge_end_word = "";
advent_lights_number = 0;
alarm[2] = 1;
if (room == r_main_menu)
{
    challenge_is_beat = 0;
    if (steam_get_achievement("challenge_67"))
    {
        challenge_is_beat = 1;
    }
    ini_open("ppu.ini");
    var p10000x67b0 = ini_read_string("p10000x67", "p10000x67b0", 0);
    challenge_pieces_placed = real(base64_decode(p10000x67b0));
    ini_close();
    challenge_button_number = "67";
    challenge_button_total_pieces = "330";
    challenge_button_end_date = "1/AUGUST/2022";
    challenge_button_title = "";
    challenge_end_word = "";
    alarm[6] = 1;
    bundle_scale = 1;
    news_scale = 1;
}
