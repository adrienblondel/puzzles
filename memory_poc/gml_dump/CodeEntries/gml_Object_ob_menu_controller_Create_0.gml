global.theme_chooser_is_open = 0;
global.a_menu_overlay_is_showing = 0;
ultimate_button_scale = 1;
global.puzzle_preview_sprite_index = 0;
filer_1_on_or_off = 0;
filer_2_on_or_off = 0;
filer_3_on_or_off = 0;
filer_4_on_or_off = 0;
filer_5_on_or_off = 0;
filer_6_on_or_off = 0;
filer_7_on_or_off = 0;
filer_8_on_or_off = 0;
if (room == r_main_menu)
{
    instance_create(297, 270, ob_menu_toolbar_roatating_piece);
    instance_create(1903, 270, ob_menu_toolbar_roatating_piece2);
}
alarm[9] = 1;
text_for_theme_title = 0;
text_for_theme_zen = 0;
text_for_theme_simple = 0;
text_for_theme_arcade = 0;
text_for_theme_window = 0;
text_for_theme_megacityone = 0;
text_for_theme_lines = 0;
text_for_theme_christmas = 0;
text_for_theme_rust = 0;
text_for_theme_table = 0;
text_for_theme_ruins = 0;
sale_amount = 0;
if (room == r_puzzle_select)
{
    alarm[5] = 2;
}
if (room == r_main_menu)
{
    latest_pack_0_id = instance_create(1786, global.latest_pack_carosel_0_y, ob_menu_latest_pack_carosel_buttons);
    latest_pack_0_id.pack = 0;
    latest_pack_1_id = instance_create(1786, global.latest_pack_carosel_1_y, ob_menu_latest_pack_carosel_buttons);
    latest_pack_1_id.pack = 1;
    latest_pack_2_id = instance_create(1786, global.latest_pack_carosel_2_y, ob_menu_latest_pack_carosel_buttons);
    latest_pack_2_id.pack = 2;
    latest_pack_3_id = instance_create(1786, global.latest_pack_carosel_3_y, ob_menu_latest_pack_carosel_buttons);
    latest_pack_3_id.pack = 3;
    latest_pack_4_id = instance_create(1786, global.latest_pack_carosel_4_y, ob_menu_latest_pack_carosel_buttons);
    latest_pack_4_id.pack = 4;
    latest_pack_5_id = instance_create(1786, global.latest_pack_carosel_5_y, ob_menu_latest_pack_carosel_buttons);
    latest_pack_5_id.pack = 5;
    latest_pack_6_id = instance_create(1786, global.latest_pack_carosel_6_y, ob_menu_latest_pack_carosel_buttons);
    latest_pack_6_id.pack = 6;
}
if (room == r_main_menu)
{
    bundle_button_0 = instance_create(134, global.bundle_carosel_0_y, ob_menu_bundle_carosel_buttons);
    bundle_button_0.bundle_button = 0;
    bundle_button_0.image_index = global.bundle_carosel_0_bundle;
    bundle_button_1 = instance_create(134, global.bundle_carosel_1_y, ob_menu_bundle_carosel_buttons);
    bundle_button_1.bundle_button = 1;
    bundle_button_1.image_index = global.bundle_carosel_1_bundle;
    bundle_button_2 = instance_create(134, global.bundle_carosel_2_y, ob_menu_bundle_carosel_buttons);
    bundle_button_2.bundle_button = 2;
    bundle_button_2.image_index = global.bundle_carosel_2_bundle;
    bundle_button_3 = instance_create(134, global.bundle_carosel_3_y, ob_menu_bundle_carosel_buttons);
    bundle_button_3.bundle_button = 3;
    bundle_button_3.image_index = global.bundle_carosel_3_bundle;
    bundle_button_4 = instance_create(134, global.bundle_carosel_4_y, ob_menu_bundle_carosel_buttons);
    bundle_button_4.bundle_button = 4;
    bundle_button_4.image_index = global.bundle_carosel_4_bundle;
}
audio_stop_sound(global.sound_puzzles_load_in);
audio_stop_sound(global.sound_puzzle_packs_load_in);
if (room == r_puzzle_select)
{
    if (global.audio_menu_effects_0_is_on == 0)
    {
        audio_play_sound(global.sound_puzzles_load_in, 1, false);
    }
}
if (steam_stats_ready())
{
    var gold_earned = steam_get_stat_int("gold_bits_earned");
    var gold_spent = steam_get_stat_int("gold_bits_used");
    var hints_earned = steam_get_stat_int("hints_earned");
    var hints_spent = steam_get_stat_int("hints_used");
    var ultimate_earned = steam_get_stat_int("ultimate_pieces_earned");
    var ultimate_spent = steam_get_stat_int("ultimate_pieces_used");
    total_gold_bits = gold_earned - gold_spent;
    total_ultimate = ultimate_earned - ultimate_spent;
    total_hints = hints_earned - hints_spent;
}
else
{
    total_gold_bits = 0;
    total_hints = 0;
    total_ultimate = 0;
}
if (global.toolbar_buttons_can_drop_down == 1)
{
    global.current_bundle_showing = choose(0, 1, 2, 3, 4);
    global.active_comp_backing_colour = make_colour_rgb(50 + random(190), 50 + random(190), 50 + random(190));
    global.sidebar_news_backing_colour = make_colour_rgb(50 + random(190), 50 + random(190), 50 + random(190));
    global.sidebar_latest_pack_backing_colour = make_colour_rgb(50 + random(190), 50 + random(190), 50 + random(190));
}
can_show_intro_fade_in = 0;
if (global.game_has_just_launched == 1)
{
    global.game_has_just_launched = 0;
    piece_1_id = instance_create(176, 224, ob_intro_puzzle_piece);
    piece_1_id.bit_number = 1;
    piece_1_id.sprite_index = sp_intro_puzzle_bits;
    piece_1_id.image_index = 0;
    piece_1_id.speed = 0;
    piece_1_id.direction = 140;
    piece_1_id.depth = -10000006;
    piece_1_id.rotation_direction = 0;
    piece_1_id.rotation_amount = choose(1, 2, 3);
    piece_1_id.alarm[2] = 1;
    piece_2_id = instance_create(560, 232, ob_intro_puzzle_piece);
    piece_2_id.bit_number = 2;
    piece_2_id.sprite_index = sp_intro_puzzle_bits;
    piece_2_id.image_index = 1;
    piece_2_id.speed = 0;
    piece_2_id.direction = 160;
    piece_2_id.depth = -100000011;
    piece_2_id.rotation_direction = 0;
    piece_2_id.rotation_amount = choose(1, 2, 3);
    piece_2_id.alarm[2] = 1;
    piece_3_id = instance_create(956, 225, ob_intro_puzzle_piece);
    piece_3_id.bit_number = 3;
    piece_3_id.sprite_index = sp_intro_puzzle_bits;
    piece_3_id.image_index = 2;
    piece_3_id.speed = 0;
    piece_3_id.direction = 45;
    piece_3_id.depth = -100000010;
    piece_3_id.rotation_direction = 1;
    piece_3_id.rotation_amount = choose(1, 2, 3);
    piece_3_id.alarm[2] = 1;
    piece_4_id = instance_create(1360, 218, ob_intro_puzzle_piece);
    piece_4_id.bit_number = 4;
    piece_4_id.sprite_index = sp_intro_puzzle_bits;
    piece_4_id.image_index = 3;
    piece_4_id.speed = 0;
    piece_4_id.direction = 30;
    piece_4_id.depth = -100000013;
    piece_4_id.rotation_direction = 1;
    piece_4_id.rotation_amount = choose(1, 2, 3);
    piece_4_id.alarm[2] = 1;
    piece_5_id = instance_create(1747, 233, ob_intro_puzzle_piece);
    piece_5_id.bit_number = 5;
    piece_5_id.sprite_index = sp_intro_puzzle_bits;
    piece_5_id.image_index = 4;
    piece_5_id.speed = 0;
    piece_5_id.direction = 40;
    piece_5_id.depth = -10000003;
    piece_5_id.rotation_direction = 1;
    piece_5_id.rotation_amount = choose(1, 2, 3);
    piece_5_id.alarm[2] = 1;
    piece_6_id = instance_create(187, 541, ob_intro_puzzle_piece);
    piece_6_id.bit_number = 6;
    piece_6_id.sprite_index = sp_intro_puzzle_bits;
    piece_6_id.image_index = 5;
    piece_6_id.speed = 0;
    piece_6_id.direction = 170;
    piece_6_id.depth = -10000002;
    piece_6_id.rotation_direction = 0;
    piece_6_id.rotation_amount = choose(1, 2, 3);
    piece_6_id.alarm[2] = 1;
    piece_7_id = instance_create(559, 523, ob_intro_puzzle_piece);
    piece_7_id.bit_number = 7;
    piece_7_id.sprite_index = sp_intro_puzzle_bits;
    piece_7_id.image_index = 6;
    piece_7_id.speed = 0;
    piece_7_id.direction = 190;
    piece_7_id.depth = -100000014;
    piece_7_id.rotation_direction = 0;
    piece_7_id.rotation_amount = choose(1, 2, 3);
    piece_7_id.alarm[2] = 1;
    piece_8_id = instance_create(991, 509, ob_intro_puzzle_piece);
    piece_8_id.bit_number = 8;
    piece_8_id.sprite_index = sp_intro_puzzle_bits;
    piece_8_id.image_index = 7;
    piece_8_id.speed = 0;
    piece_8_id.direction = 100;
    piece_8_id.depth = -10000009;
    piece_8_id.rotation_direction = 0;
    piece_8_id.rotation_amount = choose(1, 2, 3);
    piece_8_id.alarm[2] = 1;
    piece_9_id = instance_create(1358, 530, ob_intro_puzzle_piece);
    piece_9_id.bit_number = 9;
    piece_9_id.sprite_index = sp_intro_puzzle_bits;
    piece_9_id.image_index = 8;
    piece_9_id.speed = 0;
    piece_9_id.direction = 60;
    piece_9_id.depth = -100000015;
    piece_9_id.rotation_direction = 1;
    piece_9_id.rotation_amount = choose(1, 2, 3);
    piece_9_id.alarm[2] = 1;
    piece_10_id = instance_create(1728, 546, ob_intro_puzzle_piece);
    piece_10_id.bit_number = 10;
    piece_10_id.sprite_index = sp_intro_puzzle_bits;
    piece_10_id.image_index = 9;
    piece_10_id.speed = 0;
    piece_10_id.direction = 50;
    piece_10_id.depth = -10000005;
    piece_10_id.rotation_direction = 1;
    piece_10_id.rotation_amount = choose(1, 2, 3);
    piece_10_id.alarm[2] = 1;
    piece_11_id = instance_create(191, 885, ob_intro_puzzle_piece);
    piece_11_id.bit_number = 11;
    piece_11_id.sprite_index = sp_intro_puzzle_bits;
    piece_11_id.image_index = 10;
    piece_11_id.speed = 0;
    piece_11_id.direction = 180;
    piece_11_id.depth = -10000004;
    piece_11_id.rotation_direction = 0;
    piece_11_id.rotation_amount = choose(1, 2, 3);
    piece_11_id.alarm[2] = 1;
    piece_12_id = instance_create(567, 877, ob_intro_puzzle_piece);
    piece_12_id.bit_number = 12;
    piece_12_id.sprite_index = sp_intro_puzzle_bits;
    piece_12_id.image_index = 11;
    piece_12_id.speed = 0;
    piece_12_id.direction = 200;
    piece_12_id.depth = -100000012;
    piece_12_id.rotation_direction = 0;
    piece_12_id.rotation_amount = choose(1, 2, 3);
    piece_12_id.alarm[2] = 1;
    piece_13_id = instance_create(959, 890, ob_intro_puzzle_piece);
    piece_13_id.bit_number = 13;
    piece_13_id.sprite_index = sp_intro_puzzle_bits;
    piece_13_id.image_index = 12;
    piece_13_id.speed = 0;
    piece_13_id.direction = 240;
    piece_13_id.depth = -10000007;
    piece_13_id.rotation_direction = 0;
    piece_13_id.rotation_amount = choose(1, 2, 3);
    piece_13_id.alarm[2] = 1;
    piece_14_id = instance_create(1367, 895, ob_intro_puzzle_piece);
    piece_14_id.bit_number = 14;
    piece_14_id.sprite_index = sp_intro_puzzle_bits;
    piece_14_id.image_index = 13;
    piece_14_id.speed = 0;
    piece_14_id.direction = 330;
    piece_14_id.depth = -10000008;
    piece_14_id.rotation_direction = 1;
    piece_14_id.rotation_amount = choose(1, 2, 3);
    piece_14_id.alarm[2] = 1;
    piece_15_id = instance_create(1737, 875, ob_intro_puzzle_piece);
    piece_15_id.bit_number = 15;
    piece_15_id.sprite_index = sp_intro_puzzle_bits;
    piece_15_id.image_index = 14;
    piece_15_id.speed = 0;
    piece_15_id.direction = 350;
    piece_15_id.depth = -10000001;
    piece_15_id.rotation_direction = 1;
    piece_15_id.rotation_amount = choose(1, 2, 3);
    piece_15_id.alarm[2] = 1;
}
if (global.toolbar_buttons_can_drop_down == 1)
{
    instance_create(x, y, ob_steam_stats_checker);
}
alarm[0] = 2;
if (room == r_puzzle_select)
{
    instance_create(x, y, global.puzzle_pack_controller_to_spawn);
}
if (room == r_puzzle_select || room == r_uniques_select)
{
    global.puzzle_preview_image_alpha = 0;
    theme_arrow_scale_left_x = -1;
    theme_arrow_scale_left_y = 1;
    theme_arrow_scale_right = 1;
    float_rotation_arrow_scale_left_x = -1;
    float_rotation_arrow_scale_left_y = 1;
    float_rotation_arrow_scale_right = 1;
    float_speed_arrow_scale_left_x = -1;
    float_speed_arrow_scale_left_y = 1;
    float_speed_arrow_scale_right = 1;
    piece_rotation_arrow_scale_left_x = -1;
    piece_rotation_arrow_scale_left_y = 1;
    piece_rotation_arrow_scale_right = 1;
    preview_fade_arrow_scale_left_x = -1;
    preview_fade_arrow_scale_left_y = 1;
    preview_fade_arrow_scale_right = 1;
    referance_arrow_scale_left_x = -1;
    referance_fade_arrow_scale_left_y = 1;
    referance_fade_arrow_scale_right = 1;
    piece_snap_arrow_scale_left_x = -1;
    piece_snap_fade_arrow_scale_left_y = 1;
    piece_snap_fade_arrow_scale_right = 1;
    highlight_arrow_scale_left_x = -1;
    highlight_fade_arrow_scale_left_y = 1;
    highlight_fade_arrow_scale_right = 1;
    right_mouse_removes_arrow_scale_left_x = -1;
    right_mouse_removes_fade_arrow_scale_left_y = 1;
    right_mouse_removes_fade_arrow_scale_right = 1;
    puz_select_pack_info_backing_colour_1 = make_colour_rgb(50 + random(190), 50 + random(190), 50 + random(190));
    puz_select_pack_info_backing_colour_2 = make_colour_rgb(50 + random(190), 50 + random(190), 50 + random(190));
    puz_select_options_backing_colour_1 = make_colour_rgb(50 + random(190), 50 + random(190), 50 + random(190));
}
scroll_bar_alpha = 0;
y_position_list = ds_list_create();
y_position_list_current_number = 5;
ds_list_add(y_position_list, -791, -1017, -1243, -113, -339, -565);
ds_list_shuffle(y_position_list);
button_1 = instance_create(380, ds_list_find_value(y_position_list, y_position_list_current_number), ob_menu_top_buttons);
y_position_list_current_number -= 1;
button_1.button_number = 1;
button_1.room_to_go_to = r_main_menu;
button_1.topper_sprite_to_use = sp_menu_button_topper_puzzles;
button_1.topper_sprite_number_of_frames = 6;
button_1.colour_to_use = make_colour_rgb(239, 105, 194);
button_2 = instance_create(558, ds_list_find_value(y_position_list, y_position_list_current_number), ob_menu_top_buttons);
y_position_list_current_number -= 1;
button_2.button_number = 2;
button_2.room_to_go_to = r_uniques_select;
button_2.topper_sprite_to_use = sp_menu_button_topper_uniques;
button_2.topper_sprite_number_of_frames = 6;
button_2.colour_to_use = make_colour_rgb(255, 205, 78);
button_3 = instance_create(736, ds_list_find_value(y_position_list, y_position_list_current_number), ob_menu_top_buttons);
y_position_list_current_number -= 1;
button_3.button_number = 3;
button_3.room_to_go_to = r_stats;
button_3.topper_sprite_to_use = sp_menu_button_topper_stats;
button_3.topper_sprite_number_of_frames = 6;
button_3.colour_to_use = make_colour_rgb(93, 203, 255);
button_4 = instance_create(914, ds_list_find_value(y_position_list, y_position_list_current_number), ob_menu_top_buttons);
y_position_list_current_number -= 1;
button_4.button_number = 4;
button_4.room_to_go_to = r_posts;
button_4.topper_sprite_to_use = sp_menu_button_topper_post;
button_4.topper_sprite_number_of_frames = 6;
button_4.colour_to_use = make_colour_rgb(111, 231, 201);
button_5 = instance_create(1092, ds_list_find_value(y_position_list, y_position_list_current_number), ob_menu_top_buttons);
y_position_list_current_number -= 1;
button_5.button_number = 5;
button_5.room_to_go_to = r_options;
button_5.topper_sprite_to_use = sp_menu_button_topper_options;
button_5.topper_sprite_number_of_frames = 5;
button_5.colour_to_use = make_colour_rgb(111, 231, 119);
button_6 = instance_create(1270, ds_list_find_value(y_position_list, y_position_list_current_number), ob_menu_top_buttons);
y_position_list_current_number -= 1;
button_6.button_number = 6;
button_6.topper_sprite_to_use = sp_menu_button_topper_exit;
button_6.topper_sprite_number_of_frames = 6;
button_6.colour_to_use = make_colour_rgb(189, 111, 231);
ds_list_destroy(y_position_list);
puz_select_left_pack_icon_backing = 0;
if (room == r_puzzle_select)
{
    if (global.current_pack_open_colour_set == 1)
    {
        puz_select_left_pack_icon_backing = choose(make_colour_rgb(227, 58, 40), make_colour_rgb(244, 71, 57), make_colour_rgb(205, 29, 10), make_colour_rgb(207, 3, 1), make_colour_rgb(228, 3, 0), make_colour_rgb(220, 45, 43), make_colour_rgb(218, 64, 62), make_colour_rgb(238, 57, 57));
    }
    else if (global.current_pack_open_colour_set == 2)
    {
        puz_select_left_pack_icon_backing = choose(make_colour_rgb(189, 35, 42), make_colour_rgb(179, 38, 38), make_colour_rgb(175, 16, 16), make_colour_rgb(170, 21, 0), make_colour_rgb(143, 20, 3), make_colour_rgb(257, 32, 23), make_colour_rgb(2163, 63, 55), make_colour_rgb(158, 60, 65));
    }
    else if (global.current_pack_open_colour_set == 3)
    {
        puz_select_left_pack_icon_backing = choose(make_colour_rgb(241, 142, 142), make_colour_rgb(254, 175, 175), make_colour_rgb(227, 150, 150), make_colour_rgb(238, 144, 137), make_colour_rgb(251, 137, 128), make_colour_rgb(251, 187, 189), make_colour_rgb(240, 200, 200), make_colour_rgb(252, 134, 143));
    }
    else if (global.current_pack_open_colour_set == 4)
    {
        puz_select_left_pack_icon_backing = choose(make_colour_rgb(232, 88, 32), make_colour_rgb(255, 96, 34), make_colour_rgb(248, 77, 10), make_colour_rgb(224, 59, 21), make_colour_rgb(222, 81, 48), make_colour_rgb(229, 111, 47), make_colour_rgb(236, 103, 15), make_colour_rgb(208, 87, 6));
    }
    else if (global.current_pack_open_colour_set == 5)
    {
        puz_select_left_pack_icon_backing = choose(make_colour_rgb(225, 134, 94), make_colour_rgb(225, 152, 119), make_colour_rgb(225, 159, 117), make_colour_rgb(225, 156, 97), make_colour_rgb(236, 174, 123), make_colour_rgb(225, 165, 92), make_colour_rgb(220, 166, 137), make_colour_rgb(225, 155, 81));
    }
    else if (global.current_pack_open_colour_set == 6)
    {
        puz_select_left_pack_icon_backing = choose(make_colour_rgb(255, 184, 92), make_colour_rgb(243, 167, 70), make_colour_rgb(239, 179, 84), make_colour_rgb(252, 201, 121), make_colour_rgb(230, 192, 119), make_colour_rgb(250, 196, 93), make_colour_rgb(248, 197, 73), make_colour_rgb(251, 206, 119));
    }
    else if (global.current_pack_open_colour_set == 7)
    {
        puz_select_left_pack_icon_backing = choose(make_colour_rgb(250, 215, 53), make_colour_rgb(241, 201, 16), make_colour_rgb(255, 229, 51), make_colour_rgb(255, 235, 101), make_colour_rgb(238, 225, 119), make_colour_rgb(231, 223, 88), make_colour_rgb(244, 232, 46), make_colour_rgb(255, 250, 174));
    }
    else if (global.current_pack_open_colour_set == 8)
    {
        puz_select_left_pack_icon_backing = choose(make_colour_rgb(186, 198, 50), make_colour_rgb(198, 215, 12), make_colour_rgb(164, 177, 19), make_colour_rgb(153, 178, 36), make_colour_rgb(168, 185, 89), make_colour_rgb(190, 206, 117), make_colour_rgb(191, 221, 88), make_colour_rgb(182, 218, 56));
    }
    else if (global.current_pack_open_colour_set == 9)
    {
        puz_select_left_pack_icon_backing = choose(make_colour_rgb(95, 189, 73), make_colour_rgb(147, 207, 133), make_colour_rgb(97, 220, 69), make_colour_rgb(72, 189, 20), make_colour_rgb(23, 199, 0), make_colour_rgb(41, 220, 17), make_colour_rgb(73, 232, 69), make_colour_rgb(123, 220, 127));
    }
    else if (global.current_pack_open_colour_set == 10)
    {
        puz_select_left_pack_icon_backing = choose(make_colour_rgb(92, 154, 86), make_colour_rgb(64, 144, 55), make_colour_rgb(38, 145, 27), make_colour_rgb(70, 120, 53), make_colour_rgb(88, 116, 67), make_colour_rgb(17, 122, 27), make_colour_rgb(51, 120, 64), make_colour_rgb(68, 107, 76));
    }
    else if (global.current_pack_open_colour_set == 11)
    {
        puz_select_left_pack_icon_backing = choose(make_colour_rgb(100, 200, 143), make_colour_rgb(64, 214, 127), make_colour_rgb(105, 179, 137), make_colour_rgb(110, 222, 168), make_colour_rgb(83, 230, 159), make_colour_rgb(129, 176, 153), make_colour_rgb(87, 165, 136), make_colour_rgb(56, 175, 132));
    }
    else if (global.current_pack_open_colour_set == 12)
    {
        puz_select_left_pack_icon_backing = choose(make_colour_rgb(88, 214, 213), make_colour_rgb(51, 236, 234), make_colour_rgb(56, 255, 253), make_colour_rgb(136, 232, 231), make_colour_rgb(101, 197, 211), make_colour_rgb(163, 221, 230), make_colour_rgb(49, 207, 221), make_colour_rgb(56, 173, 183));
    }
    else if (global.current_pack_open_colour_set == 13)
    {
        puz_select_left_pack_icon_backing = choose(make_colour_rgb(73, 151, 205), make_colour_rgb(30, 135, 209), make_colour_rgb(8, 153, 255), make_colour_rgb(62, 176, 255), make_colour_rgb(99, 185, 245), make_colour_rgb(88, 156, 225), make_colour_rgb(44, 124, 205), make_colour_rgb(19, 130, 243));
    }
    else if (global.current_pack_open_colour_set == 14)
    {
        puz_select_left_pack_icon_backing = choose(make_colour_rgb(50, 100, 211), make_colour_rgb(81, 129, 227), make_colour_rgb(56, 89, 185), make_colour_rgb(30, 75, 204), make_colour_rgb(0, 52, 199), make_colour_rgb(51, 86, 219), make_colour_rgb(32, 100, 255), make_colour_rgb(70, 127, 255));
    }
    else if (global.current_pack_open_colour_set == 15)
    {
        puz_select_left_pack_icon_backing = choose(make_colour_rgb(44, 67, 184), make_colour_rgb(25, 49, 170), make_colour_rgb(0, 24, 144), make_colour_rgb(31, 47, 127), make_colour_rgb(59, 66, 128), make_colour_rgb(40, 50, 148), make_colour_rgb(42, 49, 119), make_colour_rgb(15, 25, 119));
    }
    else if (global.current_pack_open_colour_set == 16)
    {
        puz_select_left_pack_icon_backing = choose(make_colour_rgb(32, 21, 140), make_colour_rgb(32, 18, 166), make_colour_rgb(54, 38, 208), make_colour_rgb(80, 66, 223), make_colour_rgb(92, 80, 199), make_colour_rgb(77, 68, 160), make_colour_rgb(49, 41, 131), make_colour_rgb(138, 129, 223));
    }
    else if (global.current_pack_open_colour_set == 17)
    {
        puz_select_left_pack_icon_backing = choose(make_colour_rgb(130, 102, 200), make_colour_rgb(143, 103, 244), make_colour_rgb(106, 58, 230), make_colour_rgb(76, 13, 237), make_colour_rgb(74, 22, 204), make_colour_rgb(83, 50, 167), make_colour_rgb(73, 50, 133), make_colour_rgb(52, 17, 143));
    }
    else if (global.current_pack_open_colour_set == 18)
    {
        puz_select_left_pack_icon_backing = choose(make_colour_rgb(124, 25, 175), make_colour_rgb(143, 10, 212), make_colour_rgb(169, 41, 236), make_colour_rgb(175, 87, 221), make_colour_rgb(178, 49, 215), make_colour_rgb(100, 34, 134), make_colour_rgb(95, 9, 139), make_colour_rgb(134, 18, 167));
    }
    else if (global.current_pack_open_colour_set == 19)
    {
        puz_select_left_pack_icon_backing = choose(make_colour_rgb(198, 30, 204), make_colour_rgb(228, 25, 235), make_colour_rgb(249, 72, 255), make_colour_rgb(229, 89, 214), make_colour_rgb(204, 70, 196), make_colour_rgb(182, 6, 172), make_colour_rgb(255, 107, 208), make_colour_rgb(207, 95, 193));
    }
}
if (global.toolbar_buttons_can_drop_down == 1)
{
    last_puzzle_1_directory = "\quickpuzzle\quickpuzzleimage" + string(global.last_puzzle_button_1) + ".png";
    global.last_puzzle_button_1_sprite_index = sprite_add(working_directory + string(last_puzzle_1_directory), 0, false, false, 0, 0);
    last_puzzle_2_directory = "\quickpuzzle\quickpuzzleimage" + string(global.last_puzzle_button_2) + ".png";
    global.last_puzzle_button_2_sprite_index = sprite_add(working_directory + string(last_puzzle_2_directory), 0, false, false, 0, 0);
    last_puzzle_3_directory = "\quickpuzzle\quickpuzzleimage" + string(global.last_puzzle_button_3) + ".png";
    global.last_puzzle_button_3_sprite_index = sprite_add(working_directory + string(last_puzzle_3_directory), 0, false, false, 0, 0);
    last_puzzle_4_directory = "\quickpuzzle\quickpuzzleimage" + string(global.last_puzzle_button_4) + ".png";
    global.last_puzzle_button_4_sprite_index = sprite_add(working_directory + string(last_puzzle_4_directory), 0, false, false, 0, 0);
    last_puzzle_5_directory = "\quickpuzzle\quickpuzzleimage" + string(global.last_puzzle_button_5) + ".png";
    global.last_puzzle_button_5_sprite_index = sprite_add(working_directory + string(last_puzzle_5_directory), 0, false, false, 0, 0);
    last_puzzle_6_directory = "\quickpuzzle\quickpuzzleimage" + string(global.last_puzzle_button_6) + ".png";
    global.last_puzzle_button_6_sprite_index = sprite_add(working_directory + string(last_puzzle_6_directory), 0, false, false, 0, 0);
}
