challenge_fade_colour_to_use = 0;
alarm[1] = 1;
challenge_info_button_scale = 1;
challenge_info_is_showing = 0;
chal_button_id = instance_create(1202, 473, ob_stats_challenge_buttons);
chal_button_id.button_number = 50;
chal_button_id = instance_create(1202, 653, ob_stats_challenge_buttons);
chal_button_id.button_number = 49;
chal_button_id = instance_create(1202, 833, ob_stats_challenge_buttons);
chal_button_id.button_number = 48;
chal_button_id = instance_create(1202, 1013, ob_stats_challenge_buttons);
chal_button_id.button_number = 47;
chal_button_id = instance_create(1202, 1193, ob_stats_challenge_buttons);
chal_button_id.button_number = 46;
left_stats_start_y = 388;
stats_background_colour = 0;
challenges_background_colour = 0;
stats_block_1_colour = make_colour_rgb(50 + random(190), 50 + random(190), 50 + random(190));
stats_block_2_colour = make_colour_rgb(50 + random(190), 50 + random(190), 50 + random(190));
stats_block_3_colour = make_colour_rgb(50 + random(190), 50 + random(190), 50 + random(190));
stats_block_4_colour = make_colour_rgb(50 + random(190), 50 + random(190), 50 + random(190));
stats_block_5_colour = make_colour_rgb(50 + random(190), 50 + random(190), 50 + random(190));
challenges_beat = 0;
if (steam_stats_ready())
{
    total_pieces_placed = steam_get_stat_int("pieces_placed");
    regulars_beat = steam_get_stat_int("total_normal_puzzles_beat");
    uniques_beat = steam_get_stat_int("total_uniques_beat");
    total_ultimate_complete = steam_get_stat_int("ultimate_puzzles_complete");
    total_puzzles_complete = regulars_beat + uniques_beat + total_ultimate_complete;
    total_packs_complete = steam_get_stat_int("total_packs_complete");
    competitions_won = steam_get_stat_int("comps_won");
    gold_earned = steam_get_stat_int("gold_bits_earned");
    gold_spent = steam_get_stat_int("gold_bits_used");
    total_current_gold = gold_earned - gold_spent;
    hints_earned = steam_get_stat_int("hints_earned");
    hints_spent = steam_get_stat_int("hints_used");
    total_current_hints = hints_earned - hints_spent;
    ghost_hints_used = steam_get_stat_int("ghost_hints_used");
    location_hints_used = steam_get_stat_int("location_hints_used");
    angle_hints_used = steam_get_stat_int("angle_hints_used");
    ultimates_earned = steam_get_stat_int("ultimate_pieces_earned");
    ultimates_spent = steam_get_stat_int("ultimate_pieces_used");
    total_current_ultimates = ultimates_earned - ultimates_spent;
    if (steam_get_achievement("complete_your_1st_pack"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("complete_your_1st_puzzle"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("beat_4_packs"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("complete_10_puzzles"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("use_5_rotate"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("use_5_ghosts"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("gold_bits_used_100"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("gold_bits_used_500"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("hints_used_100"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("hints_used_1000"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("grab_a_fish"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("use_5_locate"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("place_1000_pieces"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("place_10000_pieces"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("place_50000_pieces"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("place_100000_pieces"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("win_in_window"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("win_in_zen"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("win_in_arcade"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("win_in_simple"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("first_start_challenge"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("complete_tutorial"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("beat_1_challenge"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("beat_5_challenges"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("beat_10_challenges"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("add_a_fav_pack"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("gold_bits_used_1"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("gold_bits_used_10"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("gold_bits_used_50"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("gold_bits_used_1000"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("hints_used_1"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("hints_used_10"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("hints_used_50"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("hints_used_500"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("place_1_pieces"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("place_100_pieces"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("place_500_pieces"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("place_1500_pieces"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("place_2500_pieces"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("place_5000_pieces"))
    {
        challenges_beat += 1;
    }
    if (steam_get_achievement("use_hint_trader"))
    {
        challenges_beat += 1;
    }
    steam_set_stat_int("challenges_complete", challenges_beat);
    steam_upload_score("challenges_complete", challenges_beat);
}
else
{
    total_pieces_placed = 0;
    regulars_beat = 0;
    uniques_beat = 0;
    total_ultimate_complete = 0;
    total_puzzles_complete = 0;
    total_packs_complete = 0;
    challenges_beat = 0;
    competitions_won = 0;
    gold_earned = 0;
    gold_spent = 0;
    total_current_gold = 0;
    hints_earned = 0;
    hints_spent = 0;
    total_current_hints = 0;
    ghost_hints_used = 0;
    location_hints_used = 0;
    angle_hints_used = 0;
    ultimates_earned = 0;
    ultimates_spent = 0;
    total_current_ultimates = 0;
}
leader_1_scale = 1;
leader_1_backing_colour = make_colour_rgb(50 + random(190), 50 + random(190), 50 + random(190));
leader_1_rank = 0;
leader_1_score = 0;
leader_2_scale = 1;
leader_2_backing_colour = make_colour_rgb(50 + random(190), 50 + random(190), 50 + random(190));
leader_2_rank = 0;
leader_2_score = 0;
leader_3_scale = 1;
leader_3_backing_colour = make_colour_rgb(50 + random(190), 50 + random(190), 50 + random(190));
leader_3_rank = 0;
leader_3_score = 0;
leader_4_scale = 1;
leader_4_backing_colour = make_colour_rgb(50 + random(190), 50 + random(190), 50 + random(190));
leader_4_rank = 0;
leader_4_score = 0;
leader_5_scale = 1;
leader_5_backing_colour = make_colour_rgb(50 + random(190), 50 + random(190), 50 + random(190));
leader_5_rank = 0;
leader_5_score = 0;
leader_6_scale = 1;
leader_6_backing_colour = make_colour_rgb(50 + random(190), 50 + random(190), 50 + random(190));
leader_6_rank = 0;
leader_6_score = 0;
leader_7_scale = 1;
leader_7_backing_colour = make_colour_rgb(50 + random(190), 50 + random(190), 50 + random(190));
leader_7_rank = 0;
leader_7_score = 0;
total_number_of_trophies = 41;
global.challenge_1_y = 388;
challenge_list = ds_list_create();
ds_list_add(challenge_list, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15);
ds_list_add(challenge_list, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30);
ds_list_add(challenge_list, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41);
ds_list_shuffle(challenge_list);
challenge_list_current_number = ds_list_size(challenge_list) - 1;
challenege_1 = instance_create(503, global.challenge_1_y, ob_stats_challenge_icon);
challenege_1.challenge_y_plus_amount = 0;
challenege_1.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_2 = instance_create(503, global.challenge_1_y + 90, ob_stats_challenge_icon);
challenege_2.challenge_y_plus_amount = 90;
challenege_2.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_3 = instance_create(503, global.challenge_1_y + 180, ob_stats_challenge_icon);
challenege_3.challenge_y_plus_amount = 180;
challenege_3.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_4 = instance_create(503, global.challenge_1_y + 270, ob_stats_challenge_icon);
challenege_4.challenge_y_plus_amount = 270;
challenege_4.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_5 = instance_create(503, global.challenge_1_y + 360, ob_stats_challenge_icon);
challenege_5.challenge_y_plus_amount = 360;
challenege_5.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_6 = instance_create(503, global.challenge_1_y + 450, ob_stats_challenge_icon);
challenege_6.challenge_y_plus_amount = 450;
challenege_6.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_7 = instance_create(503, global.challenge_1_y + 540, ob_stats_challenge_icon);
challenege_7.challenge_y_plus_amount = 540;
challenege_7.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_8 = instance_create(503, global.challenge_1_y + 630, ob_stats_challenge_icon);
challenege_8.challenge_y_plus_amount = 630;
challenege_8.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_9 = instance_create(503, global.challenge_1_y + 720, ob_stats_challenge_icon);
challenege_9.challenge_y_plus_amount = 720;
challenege_9.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_10 = instance_create(503, global.challenge_1_y + 810, ob_stats_challenge_icon);
challenege_10.challenge_y_plus_amount = 810;
challenege_10.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_11 = instance_create(503, global.challenge_1_y + 900, ob_stats_challenge_icon);
challenege_11.challenge_y_plus_amount = 900;
challenege_11.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_12 = instance_create(503, global.challenge_1_y + 990, ob_stats_challenge_icon);
challenege_12.challenge_y_plus_amount = 990;
challenege_12.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_13 = instance_create(503, global.challenge_1_y + 1080, ob_stats_challenge_icon);
challenege_13.challenge_y_plus_amount = 1080;
challenege_13.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_14 = instance_create(503, global.challenge_1_y + 1170, ob_stats_challenge_icon);
challenege_14.challenge_y_plus_amount = 1170;
challenege_14.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_15 = instance_create(503, global.challenge_1_y + 1260, ob_stats_challenge_icon);
challenege_15.challenge_y_plus_amount = 1260;
challenege_15.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_16 = instance_create(503, global.challenge_1_y + 1350, ob_stats_challenge_icon);
challenege_16.challenge_y_plus_amount = 1350;
challenege_16.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_17 = instance_create(503, global.challenge_1_y + 1440, ob_stats_challenge_icon);
challenege_17.challenge_y_plus_amount = 1440;
challenege_17.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_18 = instance_create(503, global.challenge_1_y + 1530, ob_stats_challenge_icon);
challenege_18.challenge_y_plus_amount = 1530;
challenege_18.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_19 = instance_create(503, global.challenge_1_y + 1620, ob_stats_challenge_icon);
challenege_19.challenge_y_plus_amount = 1620;
challenege_19.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_20 = instance_create(503, global.challenge_1_y + 1710, ob_stats_challenge_icon);
challenege_20.challenge_y_plus_amount = 1710;
challenege_20.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_21 = instance_create(503, global.challenge_1_y + 1800, ob_stats_challenge_icon);
challenege_21.challenge_y_plus_amount = 1800;
challenege_21.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_22 = instance_create(503, global.challenge_1_y + 1890, ob_stats_challenge_icon);
challenege_22.challenge_y_plus_amount = 1890;
challenege_22.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_23 = instance_create(503, global.challenge_1_y + 1980, ob_stats_challenge_icon);
challenege_23.challenge_y_plus_amount = 1980;
challenege_23.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_24 = instance_create(503, global.challenge_1_y + 2070, ob_stats_challenge_icon);
challenege_24.challenge_y_plus_amount = 2070;
challenege_24.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_25 = instance_create(503, global.challenge_1_y + 2160, ob_stats_challenge_icon);
challenege_25.challenge_y_plus_amount = 2160;
challenege_25.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_26 = instance_create(503, global.challenge_1_y + 2250, ob_stats_challenge_icon);
challenege_26.challenge_y_plus_amount = 2250;
challenege_26.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_27 = instance_create(503, global.challenge_1_y + 2340, ob_stats_challenge_icon);
challenege_27.challenge_y_plus_amount = 2340;
challenege_27.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_28 = instance_create(503, global.challenge_1_y + 2430, ob_stats_challenge_icon);
challenege_28.challenge_y_plus_amount = 2430;
challenege_28.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_29 = instance_create(503, global.challenge_1_y + 2520, ob_stats_challenge_icon);
challenege_29.challenge_y_plus_amount = 2520;
challenege_29.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_30 = instance_create(503, global.challenge_1_y + 2610, ob_stats_challenge_icon);
challenege_30.challenge_y_plus_amount = 2610;
challenege_30.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_31 = instance_create(503, global.challenge_1_y + 2700, ob_stats_challenge_icon);
challenege_31.challenge_y_plus_amount = 2700;
challenege_31.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_32 = instance_create(503, global.challenge_1_y + 2790, ob_stats_challenge_icon);
challenege_32.challenge_y_plus_amount = 2790;
challenege_32.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_33 = instance_create(503, global.challenge_1_y + 2880, ob_stats_challenge_icon);
challenege_33.challenge_y_plus_amount = 2880;
challenege_33.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_34 = instance_create(503, global.challenge_1_y + 2970, ob_stats_challenge_icon);
challenege_34.challenge_y_plus_amount = 2970;
challenege_34.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_35 = instance_create(503, global.challenge_1_y + 3060, ob_stats_challenge_icon);
challenege_35.challenge_y_plus_amount = 3060;
challenege_35.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_36 = instance_create(503, global.challenge_1_y + 3150, ob_stats_challenge_icon);
challenege_36.challenge_y_plus_amount = 3150;
challenege_36.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_37 = instance_create(503, global.challenge_1_y + 3240, ob_stats_challenge_icon);
challenege_37.challenge_y_plus_amount = 3240;
challenege_37.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_38 = instance_create(503, global.challenge_1_y + 3330, ob_stats_challenge_icon);
challenege_38.challenge_y_plus_amount = 3330;
challenege_38.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_39 = instance_create(503, global.challenge_1_y + 3420, ob_stats_challenge_icon);
challenege_39.challenge_y_plus_amount = 3420;
challenege_39.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_40 = instance_create(503, global.challenge_1_y + 3510, ob_stats_challenge_icon);
challenege_40.challenge_y_plus_amount = 3510;
challenege_40.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
challenege_41 = instance_create(503, global.challenge_1_y + 3600, ob_stats_challenge_icon);
challenege_41.challenge_y_plus_amount = 3600;
challenege_41.challenege_number = ds_list_find_value(challenge_list, challenge_list_current_number);
challenge_list_current_number -= 1;
ds_list_destroy(challenge_list);
