audio_stop_sound(global.sound_puzzles_load_in);
audio_stop_sound(global.sound_puzzle_packs_load_in);
if (global.audio_menu_effects_0_is_on == 0)
{
    audio_play_sound(global.sound_puzzle_packs_load_in, 1, false);
}
if (global.puzzle_fav_1 > global.total_number_of_puzzle_packs)
{
    global.puzzle_fav_1 = 0;
}
favorites_button_1 = instance_create(global.button_fav_x, 395, ob_puzzle_pack_button);
favorites_button_1.button_fav_x_plus_amount = 0;
favorites_button_1.puzzle_pack = global.puzzle_fav_1;
favorites_button_1.pack_is_a_fav = 1;
favorites_button_1.fav_number = 1;
favorites_button_1.colour_to_use = 16777215;
favorites_button_1.depth = -150;
favorites_button_1.mask_index = sp_menu_puzzle_pack_fav_mask;
favorites_button_1.backing_image_blend = choose(make_colour_rgb(204, 156, 73), make_colour_rgb(190, 158, 100), make_colour_rgb(180, 129, 40), make_colour_rgb(210, 158, 47), make_colour_rgb(159, 128, 63), make_colour_rgb(179, 137, 22), make_colour_rgb(165, 142, 80), make_colour_rgb(133, 113, 59));
if (global.puzzle_favorites_can_fade_in == 0)
{
    favorites_button_1.image_alpha = 1;
    favorites_button_1.alarm[3] = 100 + random(600);
}
else
{
    favorites_button_1.alarm[3] = 100 + random(600);
}
if (global.puzzle_fav_2 > global.total_number_of_puzzle_packs)
{
    global.puzzle_fav_2 = 0;
}
favorites_button_2 = instance_create(global.button_fav_x + 185, 395, ob_puzzle_pack_button);
favorites_button_2.button_fav_x_plus_amount = 185;
favorites_button_2.puzzle_pack = global.puzzle_fav_2;
favorites_button_2.pack_is_a_fav = 1;
favorites_button_2.fav_number = 2;
favorites_button_2.colour_to_use = 16777215;
favorites_button_2.depth = -150;
favorites_button_2.mask_index = sp_menu_puzzle_pack_fav_mask;
if (global.puzzle_favorites_can_fade_in == 0)
{
    favorites_button_2.image_alpha = 1;
    favorites_button_2.alarm[3] = 100 + random(600);
}
else
{
    favorites_button_2.alarm[3] = 100 + random(600);
}
if (global.puzzle_fav_3 > global.total_number_of_puzzle_packs)
{
    global.puzzle_fav_3 = 0;
}
favorites_button_3 = instance_create(global.button_fav_x + 370, 395, ob_puzzle_pack_button);
favorites_button_3.button_fav_x_plus_amount = 370;
favorites_button_3.puzzle_pack = global.puzzle_fav_3;
favorites_button_3.pack_is_a_fav = 1;
favorites_button_3.fav_number = 3;
favorites_button_3.colour_to_use = 16777215;
favorites_button_3.depth = -150;
favorites_button_3.mask_index = sp_menu_puzzle_pack_fav_mask;
if (global.puzzle_favorites_can_fade_in == 0)
{
    favorites_button_3.image_alpha = 1;
    favorites_button_3.alarm[3] = 100 + random(600);
}
else
{
    favorites_button_3.alarm[3] = 100 + random(600);
}
if (global.puzzle_fav_4 > global.total_number_of_puzzle_packs)
{
    global.puzzle_fav_4 = 0;
}
favorites_button_4 = instance_create(global.button_fav_x + 555, 395, ob_puzzle_pack_button);
favorites_button_4.button_fav_x_plus_amount = 555;
favorites_button_4.puzzle_pack = global.puzzle_fav_4;
favorites_button_4.pack_is_a_fav = 1;
favorites_button_4.fav_number = 4;
favorites_button_4.colour_to_use = 16777215;
favorites_button_4.depth = -150;
favorites_button_4.mask_index = sp_menu_puzzle_pack_fav_mask;
if (global.puzzle_favorites_can_fade_in == 0)
{
    favorites_button_4.image_alpha = 1;
    favorites_button_4.alarm[3] = 100 + random(600);
}
else
{
    favorites_button_4.alarm[3] = 100 + random(600);
}
if (global.puzzle_fav_5 > global.total_number_of_puzzle_packs)
{
    global.puzzle_fav_5 = 0;
}
favorites_button_5 = instance_create(global.button_fav_x + 740, 395, ob_puzzle_pack_button);
favorites_button_5.button_fav_x_plus_amount = 740;
favorites_button_5.puzzle_pack = global.puzzle_fav_5;
favorites_button_5.pack_is_a_fav = 1;
favorites_button_5.fav_number = 5;
favorites_button_5.colour_to_use = 16777215;
favorites_button_5.depth = -150;
favorites_button_5.mask_index = sp_menu_puzzle_pack_fav_mask;
if (global.puzzle_favorites_can_fade_in == 0)
{
    favorites_button_5.image_alpha = 1;
    favorites_button_5.alarm[3] = 100 + random(600);
}
else
{
    favorites_button_5.alarm[3] = 100 + random(600);
}
if (global.puzzle_fav_6 > global.total_number_of_puzzle_packs)
{
    global.puzzle_fav_6 = 0;
}
favorites_button_6 = instance_create(global.button_fav_x + 925, 395, ob_puzzle_pack_button);
favorites_button_6.button_fav_x_plus_amount = 925;
favorites_button_6.puzzle_pack = global.puzzle_fav_6;
favorites_button_6.pack_is_a_fav = 1;
favorites_button_6.fav_number = 6;
favorites_button_6.colour_to_use = 16777215;
favorites_button_6.depth = -150;
favorites_button_6.mask_index = sp_menu_puzzle_pack_fav_mask;
if (global.puzzle_favorites_can_fade_in == 0)
{
    favorites_button_6.image_alpha = 1;
    favorites_button_6.alarm[3] = 100 + random(600);
}
else
{
    favorites_button_6.alarm[3] = 100 + random(600);
}
if (global.puzzle_fav_7 > global.total_number_of_puzzle_packs)
{
    global.puzzle_fav_7 = 0;
}
favorites_button_7 = instance_create(global.button_fav_x + 1110, 395, ob_puzzle_pack_button);
favorites_button_7.button_fav_x_plus_amount = 1110;
favorites_button_7.puzzle_pack = global.puzzle_fav_7;
favorites_button_7.pack_is_a_fav = 1;
favorites_button_7.fav_number = 7;
favorites_button_7.colour_to_use = 16777215;
favorites_button_7.depth = -150;
favorites_button_7.mask_index = sp_menu_puzzle_pack_fav_mask;
if (global.puzzle_favorites_can_fade_in == 0)
{
    favorites_button_7.image_alpha = 1;
    favorites_button_7.alarm[3] = 100 + random(600);
}
else
{
    favorites_button_7.alarm[3] = 100 + random(600);
}
if (global.puzzle_fav_8 > global.total_number_of_puzzle_packs)
{
    global.puzzle_fav_8 = 0;
}
favorites_button_8 = instance_create(global.button_fav_x + 1110, 395, ob_puzzle_pack_button);
favorites_button_8.button_fav_x_plus_amount = 1295;
favorites_button_8.puzzle_pack = global.puzzle_fav_8;
favorites_button_8.pack_is_a_fav = 1;
favorites_button_8.fav_number = 8;
favorites_button_8.colour_to_use = 16777215;
favorites_button_8.depth = -150;
favorites_button_8.mask_index = sp_menu_puzzle_pack_fav_mask;
if (global.puzzle_favorites_can_fade_in == 0)
{
    favorites_button_8.image_alpha = 1;
    favorites_button_8.alarm[3] = 100 + random(600);
}
else
{
    favorites_button_8.alarm[3] = 100 + random(600);
}
if (global.puzzle_fav_9 > global.total_number_of_puzzle_packs)
{
    global.puzzle_fav_9 = 0;
}
favorites_button_9 = instance_create(global.button_fav_x + 1110, 395, ob_puzzle_pack_button);
favorites_button_9.button_fav_x_plus_amount = 1480;
favorites_button_9.puzzle_pack = global.puzzle_fav_9;
favorites_button_9.pack_is_a_fav = 1;
favorites_button_9.fav_number = 9;
favorites_button_9.colour_to_use = 16777215;
favorites_button_9.depth = -150;
favorites_button_9.mask_index = sp_menu_puzzle_pack_fav_mask;
if (global.puzzle_favorites_can_fade_in == 0)
{
    favorites_button_9.image_alpha = 1;
    favorites_button_9.alarm[3] = 100 + random(600);
}
else
{
    favorites_button_9.alarm[3] = 100 + random(600);
}
if (global.puzzle_fav_10 > global.total_number_of_puzzle_packs)
{
    global.puzzle_fav_10 = 0;
}
favorites_button_10 = instance_create(global.button_fav_x + 1110, 395, ob_puzzle_pack_button);
favorites_button_10.button_fav_x_plus_amount = 1665;
favorites_button_10.puzzle_pack = global.puzzle_fav_10;
favorites_button_10.pack_is_a_fav = 1;
favorites_button_10.fav_number = 10;
favorites_button_10.colour_to_use = 16777215;
favorites_button_10.depth = -150;
favorites_button_10.mask_index = sp_menu_puzzle_pack_fav_mask;
if (global.puzzle_favorites_can_fade_in == 0)
{
    favorites_button_10.image_alpha = 1;
    favorites_button_10.alarm[3] = 100 + random(600);
}
else
{
    favorites_button_10.alarm[3] = 100 + random(600);
}
if (global.puzzle_fav_11 > global.total_number_of_puzzle_packs)
{
    global.puzzle_fav_11 = 0;
}
favorites_button_11 = instance_create(global.button_fav_x + 1110, 395, ob_puzzle_pack_button);
favorites_button_11.button_fav_x_plus_amount = 1850;
favorites_button_11.puzzle_pack = global.puzzle_fav_11;
favorites_button_11.pack_is_a_fav = 1;
favorites_button_11.fav_number = 11;
favorites_button_11.colour_to_use = 16777215;
favorites_button_11.depth = -150;
favorites_button_11.mask_index = sp_menu_puzzle_pack_fav_mask;
if (global.puzzle_favorites_can_fade_in == 0)
{
    favorites_button_11.image_alpha = 1;
    favorites_button_11.alarm[3] = 100 + random(600);
}
else
{
    favorites_button_11.alarm[3] = 100 + random(600);
}
if (global.puzzle_fav_12 > global.total_number_of_puzzle_packs)
{
    global.puzzle_fav_12 = 0;
}
favorites_button_12 = instance_create(global.button_fav_x + 1110, 395, ob_puzzle_pack_button);
favorites_button_12.button_fav_x_plus_amount = 2035;
favorites_button_12.puzzle_pack = global.puzzle_fav_12;
favorites_button_12.pack_is_a_fav = 1;
favorites_button_12.fav_number = 12;
favorites_button_12.colour_to_use = 16777215;
favorites_button_12.depth = -150;
favorites_button_12.mask_index = sp_menu_puzzle_pack_fav_mask;
if (global.puzzle_favorites_can_fade_in == 0)
{
    favorites_button_12.image_alpha = 1;
    favorites_button_12.alarm[3] = 100 + random(600);
}
else
{
    favorites_button_12.alarm[3] = 100 + random(600);
}
if (global.puzzle_fav_13 > global.total_number_of_puzzle_packs)
{
    global.puzzle_fav_13 = 0;
}
favorites_button_13 = instance_create(global.button_fav_x + 1110, 395, ob_puzzle_pack_button);
favorites_button_13.button_fav_x_plus_amount = 2220;
favorites_button_13.puzzle_pack = global.puzzle_fav_13;
favorites_button_13.pack_is_a_fav = 1;
favorites_button_13.fav_number = 13;
favorites_button_13.colour_to_use = 16777215;
favorites_button_13.depth = -150;
favorites_button_13.mask_index = sp_menu_puzzle_pack_fav_mask;
if (global.puzzle_favorites_can_fade_in == 0)
{
    favorites_button_13.image_alpha = 1;
    favorites_button_13.alarm[3] = 100 + random(600);
}
else
{
    favorites_button_13.alarm[3] = 100 + random(600);
}
if (global.puzzle_fav_14 > global.total_number_of_puzzle_packs)
{
    global.puzzle_fav_14 = 0;
}
favorites_button_14 = instance_create(global.button_fav_x + 1110, 395, ob_puzzle_pack_button);
favorites_button_14.button_fav_x_plus_amount = 2405;
favorites_button_14.puzzle_pack = global.puzzle_fav_14;
favorites_button_14.pack_is_a_fav = 1;
favorites_button_14.fav_number = 14;
favorites_button_14.colour_to_use = 16777215;
favorites_button_14.depth = -150;
favorites_button_14.mask_index = sp_menu_puzzle_pack_fav_mask;
if (global.puzzle_favorites_can_fade_in == 0)
{
    favorites_button_14.image_alpha = 1;
    favorites_button_14.alarm[3] = 100 + random(600);
}
else
{
    favorites_button_14.alarm[3] = 100 + random(600);
}
if (global.puzzle_fav_15 > global.total_number_of_puzzle_packs)
{
    global.puzzle_fav_15 = 0;
}
favorites_button_15 = instance_create(global.button_fav_x + 1110, 395, ob_puzzle_pack_button);
favorites_button_15.button_fav_x_plus_amount = 2590;
favorites_button_15.puzzle_pack = global.puzzle_fav_15;
favorites_button_15.pack_is_a_fav = 1;
favorites_button_15.fav_number = 15;
favorites_button_15.colour_to_use = 16777215;
favorites_button_15.depth = -150;
favorites_button_15.mask_index = sp_menu_puzzle_pack_fav_mask;
if (global.puzzle_favorites_can_fade_in == 0)
{
    favorites_button_15.image_alpha = 1;
    favorites_button_15.alarm[3] = 100 + random(600);
}
else
{
    favorites_button_15.alarm[3] = 100 + random(600);
}
puzzle_pack_list = ds_list_create();
unowned_list = ds_list_create();
if (global.pack_filer_using == 0)
{
    if (steam_user_owns_dlc(global.pack_23_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 23);
    }
    ds_list_add(puzzle_pack_list, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15);
    ds_list_add(puzzle_pack_list, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 30);
    ds_list_add(puzzle_pack_list, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45);
    ds_list_add(puzzle_pack_list, 46, 47, 48, 49, 50, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61);
    ds_list_add(puzzle_pack_list, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76);
    ds_list_add(puzzle_pack_list, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 119);
    ds_list_add(puzzle_pack_list, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 125, 116);
    ds_list_add(puzzle_pack_list, 107, 108, 109, 110, 111, 112, 113, 114, 115, 117, 118, 120, 121, 122, 123, 124, 126, 127);
    ds_list_add(puzzle_pack_list, 129, 128, 130, 132, 140, 141, 142, 143, 144, 131, 145, 146, 134, 135, 133, 147, 150);
}
else if (global.pack_filer_using == 2)
{
    if (steam_user_owns_dlc(global.pack_23_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 23);
    }
    ds_list_add(puzzle_pack_list, 92);
    ds_list_add(puzzle_pack_list, 27);
    ds_list_add(puzzle_pack_list, 19);
    ds_list_add(puzzle_pack_list, 134);
    ds_list_add(puzzle_pack_list, 52);
    ds_list_add(puzzle_pack_list, 24);
    ds_list_add(puzzle_pack_list, 140);
    ds_list_add(puzzle_pack_list, 34);
    ds_list_add(puzzle_pack_list, 3);
    ds_list_add(puzzle_pack_list, 65);
    ds_list_add(puzzle_pack_list, 145);
    ds_list_add(puzzle_pack_list, 35);
    ds_list_add(puzzle_pack_list, 101);
    ds_list_add(puzzle_pack_list, 14);
    ds_list_add(puzzle_pack_list, 103);
    ds_list_add(puzzle_pack_list, 122);
    ds_list_add(puzzle_pack_list, 129);
    ds_list_add(puzzle_pack_list, 58);
    ds_list_add(puzzle_pack_list, 67);
    ds_list_add(puzzle_pack_list, 41);
    ds_list_add(puzzle_pack_list, 88);
    ds_list_add(puzzle_pack_list, 142);
    ds_list_add(puzzle_pack_list, 59);
    ds_list_add(puzzle_pack_list, 124);
    ds_list_add(puzzle_pack_list, 7);
    ds_list_add(puzzle_pack_list, 69);
    ds_list_add(puzzle_pack_list, 143);
    ds_list_add(puzzle_pack_list, 8);
    ds_list_add(puzzle_pack_list, 9);
    ds_list_add(puzzle_pack_list, 63);
    ds_list_add(puzzle_pack_list, 46);
    ds_list_add(puzzle_pack_list, 47);
    ds_list_add(puzzle_pack_list, 30);
    ds_list_add(puzzle_pack_list, 89);
    ds_list_add(puzzle_pack_list, 77);
    ds_list_add(puzzle_pack_list, 109);
    ds_list_add(puzzle_pack_list, 79);
    ds_list_add(puzzle_pack_list, 118);
    ds_list_add(puzzle_pack_list, 22);
    ds_list_add(puzzle_pack_list, 126);
    ds_list_add(puzzle_pack_list, 127);
    ds_list_add(puzzle_pack_list, 86);
    ds_list_add(puzzle_pack_list, 42);
    ds_list_add(puzzle_pack_list, 25);
    ds_list_add(puzzle_pack_list, 83);
    ds_list_add(puzzle_pack_list, 141);
    ds_list_add(puzzle_pack_list, 144);
    ds_list_add(puzzle_pack_list, 6);
    ds_list_add(puzzle_pack_list, 45);
    ds_list_add(puzzle_pack_list, 112);
    ds_list_add(puzzle_pack_list, 17);
    ds_list_add(puzzle_pack_list, 102);
    ds_list_add(puzzle_pack_list, 33);
    ds_list_add(puzzle_pack_list, 123);
    ds_list_add(puzzle_pack_list, 21);
    ds_list_add(puzzle_pack_list, 115);
    ds_list_add(puzzle_pack_list, 20);
    ds_list_add(puzzle_pack_list, 10);
    ds_list_add(puzzle_pack_list, 56);
    ds_list_add(puzzle_pack_list, 146);
    ds_list_add(puzzle_pack_list, 71);
    ds_list_add(puzzle_pack_list, 60);
    ds_list_add(puzzle_pack_list, 18);
    ds_list_add(puzzle_pack_list, 2);
    ds_list_add(puzzle_pack_list, 26);
    ds_list_add(puzzle_pack_list, 120);
    ds_list_add(puzzle_pack_list, 11);
    ds_list_add(puzzle_pack_list, 53);
    ds_list_add(puzzle_pack_list, 49);
    ds_list_add(puzzle_pack_list, 50);
    ds_list_add(puzzle_pack_list, 38);
    ds_list_add(puzzle_pack_list, 40);
    ds_list_add(puzzle_pack_list, 39);
    ds_list_add(puzzle_pack_list, 75);
    ds_list_add(puzzle_pack_list, 61);
    ds_list_add(puzzle_pack_list, 54);
    ds_list_add(puzzle_pack_list, 1);
    ds_list_add(puzzle_pack_list, 12);
    ds_list_add(puzzle_pack_list, 68);
    ds_list_add(puzzle_pack_list, 48);
    ds_list_add(puzzle_pack_list, 44);
    ds_list_add(puzzle_pack_list, 13);
    ds_list_add(puzzle_pack_list, 32);
    ds_list_add(puzzle_pack_list, 73);
    ds_list_add(puzzle_pack_list, 37);
    ds_list_add(puzzle_pack_list, 4);
    ds_list_add(puzzle_pack_list, 90);
    ds_list_add(puzzle_pack_list, 72);
    ds_list_add(puzzle_pack_list, 81);
    ds_list_add(puzzle_pack_list, 28);
    ds_list_add(puzzle_pack_list, 107);
    ds_list_add(puzzle_pack_list, 82);
    ds_list_add(puzzle_pack_list, 105);
    ds_list_add(puzzle_pack_list, 64);
    ds_list_add(puzzle_pack_list, 80);
    ds_list_add(puzzle_pack_list, 113);
    ds_list_add(puzzle_pack_list, 29);
    ds_list_add(puzzle_pack_list, 5);
    ds_list_add(puzzle_pack_list, 106);
    ds_list_add(puzzle_pack_list, 62);
    ds_list_add(puzzle_pack_list, 16);
    ds_list_add(puzzle_pack_list, 84);
    ds_list_add(puzzle_pack_list, 150);
    ds_list_add(puzzle_pack_list, 66);
    ds_list_add(puzzle_pack_list, 93);
    ds_list_add(puzzle_pack_list, 15);
    ds_list_add(puzzle_pack_list, 70);
    ds_list_add(puzzle_pack_list, 74);
    ds_list_add(puzzle_pack_list, 76);
    ds_list_add(puzzle_pack_list, 85);
    ds_list_add(puzzle_pack_list, 87);
    ds_list_add(puzzle_pack_list, 94);
    ds_list_add(puzzle_pack_list, 95);
    ds_list_add(puzzle_pack_list, 96);
    ds_list_add(puzzle_pack_list, 97);
    ds_list_add(puzzle_pack_list, 98);
    ds_list_add(puzzle_pack_list, 99);
    ds_list_add(puzzle_pack_list, 100);
    ds_list_add(puzzle_pack_list, 108);
    ds_list_add(puzzle_pack_list, 110);
    ds_list_add(puzzle_pack_list, 111);
    ds_list_add(puzzle_pack_list, 114);
    ds_list_add(puzzle_pack_list, 116);
    ds_list_add(puzzle_pack_list, 119);
    ds_list_add(puzzle_pack_list, 132);
    ds_list_add(puzzle_pack_list, 135);
    ds_list_add(puzzle_pack_list, 91);
    ds_list_add(puzzle_pack_list, 104);
    ds_list_add(puzzle_pack_list, 131);
    ds_list_add(puzzle_pack_list, 147);
    ds_list_add(puzzle_pack_list, 121);
    ds_list_add(puzzle_pack_list, 117);
    ds_list_add(puzzle_pack_list, 125);
    ds_list_add(puzzle_pack_list, 128);
    ds_list_add(puzzle_pack_list, 130);
    ds_list_add(puzzle_pack_list, 133);
    ds_list_add(puzzle_pack_list, 57);
    ds_list_add(puzzle_pack_list, 31);
    ds_list_add(puzzle_pack_list, 78);
    ds_list_add(puzzle_pack_list, 55);
    ds_list_add(puzzle_pack_list, 36);
    ds_list_add(puzzle_pack_list, 43);
}
if (global.pack_filer_using == 1)
{
    ds_list_add(puzzle_pack_list, 43);
    ds_list_add(puzzle_pack_list, 36);
    ds_list_add(puzzle_pack_list, 55);
    ds_list_add(puzzle_pack_list, 78);
    ds_list_add(puzzle_pack_list, 31);
    ds_list_add(puzzle_pack_list, 57);
    ds_list_add(puzzle_pack_list, 121);
    ds_list_add(puzzle_pack_list, 117);
    ds_list_add(puzzle_pack_list, 125);
    ds_list_add(puzzle_pack_list, 128);
    ds_list_add(puzzle_pack_list, 130);
    ds_list_add(puzzle_pack_list, 133);
    ds_list_add(puzzle_pack_list, 91);
    ds_list_add(puzzle_pack_list, 104);
    ds_list_add(puzzle_pack_list, 147);
    ds_list_add(puzzle_pack_list, 131);
    ds_list_add(puzzle_pack_list, 135);
    ds_list_add(puzzle_pack_list, 132);
    ds_list_add(puzzle_pack_list, 119);
    ds_list_add(puzzle_pack_list, 116);
    ds_list_add(puzzle_pack_list, 114);
    ds_list_add(puzzle_pack_list, 111);
    ds_list_add(puzzle_pack_list, 110);
    ds_list_add(puzzle_pack_list, 108);
    ds_list_add(puzzle_pack_list, 100);
    ds_list_add(puzzle_pack_list, 99);
    ds_list_add(puzzle_pack_list, 98);
    ds_list_add(puzzle_pack_list, 97);
    ds_list_add(puzzle_pack_list, 96);
    ds_list_add(puzzle_pack_list, 95);
    ds_list_add(puzzle_pack_list, 94);
    ds_list_add(puzzle_pack_list, 87);
    ds_list_add(puzzle_pack_list, 85);
    ds_list_add(puzzle_pack_list, 76);
    ds_list_add(puzzle_pack_list, 74);
    ds_list_add(puzzle_pack_list, 70);
    ds_list_add(puzzle_pack_list, 15);
    ds_list_add(puzzle_pack_list, 93);
    ds_list_add(puzzle_pack_list, 66);
    ds_list_add(puzzle_pack_list, 150);
    ds_list_add(puzzle_pack_list, 84);
    ds_list_add(puzzle_pack_list, 16);
    ds_list_add(puzzle_pack_list, 62);
    ds_list_add(puzzle_pack_list, 106);
    ds_list_add(puzzle_pack_list, 5);
    ds_list_add(puzzle_pack_list, 29);
    ds_list_add(puzzle_pack_list, 113);
    ds_list_add(puzzle_pack_list, 80);
    ds_list_add(puzzle_pack_list, 64);
    ds_list_add(puzzle_pack_list, 105);
    ds_list_add(puzzle_pack_list, 82);
    ds_list_add(puzzle_pack_list, 107);
    ds_list_add(puzzle_pack_list, 28);
    ds_list_add(puzzle_pack_list, 81);
    ds_list_add(puzzle_pack_list, 72);
    ds_list_add(puzzle_pack_list, 90);
    ds_list_add(puzzle_pack_list, 4);
    ds_list_add(puzzle_pack_list, 37);
    ds_list_add(puzzle_pack_list, 73);
    ds_list_add(puzzle_pack_list, 32);
    ds_list_add(puzzle_pack_list, 13);
    ds_list_add(puzzle_pack_list, 44);
    ds_list_add(puzzle_pack_list, 48);
    ds_list_add(puzzle_pack_list, 68);
    ds_list_add(puzzle_pack_list, 12);
    ds_list_add(puzzle_pack_list, 1);
    ds_list_add(puzzle_pack_list, 54);
    ds_list_add(puzzle_pack_list, 61);
    ds_list_add(puzzle_pack_list, 75);
    ds_list_add(puzzle_pack_list, 39);
    ds_list_add(puzzle_pack_list, 40);
    ds_list_add(puzzle_pack_list, 38);
    ds_list_add(puzzle_pack_list, 50);
    ds_list_add(puzzle_pack_list, 49);
    ds_list_add(puzzle_pack_list, 53);
    ds_list_add(puzzle_pack_list, 11);
    ds_list_add(puzzle_pack_list, 120);
    ds_list_add(puzzle_pack_list, 26);
    ds_list_add(puzzle_pack_list, 2);
    ds_list_add(puzzle_pack_list, 18);
    ds_list_add(puzzle_pack_list, 60);
    ds_list_add(puzzle_pack_list, 71);
    ds_list_add(puzzle_pack_list, 146);
    ds_list_add(puzzle_pack_list, 56);
    ds_list_add(puzzle_pack_list, 10);
    ds_list_add(puzzle_pack_list, 20);
    ds_list_add(puzzle_pack_list, 115);
    ds_list_add(puzzle_pack_list, 21);
    ds_list_add(puzzle_pack_list, 123);
    ds_list_add(puzzle_pack_list, 33);
    ds_list_add(puzzle_pack_list, 102);
    ds_list_add(puzzle_pack_list, 17);
    ds_list_add(puzzle_pack_list, 112);
    ds_list_add(puzzle_pack_list, 45);
    ds_list_add(puzzle_pack_list, 6);
    ds_list_add(puzzle_pack_list, 144);
    ds_list_add(puzzle_pack_list, 141);
    ds_list_add(puzzle_pack_list, 83);
    ds_list_add(puzzle_pack_list, 25);
    ds_list_add(puzzle_pack_list, 42);
    ds_list_add(puzzle_pack_list, 86);
    ds_list_add(puzzle_pack_list, 127);
    ds_list_add(puzzle_pack_list, 126);
    ds_list_add(puzzle_pack_list, 22);
    ds_list_add(puzzle_pack_list, 118);
    ds_list_add(puzzle_pack_list, 79);
    ds_list_add(puzzle_pack_list, 109);
    ds_list_add(puzzle_pack_list, 77);
    ds_list_add(puzzle_pack_list, 89);
    ds_list_add(puzzle_pack_list, 30);
    ds_list_add(puzzle_pack_list, 47);
    ds_list_add(puzzle_pack_list, 46);
    ds_list_add(puzzle_pack_list, 63);
    ds_list_add(puzzle_pack_list, 9);
    ds_list_add(puzzle_pack_list, 8);
    ds_list_add(puzzle_pack_list, 143);
    ds_list_add(puzzle_pack_list, 69);
    ds_list_add(puzzle_pack_list, 7);
    ds_list_add(puzzle_pack_list, 124);
    ds_list_add(puzzle_pack_list, 59);
    ds_list_add(puzzle_pack_list, 142);
    ds_list_add(puzzle_pack_list, 88);
    ds_list_add(puzzle_pack_list, 41);
    ds_list_add(puzzle_pack_list, 67);
    ds_list_add(puzzle_pack_list, 58);
    ds_list_add(puzzle_pack_list, 129);
    ds_list_add(puzzle_pack_list, 122);
    ds_list_add(puzzle_pack_list, 103);
    ds_list_add(puzzle_pack_list, 14);
    ds_list_add(puzzle_pack_list, 101);
    ds_list_add(puzzle_pack_list, 35);
    ds_list_add(puzzle_pack_list, 145);
    ds_list_add(puzzle_pack_list, 65);
    ds_list_add(puzzle_pack_list, 3);
    ds_list_add(puzzle_pack_list, 34);
    ds_list_add(puzzle_pack_list, 140);
    ds_list_add(puzzle_pack_list, 24);
    ds_list_add(puzzle_pack_list, 52);
    ds_list_add(puzzle_pack_list, 134);
    ds_list_add(puzzle_pack_list, 19);
    ds_list_add(puzzle_pack_list, 27);
    ds_list_add(puzzle_pack_list, 92);
    if (steam_user_owns_dlc(global.pack_23_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 23);
    }
}
else if (global.pack_filer_using == 3)
{
    ds_list_add(puzzle_pack_list, 70);
    ds_list_add(puzzle_pack_list, 74);
    ds_list_add(puzzle_pack_list, 76);
    ds_list_add(puzzle_pack_list, 85);
    ds_list_add(puzzle_pack_list, 87);
    ds_list_add(puzzle_pack_list, 94);
    ds_list_add(puzzle_pack_list, 95);
    ds_list_add(puzzle_pack_list, 96);
    ds_list_add(puzzle_pack_list, 97);
    ds_list_add(puzzle_pack_list, 98);
    ds_list_add(puzzle_pack_list, 99);
    ds_list_add(puzzle_pack_list, 100);
    ds_list_add(puzzle_pack_list, 108);
    ds_list_add(puzzle_pack_list, 110);
    ds_list_add(puzzle_pack_list, 111);
    ds_list_add(puzzle_pack_list, 114);
    ds_list_add(puzzle_pack_list, 116);
    ds_list_add(puzzle_pack_list, 119);
    ds_list_add(puzzle_pack_list, 132);
    ds_list_add(puzzle_pack_list, 135);
    ds_list_add(puzzle_pack_list, 121);
    ds_list_add(puzzle_pack_list, 117);
    ds_list_add(puzzle_pack_list, 125);
    ds_list_add(puzzle_pack_list, 128);
    ds_list_add(puzzle_pack_list, 130);
    ds_list_add(puzzle_pack_list, 133);
    ds_list_add(puzzle_pack_list, 39);
    ds_list_add(puzzle_pack_list, 54);
    ds_list_add(puzzle_pack_list, 40);
    ds_list_add(puzzle_pack_list, 38);
    ds_list_add(puzzle_pack_list, 145);
    ds_list_add(puzzle_pack_list, 93);
    ds_list_add(puzzle_pack_list, 84);
    ds_list_add(puzzle_pack_list, 49);
    ds_list_add(puzzle_pack_list, 150);
    ds_list_add(puzzle_pack_list, 41);
    ds_list_add(puzzle_pack_list, 90);
    ds_list_add(puzzle_pack_list, 83);
    ds_list_add(puzzle_pack_list, 77);
    ds_list_add(puzzle_pack_list, 50);
    ds_list_add(puzzle_pack_list, 122);
    ds_list_add(puzzle_pack_list, 89);
    ds_list_add(puzzle_pack_list, 82);
    ds_list_add(puzzle_pack_list, 142);
    ds_list_add(puzzle_pack_list, 143);
    ds_list_add(puzzle_pack_list, 103);
    ds_list_add(puzzle_pack_list, 66);
    ds_list_add(puzzle_pack_list, 106);
    ds_list_add(puzzle_pack_list, 88);
    ds_list_add(puzzle_pack_list, 67);
    ds_list_add(puzzle_pack_list, 101);
    ds_list_add(puzzle_pack_list, 115);
    ds_list_add(puzzle_pack_list, 86);
    ds_list_add(puzzle_pack_list, 69);
    ds_list_add(puzzle_pack_list, 134);
    ds_list_add(puzzle_pack_list, 120);
    ds_list_add(puzzle_pack_list, 141);
    ds_list_add(puzzle_pack_list, 91);
    ds_list_add(puzzle_pack_list, 129);
    ds_list_add(puzzle_pack_list, 53);
    ds_list_add(puzzle_pack_list, 102);
    if (steam_user_owns_dlc(global.pack_23_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 23);
    }
    ds_list_add(puzzle_pack_list, 37);
    ds_list_add(puzzle_pack_list, 123);
    ds_list_add(puzzle_pack_list, 79);
    ds_list_add(puzzle_pack_list, 61);
    ds_list_add(puzzle_pack_list, 92);
    ds_list_add(puzzle_pack_list, 72);
    ds_list_add(puzzle_pack_list, 73);
    ds_list_add(puzzle_pack_list, 80);
    ds_list_add(puzzle_pack_list, 59);
    ds_list_add(puzzle_pack_list, 104);
    ds_list_add(puzzle_pack_list, 147);
    ds_list_add(puzzle_pack_list, 78);
    ds_list_add(puzzle_pack_list, 105);
    ds_list_add(puzzle_pack_list, 52);
    ds_list_add(puzzle_pack_list, 36);
    ds_list_add(puzzle_pack_list, 71);
    ds_list_add(puzzle_pack_list, 131);
    ds_list_add(puzzle_pack_list, 81);
    ds_list_add(puzzle_pack_list, 32);
    ds_list_add(puzzle_pack_list, 146);
    ds_list_add(puzzle_pack_list, 31);
    ds_list_add(puzzle_pack_list, 140);
    ds_list_add(puzzle_pack_list, 118);
    ds_list_add(puzzle_pack_list, 48);
    ds_list_add(puzzle_pack_list, 30);
    ds_list_add(puzzle_pack_list, 8);
    ds_list_add(puzzle_pack_list, 45);
    ds_list_add(puzzle_pack_list, 75);
    ds_list_add(puzzle_pack_list, 68);
    ds_list_add(puzzle_pack_list, 26);
    ds_list_add(puzzle_pack_list, 60);
    ds_list_add(puzzle_pack_list, 33);
    ds_list_add(puzzle_pack_list, 126);
    ds_list_add(puzzle_pack_list, 112);
    ds_list_add(puzzle_pack_list, 62);
    ds_list_add(puzzle_pack_list, 113);
    ds_list_add(puzzle_pack_list, 58);
    ds_list_add(puzzle_pack_list, 55);
    ds_list_add(puzzle_pack_list, 9);
    ds_list_add(puzzle_pack_list, 13);
    ds_list_add(puzzle_pack_list, 65);
    ds_list_add(puzzle_pack_list, 14);
    ds_list_add(puzzle_pack_list, 107);
    ds_list_add(puzzle_pack_list, 109);
    ds_list_add(puzzle_pack_list, 12);
    ds_list_add(puzzle_pack_list, 24);
    ds_list_add(puzzle_pack_list, 5);
    ds_list_add(puzzle_pack_list, 10);
    ds_list_add(puzzle_pack_list, 21);
    ds_list_add(puzzle_pack_list, 47);
    ds_list_add(puzzle_pack_list, 57);
    ds_list_add(puzzle_pack_list, 124);
    ds_list_add(puzzle_pack_list, 35);
    ds_list_add(puzzle_pack_list, 34);
    ds_list_add(puzzle_pack_list, 44);
    ds_list_add(puzzle_pack_list, 63);
    ds_list_add(puzzle_pack_list, 144);
    ds_list_add(puzzle_pack_list, 56);
    ds_list_add(puzzle_pack_list, 27);
    ds_list_add(puzzle_pack_list, 28);
    ds_list_add(puzzle_pack_list, 1);
    ds_list_add(puzzle_pack_list, 15);
    ds_list_add(puzzle_pack_list, 16);
    ds_list_add(puzzle_pack_list, 18);
    ds_list_add(puzzle_pack_list, 43);
    ds_list_add(puzzle_pack_list, 11);
    ds_list_add(puzzle_pack_list, 25);
    ds_list_add(puzzle_pack_list, 4);
    ds_list_add(puzzle_pack_list, 2);
    ds_list_add(puzzle_pack_list, 6);
    ds_list_add(puzzle_pack_list, 127);
    ds_list_add(puzzle_pack_list, 46);
    ds_list_add(puzzle_pack_list, 3);
    ds_list_add(puzzle_pack_list, 7);
    ds_list_add(puzzle_pack_list, 42);
    ds_list_add(puzzle_pack_list, 22);
    ds_list_add(puzzle_pack_list, 64);
    ds_list_add(puzzle_pack_list, 20);
    ds_list_add(puzzle_pack_list, 17);
    ds_list_add(puzzle_pack_list, 19);
    ds_list_add(puzzle_pack_list, 29);
}
else if (global.pack_filer_using == 4)
{
    ds_list_add(puzzle_pack_list, 29);
    ds_list_add(puzzle_pack_list, 19);
    ds_list_add(puzzle_pack_list, 64);
    ds_list_add(puzzle_pack_list, 17);
    ds_list_add(puzzle_pack_list, 20);
    ds_list_add(puzzle_pack_list, 42);
    ds_list_add(puzzle_pack_list, 22);
    ds_list_add(puzzle_pack_list, 7);
    ds_list_add(puzzle_pack_list, 3);
    ds_list_add(puzzle_pack_list, 46);
    ds_list_add(puzzle_pack_list, 127);
    ds_list_add(puzzle_pack_list, 6);
    ds_list_add(puzzle_pack_list, 2);
    ds_list_add(puzzle_pack_list, 4);
    ds_list_add(puzzle_pack_list, 25);
    ds_list_add(puzzle_pack_list, 18);
    ds_list_add(puzzle_pack_list, 43);
    ds_list_add(puzzle_pack_list, 11);
    ds_list_add(puzzle_pack_list, 1);
    ds_list_add(puzzle_pack_list, 16);
    ds_list_add(puzzle_pack_list, 15);
    ds_list_add(puzzle_pack_list, 28);
    ds_list_add(puzzle_pack_list, 27);
    ds_list_add(puzzle_pack_list, 44);
    ds_list_add(puzzle_pack_list, 63);
    ds_list_add(puzzle_pack_list, 57);
    ds_list_add(puzzle_pack_list, 34);
    ds_list_add(puzzle_pack_list, 35);
    ds_list_add(puzzle_pack_list, 56);
    ds_list_add(puzzle_pack_list, 144);
    ds_list_add(puzzle_pack_list, 124);
    ds_list_add(puzzle_pack_list, 47);
    ds_list_add(puzzle_pack_list, 21);
    ds_list_add(puzzle_pack_list, 10);
    ds_list_add(puzzle_pack_list, 5);
    ds_list_add(puzzle_pack_list, 12);
    ds_list_add(puzzle_pack_list, 14);
    ds_list_add(puzzle_pack_list, 109);
    ds_list_add(puzzle_pack_list, 107);
    ds_list_add(puzzle_pack_list, 9);
    ds_list_add(puzzle_pack_list, 13);
    ds_list_add(puzzle_pack_list, 24);
    ds_list_add(puzzle_pack_list, 65);
    ds_list_add(puzzle_pack_list, 55);
    ds_list_add(puzzle_pack_list, 33);
    ds_list_add(puzzle_pack_list, 58);
    ds_list_add(puzzle_pack_list, 60);
    ds_list_add(puzzle_pack_list, 126);
    ds_list_add(puzzle_pack_list, 113);
    ds_list_add(puzzle_pack_list, 112);
    ds_list_add(puzzle_pack_list, 62);
    ds_list_add(puzzle_pack_list, 26);
    ds_list_add(puzzle_pack_list, 30);
    ds_list_add(puzzle_pack_list, 45);
    ds_list_add(puzzle_pack_list, 68);
    ds_list_add(puzzle_pack_list, 75);
    ds_list_add(puzzle_pack_list, 8);
    ds_list_add(puzzle_pack_list, 48);
    ds_list_add(puzzle_pack_list, 118);
    ds_list_add(puzzle_pack_list, 146);
    ds_list_add(puzzle_pack_list, 140);
    ds_list_add(puzzle_pack_list, 31);
    ds_list_add(puzzle_pack_list, 32);
    ds_list_add(puzzle_pack_list, 131);
    ds_list_add(puzzle_pack_list, 71);
    ds_list_add(puzzle_pack_list, 81);
    ds_list_add(puzzle_pack_list, 52);
    ds_list_add(puzzle_pack_list, 105);
    ds_list_add(puzzle_pack_list, 36);
    ds_list_add(puzzle_pack_list, 147);
    ds_list_add(puzzle_pack_list, 78);
    ds_list_add(puzzle_pack_list, 59);
    ds_list_add(puzzle_pack_list, 104);
    ds_list_add(puzzle_pack_list, 61);
    ds_list_add(puzzle_pack_list, 80);
    ds_list_add(puzzle_pack_list, 92);
    ds_list_add(puzzle_pack_list, 72);
    ds_list_add(puzzle_pack_list, 73);
    ds_list_add(puzzle_pack_list, 37);
    ds_list_add(puzzle_pack_list, 79);
    ds_list_add(puzzle_pack_list, 123);
    if (steam_user_owns_dlc(global.pack_23_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 23);
    }
    ds_list_add(puzzle_pack_list, 53);
    ds_list_add(puzzle_pack_list, 141);
    ds_list_add(puzzle_pack_list, 102);
    ds_list_add(puzzle_pack_list, 129);
    ds_list_add(puzzle_pack_list, 91);
    ds_list_add(puzzle_pack_list, 69);
    ds_list_add(puzzle_pack_list, 134);
    ds_list_add(puzzle_pack_list, 115);
    ds_list_add(puzzle_pack_list, 120);
    ds_list_add(puzzle_pack_list, 86);
    ds_list_add(puzzle_pack_list, 67);
    ds_list_add(puzzle_pack_list, 101);
    ds_list_add(puzzle_pack_list, 106);
    ds_list_add(puzzle_pack_list, 88);
    ds_list_add(puzzle_pack_list, 82);
    ds_list_add(puzzle_pack_list, 103);
    ds_list_add(puzzle_pack_list, 142);
    ds_list_add(puzzle_pack_list, 66);
    ds_list_add(puzzle_pack_list, 143);
    ds_list_add(puzzle_pack_list, 50);
    ds_list_add(puzzle_pack_list, 77);
    ds_list_add(puzzle_pack_list, 122);
    ds_list_add(puzzle_pack_list, 89);
    ds_list_add(puzzle_pack_list, 41);
    ds_list_add(puzzle_pack_list, 83);
    ds_list_add(puzzle_pack_list, 90);
    ds_list_add(puzzle_pack_list, 150);
    ds_list_add(puzzle_pack_list, 49);
    ds_list_add(puzzle_pack_list, 84);
    ds_list_add(puzzle_pack_list, 93);
    ds_list_add(puzzle_pack_list, 145);
    ds_list_add(puzzle_pack_list, 38);
    ds_list_add(puzzle_pack_list, 40);
    ds_list_add(puzzle_pack_list, 54);
    ds_list_add(puzzle_pack_list, 39);
    ds_list_add(puzzle_pack_list, 121);
    ds_list_add(puzzle_pack_list, 117);
    ds_list_add(puzzle_pack_list, 125);
    ds_list_add(puzzle_pack_list, 128);
    ds_list_add(puzzle_pack_list, 130);
    ds_list_add(puzzle_pack_list, 133);
    ds_list_add(puzzle_pack_list, 70);
    ds_list_add(puzzle_pack_list, 74);
    ds_list_add(puzzle_pack_list, 76);
    ds_list_add(puzzle_pack_list, 85);
    ds_list_add(puzzle_pack_list, 87);
    ds_list_add(puzzle_pack_list, 94);
    ds_list_add(puzzle_pack_list, 95);
    ds_list_add(puzzle_pack_list, 96);
    ds_list_add(puzzle_pack_list, 97);
    ds_list_add(puzzle_pack_list, 98);
    ds_list_add(puzzle_pack_list, 99);
    ds_list_add(puzzle_pack_list, 100);
    ds_list_add(puzzle_pack_list, 108);
    ds_list_add(puzzle_pack_list, 110);
    ds_list_add(puzzle_pack_list, 111);
    ds_list_add(puzzle_pack_list, 114);
    ds_list_add(puzzle_pack_list, 116);
    ds_list_add(puzzle_pack_list, 119);
    ds_list_add(puzzle_pack_list, 132);
    ds_list_add(puzzle_pack_list, 135);
}
else if (global.pack_filer_using == 5)
{
    ds_list_add(puzzle_pack_list, 3);
    ds_list_add(puzzle_pack_list, 4);
    ds_list_add(puzzle_pack_list, 6);
    ds_list_add(puzzle_pack_list, 75);
    ds_list_add(puzzle_pack_list, 126);
    ds_list_add(puzzle_pack_list, 127);
    ds_list_add(puzzle_pack_list, 144);
    if (steam_user_owns_dlc(global.pack_17_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 17);
    }
    if (steam_user_owns_dlc(global.pack_43_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 43);
    }
    if (steam_user_owns_dlc(global.pack_45_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 45);
    }
    if (steam_user_owns_dlc(global.pack_107_dlc_appid))
    {
        ds_list_add(unowned_list, 107);
    }
    if (steam_user_owns_dlc(global.pack_1_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 1);
    }
    if (steam_user_owns_dlc(global.pack_2_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 2);
    }
    if (steam_user_owns_dlc(global.pack_5_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 5);
    }
    if (steam_user_owns_dlc(global.pack_7_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 7);
    }
    if (steam_user_owns_dlc(global.pack_8_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 8);
    }
    if (steam_user_owns_dlc(global.pack_9_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 9);
    }
    if (steam_user_owns_dlc(global.pack_10_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 10);
    }
    if (steam_user_owns_dlc(global.pack_11_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 11);
    }
    if (steam_user_owns_dlc(global.pack_12_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 12);
    }
    if (steam_user_owns_dlc(global.pack_13_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 13);
    }
    if (steam_user_owns_dlc(global.pack_14_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 14);
    }
    if (steam_user_owns_dlc(global.pack_15_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 15);
    }
    if (steam_user_owns_dlc(global.pack_16_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 16);
    }
    if (steam_user_owns_dlc(global.pack_18_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 18);
    }
    if (steam_user_owns_dlc(global.pack_19_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 19);
    }
    if (steam_user_owns_dlc(global.pack_20_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 20);
    }
    if (steam_user_owns_dlc(global.pack_21_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 21);
    }
    if (steam_user_owns_dlc(global.pack_22_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 22);
    }
    if (steam_user_owns_dlc(global.pack_23_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 23);
    }
    if (steam_user_owns_dlc(global.pack_24_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 24);
    }
    if (steam_user_owns_dlc(global.pack_25_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 25);
    }
    if (steam_user_owns_dlc(global.pack_26_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 26);
    }
    if (steam_user_owns_dlc(global.pack_27_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 27);
    }
    if (steam_user_owns_dlc(global.pack_28_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 28);
    }
    if (steam_user_owns_dlc(global.pack_29_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 29);
    }
    if (steam_user_owns_dlc(global.pack_30_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 30);
    }
    if (steam_user_owns_dlc(global.pack_31_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 31);
    }
    if (steam_user_owns_dlc(global.pack_32_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 32);
    }
    if (steam_user_owns_dlc(global.pack_33_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 33);
    }
    if (steam_user_owns_dlc(global.pack_34_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 34);
    }
    if (steam_user_owns_dlc(global.pack_35_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 35);
    }
    if (steam_user_owns_dlc(global.pack_36_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 36);
    }
    if (steam_user_owns_dlc(global.pack_37_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 37);
    }
    if (steam_user_owns_dlc(global.pack_38_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 38);
    }
    if (steam_user_owns_dlc(global.pack_39_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 39);
    }
    if (steam_user_owns_dlc(global.pack_40_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 40);
    }
    if (steam_user_owns_dlc(global.pack_41_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 41);
    }
    if (steam_user_owns_dlc(global.pack_42_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 42);
    }
    if (steam_user_owns_dlc(global.pack_44_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 44);
    }
    if (steam_user_owns_dlc(global.pack_46_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 46);
    }
    if (steam_user_owns_dlc(global.pack_47_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 47);
    }
    if (steam_user_owns_dlc(global.pack_48_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 48);
    }
    if (steam_user_owns_dlc(global.pack_49_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 49);
    }
    if (steam_user_owns_dlc(global.pack_50_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 50);
    }
    if (steam_user_owns_dlc(global.pack_52_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 52);
    }
    if (steam_user_owns_dlc(global.pack_53_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 53);
    }
    if (steam_user_owns_dlc(global.pack_54_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 54);
    }
    if (steam_user_owns_dlc(global.pack_55_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 55);
    }
    if (steam_user_owns_dlc(global.pack_56_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 56);
    }
    if (steam_user_owns_dlc(global.pack_57_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 57);
    }
    if (steam_user_owns_dlc(global.pack_58_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 58);
    }
    if (steam_user_owns_dlc(global.pack_59_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 59);
    }
    if (steam_user_owns_dlc(global.pack_60_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 60);
    }
    if (steam_user_owns_dlc(global.pack_61_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 61);
    }
    if (steam_user_owns_dlc(global.pack_62_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 62);
    }
    if (steam_user_owns_dlc(global.pack_63_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 63);
    }
    if (steam_user_owns_dlc(global.pack_64_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 64);
    }
    if (steam_user_owns_dlc(global.pack_65_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 65);
    }
    if (steam_user_owns_dlc(global.pack_81_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 81);
    }
    if (steam_user_owns_dlc(global.pack_66_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 66);
    }
    if (steam_user_owns_dlc(global.pack_67_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 67);
    }
    if (steam_user_owns_dlc(global.pack_68_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 68);
    }
    if (steam_user_owns_dlc(global.pack_69_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 69);
    }
    if (steam_user_owns_dlc(global.pack_70_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 70);
    }
    if (steam_user_owns_dlc(global.pack_71_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 71);
    }
    if (steam_user_owns_dlc(global.pack_72_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 72);
    }
    if (steam_user_owns_dlc(global.pack_73_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 73);
    }
    if (steam_user_owns_dlc(global.pack_74_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 74);
    }
    if (steam_user_owns_dlc(global.pack_76_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 76);
    }
    if (steam_user_owns_dlc(global.pack_77_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 77);
    }
    if (steam_user_owns_dlc(global.pack_78_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 78);
    }
    if (steam_user_owns_dlc(global.pack_79_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 79);
    }
    if (steam_user_owns_dlc(global.pack_80_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 80);
    }
    if (steam_user_owns_dlc(global.pack_82_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 82);
    }
    if (steam_user_owns_dlc(global.pack_83_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 83);
    }
    if (steam_user_owns_dlc(global.pack_84_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 84);
    }
    if (steam_user_owns_dlc(global.pack_85_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 85);
    }
    if (steam_user_owns_dlc(global.pack_86_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 86);
    }
    if (steam_user_owns_dlc(global.pack_87_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 87);
    }
    if (steam_user_owns_dlc(global.pack_88_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 88);
    }
    if (steam_user_owns_dlc(global.pack_89_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 89);
    }
    if (steam_user_owns_dlc(global.pack_90_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 90);
    }
    if (steam_user_owns_dlc(global.pack_91_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 91);
    }
    if (steam_user_owns_dlc(global.pack_92_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 92);
    }
    if (steam_user_owns_dlc(global.pack_93_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 93);
    }
    if (steam_user_owns_dlc(global.pack_94_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 94);
    }
    if (steam_user_owns_dlc(global.pack_95_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 95);
    }
    if (steam_user_owns_dlc(global.pack_96_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 96);
    }
    if (steam_user_owns_dlc(global.pack_97_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 97);
    }
    if (steam_user_owns_dlc(global.pack_98_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 98);
    }
    if (steam_user_owns_dlc(global.pack_99_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 99);
    }
    if (steam_user_owns_dlc(global.pack_100_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 100);
    }
    if (steam_user_owns_dlc(global.pack_102_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 102);
    }
    if (steam_user_owns_dlc(global.pack_103_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 103);
    }
    if (steam_user_owns_dlc(global.pack_104_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 104);
    }
    if (steam_user_owns_dlc(global.pack_105_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 105);
    }
    if (steam_user_owns_dlc(global.pack_106_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 106);
    }
    if (steam_user_owns_dlc(global.pack_108_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 108);
    }
    if (steam_user_owns_dlc(global.pack_109_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 109);
    }
    if (steam_user_owns_dlc(global.pack_110_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 110);
    }
    if (steam_user_owns_dlc(global.pack_111_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 111);
    }
    if (steam_user_owns_dlc(global.pack_101_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 101);
    }
    if (steam_user_owns_dlc(global.pack_112_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 112);
    }
    if (steam_user_owns_dlc(global.pack_113_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 113);
    }
    if (steam_user_owns_dlc(global.pack_114_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 114);
    }
    if (steam_user_owns_dlc(global.pack_115_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 115);
    }
    if (steam_user_owns_dlc(global.pack_116_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 116);
    }
    if (steam_user_owns_dlc(global.pack_117_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 117);
    }
    if (steam_user_owns_dlc(global.pack_118_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 118);
    }
    if (steam_user_owns_dlc(global.pack_119_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 119);
    }
    if (steam_user_owns_dlc(global.pack_120_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 120);
    }
    if (steam_user_owns_dlc(global.pack_121_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 121);
    }
    if (steam_user_owns_dlc(global.pack_122_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 122);
    }
    if (steam_user_owns_dlc(global.pack_123_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 123);
    }
    if (steam_user_owns_dlc(global.pack_124_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 124);
    }
    if (steam_user_owns_dlc(global.pack_125_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 125);
    }
    if (steam_user_owns_dlc(global.pack_128_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 128);
    }
    if (steam_user_owns_dlc(global.pack_129_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 129);
    }
    if (steam_user_owns_dlc(global.pack_140_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 140);
    }
    if (steam_user_owns_dlc(global.pack_141_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 141);
    }
    if (steam_user_owns_dlc(global.pack_142_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 142);
    }
    if (steam_user_owns_dlc(global.pack_143_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 143);
    }
    if (steam_user_owns_dlc(global.pack_131_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 131);
    }
    if (steam_user_owns_dlc(global.pack_145_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 145);
    }
    if (steam_user_owns_dlc(global.pack_130_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 130);
    }
    if (steam_user_owns_dlc(global.pack_146_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 146);
    }
    if (steam_user_owns_dlc(global.pack_134_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 134);
    }
    if (steam_user_owns_dlc(global.pack_133_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 133);
    }
    if (steam_user_owns_dlc(global.pack_147_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 147);
    }
    if (steam_user_owns_dlc(global.pack_132_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 132);
    }
    if (steam_user_owns_dlc(global.pack_135_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 135);
    }
    if (steam_user_owns_dlc(global.pack_150_dlc_appid))
    {
        ds_list_add(puzzle_pack_list, 150);
    }
    if (steam_user_owns_dlc(global.pack_1_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 1);
    }
    if (steam_user_owns_dlc(global.pack_2_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 2);
    }
    if (steam_user_owns_dlc(global.pack_5_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 5);
    }
    if (steam_user_owns_dlc(global.pack_7_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 7);
    }
    if (steam_user_owns_dlc(global.pack_8_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 8);
    }
    if (steam_user_owns_dlc(global.pack_9_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 9);
    }
    if (steam_user_owns_dlc(global.pack_10_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 10);
    }
    if (steam_user_owns_dlc(global.pack_11_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 11);
    }
    if (steam_user_owns_dlc(global.pack_12_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 12);
    }
    if (steam_user_owns_dlc(global.pack_13_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 13);
    }
    if (steam_user_owns_dlc(global.pack_14_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 14);
    }
    if (steam_user_owns_dlc(global.pack_15_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 15);
    }
    if (steam_user_owns_dlc(global.pack_16_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 16);
    }
    if (steam_user_owns_dlc(global.pack_18_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 18);
    }
    if (steam_user_owns_dlc(global.pack_19_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 19);
    }
    if (steam_user_owns_dlc(global.pack_20_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 20);
    }
    if (steam_user_owns_dlc(global.pack_21_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 21);
    }
    if (steam_user_owns_dlc(global.pack_22_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 22);
    }
    if (steam_user_owns_dlc(global.pack_24_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 24);
    }
    if (steam_user_owns_dlc(global.pack_25_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 25);
    }
    if (steam_user_owns_dlc(global.pack_26_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 26);
    }
    if (steam_user_owns_dlc(global.pack_27_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 27);
    }
    if (steam_user_owns_dlc(global.pack_28_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 28);
    }
    if (steam_user_owns_dlc(global.pack_29_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 29);
    }
    if (steam_user_owns_dlc(global.pack_30_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 30);
    }
    if (steam_user_owns_dlc(global.pack_31_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 31);
    }
    if (steam_user_owns_dlc(global.pack_32_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 32);
    }
    if (steam_user_owns_dlc(global.pack_33_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 33);
    }
    if (steam_user_owns_dlc(global.pack_34_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 34);
    }
    if (steam_user_owns_dlc(global.pack_35_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 35);
    }
    if (steam_user_owns_dlc(global.pack_36_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 36);
    }
    if (steam_user_owns_dlc(global.pack_37_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 37);
    }
    if (steam_user_owns_dlc(global.pack_38_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 38);
    }
    if (steam_user_owns_dlc(global.pack_39_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 39);
    }
    if (steam_user_owns_dlc(global.pack_40_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 40);
    }
    if (steam_user_owns_dlc(global.pack_41_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 41);
    }
    if (steam_user_owns_dlc(global.pack_42_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 42);
    }
    if (steam_user_owns_dlc(global.pack_44_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 44);
    }
    if (steam_user_owns_dlc(global.pack_46_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 46);
    }
    if (steam_user_owns_dlc(global.pack_47_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 47);
    }
    if (steam_user_owns_dlc(global.pack_48_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 48);
    }
    if (steam_user_owns_dlc(global.pack_49_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 49);
    }
    if (steam_user_owns_dlc(global.pack_50_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 50);
    }
    if (steam_user_owns_dlc(global.pack_52_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 52);
    }
    if (steam_user_owns_dlc(global.pack_53_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 53);
    }
    if (steam_user_owns_dlc(global.pack_54_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 54);
    }
    if (steam_user_owns_dlc(global.pack_55_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 55);
    }
    if (steam_user_owns_dlc(global.pack_56_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 56);
    }
    if (steam_user_owns_dlc(global.pack_57_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 57);
    }
    if (steam_user_owns_dlc(global.pack_58_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 58);
    }
    if (steam_user_owns_dlc(global.pack_59_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 59);
    }
    if (steam_user_owns_dlc(global.pack_60_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 60);
    }
    if (steam_user_owns_dlc(global.pack_61_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 61);
    }
    if (steam_user_owns_dlc(global.pack_62_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 62);
    }
    if (steam_user_owns_dlc(global.pack_63_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 63);
    }
    if (steam_user_owns_dlc(global.pack_64_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 64);
    }
    if (steam_user_owns_dlc(global.pack_65_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 65);
    }
    if (steam_user_owns_dlc(global.pack_81_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 81);
    }
    if (steam_user_owns_dlc(global.pack_66_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 66);
    }
    if (steam_user_owns_dlc(global.pack_67_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 67);
    }
    if (steam_user_owns_dlc(global.pack_68_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 68);
    }
    if (steam_user_owns_dlc(global.pack_69_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 69);
    }
    if (steam_user_owns_dlc(global.pack_70_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 70);
    }
    if (steam_user_owns_dlc(global.pack_71_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 71);
    }
    if (steam_user_owns_dlc(global.pack_72_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 72);
    }
    if (steam_user_owns_dlc(global.pack_73_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 73);
    }
    if (steam_user_owns_dlc(global.pack_74_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 74);
    }
    if (steam_user_owns_dlc(global.pack_76_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 76);
    }
    if (steam_user_owns_dlc(global.pack_77_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 77);
    }
    if (steam_user_owns_dlc(global.pack_78_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 78);
    }
    if (steam_user_owns_dlc(global.pack_79_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 79);
    }
    if (steam_user_owns_dlc(global.pack_80_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 80);
    }
    if (steam_user_owns_dlc(global.pack_82_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 82);
    }
    if (steam_user_owns_dlc(global.pack_83_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 83);
    }
    if (steam_user_owns_dlc(global.pack_84_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 84);
    }
    if (steam_user_owns_dlc(global.pack_85_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 85);
    }
    if (steam_user_owns_dlc(global.pack_86_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 86);
    }
    if (steam_user_owns_dlc(global.pack_87_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 87);
    }
    if (steam_user_owns_dlc(global.pack_88_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 88);
    }
    if (steam_user_owns_dlc(global.pack_89_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 89);
    }
    if (steam_user_owns_dlc(global.pack_90_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 90);
    }
    if (steam_user_owns_dlc(global.pack_91_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 91);
    }
    if (steam_user_owns_dlc(global.pack_92_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 92);
    }
    if (steam_user_owns_dlc(global.pack_93_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 93);
    }
    if (steam_user_owns_dlc(global.pack_94_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 94);
    }
    if (steam_user_owns_dlc(global.pack_95_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 95);
    }
    if (steam_user_owns_dlc(global.pack_96_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 96);
    }
    if (steam_user_owns_dlc(global.pack_97_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 97);
    }
    if (steam_user_owns_dlc(global.pack_98_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 98);
    }
    if (steam_user_owns_dlc(global.pack_99_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 99);
    }
    if (steam_user_owns_dlc(global.pack_100_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 100);
    }
    if (steam_user_owns_dlc(global.pack_101_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 101);
    }
    if (steam_user_owns_dlc(global.pack_102_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 102);
    }
    if (steam_user_owns_dlc(global.pack_103_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 103);
    }
    if (steam_user_owns_dlc(global.pack_104_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 104);
    }
    if (steam_user_owns_dlc(global.pack_105_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 105);
    }
    if (steam_user_owns_dlc(global.pack_106_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 106);
    }
    if (steam_user_owns_dlc(global.pack_108_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 108);
    }
    if (steam_user_owns_dlc(global.pack_109_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 109);
    }
    if (steam_user_owns_dlc(global.pack_110_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 110);
    }
    if (steam_user_owns_dlc(global.pack_111_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 111);
    }
    if (steam_user_owns_dlc(global.pack_112_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 112);
    }
    if (steam_user_owns_dlc(global.pack_113_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 113);
    }
    if (steam_user_owns_dlc(global.pack_114_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 114);
    }
    if (steam_user_owns_dlc(global.pack_115_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 115);
    }
    if (steam_user_owns_dlc(global.pack_116_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 116);
    }
    if (steam_user_owns_dlc(global.pack_117_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 117);
    }
    if (steam_user_owns_dlc(global.pack_118_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 118);
    }
    if (steam_user_owns_dlc(global.pack_119_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 119);
    }
    if (steam_user_owns_dlc(global.pack_120_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 120);
    }
    if (steam_user_owns_dlc(global.pack_121_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 121);
    }
    if (steam_user_owns_dlc(global.pack_122_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 122);
    }
    if (steam_user_owns_dlc(global.pack_123_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 123);
    }
    if (steam_user_owns_dlc(global.pack_124_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 124);
    }
    if (steam_user_owns_dlc(global.pack_125_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 125);
    }
    if (steam_user_owns_dlc(global.pack_128_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 128);
    }
    if (steam_user_owns_dlc(global.pack_129_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 129);
    }
    if (steam_user_owns_dlc(global.pack_140_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 140);
    }
    if (steam_user_owns_dlc(global.pack_141_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 141);
    }
    if (steam_user_owns_dlc(global.pack_143_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 143);
    }
    if (steam_user_owns_dlc(global.pack_130_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 130);
    }
    if (steam_user_owns_dlc(global.pack_131_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 131);
    }
    if (steam_user_owns_dlc(global.pack_142_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 142);
    }
    if (steam_user_owns_dlc(global.pack_145_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 145);
    }
    if (steam_user_owns_dlc(global.pack_146_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 146);
    }
    if (steam_user_owns_dlc(global.pack_147_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 147);
    }
    if (steam_user_owns_dlc(global.pack_134_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 134);
    }
    if (steam_user_owns_dlc(global.pack_135_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 135);
    }
    if (steam_user_owns_dlc(global.pack_133_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 133);
    }
    if (steam_user_owns_dlc(global.pack_132_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 132);
    }
    if (steam_user_owns_dlc(global.pack_150_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 150);
    }
    if (steam_user_owns_dlc(global.pack_17_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 17);
    }
    if (steam_user_owns_dlc(global.pack_43_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 43);
    }
    if (steam_user_owns_dlc(global.pack_45_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 45);
    }
    if (steam_user_owns_dlc(global.pack_107_dlc_appid))
    {
    }
    else
    {
        ds_list_add(unowned_list, 107);
    }
}
else if (global.pack_filer_using == 6)
{
    if (steam_user_owns_dlc(global.pack_1_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 1);
    }
    if (steam_user_owns_dlc(global.pack_2_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 2);
    }
    if (steam_user_owns_dlc(global.pack_5_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 5);
    }
    if (steam_user_owns_dlc(global.pack_7_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 7);
    }
    if (steam_user_owns_dlc(global.pack_8_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 8);
    }
    if (steam_user_owns_dlc(global.pack_9_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 9);
    }
    if (steam_user_owns_dlc(global.pack_10_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 10);
    }
    if (steam_user_owns_dlc(global.pack_11_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 11);
    }
    if (steam_user_owns_dlc(global.pack_12_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 12);
    }
    if (steam_user_owns_dlc(global.pack_13_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 13);
    }
    if (steam_user_owns_dlc(global.pack_14_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 14);
    }
    if (steam_user_owns_dlc(global.pack_15_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 15);
    }
    if (steam_user_owns_dlc(global.pack_16_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 16);
    }
    if (steam_user_owns_dlc(global.pack_17_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 17);
    }
    if (steam_user_owns_dlc(global.pack_18_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 18);
    }
    if (steam_user_owns_dlc(global.pack_19_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 19);
    }
    if (steam_user_owns_dlc(global.pack_20_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 20);
    }
    if (steam_user_owns_dlc(global.pack_21_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 21);
    }
    if (steam_user_owns_dlc(global.pack_22_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 22);
    }
    if (steam_user_owns_dlc(global.pack_24_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 24);
    }
    if (steam_user_owns_dlc(global.pack_25_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 25);
    }
    if (steam_user_owns_dlc(global.pack_26_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 26);
    }
    if (steam_user_owns_dlc(global.pack_27_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 27);
    }
    if (steam_user_owns_dlc(global.pack_28_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 28);
    }
    if (steam_user_owns_dlc(global.pack_29_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 29);
    }
    if (steam_user_owns_dlc(global.pack_30_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 30);
    }
    if (steam_user_owns_dlc(global.pack_31_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 31);
    }
    if (steam_user_owns_dlc(global.pack_32_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 32);
    }
    if (steam_user_owns_dlc(global.pack_33_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 33);
    }
    if (steam_user_owns_dlc(global.pack_34_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 34);
    }
    if (steam_user_owns_dlc(global.pack_35_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 35);
    }
    if (steam_user_owns_dlc(global.pack_36_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 36);
    }
    if (steam_user_owns_dlc(global.pack_37_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 37);
    }
    if (steam_user_owns_dlc(global.pack_38_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 38);
    }
    if (steam_user_owns_dlc(global.pack_39_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 39);
    }
    if (steam_user_owns_dlc(global.pack_40_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 40);
    }
    if (steam_user_owns_dlc(global.pack_41_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 41);
    }
    if (steam_user_owns_dlc(global.pack_42_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 42);
    }
    if (steam_user_owns_dlc(global.pack_43_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 43);
    }
    if (steam_user_owns_dlc(global.pack_44_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 44);
    }
    if (steam_user_owns_dlc(global.pack_45_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 45);
    }
    if (steam_user_owns_dlc(global.pack_46_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 46);
    }
    if (steam_user_owns_dlc(global.pack_47_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 47);
    }
    if (steam_user_owns_dlc(global.pack_48_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 48);
    }
    if (steam_user_owns_dlc(global.pack_49_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 49);
    }
    if (steam_user_owns_dlc(global.pack_50_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 50);
    }
    if (steam_user_owns_dlc(global.pack_52_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 52);
    }
    if (steam_user_owns_dlc(global.pack_53_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 53);
    }
    if (steam_user_owns_dlc(global.pack_54_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 54);
    }
    if (steam_user_owns_dlc(global.pack_55_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 55);
    }
    if (steam_user_owns_dlc(global.pack_56_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 56);
    }
    if (steam_user_owns_dlc(global.pack_57_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 57);
    }
    if (steam_user_owns_dlc(global.pack_58_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 58);
    }
    if (steam_user_owns_dlc(global.pack_59_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 59);
    }
    if (steam_user_owns_dlc(global.pack_60_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 60);
    }
    if (steam_user_owns_dlc(global.pack_61_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 61);
    }
    if (steam_user_owns_dlc(global.pack_62_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 62);
    }
    if (steam_user_owns_dlc(global.pack_63_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 63);
    }
    if (steam_user_owns_dlc(global.pack_64_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 64);
    }
    if (steam_user_owns_dlc(global.pack_65_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 65);
    }
    if (steam_user_owns_dlc(global.pack_66_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 66);
    }
    if (steam_user_owns_dlc(global.pack_67_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 67);
    }
    if (steam_user_owns_dlc(global.pack_68_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 68);
    }
    if (steam_user_owns_dlc(global.pack_69_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 69);
    }
    if (steam_user_owns_dlc(global.pack_70_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 70);
    }
    if (steam_user_owns_dlc(global.pack_71_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 71);
    }
    if (steam_user_owns_dlc(global.pack_72_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 72);
    }
    if (steam_user_owns_dlc(global.pack_73_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 73);
    }
    if (steam_user_owns_dlc(global.pack_74_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 74);
    }
    if (steam_user_owns_dlc(global.pack_76_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 76);
    }
    if (steam_user_owns_dlc(global.pack_77_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 77);
    }
    if (steam_user_owns_dlc(global.pack_78_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 78);
    }
    if (steam_user_owns_dlc(global.pack_79_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 79);
    }
    if (steam_user_owns_dlc(global.pack_80_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 80);
    }
    if (steam_user_owns_dlc(global.pack_81_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 81);
    }
    if (steam_user_owns_dlc(global.pack_82_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 82);
    }
    if (steam_user_owns_dlc(global.pack_83_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 83);
    }
    if (steam_user_owns_dlc(global.pack_84_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 84);
    }
    if (steam_user_owns_dlc(global.pack_85_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 85);
    }
    if (steam_user_owns_dlc(global.pack_86_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 86);
    }
    if (steam_user_owns_dlc(global.pack_87_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 87);
    }
    if (steam_user_owns_dlc(global.pack_88_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 88);
    }
    if (steam_user_owns_dlc(global.pack_89_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 89);
    }
    if (steam_user_owns_dlc(global.pack_90_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 90);
    }
    if (steam_user_owns_dlc(global.pack_91_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 91);
    }
    if (steam_user_owns_dlc(global.pack_92_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 92);
    }
    if (steam_user_owns_dlc(global.pack_93_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 93);
    }
    if (steam_user_owns_dlc(global.pack_94_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 94);
    }
    if (steam_user_owns_dlc(global.pack_95_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 95);
    }
    if (steam_user_owns_dlc(global.pack_96_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 96);
    }
    if (steam_user_owns_dlc(global.pack_97_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 97);
    }
    if (steam_user_owns_dlc(global.pack_98_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 98);
    }
    if (steam_user_owns_dlc(global.pack_99_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 99);
    }
    if (steam_user_owns_dlc(global.pack_100_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 100);
    }
    if (steam_user_owns_dlc(global.pack_101_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 101);
    }
    if (steam_user_owns_dlc(global.pack_102_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 102);
    }
    if (steam_user_owns_dlc(global.pack_103_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 103);
    }
    if (steam_user_owns_dlc(global.pack_104_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 104);
    }
    if (steam_user_owns_dlc(global.pack_105_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 105);
    }
    if (steam_user_owns_dlc(global.pack_106_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 106);
    }
    if (steam_user_owns_dlc(global.pack_107_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 107);
    }
    if (steam_user_owns_dlc(global.pack_108_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 108);
    }
    if (steam_user_owns_dlc(global.pack_109_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 109);
    }
    if (steam_user_owns_dlc(global.pack_110_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 110);
    }
    if (steam_user_owns_dlc(global.pack_111_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 111);
    }
    if (steam_user_owns_dlc(global.pack_112_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 112);
    }
    if (steam_user_owns_dlc(global.pack_113_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 113);
    }
    if (steam_user_owns_dlc(global.pack_114_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 114);
    }
    if (steam_user_owns_dlc(global.pack_115_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 115);
    }
    if (steam_user_owns_dlc(global.pack_116_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 116);
    }
    if (steam_user_owns_dlc(global.pack_117_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 117);
    }
    if (steam_user_owns_dlc(global.pack_118_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 118);
    }
    if (steam_user_owns_dlc(global.pack_119_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 119);
    }
    if (steam_user_owns_dlc(global.pack_120_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 120);
    }
    if (steam_user_owns_dlc(global.pack_121_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 121);
    }
    if (steam_user_owns_dlc(global.pack_122_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 122);
    }
    if (steam_user_owns_dlc(global.pack_123_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 123);
    }
    if (steam_user_owns_dlc(global.pack_124_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 124);
    }
    if (steam_user_owns_dlc(global.pack_125_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 125);
    }
    if (steam_user_owns_dlc(global.pack_128_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 128);
    }
    if (steam_user_owns_dlc(global.pack_129_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 129);
    }
    if (steam_user_owns_dlc(global.pack_140_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 140);
    }
    if (steam_user_owns_dlc(global.pack_141_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 141);
    }
    if (steam_user_owns_dlc(global.pack_143_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 143);
    }
    if (steam_user_owns_dlc(global.pack_144_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 144);
    }
    if (steam_user_owns_dlc(global.pack_130_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 130);
    }
    if (steam_user_owns_dlc(global.pack_131_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 131);
    }
    if (steam_user_owns_dlc(global.pack_145_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 145);
    }
    if (steam_user_owns_dlc(global.pack_142_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 142);
    }
    if (steam_user_owns_dlc(global.pack_146_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 146);
    }
    if (steam_user_owns_dlc(global.pack_147_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 147);
    }
    if (steam_user_owns_dlc(global.pack_134_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 134);
    }
    if (steam_user_owns_dlc(global.pack_133_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 133);
    }
    if (steam_user_owns_dlc(global.pack_135_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 135);
    }
    if (steam_user_owns_dlc(global.pack_132_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 132);
    }
    if (steam_user_owns_dlc(global.pack_150_dlc_appid))
    {
    }
    else
    {
        ds_list_add(puzzle_pack_list, 150);
    }
}
else if (global.pack_filer_using == 7)
{
    if (steam_get_achievement("complete_pack_1"))
    {
        ds_list_add(puzzle_pack_list, 1);
    }
    if (steam_get_achievement("complete_pack_2"))
    {
        ds_list_add(puzzle_pack_list, 2);
    }
    if (steam_get_achievement("complete_pack_3"))
    {
        ds_list_add(puzzle_pack_list, 3);
    }
    if (steam_get_achievement("complete_pack_4"))
    {
        ds_list_add(puzzle_pack_list, 4);
    }
    if (steam_get_achievement("complete_pack_5"))
    {
        ds_list_add(puzzle_pack_list, 5);
    }
    if (steam_get_achievement("complete_pack_6"))
    {
        ds_list_add(puzzle_pack_list, 6);
    }
    if (steam_get_achievement("complete_pack_7"))
    {
        ds_list_add(puzzle_pack_list, 7);
    }
    if (steam_get_achievement("complete_pack_8"))
    {
        ds_list_add(puzzle_pack_list, 8);
    }
    if (steam_get_achievement("complete_pack_9"))
    {
        ds_list_add(puzzle_pack_list, 9);
    }
    if (steam_get_achievement("complete_pack_10"))
    {
        ds_list_add(puzzle_pack_list, 10);
    }
    if (steam_get_achievement("complete_pack_11"))
    {
        ds_list_add(puzzle_pack_list, 11);
    }
    if (steam_get_achievement("complete_pack_12"))
    {
        ds_list_add(puzzle_pack_list, 12);
    }
    if (steam_get_achievement("complete_pack_13"))
    {
        ds_list_add(puzzle_pack_list, 13);
    }
    if (steam_get_achievement("complete_pack_14"))
    {
        ds_list_add(puzzle_pack_list, 14);
    }
    if (steam_get_achievement("complete_pack_15"))
    {
        ds_list_add(puzzle_pack_list, 15);
    }
    if (steam_get_achievement("complete_pack_16"))
    {
        ds_list_add(puzzle_pack_list, 16);
    }
    if (steam_get_achievement("complete_pack_17"))
    {
        ds_list_add(puzzle_pack_list, 17);
    }
    if (steam_get_achievement("complete_pack_18"))
    {
        ds_list_add(puzzle_pack_list, 18);
    }
    if (steam_get_achievement("complete_pack_19"))
    {
        ds_list_add(puzzle_pack_list, 19);
    }
    if (steam_get_achievement("complete_pack_20"))
    {
        ds_list_add(puzzle_pack_list, 20);
    }
    if (steam_get_achievement("complete_pack_21"))
    {
        ds_list_add(puzzle_pack_list, 21);
    }
    if (steam_get_achievement("complete_pack_22"))
    {
        ds_list_add(puzzle_pack_list, 22);
    }
    if (steam_get_achievement("complete_pack_23"))
    {
        ds_list_add(puzzle_pack_list, 23);
    }
    if (steam_get_achievement("complete_pack_24"))
    {
        ds_list_add(puzzle_pack_list, 24);
    }
    if (steam_get_achievement("complete_pack_25"))
    {
        ds_list_add(puzzle_pack_list, 25);
    }
    if (steam_get_achievement("complete_pack_26"))
    {
        ds_list_add(puzzle_pack_list, 26);
    }
    if (steam_get_achievement("complete_pack_27"))
    {
        ds_list_add(puzzle_pack_list, 27);
    }
    if (steam_get_achievement("complete_pack_28"))
    {
        ds_list_add(puzzle_pack_list, 28);
    }
    if (steam_get_achievement("complete_pack_29"))
    {
        ds_list_add(puzzle_pack_list, 29);
    }
    if (steam_get_achievement("complete_pack_30"))
    {
        ds_list_add(puzzle_pack_list, 30);
    }
    if (steam_get_achievement("complete_pack_31"))
    {
        ds_list_add(puzzle_pack_list, 31);
    }
    if (steam_get_achievement("complete_pack_32"))
    {
        ds_list_add(puzzle_pack_list, 32);
    }
    if (steam_get_achievement("complete_pack_33"))
    {
        ds_list_add(puzzle_pack_list, 33);
    }
    if (steam_get_achievement("complete_pack_34"))
    {
        ds_list_add(puzzle_pack_list, 34);
    }
    if (steam_get_achievement("complete_pack_35"))
    {
        ds_list_add(puzzle_pack_list, 35);
    }
    if (steam_get_achievement("complete_pack_36"))
    {
        ds_list_add(puzzle_pack_list, 36);
    }
    if (steam_get_achievement("complete_pack_37"))
    {
        ds_list_add(puzzle_pack_list, 37);
    }
    if (steam_get_achievement("complete_pack_38"))
    {
        ds_list_add(puzzle_pack_list, 38);
    }
    if (steam_get_achievement("complete_pack_39"))
    {
        ds_list_add(puzzle_pack_list, 39);
    }
    if (steam_get_achievement("complete_pack_40"))
    {
        ds_list_add(puzzle_pack_list, 40);
    }
    if (steam_get_achievement("complete_pack_41"))
    {
        ds_list_add(puzzle_pack_list, 41);
    }
    if (steam_get_achievement("complete_pack_42"))
    {
        ds_list_add(puzzle_pack_list, 42);
    }
    if (steam_get_achievement("complete_pack_43"))
    {
        ds_list_add(puzzle_pack_list, 43);
    }
    if (steam_get_achievement("complete_pack_44"))
    {
        ds_list_add(puzzle_pack_list, 44);
    }
    if (steam_get_achievement("complete_pack_45"))
    {
        ds_list_add(puzzle_pack_list, 45);
    }
    if (steam_get_achievement("complete_pack_46"))
    {
        ds_list_add(puzzle_pack_list, 46);
    }
    if (steam_get_achievement("complete_pack_47"))
    {
        ds_list_add(puzzle_pack_list, 47);
    }
    if (steam_get_achievement("complete_pack_48"))
    {
        ds_list_add(puzzle_pack_list, 48);
    }
    if (steam_get_achievement("complete_pack_49"))
    {
        ds_list_add(puzzle_pack_list, 49);
    }
    if (steam_get_achievement("complete_pack_50"))
    {
        ds_list_add(puzzle_pack_list, 50);
    }
    if (steam_get_achievement("complete_pack_52"))
    {
        ds_list_add(puzzle_pack_list, 52);
    }
    if (steam_get_achievement("complete_pack_53"))
    {
        ds_list_add(puzzle_pack_list, 53);
    }
    if (steam_get_achievement("complete_pack_54"))
    {
        ds_list_add(puzzle_pack_list, 54);
    }
    if (steam_get_achievement("complete_pack_55"))
    {
        ds_list_add(puzzle_pack_list, 55);
    }
    if (steam_get_achievement("complete_pack_56"))
    {
        ds_list_add(puzzle_pack_list, 56);
    }
    if (steam_get_achievement("complete_pack_57"))
    {
        ds_list_add(puzzle_pack_list, 57);
    }
    if (steam_get_achievement("complete_pack_58"))
    {
        ds_list_add(puzzle_pack_list, 58);
    }
    if (steam_get_achievement("complete_pack_59"))
    {
        ds_list_add(puzzle_pack_list, 59);
    }
    if (steam_get_achievement("complete_pack_60"))
    {
        ds_list_add(puzzle_pack_list, 60);
    }
    if (steam_get_achievement("complete_pack_61"))
    {
        ds_list_add(puzzle_pack_list, 61);
    }
    if (steam_get_achievement("complete_pack_62"))
    {
        ds_list_add(puzzle_pack_list, 62);
    }
    if (steam_get_achievement("complete_pack_63"))
    {
        ds_list_add(puzzle_pack_list, 63);
    }
    if (steam_get_achievement("complete_pack_64"))
    {
        ds_list_add(puzzle_pack_list, 64);
    }
    if (steam_get_achievement("complete_pack_65"))
    {
        ds_list_add(puzzle_pack_list, 65);
    }
    if (steam_get_achievement("complete_pack_66"))
    {
        ds_list_add(puzzle_pack_list, 66);
    }
    if (steam_get_achievement("complete_pack_67"))
    {
        ds_list_add(puzzle_pack_list, 67);
    }
    if (steam_get_achievement("complete_pack_68"))
    {
        ds_list_add(puzzle_pack_list, 68);
    }
    if (steam_get_achievement("complete_pack_69"))
    {
        ds_list_add(puzzle_pack_list, 69);
    }
    if (steam_get_achievement("complete_pack_70"))
    {
        ds_list_add(puzzle_pack_list, 70);
    }
    if (steam_get_achievement("complete_pack_71"))
    {
        ds_list_add(puzzle_pack_list, 71);
    }
    if (steam_get_achievement("complete_pack_72"))
    {
        ds_list_add(puzzle_pack_list, 72);
    }
    if (steam_get_achievement("complete_pack_73"))
    {
        ds_list_add(puzzle_pack_list, 73);
    }
    if (steam_get_achievement("complete_pack_74"))
    {
        ds_list_add(puzzle_pack_list, 74);
    }
    if (steam_get_achievement("complete_pack_75"))
    {
        ds_list_add(puzzle_pack_list, 75);
    }
    if (steam_get_achievement("complete_pack_76"))
    {
        ds_list_add(puzzle_pack_list, 76);
    }
    if (steam_get_achievement("complete_pack_77"))
    {
        ds_list_add(puzzle_pack_list, 77);
    }
    if (steam_get_achievement("complete_pack_78"))
    {
        ds_list_add(puzzle_pack_list, 78);
    }
    if (steam_get_achievement("complete_pack_79"))
    {
        ds_list_add(puzzle_pack_list, 79);
    }
    if (steam_get_achievement("complete_pack_80"))
    {
        ds_list_add(puzzle_pack_list, 80);
    }
    if (steam_get_achievement("complete_pack_81"))
    {
        ds_list_add(puzzle_pack_list, 81);
    }
    if (steam_get_achievement("complete_pack_82"))
    {
        ds_list_add(puzzle_pack_list, 82);
    }
    if (steam_get_achievement("complete_pack_83"))
    {
        ds_list_add(puzzle_pack_list, 83);
    }
    if (steam_get_achievement("complete_pack_84"))
    {
        ds_list_add(puzzle_pack_list, 84);
    }
    if (steam_get_achievement("complete_pack_85"))
    {
        ds_list_add(puzzle_pack_list, 85);
    }
    if (steam_get_achievement("complete_pack_86"))
    {
        ds_list_add(puzzle_pack_list, 86);
    }
    if (steam_get_achievement("complete_pack_87"))
    {
        ds_list_add(puzzle_pack_list, 87);
    }
    if (steam_get_achievement("complete_pack_88"))
    {
        ds_list_add(puzzle_pack_list, 88);
    }
    if (steam_get_achievement("complete_pack_89"))
    {
        ds_list_add(puzzle_pack_list, 89);
    }
    if (steam_get_achievement("complete_pack_90"))
    {
        ds_list_add(puzzle_pack_list, 90);
    }
    if (steam_get_achievement("complete_pack_91"))
    {
        ds_list_add(puzzle_pack_list, 91);
    }
    if (steam_get_achievement("complete_pack_92"))
    {
        ds_list_add(puzzle_pack_list, 92);
    }
    if (steam_get_achievement("complete_pack_93"))
    {
        ds_list_add(puzzle_pack_list, 93);
    }
    if (steam_get_achievement("complete_pack_94"))
    {
        ds_list_add(puzzle_pack_list, 94);
    }
    if (steam_get_achievement("complete_pack_95"))
    {
        ds_list_add(puzzle_pack_list, 95);
    }
    if (steam_get_achievement("complete_pack_96"))
    {
        ds_list_add(puzzle_pack_list, 96);
    }
    if (steam_get_achievement("complete_pack_97"))
    {
        ds_list_add(puzzle_pack_list, 97);
    }
    if (steam_get_achievement("complete_pack_98"))
    {
        ds_list_add(puzzle_pack_list, 98);
    }
    if (steam_get_achievement("complete_pack_99"))
    {
        ds_list_add(puzzle_pack_list, 99);
    }
    if (steam_get_achievement("complete_pack_100"))
    {
        ds_list_add(puzzle_pack_list, 100);
    }
    if (steam_get_achievement("complete_pack_101"))
    {
        ds_list_add(puzzle_pack_list, 101);
    }
    if (steam_get_achievement("complete_pack_102"))
    {
        ds_list_add(puzzle_pack_list, 102);
    }
    if (steam_get_achievement("complete_pack_103"))
    {
        ds_list_add(puzzle_pack_list, 103);
    }
    if (steam_get_achievement("complete_pack_104"))
    {
        ds_list_add(puzzle_pack_list, 104);
    }
    if (steam_get_achievement("complete_pack_105"))
    {
        ds_list_add(puzzle_pack_list, 105);
    }
    if (steam_get_achievement("complete_pack_106"))
    {
        ds_list_add(puzzle_pack_list, 106);
    }
    if (steam_get_achievement("complete_pack_107"))
    {
        ds_list_add(puzzle_pack_list, 107);
    }
    if (steam_get_achievement("complete_pack_108"))
    {
        ds_list_add(puzzle_pack_list, 108);
    }
    if (steam_get_achievement("complete_pack_109"))
    {
        ds_list_add(puzzle_pack_list, 109);
    }
    if (steam_get_achievement("complete_pack_110"))
    {
        ds_list_add(puzzle_pack_list, 110);
    }
    if (steam_get_achievement("complete_pack_111"))
    {
        ds_list_add(puzzle_pack_list, 111);
    }
    if (steam_get_achievement("complete_pack_112"))
    {
        ds_list_add(puzzle_pack_list, 112);
    }
    if (steam_get_achievement("complete_pack_113"))
    {
        ds_list_add(puzzle_pack_list, 113);
    }
    if (steam_get_achievement("complete_pack_114"))
    {
        ds_list_add(puzzle_pack_list, 114);
    }
    if (steam_get_achievement("complete_pack_115"))
    {
        ds_list_add(puzzle_pack_list, 115);
    }
    if (steam_get_achievement("complete_pack_116"))
    {
        ds_list_add(puzzle_pack_list, 116);
    }
    if (steam_get_achievement("complete_pack_117"))
    {
        ds_list_add(puzzle_pack_list, 117);
    }
    if (steam_get_achievement("complete_pack_118"))
    {
        ds_list_add(puzzle_pack_list, 118);
    }
    if (steam_get_achievement("complete_pack_119"))
    {
        ds_list_add(puzzle_pack_list, 119);
    }
    if (steam_get_achievement("complete_pack_120"))
    {
        ds_list_add(puzzle_pack_list, 120);
    }
    if (steam_get_achievement("complete_pack_121"))
    {
        ds_list_add(puzzle_pack_list, 121);
    }
    if (steam_get_achievement("complete_pack_122"))
    {
        ds_list_add(puzzle_pack_list, 122);
    }
    if (steam_get_achievement("complete_pack_123"))
    {
        ds_list_add(puzzle_pack_list, 123);
    }
    if (steam_get_achievement("complete_pack_124"))
    {
        ds_list_add(puzzle_pack_list, 124);
    }
    if (steam_get_achievement("complete_pack_125"))
    {
        ds_list_add(puzzle_pack_list, 125);
    }
    if (steam_get_achievement("complete_pack_126"))
    {
        ds_list_add(puzzle_pack_list, 126);
    }
    if (steam_get_achievement("complete_pack_127"))
    {
        ds_list_add(puzzle_pack_list, 127);
    }
    if (steam_get_achievement("complete_pack_128"))
    {
        ds_list_add(puzzle_pack_list, 128);
    }
    if (steam_get_achievement("complete_pack_129"))
    {
        ds_list_add(puzzle_pack_list, 129);
    }
    if (steam_get_achievement("complete_pack_140"))
    {
        ds_list_add(puzzle_pack_list, 140);
    }
    if (steam_get_achievement("complete_pack_141"))
    {
        ds_list_add(puzzle_pack_list, 141);
    }
    if (steam_get_achievement("complete_pack_143"))
    {
        ds_list_add(puzzle_pack_list, 143);
    }
    if (steam_get_achievement("complete_pack_144"))
    {
        ds_list_add(puzzle_pack_list, 144);
    }
    if (steam_get_achievement("complete_pack_130"))
    {
        ds_list_add(puzzle_pack_list, 130);
    }
    if (steam_get_achievement("complete_pack_131"))
    {
        ds_list_add(puzzle_pack_list, 131);
    }
    if (steam_get_achievement("complete_pack_145"))
    {
        ds_list_add(puzzle_pack_list, 145);
    }
    if (steam_get_achievement("complete_pack_142"))
    {
        ds_list_add(puzzle_pack_list, 142);
    }
    if (steam_get_achievement("complete_pack_146"))
    {
        ds_list_add(puzzle_pack_list, 146);
    }
    if (steam_get_achievement("complete_pack_147"))
    {
        ds_list_add(puzzle_pack_list, 147);
    }
    if (steam_get_achievement("complete_pack_134"))
    {
        ds_list_add(puzzle_pack_list, 134);
    }
    if (steam_get_achievement("complete_pack_133"))
    {
        ds_list_add(puzzle_pack_list, 133);
    }
    if (steam_get_achievement("complete_pack_132"))
    {
        ds_list_add(puzzle_pack_list, 132);
    }
    if (steam_get_achievement("complete_pack_135"))
    {
        ds_list_add(puzzle_pack_list, 135);
    }
    if (steam_get_achievement("complete_pack_150"))
    {
        ds_list_add(puzzle_pack_list, 150);
    }
}
else if (global.pack_filer_using == 8)
{
    if (!steam_get_achievement("complete_pack_1"))
    {
        ds_list_add(puzzle_pack_list, 1);
    }
    if (!steam_get_achievement("complete_pack_2"))
    {
        ds_list_add(puzzle_pack_list, 2);
    }
    if (!steam_get_achievement("complete_pack_3"))
    {
        ds_list_add(puzzle_pack_list, 3);
    }
    if (!steam_get_achievement("complete_pack_4"))
    {
        ds_list_add(puzzle_pack_list, 4);
    }
    if (!steam_get_achievement("complete_pack_5"))
    {
        ds_list_add(puzzle_pack_list, 5);
    }
    if (!steam_get_achievement("complete_pack_6"))
    {
        ds_list_add(puzzle_pack_list, 6);
    }
    if (!steam_get_achievement("complete_pack_7"))
    {
        ds_list_add(puzzle_pack_list, 7);
    }
    if (!steam_get_achievement("complete_pack_8"))
    {
        ds_list_add(puzzle_pack_list, 8);
    }
    if (!steam_get_achievement("complete_pack_9"))
    {
        ds_list_add(puzzle_pack_list, 9);
    }
    if (!steam_get_achievement("complete_pack_10"))
    {
        ds_list_add(puzzle_pack_list, 10);
    }
    if (!steam_get_achievement("complete_pack_11"))
    {
        ds_list_add(puzzle_pack_list, 11);
    }
    if (!steam_get_achievement("complete_pack_12"))
    {
        ds_list_add(puzzle_pack_list, 12);
    }
    if (!steam_get_achievement("complete_pack_13"))
    {
        ds_list_add(puzzle_pack_list, 13);
    }
    if (!steam_get_achievement("complete_pack_14"))
    {
        ds_list_add(puzzle_pack_list, 14);
    }
    if (!steam_get_achievement("complete_pack_15"))
    {
        ds_list_add(puzzle_pack_list, 15);
    }
    if (!steam_get_achievement("complete_pack_16"))
    {
        ds_list_add(puzzle_pack_list, 16);
    }
    if (!steam_get_achievement("complete_pack_17"))
    {
        ds_list_add(puzzle_pack_list, 17);
    }
    if (!steam_get_achievement("complete_pack_18"))
    {
        ds_list_add(puzzle_pack_list, 18);
    }
    if (!steam_get_achievement("complete_pack_19"))
    {
        ds_list_add(puzzle_pack_list, 19);
    }
    if (!steam_get_achievement("complete_pack_20"))
    {
        ds_list_add(puzzle_pack_list, 20);
    }
    if (!steam_get_achievement("complete_pack_21"))
    {
        ds_list_add(puzzle_pack_list, 21);
    }
    if (!steam_get_achievement("complete_pack_22"))
    {
        ds_list_add(puzzle_pack_list, 22);
    }
    if (!steam_get_achievement("complete_pack_23"))
    {
        if (steam_user_owns_dlc(global.pack_23_dlc_appid))
        {
            ds_list_add(puzzle_pack_list, 23);
        }
    }
    if (!steam_get_achievement("complete_pack_24"))
    {
        ds_list_add(puzzle_pack_list, 24);
    }
    if (!steam_get_achievement("complete_pack_25"))
    {
        ds_list_add(puzzle_pack_list, 25);
    }
    if (!steam_get_achievement("complete_pack_26"))
    {
        ds_list_add(puzzle_pack_list, 26);
    }
    if (!steam_get_achievement("complete_pack_27"))
    {
        ds_list_add(puzzle_pack_list, 27);
    }
    if (!steam_get_achievement("complete_pack_28"))
    {
        ds_list_add(puzzle_pack_list, 28);
    }
    if (!steam_get_achievement("complete_pack_29"))
    {
        ds_list_add(puzzle_pack_list, 29);
    }
    if (!steam_get_achievement("complete_pack_30"))
    {
        ds_list_add(puzzle_pack_list, 30);
    }
    if (!steam_get_achievement("complete_pack_31"))
    {
        ds_list_add(puzzle_pack_list, 31);
    }
    if (!steam_get_achievement("complete_pack_32"))
    {
        ds_list_add(puzzle_pack_list, 32);
    }
    if (!steam_get_achievement("complete_pack_33"))
    {
        ds_list_add(puzzle_pack_list, 33);
    }
    if (!steam_get_achievement("complete_pack_34"))
    {
        ds_list_add(puzzle_pack_list, 34);
    }
    if (!steam_get_achievement("complete_pack_35"))
    {
        ds_list_add(puzzle_pack_list, 35);
    }
    if (!steam_get_achievement("complete_pack_36"))
    {
        ds_list_add(puzzle_pack_list, 36);
    }
    if (!steam_get_achievement("complete_pack_37"))
    {
        ds_list_add(puzzle_pack_list, 37);
    }
    if (!steam_get_achievement("complete_pack_38"))
    {
        ds_list_add(puzzle_pack_list, 38);
    }
    if (!steam_get_achievement("complete_pack_39"))
    {
        ds_list_add(puzzle_pack_list, 39);
    }
    if (!steam_get_achievement("complete_pack_40"))
    {
        ds_list_add(puzzle_pack_list, 40);
    }
    if (!steam_get_achievement("complete_pack_41"))
    {
        ds_list_add(puzzle_pack_list, 41);
    }
    if (!steam_get_achievement("complete_pack_42"))
    {
        ds_list_add(puzzle_pack_list, 42);
    }
    if (!steam_get_achievement("complete_pack_43"))
    {
        ds_list_add(puzzle_pack_list, 43);
    }
    if (!steam_get_achievement("complete_pack_44"))
    {
        ds_list_add(puzzle_pack_list, 44);
    }
    if (!steam_get_achievement("complete_pack_45"))
    {
        ds_list_add(puzzle_pack_list, 45);
    }
    if (!steam_get_achievement("complete_pack_46"))
    {
        ds_list_add(puzzle_pack_list, 46);
    }
    if (!steam_get_achievement("complete_pack_47"))
    {
        ds_list_add(puzzle_pack_list, 47);
    }
    if (!steam_get_achievement("complete_pack_48"))
    {
        ds_list_add(puzzle_pack_list, 48);
    }
    if (!steam_get_achievement("complete_pack_49"))
    {
        ds_list_add(puzzle_pack_list, 49);
    }
    if (!steam_get_achievement("complete_pack_50"))
    {
        ds_list_add(puzzle_pack_list, 50);
    }
    if (!steam_get_achievement("complete_pack_52"))
    {
        ds_list_add(puzzle_pack_list, 52);
    }
    if (!steam_get_achievement("complete_pack_53"))
    {
        ds_list_add(puzzle_pack_list, 53);
    }
    if (!steam_get_achievement("complete_pack_54"))
    {
        ds_list_add(puzzle_pack_list, 54);
    }
    if (!steam_get_achievement("complete_pack_55"))
    {
        ds_list_add(puzzle_pack_list, 55);
    }
    if (!steam_get_achievement("complete_pack_56"))
    {
        ds_list_add(puzzle_pack_list, 56);
    }
    if (!steam_get_achievement("complete_pack_57"))
    {
        ds_list_add(puzzle_pack_list, 57);
    }
    if (!steam_get_achievement("complete_pack_58"))
    {
        ds_list_add(puzzle_pack_list, 58);
    }
    if (!steam_get_achievement("complete_pack_59"))
    {
        ds_list_add(puzzle_pack_list, 59);
    }
    if (!steam_get_achievement("complete_pack_60"))
    {
        ds_list_add(puzzle_pack_list, 60);
    }
    if (!steam_get_achievement("complete_pack_61"))
    {
        ds_list_add(puzzle_pack_list, 61);
    }
    if (!steam_get_achievement("complete_pack_62"))
    {
        ds_list_add(puzzle_pack_list, 62);
    }
    if (!steam_get_achievement("complete_pack_63"))
    {
        ds_list_add(puzzle_pack_list, 63);
    }
    if (!steam_get_achievement("complete_pack_64"))
    {
        ds_list_add(puzzle_pack_list, 64);
    }
    if (!steam_get_achievement("complete_pack_65"))
    {
        ds_list_add(puzzle_pack_list, 65);
    }
    if (!steam_get_achievement("complete_pack_66"))
    {
        ds_list_add(puzzle_pack_list, 66);
    }
    if (!steam_get_achievement("complete_pack_67"))
    {
        ds_list_add(puzzle_pack_list, 67);
    }
    if (!steam_get_achievement("complete_pack_68"))
    {
        ds_list_add(puzzle_pack_list, 68);
    }
    if (!steam_get_achievement("complete_pack_69"))
    {
        ds_list_add(puzzle_pack_list, 69);
    }
    if (!steam_get_achievement("complete_pack_70"))
    {
        ds_list_add(puzzle_pack_list, 70);
    }
    if (!steam_get_achievement("complete_pack_71"))
    {
        ds_list_add(puzzle_pack_list, 71);
    }
    if (!steam_get_achievement("complete_pack_72"))
    {
        ds_list_add(puzzle_pack_list, 72);
    }
    if (!steam_get_achievement("complete_pack_73"))
    {
        ds_list_add(puzzle_pack_list, 73);
    }
    if (!steam_get_achievement("complete_pack_74"))
    {
        ds_list_add(puzzle_pack_list, 74);
    }
    if (!steam_get_achievement("complete_pack_75"))
    {
        ds_list_add(puzzle_pack_list, 75);
    }
    if (!steam_get_achievement("complete_pack_76"))
    {
        ds_list_add(puzzle_pack_list, 76);
    }
    if (!steam_get_achievement("complete_pack_77"))
    {
        ds_list_add(puzzle_pack_list, 77);
    }
    if (!steam_get_achievement("complete_pack_78"))
    {
        ds_list_add(puzzle_pack_list, 78);
    }
    if (!steam_get_achievement("complete_pack_79"))
    {
        ds_list_add(puzzle_pack_list, 79);
    }
    if (!steam_get_achievement("complete_pack_80"))
    {
        ds_list_add(puzzle_pack_list, 80);
    }
    if (!steam_get_achievement("complete_pack_81"))
    {
        ds_list_add(puzzle_pack_list, 81);
    }
    if (!steam_get_achievement("complete_pack_82"))
    {
        ds_list_add(puzzle_pack_list, 82);
    }
    if (!steam_get_achievement("complete_pack_83"))
    {
        ds_list_add(puzzle_pack_list, 83);
    }
    if (!steam_get_achievement("complete_pack_84"))
    {
        ds_list_add(puzzle_pack_list, 84);
    }
    if (!steam_get_achievement("complete_pack_85"))
    {
        ds_list_add(puzzle_pack_list, 85);
    }
    if (!steam_get_achievement("complete_pack_86"))
    {
        ds_list_add(puzzle_pack_list, 86);
    }
    if (!steam_get_achievement("complete_pack_87"))
    {
        ds_list_add(puzzle_pack_list, 87);
    }
    if (!steam_get_achievement("complete_pack_88"))
    {
        ds_list_add(puzzle_pack_list, 88);
    }
    if (!steam_get_achievement("complete_pack_89"))
    {
        ds_list_add(puzzle_pack_list, 89);
    }
    if (!steam_get_achievement("complete_pack_90"))
    {
        ds_list_add(puzzle_pack_list, 90);
    }
    if (!steam_get_achievement("complete_pack_91"))
    {
        ds_list_add(puzzle_pack_list, 91);
    }
    if (!steam_get_achievement("complete_pack_92"))
    {
        ds_list_add(puzzle_pack_list, 92);
    }
    if (!steam_get_achievement("complete_pack_93"))
    {
        ds_list_add(puzzle_pack_list, 93);
    }
    if (!steam_get_achievement("complete_pack_94"))
    {
        ds_list_add(puzzle_pack_list, 94);
    }
    if (!steam_get_achievement("complete_pack_95"))
    {
        ds_list_add(puzzle_pack_list, 95);
    }
    if (!steam_get_achievement("complete_pack_96"))
    {
        ds_list_add(puzzle_pack_list, 96);
    }
    if (!steam_get_achievement("complete_pack_97"))
    {
        ds_list_add(puzzle_pack_list, 97);
    }
    if (!steam_get_achievement("complete_pack_98"))
    {
        ds_list_add(puzzle_pack_list, 98);
    }
    if (!steam_get_achievement("complete_pack_99"))
    {
        ds_list_add(puzzle_pack_list, 99);
    }
    if (!steam_get_achievement("complete_pack_100"))
    {
        ds_list_add(puzzle_pack_list, 100);
    }
    if (!steam_get_achievement("complete_pack_101"))
    {
        ds_list_add(puzzle_pack_list, 101);
    }
    if (!steam_get_achievement("complete_pack_102"))
    {
        ds_list_add(puzzle_pack_list, 102);
    }
    if (!steam_get_achievement("complete_pack_103"))
    {
        ds_list_add(puzzle_pack_list, 103);
    }
    if (!steam_get_achievement("complete_pack_104"))
    {
        ds_list_add(puzzle_pack_list, 104);
    }
    if (!steam_get_achievement("complete_pack_105"))
    {
        ds_list_add(puzzle_pack_list, 105);
    }
    if (!steam_get_achievement("complete_pack_106"))
    {
        ds_list_add(puzzle_pack_list, 106);
    }
    if (!steam_get_achievement("complete_pack_107"))
    {
        ds_list_add(puzzle_pack_list, 107);
    }
    if (!steam_get_achievement("complete_pack_108"))
    {
        ds_list_add(puzzle_pack_list, 108);
    }
    if (!steam_get_achievement("complete_pack_109"))
    {
        ds_list_add(puzzle_pack_list, 109);
    }
    if (!steam_get_achievement("complete_pack_110"))
    {
        ds_list_add(puzzle_pack_list, 110);
    }
    if (!steam_get_achievement("complete_pack_111"))
    {
        ds_list_add(puzzle_pack_list, 111);
    }
    if (!steam_get_achievement("complete_pack_112"))
    {
        ds_list_add(puzzle_pack_list, 112);
    }
    if (!steam_get_achievement("complete_pack_113"))
    {
        ds_list_add(puzzle_pack_list, 113);
    }
    if (!steam_get_achievement("complete_pack_114"))
    {
        ds_list_add(puzzle_pack_list, 114);
    }
    if (!steam_get_achievement("complete_pack_115"))
    {
        ds_list_add(puzzle_pack_list, 115);
    }
    if (!steam_get_achievement("complete_pack_116"))
    {
        ds_list_add(puzzle_pack_list, 116);
    }
    if (!steam_get_achievement("complete_pack_117"))
    {
        ds_list_add(puzzle_pack_list, 117);
    }
    if (!steam_get_achievement("complete_pack_118"))
    {
        ds_list_add(puzzle_pack_list, 118);
    }
    if (!steam_get_achievement("complete_pack_119"))
    {
        ds_list_add(puzzle_pack_list, 119);
    }
    if (!steam_get_achievement("complete_pack_120"))
    {
        ds_list_add(puzzle_pack_list, 120);
    }
    if (!steam_get_achievement("complete_pack_121"))
    {
        ds_list_add(puzzle_pack_list, 121);
    }
    if (!steam_get_achievement("complete_pack_122"))
    {
        ds_list_add(puzzle_pack_list, 122);
    }
    if (!steam_get_achievement("complete_pack_123"))
    {
        ds_list_add(puzzle_pack_list, 123);
    }
    if (!steam_get_achievement("complete_pack_124"))
    {
        ds_list_add(puzzle_pack_list, 124);
    }
    if (!steam_get_achievement("complete_pack_125"))
    {
        ds_list_add(puzzle_pack_list, 125);
    }
    if (!steam_get_achievement("complete_pack_126"))
    {
        ds_list_add(puzzle_pack_list, 126);
    }
    if (!steam_get_achievement("complete_pack_127"))
    {
        ds_list_add(puzzle_pack_list, 127);
    }
    if (!steam_get_achievement("complete_pack_128"))
    {
        ds_list_add(puzzle_pack_list, 128);
    }
    if (!steam_get_achievement("complete_pack_129"))
    {
        ds_list_add(puzzle_pack_list, 129);
    }
    if (!steam_get_achievement("complete_pack_140"))
    {
        ds_list_add(puzzle_pack_list, 140);
    }
    if (!steam_get_achievement("complete_pack_141"))
    {
        ds_list_add(puzzle_pack_list, 141);
    }
    if (!steam_get_achievement("complete_pack_143"))
    {
        ds_list_add(puzzle_pack_list, 143);
    }
    if (!steam_get_achievement("complete_pack_144"))
    {
        ds_list_add(puzzle_pack_list, 144);
    }
    if (!steam_get_achievement("complete_pack_130"))
    {
        ds_list_add(puzzle_pack_list, 130);
    }
    if (!steam_get_achievement("complete_pack_131"))
    {
        ds_list_add(puzzle_pack_list, 131);
    }
    if (!steam_get_achievement("complete_pack_145"))
    {
        ds_list_add(puzzle_pack_list, 145);
    }
    if (!steam_get_achievement("complete_pack_142"))
    {
        ds_list_add(puzzle_pack_list, 142);
    }
    if (!steam_get_achievement("complete_pack_146"))
    {
        ds_list_add(puzzle_pack_list, 146);
    }
    if (!steam_get_achievement("complete_pack_147"))
    {
        ds_list_add(puzzle_pack_list, 147);
    }
    if (!steam_get_achievement("complete_pack_134"))
    {
        ds_list_add(puzzle_pack_list, 134);
    }
    if (!steam_get_achievement("complete_pack_133"))
    {
        ds_list_add(puzzle_pack_list, 133);
    }
    if (!steam_get_achievement("complete_pack_132"))
    {
        ds_list_add(puzzle_pack_list, 132);
    }
    if (!steam_get_achievement("complete_pack_135"))
    {
        ds_list_add(puzzle_pack_list, 135);
    }
    if (!steam_get_achievement("complete_pack_150"))
    {
        ds_list_add(puzzle_pack_list, 150);
    }
}
else if (global.pack_filer_using == 9)
{
    ds_list_add(puzzle_pack_list, 3, 4, 6, 17, 43, 45, 75, 107, 126, 127, 144);
}
if (global.puzzle_fav_1 > 0)
{
    fav_1_val_pos = ds_list_find_index(puzzle_pack_list, global.puzzle_fav_1);
    ds_list_delete(puzzle_pack_list, fav_1_val_pos);
}
if (global.puzzle_fav_2 > 0)
{
    fav_2_val_pos = ds_list_find_index(puzzle_pack_list, global.puzzle_fav_2);
    ds_list_delete(puzzle_pack_list, fav_2_val_pos);
}
if (global.puzzle_fav_3 > 0)
{
    fav_3_val_pos = ds_list_find_index(puzzle_pack_list, global.puzzle_fav_3);
    ds_list_delete(puzzle_pack_list, fav_3_val_pos);
}
if (global.puzzle_fav_4 > 0)
{
    fav_4_val_pos = ds_list_find_index(puzzle_pack_list, global.puzzle_fav_4);
    ds_list_delete(puzzle_pack_list, fav_4_val_pos);
}
if (global.puzzle_fav_5 > 0)
{
    fav_5_val_pos = ds_list_find_index(puzzle_pack_list, global.puzzle_fav_5);
    ds_list_delete(puzzle_pack_list, fav_5_val_pos);
}
if (global.puzzle_fav_6 > 0)
{
    fav_6_val_pos = ds_list_find_index(puzzle_pack_list, global.puzzle_fav_6);
    ds_list_delete(puzzle_pack_list, fav_6_val_pos);
}
if (global.puzzle_fav_7 > 0)
{
    fav_7_val_pos = ds_list_find_index(puzzle_pack_list, global.puzzle_fav_7);
    ds_list_delete(puzzle_pack_list, fav_7_val_pos);
}
if (global.puzzle_fav_8 > 0)
{
    fav_8_val_pos = ds_list_find_index(puzzle_pack_list, global.puzzle_fav_8);
    ds_list_delete(puzzle_pack_list, fav_8_val_pos);
}
if (global.puzzle_fav_9 > 0)
{
    fav_9_val_pos = ds_list_find_index(puzzle_pack_list, global.puzzle_fav_9);
    ds_list_delete(puzzle_pack_list, fav_9_val_pos);
}
if (global.puzzle_fav_10 > 0)
{
    fav_10_val_pos = ds_list_find_index(puzzle_pack_list, global.puzzle_fav_10);
    ds_list_delete(puzzle_pack_list, fav_10_val_pos);
}
if (global.puzzle_fav_11 > 0)
{
    fav_11_val_pos = ds_list_find_index(puzzle_pack_list, global.puzzle_fav_11);
    ds_list_delete(puzzle_pack_list, fav_11_val_pos);
}
if (global.puzzle_fav_12 > 0)
{
    fav_12_val_pos = ds_list_find_index(puzzle_pack_list, global.puzzle_fav_12);
    ds_list_delete(puzzle_pack_list, fav_12_val_pos);
}
if (global.puzzle_fav_13 > 0)
{
    fav_13_val_pos = ds_list_find_index(puzzle_pack_list, global.puzzle_fav_13);
    ds_list_delete(puzzle_pack_list, fav_13_val_pos);
}
if (global.puzzle_fav_14 > 0)
{
    fav_14_val_pos = ds_list_find_index(puzzle_pack_list, global.puzzle_fav_14);
    ds_list_delete(puzzle_pack_list, fav_14_val_pos);
}
if (global.puzzle_fav_15 > 0)
{
    fav_15_val_pos = ds_list_find_index(puzzle_pack_list, global.puzzle_fav_15);
    ds_list_delete(puzzle_pack_list, fav_15_val_pos);
}
if (global.puzzle_fav_1 > 0)
{
    fav_1_val_pos = ds_list_find_index(unowned_list, global.puzzle_fav_1);
    ds_list_delete(unowned_list, fav_1_val_pos);
}
if (global.puzzle_fav_2 > 0)
{
    fav_2_val_pos = ds_list_find_index(unowned_list, global.puzzle_fav_2);
    ds_list_delete(unowned_list, fav_2_val_pos);
}
if (global.puzzle_fav_3 > 0)
{
    fav_3_val_pos = ds_list_find_index(puzzle_pack_list, global.puzzle_fav_3);
    ds_list_delete(puzzle_pack_list, fav_3_val_pos);
}
if (global.puzzle_fav_4 > 0)
{
    fav_4_val_pos = ds_list_find_index(unowned_list, global.puzzle_fav_4);
    ds_list_delete(unowned_list, fav_4_val_pos);
}
if (global.puzzle_fav_5 > 0)
{
    fav_5_val_pos = ds_list_find_index(unowned_list, global.puzzle_fav_5);
    ds_list_delete(unowned_list, fav_5_val_pos);
}
if (global.puzzle_fav_6 > 0)
{
    fav_6_val_pos = ds_list_find_index(unowned_list, global.puzzle_fav_6);
    ds_list_delete(unowned_list, fav_6_val_pos);
}
if (global.puzzle_fav_7 > 0)
{
    fav_7_val_pos = ds_list_find_index(unowned_list, global.puzzle_fav_7);
    ds_list_delete(unowned_list, fav_7_val_pos);
}
if (global.puzzle_fav_8 > 0)
{
    fav_8_val_pos = ds_list_find_index(unowned_list, global.puzzle_fav_8);
    ds_list_delete(unowned_list, fav_8_val_pos);
}
if (global.puzzle_fav_9 > 0)
{
    fav_9_val_pos = ds_list_find_index(unowned_list, global.puzzle_fav_9);
    ds_list_delete(unowned_list, fav_9_val_pos);
}
if (global.puzzle_fav_10 > 0)
{
    fav_10_val_pos = ds_list_find_index(unowned_list, global.puzzle_fav_10);
    ds_list_delete(unowned_list, fav_10_val_pos);
}
if (global.puzzle_fav_11 > 0)
{
    fav_11_val_pos = ds_list_find_index(unowned_list, global.puzzle_fav_11);
    ds_list_delete(unowned_list, fav_11_val_pos);
}
if (global.puzzle_fav_12 > 0)
{
    fav_12_val_pos = ds_list_find_index(unowned_list, global.puzzle_fav_12);
    ds_list_delete(unowned_list, fav_12_val_pos);
}
if (global.puzzle_fav_13 > 0)
{
    fav_13_val_pos = ds_list_find_index(unowned_list, global.puzzle_fav_13);
    ds_list_delete(unowned_list, fav_13_val_pos);
}
if (global.puzzle_fav_14 > 0)
{
    fav_14_val_pos = ds_list_find_index(unowned_list, global.puzzle_fav_14);
    ds_list_delete(puzzle_pack_list, fav_14_val_pos);
}
if (global.puzzle_fav_15 > 0)
{
    fav_15_val_pos = ds_list_find_index(unowned_list, global.puzzle_fav_15);
    ds_list_delete(unowned_list, fav_15_val_pos);
}
puzzle_packs_remaining = ds_list_size(puzzle_pack_list);
puzzle_packs_remaining -= 1;
puzzle_pack_list_current_number = puzzle_packs_remaining;
if (global.pack_filer_using == 0 || global.pack_filer_using == 5 || global.pack_filer_using == 6 || global.pack_filer_using == 7 || global.pack_filer_using == 8 || global.pack_filer_using == 9)
{
    ds_list_shuffle(puzzle_pack_list);
}
unowned_remaining = ds_list_size(unowned_list);
unowned_remaining -= 1;
unowned_list_current_number = unowned_remaining;
puzzle_pack_button_1 = instance_create(global.button_1_x, global.button_1_y + 190, ob_puzzle_pack_button);
puzzle_pack_button_1.pack_is_a_fav = 0;
puzzle_pack_button_1.pack_button_number = 1;
puzzle_pack_button_1.button_x_plus_amount = 0;
puzzle_pack_button_1.button_y_plus_amount = 190;
puzzle_pack_button_1.alarm[3] = 1;
puzzle_pack_button_1.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_1.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_1.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_1.puzzle_pack = 0;
}
puzzle_pack_button_2 = instance_create(global.button_1_x + 190, global.button_1_y + 190, ob_puzzle_pack_button);
puzzle_pack_button_2.pack_is_a_fav = 0;
puzzle_pack_button_2.pack_button_number = 2;
puzzle_pack_button_2.button_x_plus_amount = 190;
puzzle_pack_button_2.button_y_plus_amount = 190;
puzzle_pack_button_2.alarm[3] = 1;
puzzle_pack_button_2.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_2.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_2.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_2.puzzle_pack = 0;
}
puzzle_pack_button_3 = instance_create(global.button_1_x + 380, global.button_1_y + 190, ob_puzzle_pack_button);
puzzle_pack_button_3.pack_is_a_fav = 0;
puzzle_pack_button_3.pack_button_number = 3;
puzzle_pack_button_3.button_x_plus_amount = 380;
puzzle_pack_button_3.button_y_plus_amount = 190;
puzzle_pack_button_3.alarm[3] = 1;
puzzle_pack_button_3.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_3.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_3.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_3.puzzle_pack = 0;
}
puzzle_pack_button_4 = instance_create(global.button_1_x + 570, global.button_1_y + 190, ob_puzzle_pack_button);
puzzle_pack_button_4.pack_is_a_fav = 0;
puzzle_pack_button_4.pack_button_number = 4;
puzzle_pack_button_4.button_x_plus_amount = 570;
puzzle_pack_button_4.button_y_plus_amount = 190;
puzzle_pack_button_4.alarm[3] = 1;
puzzle_pack_button_4.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_4.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_4.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_4.puzzle_pack = 0;
}
puzzle_pack_button_5 = instance_create(global.button_1_x + 760, global.button_1_y + 190, ob_puzzle_pack_button);
puzzle_pack_button_5.pack_is_a_fav = 0;
puzzle_pack_button_5.pack_button_number = 5;
puzzle_pack_button_5.button_x_plus_amount = 760;
puzzle_pack_button_5.button_y_plus_amount = 190;
puzzle_pack_button_5.alarm[3] = 1;
puzzle_pack_button_5.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_5.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_5.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_5.puzzle_pack = 0;
}
puzzle_pack_button_6 = instance_create(global.button_1_x + 950, global.button_1_y + 190, ob_puzzle_pack_button);
puzzle_pack_button_6.pack_is_a_fav = 0;
puzzle_pack_button_6.pack_button_number = 6;
puzzle_pack_button_6.button_x_plus_amount = 950;
puzzle_pack_button_6.button_y_plus_amount = 190;
puzzle_pack_button_6.alarm[3] = 1;
puzzle_pack_button_6.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_6.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_6.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_6.puzzle_pack = 0;
}
puzzle_pack_button_7 = instance_create(global.button_1_x + 1140, global.button_1_y + 190, ob_puzzle_pack_button);
puzzle_pack_button_7.pack_is_a_fav = 0;
puzzle_pack_button_7.pack_button_number = 7;
puzzle_pack_button_7.button_x_plus_amount = 1140;
puzzle_pack_button_7.button_y_plus_amount = 190;
puzzle_pack_button_7.alarm[3] = 1;
puzzle_pack_button_7.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_7.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_7.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_7.puzzle_pack = 0;
}
puzzle_pack_button_8 = instance_create(global.button_1_x, global.button_1_y + 380, ob_puzzle_pack_button);
puzzle_pack_button_8.pack_is_a_fav = 0;
puzzle_pack_button_8.pack_button_number = 8;
puzzle_pack_button_8.button_x_plus_amount = 0;
puzzle_pack_button_8.button_y_plus_amount = 380;
puzzle_pack_button_8.alarm[3] = 1;
puzzle_pack_button_8.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_8.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_8.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_8.puzzle_pack = 0;
}
puzzle_pack_button_9 = instance_create(global.button_1_x + 190, global.button_1_y + 380, ob_puzzle_pack_button);
puzzle_pack_button_9.pack_is_a_fav = 0;
puzzle_pack_button_9.pack_button_number = 9;
puzzle_pack_button_9.button_x_plus_amount = 190;
puzzle_pack_button_9.button_y_plus_amount = 380;
puzzle_pack_button_9.alarm[3] = 1;
puzzle_pack_button_9.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_9.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_9.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_9.puzzle_pack = 0;
}
puzzle_pack_button_10 = instance_create(global.button_1_x + 380, global.button_1_y + 380, ob_puzzle_pack_button);
puzzle_pack_button_10.pack_is_a_fav = 0;
puzzle_pack_button_10.pack_button_number = 10;
puzzle_pack_button_10.button_x_plus_amount = 380;
puzzle_pack_button_10.button_y_plus_amount = 380;
puzzle_pack_button_10.alarm[3] = 1;
puzzle_pack_button_10.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_10.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_10.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_10.puzzle_pack = 0;
}
puzzle_pack_button_11 = instance_create(global.button_1_x + 570, global.button_1_y + 380, ob_puzzle_pack_button);
puzzle_pack_button_11.pack_is_a_fav = 0;
puzzle_pack_button_11.pack_button_number = 11;
puzzle_pack_button_11.button_x_plus_amount = 570;
puzzle_pack_button_11.button_y_plus_amount = 380;
puzzle_pack_button_11.alarm[3] = 1;
puzzle_pack_button_11.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_11.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_11.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_11.puzzle_pack = 0;
}
puzzle_pack_button_12 = instance_create(global.button_1_x + 760, global.button_1_y + 380, ob_puzzle_pack_button);
puzzle_pack_button_12.pack_is_a_fav = 0;
puzzle_pack_button_12.pack_button_number = 12;
puzzle_pack_button_12.button_x_plus_amount = 760;
puzzle_pack_button_12.button_y_plus_amount = 380;
puzzle_pack_button_12.alarm[3] = 1;
puzzle_pack_button_12.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_12.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_12.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_12.puzzle_pack = 0;
}
puzzle_pack_button_13 = instance_create(global.button_1_x + 950, global.button_1_y + 380, ob_puzzle_pack_button);
puzzle_pack_button_13.pack_is_a_fav = 0;
puzzle_pack_button_13.pack_button_number = 13;
puzzle_pack_button_13.button_x_plus_amount = 950;
puzzle_pack_button_13.button_y_plus_amount = 380;
puzzle_pack_button_13.alarm[3] = 1;
puzzle_pack_button_13.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_13.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_13.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_13.puzzle_pack = 0;
}
puzzle_pack_button_14 = instance_create(global.button_1_x + 1140, global.button_1_y + 380, ob_puzzle_pack_button);
puzzle_pack_button_14.pack_is_a_fav = 0;
puzzle_pack_button_14.pack_button_number = 14;
puzzle_pack_button_14.button_x_plus_amount = 1140;
puzzle_pack_button_14.button_y_plus_amount = 380;
puzzle_pack_button_14.alarm[3] = 1;
puzzle_pack_button_14.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_14.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_14.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_14.puzzle_pack = 0;
}
puzzle_pack_button_15 = instance_create(global.button_1_x, global.button_1_y + 570, ob_puzzle_pack_button);
puzzle_pack_button_15.pack_is_a_fav = 0;
puzzle_pack_button_15.pack_button_number = 15;
puzzle_pack_button_15.button_x_plus_amount = 0;
puzzle_pack_button_15.button_y_plus_amount = 570;
puzzle_pack_button_15.alarm[3] = 1;
puzzle_pack_button_15.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_15.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_15.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_15.puzzle_pack = 0;
}
puzzle_pack_button_16 = instance_create(global.button_1_x + 190, global.button_1_y + 570, ob_puzzle_pack_button);
puzzle_pack_button_16.pack_is_a_fav = 0;
puzzle_pack_button_16.pack_button_number = 16;
puzzle_pack_button_16.button_x_plus_amount = 190;
puzzle_pack_button_16.button_y_plus_amount = 570;
puzzle_pack_button_16.alarm[3] = 1;
puzzle_pack_button_16.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_16.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_16.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_16.puzzle_pack = 0;
}
puzzle_pack_button_17 = instance_create(global.button_1_x + 380, global.button_1_y + 570, ob_puzzle_pack_button);
puzzle_pack_button_17.pack_is_a_fav = 0;
puzzle_pack_button_17.pack_button_number = 17;
puzzle_pack_button_17.button_x_plus_amount = 380;
puzzle_pack_button_17.button_y_plus_amount = 570;
puzzle_pack_button_17.alarm[3] = 1;
puzzle_pack_button_17.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_17.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_17.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_17.puzzle_pack = 0;
}
puzzle_pack_button_18 = instance_create(global.button_1_x + 570, global.button_1_y + 570, ob_puzzle_pack_button);
puzzle_pack_button_18.pack_is_a_fav = 0;
puzzle_pack_button_18.pack_button_number = 18;
puzzle_pack_button_18.button_x_plus_amount = 570;
puzzle_pack_button_18.button_y_plus_amount = 570;
puzzle_pack_button_18.alarm[3] = 1;
puzzle_pack_button_18.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_18.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_18.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_18.puzzle_pack = 0;
}
puzzle_pack_button_19 = instance_create(global.button_1_x + 760, global.button_1_y + 570, ob_puzzle_pack_button);
puzzle_pack_button_19.pack_is_a_fav = 0;
puzzle_pack_button_19.pack_button_number = 19;
puzzle_pack_button_19.button_x_plus_amount = 760;
puzzle_pack_button_19.button_y_plus_amount = 570;
puzzle_pack_button_19.alarm[3] = 1;
puzzle_pack_button_19.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_19.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_19.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_19.puzzle_pack = 0;
}
puzzle_pack_button_20 = instance_create(global.button_1_x + 950, global.button_1_y + 570, ob_puzzle_pack_button);
puzzle_pack_button_20.pack_is_a_fav = 0;
puzzle_pack_button_20.pack_button_number = 20;
puzzle_pack_button_20.button_x_plus_amount = 950;
puzzle_pack_button_20.button_y_plus_amount = 570;
puzzle_pack_button_20.alarm[3] = 1;
puzzle_pack_button_20.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_20.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_20.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_20.puzzle_pack = 0;
}
puzzle_pack_button_21 = instance_create(global.button_1_x + 1140, global.button_1_y + 570, ob_puzzle_pack_button);
puzzle_pack_button_21.pack_is_a_fav = 0;
puzzle_pack_button_21.pack_button_number = 21;
puzzle_pack_button_21.button_x_plus_amount = 1140;
puzzle_pack_button_21.button_y_plus_amount = 570;
puzzle_pack_button_21.alarm[3] = 1;
puzzle_pack_button_21.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_21.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_21.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_21.puzzle_pack = 0;
}
puzzle_pack_button_22 = instance_create(global.button_1_x, global.button_1_y + 760, ob_puzzle_pack_button);
puzzle_pack_button_22.pack_is_a_fav = 0;
puzzle_pack_button_22.pack_button_number = 22;
puzzle_pack_button_22.button_x_plus_amount = 0;
puzzle_pack_button_22.button_y_plus_amount = 760;
puzzle_pack_button_22.alarm[3] = 1;
puzzle_pack_button_22.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_22.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_22.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_22.puzzle_pack = 0;
}
puzzle_pack_button_23 = instance_create(global.button_1_x + 190, global.button_1_y + 760, ob_puzzle_pack_button);
puzzle_pack_button_23.pack_is_a_fav = 0;
puzzle_pack_button_23.pack_button_number = 23;
puzzle_pack_button_23.button_x_plus_amount = 190;
puzzle_pack_button_23.button_y_plus_amount = 760;
puzzle_pack_button_23.alarm[3] = 1;
puzzle_pack_button_23.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_23.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_23.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_23.puzzle_pack = 0;
}
puzzle_pack_button_24 = instance_create(global.button_1_x + 380, global.button_1_y + 760, ob_puzzle_pack_button);
puzzle_pack_button_24.pack_is_a_fav = 0;
puzzle_pack_button_24.pack_button_number = 24;
puzzle_pack_button_24.button_x_plus_amount = 380;
puzzle_pack_button_24.button_y_plus_amount = 760;
puzzle_pack_button_24.alarm[3] = 1;
puzzle_pack_button_24.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_24.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_24.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_24.puzzle_pack = 0;
}
puzzle_pack_button_25 = instance_create(global.button_1_x + 570, global.button_1_y + 760, ob_puzzle_pack_button);
puzzle_pack_button_25.pack_is_a_fav = 0;
puzzle_pack_button_25.pack_button_number = 25;
puzzle_pack_button_25.button_x_plus_amount = 570;
puzzle_pack_button_25.button_y_plus_amount = 760;
puzzle_pack_button_25.alarm[3] = 1;
puzzle_pack_button_25.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_25.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_25.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_25.puzzle_pack = 0;
}
puzzle_pack_button_26 = instance_create(global.button_1_x + 760, global.button_1_y + 760, ob_puzzle_pack_button);
puzzle_pack_button_26.pack_is_a_fav = 0;
puzzle_pack_button_26.pack_button_number = 26;
puzzle_pack_button_26.button_x_plus_amount = 760;
puzzle_pack_button_26.button_y_plus_amount = 760;
puzzle_pack_button_26.alarm[3] = 1;
puzzle_pack_button_26.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_26.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_26.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_26.puzzle_pack = 0;
}
puzzle_pack_button_27 = instance_create(global.button_1_x + 950, global.button_1_y + 760, ob_puzzle_pack_button);
puzzle_pack_button_27.pack_is_a_fav = 0;
puzzle_pack_button_27.pack_button_number = 27;
puzzle_pack_button_27.button_x_plus_amount = 950;
puzzle_pack_button_27.button_y_plus_amount = 760;
puzzle_pack_button_27.alarm[3] = 1;
puzzle_pack_button_27.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_27.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_27.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_27.puzzle_pack = 0;
}
puzzle_pack_button_28 = instance_create(global.button_1_x + 1140, global.button_1_y + 760, ob_puzzle_pack_button);
puzzle_pack_button_28.pack_is_a_fav = 0;
puzzle_pack_button_28.pack_button_number = 28;
puzzle_pack_button_28.button_x_plus_amount = 1140;
puzzle_pack_button_28.button_y_plus_amount = 760;
puzzle_pack_button_28.alarm[3] = 1;
puzzle_pack_button_28.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_28.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_28.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_28.puzzle_pack = 0;
}
puzzle_pack_button_29 = instance_create(global.button_1_x, global.button_1_y + 950, ob_puzzle_pack_button);
puzzle_pack_button_29.pack_is_a_fav = 0;
puzzle_pack_button_29.pack_button_number = 29;
puzzle_pack_button_29.button_x_plus_amount = 0;
puzzle_pack_button_29.button_y_plus_amount = 950;
puzzle_pack_button_29.alarm[3] = 1;
puzzle_pack_button_29.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_29.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_29.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_29.puzzle_pack = 0;
}
puzzle_pack_button_30 = instance_create(global.button_1_x + 190, global.button_1_y + 950, ob_puzzle_pack_button);
puzzle_pack_button_30.pack_is_a_fav = 0;
puzzle_pack_button_30.pack_button_number = 30;
puzzle_pack_button_30.button_x_plus_amount = 190;
puzzle_pack_button_30.button_y_plus_amount = 950;
puzzle_pack_button_30.alarm[3] = 1;
puzzle_pack_button_30.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_30.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_30.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_30.puzzle_pack = 0;
}
puzzle_pack_button_31 = instance_create(global.button_1_x + 380, global.button_1_y + 950, ob_puzzle_pack_button);
puzzle_pack_button_31.pack_is_a_fav = 0;
puzzle_pack_button_31.pack_button_number = 31;
puzzle_pack_button_31.button_x_plus_amount = 380;
puzzle_pack_button_31.button_y_plus_amount = 950;
puzzle_pack_button_31.alarm[3] = 1;
puzzle_pack_button_31.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_31.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_31.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_31.puzzle_pack = 0;
}
puzzle_pack_button_32 = instance_create(global.button_1_x + 570, global.button_1_y + 950, ob_puzzle_pack_button);
puzzle_pack_button_32.pack_is_a_fav = 0;
puzzle_pack_button_32.pack_button_number = 32;
puzzle_pack_button_32.button_x_plus_amount = 570;
puzzle_pack_button_32.button_y_plus_amount = 950;
puzzle_pack_button_32.alarm[3] = 1;
puzzle_pack_button_32.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_32.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_32.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_32.puzzle_pack = 0;
}
puzzle_pack_button_33 = instance_create(global.button_1_x + 760, global.button_1_y + 950, ob_puzzle_pack_button);
puzzle_pack_button_33.pack_is_a_fav = 0;
puzzle_pack_button_33.pack_button_number = 33;
puzzle_pack_button_33.button_x_plus_amount = 760;
puzzle_pack_button_33.button_y_plus_amount = 950;
puzzle_pack_button_33.alarm[3] = 1;
puzzle_pack_button_33.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_33.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_33.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_33.puzzle_pack = 0;
}
puzzle_pack_button_34 = instance_create(global.button_1_x + 950, global.button_1_y + 950, ob_puzzle_pack_button);
puzzle_pack_button_34.pack_is_a_fav = 0;
puzzle_pack_button_34.pack_button_number = 34;
puzzle_pack_button_34.button_x_plus_amount = 950;
puzzle_pack_button_34.button_y_plus_amount = 950;
puzzle_pack_button_34.alarm[3] = 1;
puzzle_pack_button_34.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_34.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_34.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_34.puzzle_pack = 0;
}
puzzle_pack_button_35 = instance_create(global.button_1_x + 1140, global.button_1_y + 950, ob_puzzle_pack_button);
puzzle_pack_button_35.pack_is_a_fav = 0;
puzzle_pack_button_35.pack_button_number = 35;
puzzle_pack_button_35.button_x_plus_amount = 1140;
puzzle_pack_button_35.button_y_plus_amount = 950;
puzzle_pack_button_35.alarm[3] = 1;
puzzle_pack_button_35.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_35.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_35.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_35.puzzle_pack = 0;
}
puzzle_pack_button_36 = instance_create(global.button_1_x, global.button_1_y + 1140, ob_puzzle_pack_button);
puzzle_pack_button_36.pack_is_a_fav = 0;
puzzle_pack_button_36.pack_button_number = 36;
puzzle_pack_button_36.button_x_plus_amount = 0;
puzzle_pack_button_36.button_y_plus_amount = 1140;
puzzle_pack_button_36.alarm[3] = 1;
puzzle_pack_button_36.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_36.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_36.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_36.puzzle_pack = 0;
}
puzzle_pack_button_37 = instance_create(global.button_1_x + 190, global.button_1_y + 1140, ob_puzzle_pack_button);
puzzle_pack_button_37.pack_is_a_fav = 0;
puzzle_pack_button_37.pack_button_number = 37;
puzzle_pack_button_37.button_x_plus_amount = 190;
puzzle_pack_button_37.button_y_plus_amount = 1140;
puzzle_pack_button_37.alarm[3] = 1;
puzzle_pack_button_37.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_37.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_37.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_37.puzzle_pack = 0;
}
puzzle_pack_button_38 = instance_create(global.button_1_x + 380, global.button_1_y + 1140, ob_puzzle_pack_button);
puzzle_pack_button_38.pack_is_a_fav = 0;
puzzle_pack_button_38.pack_button_number = 38;
puzzle_pack_button_38.button_x_plus_amount = 380;
puzzle_pack_button_38.button_y_plus_amount = 1140;
puzzle_pack_button_38.alarm[3] = 1;
puzzle_pack_button_38.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_38.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_38.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_38.puzzle_pack = 0;
}
puzzle_pack_button_39 = instance_create(global.button_1_x + 570, global.button_1_y + 1140, ob_puzzle_pack_button);
puzzle_pack_button_39.pack_is_a_fav = 0;
puzzle_pack_button_39.pack_button_number = 39;
puzzle_pack_button_39.button_x_plus_amount = 570;
puzzle_pack_button_39.button_y_plus_amount = 1140;
puzzle_pack_button_39.alarm[3] = 1;
puzzle_pack_button_39.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_39.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_39.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_39.puzzle_pack = 0;
}
puzzle_pack_button_40 = instance_create(global.button_1_x + 760, global.button_1_y + 1140, ob_puzzle_pack_button);
puzzle_pack_button_40.pack_is_a_fav = 0;
puzzle_pack_button_40.pack_button_number = 40;
puzzle_pack_button_40.button_x_plus_amount = 760;
puzzle_pack_button_40.button_y_plus_amount = 1140;
puzzle_pack_button_40.alarm[3] = 1;
puzzle_pack_button_40.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_40.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_40.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_40.puzzle_pack = 0;
}
puzzle_pack_button_41 = instance_create(global.button_1_x + 950, global.button_1_y + 1140, ob_puzzle_pack_button);
puzzle_pack_button_41.pack_is_a_fav = 0;
puzzle_pack_button_41.pack_button_number = 41;
puzzle_pack_button_41.button_x_plus_amount = 950;
puzzle_pack_button_41.button_y_plus_amount = 1140;
puzzle_pack_button_41.alarm[3] = 1;
puzzle_pack_button_41.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_41.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_41.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_41.puzzle_pack = 0;
}
puzzle_pack_button_42 = instance_create(global.button_1_x + 1140, global.button_1_y + 1140, ob_puzzle_pack_button);
puzzle_pack_button_42.pack_is_a_fav = 0;
puzzle_pack_button_42.pack_button_number = 42;
puzzle_pack_button_42.button_x_plus_amount = 1140;
puzzle_pack_button_42.button_y_plus_amount = 1140;
puzzle_pack_button_42.alarm[3] = 1;
puzzle_pack_button_42.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_42.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_42.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_42.puzzle_pack = 0;
}
puzzle_pack_button_43 = instance_create(global.button_1_x, global.button_1_y + 1330, ob_puzzle_pack_button);
puzzle_pack_button_43.pack_is_a_fav = 0;
puzzle_pack_button_43.pack_button_number = 43;
puzzle_pack_button_43.button_x_plus_amount = 0;
puzzle_pack_button_43.button_y_plus_amount = 1330;
puzzle_pack_button_43.alarm[3] = 1;
puzzle_pack_button_43.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_43.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_43.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_43.puzzle_pack = 0;
}
puzzle_pack_button_44 = instance_create(global.button_1_x + 190, global.button_1_y + 1330, ob_puzzle_pack_button);
puzzle_pack_button_44.pack_is_a_fav = 0;
puzzle_pack_button_44.pack_button_number = 44;
puzzle_pack_button_44.button_x_plus_amount = 190;
puzzle_pack_button_44.button_y_plus_amount = 1330;
puzzle_pack_button_44.alarm[3] = 1;
puzzle_pack_button_44.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_44.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_44.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_44.puzzle_pack = 0;
}
puzzle_pack_button_45 = instance_create(global.button_1_x + 380, global.button_1_y + 1330, ob_puzzle_pack_button);
puzzle_pack_button_45.pack_is_a_fav = 0;
puzzle_pack_button_45.pack_button_number = 45;
puzzle_pack_button_45.button_x_plus_amount = 380;
puzzle_pack_button_45.button_y_plus_amount = 1330;
puzzle_pack_button_45.alarm[3] = 1;
puzzle_pack_button_45.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_45.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_45.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_45.puzzle_pack = 0;
}
puzzle_pack_button_46 = instance_create(global.button_1_x + 570, global.button_1_y + 1330, ob_puzzle_pack_button);
puzzle_pack_button_46.pack_is_a_fav = 0;
puzzle_pack_button_46.pack_button_number = 46;
puzzle_pack_button_46.button_x_plus_amount = 570;
puzzle_pack_button_46.button_y_plus_amount = 1330;
puzzle_pack_button_46.alarm[3] = 1;
puzzle_pack_button_46.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_46.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_46.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_46.puzzle_pack = 0;
}
puzzle_pack_button_47 = instance_create(global.button_1_x + 760, global.button_1_y + 1330, ob_puzzle_pack_button);
puzzle_pack_button_47.pack_is_a_fav = 0;
puzzle_pack_button_47.pack_button_number = 47;
puzzle_pack_button_47.button_x_plus_amount = 760;
puzzle_pack_button_47.button_y_plus_amount = 1330;
puzzle_pack_button_47.alarm[3] = 1;
puzzle_pack_button_47.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_47.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_47.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_47.puzzle_pack = 0;
}
puzzle_pack_button_48 = instance_create(global.button_1_x + 950, global.button_1_y + 1330, ob_puzzle_pack_button);
puzzle_pack_button_48.pack_is_a_fav = 0;
puzzle_pack_button_48.pack_button_number = 48;
puzzle_pack_button_48.button_x_plus_amount = 950;
puzzle_pack_button_48.button_y_plus_amount = 1330;
puzzle_pack_button_48.alarm[3] = 1;
puzzle_pack_button_48.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_48.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_48.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_48.puzzle_pack = 0;
}
puzzle_pack_button_49 = instance_create(global.button_1_x + 1140, global.button_1_y + 1330, ob_puzzle_pack_button);
puzzle_pack_button_49.pack_is_a_fav = 0;
puzzle_pack_button_49.pack_button_number = 49;
puzzle_pack_button_49.button_x_plus_amount = 1140;
puzzle_pack_button_49.button_y_plus_amount = 1330;
puzzle_pack_button_49.alarm[3] = 1;
puzzle_pack_button_49.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_49.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_49.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_49.puzzle_pack = 0;
}
puzzle_pack_button_43 = instance_create(global.button_1_x, global.button_1_y + 1520, ob_puzzle_pack_button);
puzzle_pack_button_43.pack_is_a_fav = 0;
puzzle_pack_button_43.pack_button_number = 50;
puzzle_pack_button_43.button_x_plus_amount = 0;
puzzle_pack_button_43.button_y_plus_amount = 1520;
puzzle_pack_button_43.alarm[3] = 1;
puzzle_pack_button_43.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_43.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_43.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_43.puzzle_pack = 0;
}
puzzle_pack_button_44 = instance_create(global.button_1_x + 190, global.button_1_y + 1520, ob_puzzle_pack_button);
puzzle_pack_button_44.pack_is_a_fav = 0;
puzzle_pack_button_44.pack_button_number = 51;
puzzle_pack_button_44.button_x_plus_amount = 190;
puzzle_pack_button_44.button_y_plus_amount = 1520;
puzzle_pack_button_44.alarm[3] = 1;
puzzle_pack_button_44.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_44.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_44.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_44.puzzle_pack = 0;
}
puzzle_pack_button_45 = instance_create(global.button_1_x + 380, global.button_1_y + 1520, ob_puzzle_pack_button);
puzzle_pack_button_45.pack_is_a_fav = 0;
puzzle_pack_button_45.pack_button_number = 52;
puzzle_pack_button_45.button_x_plus_amount = 380;
puzzle_pack_button_45.button_y_plus_amount = 1520;
puzzle_pack_button_45.alarm[3] = 1;
puzzle_pack_button_45.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_45.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_45.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_45.puzzle_pack = 0;
}
puzzle_pack_button_46 = instance_create(global.button_1_x + 570, global.button_1_y + 1520, ob_puzzle_pack_button);
puzzle_pack_button_46.pack_is_a_fav = 0;
puzzle_pack_button_46.pack_button_number = 53;
puzzle_pack_button_46.button_x_plus_amount = 570;
puzzle_pack_button_46.button_y_plus_amount = 1520;
puzzle_pack_button_46.alarm[3] = 1;
puzzle_pack_button_46.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_46.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_46.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_46.puzzle_pack = 0;
}
puzzle_pack_button_47 = instance_create(global.button_1_x + 760, global.button_1_y + 1520, ob_puzzle_pack_button);
puzzle_pack_button_47.pack_is_a_fav = 0;
puzzle_pack_button_47.pack_button_number = 54;
puzzle_pack_button_47.button_x_plus_amount = 760;
puzzle_pack_button_47.button_y_plus_amount = 1520;
puzzle_pack_button_47.alarm[3] = 1;
puzzle_pack_button_47.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_47.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_47.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_47.puzzle_pack = 0;
}
puzzle_pack_button_48 = instance_create(global.button_1_x + 950, global.button_1_y + 1520, ob_puzzle_pack_button);
puzzle_pack_button_48.pack_is_a_fav = 0;
puzzle_pack_button_48.pack_button_number = 55;
puzzle_pack_button_48.button_x_plus_amount = 950;
puzzle_pack_button_48.button_y_plus_amount = 1520;
puzzle_pack_button_48.alarm[3] = 1;
puzzle_pack_button_48.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_48.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_48.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_48.puzzle_pack = 0;
}
puzzle_pack_button_49 = instance_create(global.button_1_x + 1140, global.button_1_y + 1520, ob_puzzle_pack_button);
puzzle_pack_button_49.pack_is_a_fav = 0;
puzzle_pack_button_49.pack_button_number = 56;
puzzle_pack_button_49.button_x_plus_amount = 1140;
puzzle_pack_button_49.button_y_plus_amount = 1520;
puzzle_pack_button_49.alarm[3] = 1;
puzzle_pack_button_49.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_49.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_49.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_49.puzzle_pack = 0;
}
puzzle_pack_button_43 = instance_create(global.button_1_x, global.button_1_y + 1710, ob_puzzle_pack_button);
puzzle_pack_button_43.pack_is_a_fav = 0;
puzzle_pack_button_43.pack_button_number = 57;
puzzle_pack_button_43.button_x_plus_amount = 0;
puzzle_pack_button_43.button_y_plus_amount = 1710;
puzzle_pack_button_43.alarm[3] = 1;
puzzle_pack_button_43.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_43.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_43.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_43.puzzle_pack = 0;
}
puzzle_pack_button_44 = instance_create(global.button_1_x + 190, global.button_1_y + 1710, ob_puzzle_pack_button);
puzzle_pack_button_44.pack_is_a_fav = 0;
puzzle_pack_button_44.pack_button_number = 58;
puzzle_pack_button_44.button_x_plus_amount = 190;
puzzle_pack_button_44.button_y_plus_amount = 1710;
puzzle_pack_button_44.alarm[3] = 1;
puzzle_pack_button_44.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_44.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_44.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_44.puzzle_pack = 0;
}
puzzle_pack_button_45 = instance_create(global.button_1_x + 380, global.button_1_y + 1710, ob_puzzle_pack_button);
puzzle_pack_button_45.pack_is_a_fav = 0;
puzzle_pack_button_45.pack_button_number = 59;
puzzle_pack_button_45.button_x_plus_amount = 380;
puzzle_pack_button_45.button_y_plus_amount = 1710;
puzzle_pack_button_45.alarm[3] = 1;
puzzle_pack_button_45.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_45.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_45.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_45.puzzle_pack = 0;
}
puzzle_pack_button_46 = instance_create(global.button_1_x + 570, global.button_1_y + 1710, ob_puzzle_pack_button);
puzzle_pack_button_46.pack_is_a_fav = 0;
puzzle_pack_button_46.pack_button_number = 60;
puzzle_pack_button_46.button_x_plus_amount = 570;
puzzle_pack_button_46.button_y_plus_amount = 1710;
puzzle_pack_button_46.alarm[3] = 1;
puzzle_pack_button_46.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_46.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_46.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_46.puzzle_pack = 0;
}
puzzle_pack_button_47 = instance_create(global.button_1_x + 760, global.button_1_y + 1710, ob_puzzle_pack_button);
puzzle_pack_button_47.pack_is_a_fav = 0;
puzzle_pack_button_47.pack_button_number = 61;
puzzle_pack_button_47.button_x_plus_amount = 760;
puzzle_pack_button_47.button_y_plus_amount = 1710;
puzzle_pack_button_47.alarm[3] = 1;
puzzle_pack_button_47.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_47.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_47.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_47.puzzle_pack = 0;
}
puzzle_pack_button_48 = instance_create(global.button_1_x + 950, global.button_1_y + 1710, ob_puzzle_pack_button);
puzzle_pack_button_48.pack_is_a_fav = 0;
puzzle_pack_button_48.pack_button_number = 62;
puzzle_pack_button_48.button_x_plus_amount = 950;
puzzle_pack_button_48.button_y_plus_amount = 1710;
puzzle_pack_button_48.alarm[3] = 1;
puzzle_pack_button_48.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_48.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_48.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_48.puzzle_pack = 0;
}
puzzle_pack_button_49 = instance_create(global.button_1_x + 1140, global.button_1_y + 1710, ob_puzzle_pack_button);
puzzle_pack_button_49.pack_is_a_fav = 0;
puzzle_pack_button_49.pack_button_number = 63;
puzzle_pack_button_49.button_x_plus_amount = 1140;
puzzle_pack_button_49.button_y_plus_amount = 1710;
puzzle_pack_button_49.alarm[3] = 1;
puzzle_pack_button_49.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_49.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_49.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_49.puzzle_pack = 0;
}
puzzle_pack_button_43 = instance_create(global.button_1_x, global.button_1_y + 1900, ob_puzzle_pack_button);
puzzle_pack_button_43.pack_is_a_fav = 0;
puzzle_pack_button_43.pack_button_number = 64;
puzzle_pack_button_43.button_x_plus_amount = 0;
puzzle_pack_button_43.button_y_plus_amount = 1900;
puzzle_pack_button_43.alarm[3] = 1;
puzzle_pack_button_43.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_43.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_43.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_43.puzzle_pack = 0;
}
puzzle_pack_button_44 = instance_create(global.button_1_x + 190, global.button_1_y + 1900, ob_puzzle_pack_button);
puzzle_pack_button_44.pack_is_a_fav = 0;
puzzle_pack_button_44.pack_button_number = 65;
puzzle_pack_button_44.button_x_plus_amount = 190;
puzzle_pack_button_44.button_y_plus_amount = 1900;
puzzle_pack_button_44.alarm[3] = 1;
puzzle_pack_button_44.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_44.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_44.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_44.puzzle_pack = 0;
}
puzzle_pack_button_45 = instance_create(global.button_1_x + 380, global.button_1_y + 1900, ob_puzzle_pack_button);
puzzle_pack_button_45.pack_is_a_fav = 0;
puzzle_pack_button_45.pack_button_number = 66;
puzzle_pack_button_45.button_x_plus_amount = 380;
puzzle_pack_button_45.button_y_plus_amount = 1900;
puzzle_pack_button_45.alarm[3] = 1;
puzzle_pack_button_45.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_45.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_45.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_45.puzzle_pack = 0;
}
puzzle_pack_button_46 = instance_create(global.button_1_x + 570, global.button_1_y + 1900, ob_puzzle_pack_button);
puzzle_pack_button_46.pack_is_a_fav = 0;
puzzle_pack_button_46.pack_button_number = 67;
puzzle_pack_button_46.button_x_plus_amount = 570;
puzzle_pack_button_46.button_y_plus_amount = 1900;
puzzle_pack_button_46.alarm[3] = 1;
puzzle_pack_button_46.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_46.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_46.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_46.puzzle_pack = 0;
}
puzzle_pack_button_47 = instance_create(global.button_1_x + 760, global.button_1_y + 1900, ob_puzzle_pack_button);
puzzle_pack_button_47.pack_is_a_fav = 0;
puzzle_pack_button_47.pack_button_number = 68;
puzzle_pack_button_47.button_x_plus_amount = 760;
puzzle_pack_button_47.button_y_plus_amount = 1900;
puzzle_pack_button_47.alarm[3] = 1;
puzzle_pack_button_47.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_47.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_47.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_47.puzzle_pack = 0;
}
puzzle_pack_button_48 = instance_create(global.button_1_x + 950, global.button_1_y + 1900, ob_puzzle_pack_button);
puzzle_pack_button_48.pack_is_a_fav = 0;
puzzle_pack_button_48.pack_button_number = 69;
puzzle_pack_button_48.button_x_plus_amount = 950;
puzzle_pack_button_48.button_y_plus_amount = 1900;
puzzle_pack_button_48.alarm[3] = 1;
puzzle_pack_button_48.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_48.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_48.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_48.puzzle_pack = 0;
}
puzzle_pack_button_49 = instance_create(global.button_1_x + 1140, global.button_1_y + 1900, ob_puzzle_pack_button);
puzzle_pack_button_49.pack_is_a_fav = 0;
puzzle_pack_button_49.pack_button_number = 70;
puzzle_pack_button_49.button_x_plus_amount = 1140;
puzzle_pack_button_49.button_y_plus_amount = 1900;
puzzle_pack_button_49.alarm[3] = 1;
puzzle_pack_button_49.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_49.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_49.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_49.puzzle_pack = 0;
}
puzzle_pack_button_43 = instance_create(global.button_1_x, global.button_1_y + 2090, ob_puzzle_pack_button);
puzzle_pack_button_43.pack_is_a_fav = 0;
puzzle_pack_button_43.pack_button_number = 71;
puzzle_pack_button_43.button_x_plus_amount = 0;
puzzle_pack_button_43.button_y_plus_amount = 2090;
puzzle_pack_button_43.alarm[3] = 1;
puzzle_pack_button_43.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_43.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_43.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_43.puzzle_pack = 0;
}
puzzle_pack_button_44 = instance_create(global.button_1_x + 190, global.button_1_y + 2090, ob_puzzle_pack_button);
puzzle_pack_button_44.pack_is_a_fav = 0;
puzzle_pack_button_44.pack_button_number = 72;
puzzle_pack_button_44.button_x_plus_amount = 190;
puzzle_pack_button_44.button_y_plus_amount = 2090;
puzzle_pack_button_44.alarm[3] = 1;
puzzle_pack_button_44.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_44.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_44.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_44.puzzle_pack = 0;
}
puzzle_pack_button_45 = instance_create(global.button_1_x + 380, global.button_1_y + 2090, ob_puzzle_pack_button);
puzzle_pack_button_45.pack_is_a_fav = 0;
puzzle_pack_button_45.pack_button_number = 73;
puzzle_pack_button_45.button_x_plus_amount = 380;
puzzle_pack_button_45.button_y_plus_amount = 2090;
puzzle_pack_button_45.alarm[3] = 1;
puzzle_pack_button_45.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_45.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_45.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_45.puzzle_pack = 0;
}
puzzle_pack_button_46 = instance_create(global.button_1_x + 570, global.button_1_y + 2090, ob_puzzle_pack_button);
puzzle_pack_button_46.pack_is_a_fav = 0;
puzzle_pack_button_46.pack_button_number = 74;
puzzle_pack_button_46.button_x_plus_amount = 570;
puzzle_pack_button_46.button_y_plus_amount = 2090;
puzzle_pack_button_46.alarm[3] = 1;
puzzle_pack_button_46.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_46.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_46.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_46.puzzle_pack = 0;
}
puzzle_pack_button_47 = instance_create(global.button_1_x + 760, global.button_1_y + 2090, ob_puzzle_pack_button);
puzzle_pack_button_47.pack_is_a_fav = 0;
puzzle_pack_button_47.pack_button_number = 75;
puzzle_pack_button_47.button_x_plus_amount = 760;
puzzle_pack_button_47.button_y_plus_amount = 2090;
puzzle_pack_button_47.alarm[3] = 1;
puzzle_pack_button_47.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_47.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_47.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_47.puzzle_pack = 0;
}
puzzle_pack_button_48 = instance_create(global.button_1_x + 950, global.button_1_y + 2090, ob_puzzle_pack_button);
puzzle_pack_button_48.pack_is_a_fav = 0;
puzzle_pack_button_48.pack_button_number = 76;
puzzle_pack_button_48.button_x_plus_amount = 950;
puzzle_pack_button_48.button_y_plus_amount = 2090;
puzzle_pack_button_48.alarm[3] = 1;
puzzle_pack_button_48.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_48.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_48.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_48.puzzle_pack = 0;
}
puzzle_pack_button_49 = instance_create(global.button_1_x + 1140, global.button_1_y + 2090, ob_puzzle_pack_button);
puzzle_pack_button_49.pack_is_a_fav = 0;
puzzle_pack_button_49.pack_button_number = 77;
puzzle_pack_button_49.button_x_plus_amount = 1140;
puzzle_pack_button_49.button_y_plus_amount = 2090;
puzzle_pack_button_49.alarm[3] = 1;
puzzle_pack_button_49.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_49.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_49.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_49.puzzle_pack = 0;
}
puzzle_pack_button_43 = instance_create(global.button_1_x, global.button_1_y + 2280, ob_puzzle_pack_button);
puzzle_pack_button_43.pack_is_a_fav = 0;
puzzle_pack_button_43.pack_button_number = 78;
puzzle_pack_button_43.button_x_plus_amount = 0;
puzzle_pack_button_43.button_y_plus_amount = 2280;
puzzle_pack_button_43.alarm[3] = 1;
puzzle_pack_button_43.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_43.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_43.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_43.puzzle_pack = 0;
}
puzzle_pack_button_44 = instance_create(global.button_1_x + 190, global.button_1_y + 2280, ob_puzzle_pack_button);
puzzle_pack_button_44.pack_is_a_fav = 0;
puzzle_pack_button_44.pack_button_number = 79;
puzzle_pack_button_44.button_x_plus_amount = 190;
puzzle_pack_button_44.button_y_plus_amount = 2280;
puzzle_pack_button_44.alarm[3] = 1;
puzzle_pack_button_44.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_44.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_44.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_44.puzzle_pack = 0;
}
puzzle_pack_button_45 = instance_create(global.button_1_x + 380, global.button_1_y + 2280, ob_puzzle_pack_button);
puzzle_pack_button_45.pack_is_a_fav = 0;
puzzle_pack_button_45.pack_button_number = 80;
puzzle_pack_button_45.button_x_plus_amount = 380;
puzzle_pack_button_45.button_y_plus_amount = 2280;
puzzle_pack_button_45.alarm[3] = 1;
puzzle_pack_button_45.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_45.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_45.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_45.puzzle_pack = 0;
}
puzzle_pack_button_46 = instance_create(global.button_1_x + 570, global.button_1_y + 2280, ob_puzzle_pack_button);
puzzle_pack_button_46.pack_is_a_fav = 0;
puzzle_pack_button_46.pack_button_number = 81;
puzzle_pack_button_46.button_x_plus_amount = 570;
puzzle_pack_button_46.button_y_plus_amount = 2280;
puzzle_pack_button_46.alarm[3] = 1;
puzzle_pack_button_46.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_46.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_46.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_46.puzzle_pack = 0;
}
puzzle_pack_button_47 = instance_create(global.button_1_x + 760, global.button_1_y + 2280, ob_puzzle_pack_button);
puzzle_pack_button_47.pack_is_a_fav = 0;
puzzle_pack_button_47.pack_button_number = 82;
puzzle_pack_button_47.button_x_plus_amount = 760;
puzzle_pack_button_47.button_y_plus_amount = 2280;
puzzle_pack_button_47.alarm[3] = 1;
puzzle_pack_button_47.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_47.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_47.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_47.puzzle_pack = 0;
}
puzzle_pack_button_48 = instance_create(global.button_1_x + 950, global.button_1_y + 2280, ob_puzzle_pack_button);
puzzle_pack_button_48.pack_is_a_fav = 0;
puzzle_pack_button_48.pack_button_number = 83;
puzzle_pack_button_48.button_x_plus_amount = 950;
puzzle_pack_button_48.button_y_plus_amount = 2280;
puzzle_pack_button_48.alarm[3] = 1;
puzzle_pack_button_48.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_48.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_48.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_48.puzzle_pack = 0;
}
puzzle_pack_button_49 = instance_create(global.button_1_x + 1140, global.button_1_y + 2280, ob_puzzle_pack_button);
puzzle_pack_button_49.pack_is_a_fav = 0;
puzzle_pack_button_49.pack_button_number = 84;
puzzle_pack_button_49.button_x_plus_amount = 1140;
puzzle_pack_button_49.button_y_plus_amount = 2280;
puzzle_pack_button_49.alarm[3] = 1;
puzzle_pack_button_49.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_49.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_49.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_49.puzzle_pack = 0;
}
puzzle_pack_button_43 = instance_create(global.button_1_x, global.button_1_y + 2470, ob_puzzle_pack_button);
puzzle_pack_button_43.pack_is_a_fav = 0;
puzzle_pack_button_43.pack_button_number = 85;
puzzle_pack_button_43.button_x_plus_amount = 0;
puzzle_pack_button_43.button_y_plus_amount = 2470;
puzzle_pack_button_43.alarm[3] = 1;
puzzle_pack_button_43.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_43.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_43.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_43.puzzle_pack = 0;
}
puzzle_pack_button_44 = instance_create(global.button_1_x + 190, global.button_1_y + 2470, ob_puzzle_pack_button);
puzzle_pack_button_44.pack_is_a_fav = 0;
puzzle_pack_button_44.pack_button_number = 86;
puzzle_pack_button_44.button_x_plus_amount = 190;
puzzle_pack_button_44.button_y_plus_amount = 2470;
puzzle_pack_button_44.alarm[3] = 1;
puzzle_pack_button_44.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_44.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_44.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_44.puzzle_pack = 0;
}
puzzle_pack_button_45 = instance_create(global.button_1_x + 380, global.button_1_y + 2470, ob_puzzle_pack_button);
puzzle_pack_button_45.pack_is_a_fav = 0;
puzzle_pack_button_45.pack_button_number = 87;
puzzle_pack_button_45.button_x_plus_amount = 380;
puzzle_pack_button_45.button_y_plus_amount = 2470;
puzzle_pack_button_45.alarm[3] = 1;
puzzle_pack_button_45.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_45.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_45.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_45.puzzle_pack = 0;
}
puzzle_pack_button_46 = instance_create(global.button_1_x + 570, global.button_1_y + 2470, ob_puzzle_pack_button);
puzzle_pack_button_46.pack_is_a_fav = 0;
puzzle_pack_button_46.pack_button_number = 88;
puzzle_pack_button_46.button_x_plus_amount = 570;
puzzle_pack_button_46.button_y_plus_amount = 2470;
puzzle_pack_button_46.alarm[3] = 1;
puzzle_pack_button_46.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_46.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_46.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_46.puzzle_pack = 0;
}
puzzle_pack_button_47 = instance_create(global.button_1_x + 760, global.button_1_y + 2470, ob_puzzle_pack_button);
puzzle_pack_button_47.pack_is_a_fav = 0;
puzzle_pack_button_47.pack_button_number = 89;
puzzle_pack_button_47.button_x_plus_amount = 760;
puzzle_pack_button_47.button_y_plus_amount = 2470;
puzzle_pack_button_47.alarm[3] = 1;
puzzle_pack_button_47.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_47.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_47.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_47.puzzle_pack = 0;
}
puzzle_pack_button_48 = instance_create(global.button_1_x + 950, global.button_1_y + 2470, ob_puzzle_pack_button);
puzzle_pack_button_48.pack_is_a_fav = 0;
puzzle_pack_button_48.pack_button_number = 90;
puzzle_pack_button_48.button_x_plus_amount = 950;
puzzle_pack_button_48.button_y_plus_amount = 2470;
puzzle_pack_button_48.alarm[3] = 1;
puzzle_pack_button_48.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_48.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_48.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_48.puzzle_pack = 0;
}
puzzle_pack_button_49 = instance_create(global.button_1_x + 1140, global.button_1_y + 2470, ob_puzzle_pack_button);
puzzle_pack_button_49.pack_is_a_fav = 0;
puzzle_pack_button_49.pack_button_number = 91;
puzzle_pack_button_49.button_x_plus_amount = 1140;
puzzle_pack_button_49.button_y_plus_amount = 2470;
puzzle_pack_button_49.alarm[3] = 1;
puzzle_pack_button_49.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_49.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_49.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_49.puzzle_pack = 0;
}
puzzle_pack_button_43 = instance_create(global.button_1_x, global.button_1_y + 2660, ob_puzzle_pack_button);
puzzle_pack_button_43.pack_is_a_fav = 0;
puzzle_pack_button_43.pack_button_number = 92;
puzzle_pack_button_43.button_x_plus_amount = 0;
puzzle_pack_button_43.button_y_plus_amount = 2660;
puzzle_pack_button_43.alarm[3] = 1;
puzzle_pack_button_43.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_43.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_43.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_43.puzzle_pack = 0;
}
puzzle_pack_button_44 = instance_create(global.button_1_x + 190, global.button_1_y + 2660, ob_puzzle_pack_button);
puzzle_pack_button_44.pack_is_a_fav = 0;
puzzle_pack_button_44.pack_button_number = 93;
puzzle_pack_button_44.button_x_plus_amount = 190;
puzzle_pack_button_44.button_y_plus_amount = 2660;
puzzle_pack_button_44.alarm[3] = 1;
puzzle_pack_button_44.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_44.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_44.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_44.puzzle_pack = 0;
}
puzzle_pack_button_45 = instance_create(global.button_1_x + 380, global.button_1_y + 2660, ob_puzzle_pack_button);
puzzle_pack_button_45.pack_is_a_fav = 0;
puzzle_pack_button_45.pack_button_number = 94;
puzzle_pack_button_45.button_x_plus_amount = 380;
puzzle_pack_button_45.button_y_plus_amount = 2660;
puzzle_pack_button_45.alarm[3] = 1;
puzzle_pack_button_45.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_45.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_45.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_45.puzzle_pack = 0;
}
puzzle_pack_button_46 = instance_create(global.button_1_x + 570, global.button_1_y + 2660, ob_puzzle_pack_button);
puzzle_pack_button_46.pack_is_a_fav = 0;
puzzle_pack_button_46.pack_button_number = 88;
puzzle_pack_button_46.button_x_plus_amount = 570;
puzzle_pack_button_46.button_y_plus_amount = 2660;
puzzle_pack_button_46.alarm[3] = 1;
puzzle_pack_button_46.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_46.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_46.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_46.puzzle_pack = 0;
}
puzzle_pack_button_47 = instance_create(global.button_1_x + 760, global.button_1_y + 2660, ob_puzzle_pack_button);
puzzle_pack_button_47.pack_is_a_fav = 0;
puzzle_pack_button_47.pack_button_number = 96;
puzzle_pack_button_47.button_x_plus_amount = 760;
puzzle_pack_button_47.button_y_plus_amount = 2660;
puzzle_pack_button_47.alarm[3] = 1;
puzzle_pack_button_47.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_47.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_47.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_47.puzzle_pack = 0;
}
puzzle_pack_button_48 = instance_create(global.button_1_x + 950, global.button_1_y + 2660, ob_puzzle_pack_button);
puzzle_pack_button_48.pack_is_a_fav = 0;
puzzle_pack_button_48.pack_button_number = 97;
puzzle_pack_button_48.button_x_plus_amount = 950;
puzzle_pack_button_48.button_y_plus_amount = 2660;
puzzle_pack_button_48.alarm[3] = 1;
puzzle_pack_button_48.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_48.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_48.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_48.puzzle_pack = 0;
}
puzzle_pack_button_49 = instance_create(global.button_1_x + 1140, global.button_1_y + 2660, ob_puzzle_pack_button);
puzzle_pack_button_49.pack_is_a_fav = 0;
puzzle_pack_button_49.pack_button_number = 98;
puzzle_pack_button_49.button_x_plus_amount = 1140;
puzzle_pack_button_49.button_y_plus_amount = 2660;
puzzle_pack_button_49.alarm[3] = 1;
puzzle_pack_button_49.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_49.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_49.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_49.puzzle_pack = 0;
}
puzzle_pack_button_43 = instance_create(global.button_1_x, global.button_1_y + 2850, ob_puzzle_pack_button);
puzzle_pack_button_43.pack_is_a_fav = 0;
puzzle_pack_button_43.pack_button_number = 99;
puzzle_pack_button_43.button_x_plus_amount = 0;
puzzle_pack_button_43.button_y_plus_amount = 2850;
puzzle_pack_button_43.alarm[3] = 1;
puzzle_pack_button_43.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_43.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_43.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_43.puzzle_pack = 0;
}
puzzle_pack_button_44 = instance_create(global.button_1_x + 190, global.button_1_y + 2850, ob_puzzle_pack_button);
puzzle_pack_button_44.pack_is_a_fav = 0;
puzzle_pack_button_44.pack_button_number = 100;
puzzle_pack_button_44.button_x_plus_amount = 190;
puzzle_pack_button_44.button_y_plus_amount = 2850;
puzzle_pack_button_44.alarm[3] = 1;
puzzle_pack_button_44.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_44.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_44.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_44.puzzle_pack = 0;
}
puzzle_pack_button_45 = instance_create(global.button_1_x + 380, global.button_1_y + 2850, ob_puzzle_pack_button);
puzzle_pack_button_45.pack_is_a_fav = 0;
puzzle_pack_button_45.pack_button_number = 101;
puzzle_pack_button_45.button_x_plus_amount = 380;
puzzle_pack_button_45.button_y_plus_amount = 2850;
puzzle_pack_button_45.alarm[3] = 1;
puzzle_pack_button_45.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_45.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_45.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_45.puzzle_pack = 0;
}
puzzle_pack_button_46 = instance_create(global.button_1_x + 570, global.button_1_y + 2850, ob_puzzle_pack_button);
puzzle_pack_button_46.pack_is_a_fav = 0;
puzzle_pack_button_46.pack_button_number = 102;
puzzle_pack_button_46.button_x_plus_amount = 570;
puzzle_pack_button_46.button_y_plus_amount = 2850;
puzzle_pack_button_46.alarm[3] = 1;
puzzle_pack_button_46.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_46.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_46.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_46.puzzle_pack = 0;
}
puzzle_pack_button_47 = instance_create(global.button_1_x + 760, global.button_1_y + 2850, ob_puzzle_pack_button);
puzzle_pack_button_47.pack_is_a_fav = 0;
puzzle_pack_button_47.pack_button_number = 96;
puzzle_pack_button_47.button_x_plus_amount = 760;
puzzle_pack_button_47.button_y_plus_amount = 2850;
puzzle_pack_button_47.alarm[3] = 1;
puzzle_pack_button_47.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_47.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_47.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_47.puzzle_pack = 0;
}
puzzle_pack_button_48 = instance_create(global.button_1_x + 950, global.button_1_y + 2850, ob_puzzle_pack_button);
puzzle_pack_button_48.pack_is_a_fav = 0;
puzzle_pack_button_48.pack_button_number = 104;
puzzle_pack_button_48.button_x_plus_amount = 950;
puzzle_pack_button_48.button_y_plus_amount = 2850;
puzzle_pack_button_48.alarm[3] = 1;
puzzle_pack_button_48.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_48.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_48.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_48.puzzle_pack = 0;
}
puzzle_pack_button_49 = instance_create(global.button_1_x + 1140, global.button_1_y + 2850, ob_puzzle_pack_button);
puzzle_pack_button_49.pack_is_a_fav = 0;
puzzle_pack_button_49.pack_button_number = 98;
puzzle_pack_button_49.button_x_plus_amount = 1140;
puzzle_pack_button_49.button_y_plus_amount = 2850;
puzzle_pack_button_49.alarm[3] = 1;
puzzle_pack_button_49.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_49.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_49.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_49.puzzle_pack = 0;
}
puzzle_pack_button_43 = instance_create(global.button_1_x, global.button_1_y + 3040, ob_puzzle_pack_button);
puzzle_pack_button_43.pack_is_a_fav = 0;
puzzle_pack_button_43.pack_button_number = 99;
puzzle_pack_button_43.button_x_plus_amount = 0;
puzzle_pack_button_43.button_y_plus_amount = 3040;
puzzle_pack_button_43.alarm[3] = 1;
puzzle_pack_button_43.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_43.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_43.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_43.puzzle_pack = 0;
}
puzzle_pack_button_44 = instance_create(global.button_1_x + 190, global.button_1_y + 3040, ob_puzzle_pack_button);
puzzle_pack_button_44.pack_is_a_fav = 0;
puzzle_pack_button_44.pack_button_number = 100;
puzzle_pack_button_44.button_x_plus_amount = 190;
puzzle_pack_button_44.button_y_plus_amount = 3040;
puzzle_pack_button_44.alarm[3] = 1;
puzzle_pack_button_44.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_44.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_44.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_44.puzzle_pack = 0;
}
puzzle_pack_button_45 = instance_create(global.button_1_x + 380, global.button_1_y + 3040, ob_puzzle_pack_button);
puzzle_pack_button_45.pack_is_a_fav = 0;
puzzle_pack_button_45.pack_button_number = 101;
puzzle_pack_button_45.button_x_plus_amount = 380;
puzzle_pack_button_45.button_y_plus_amount = 3040;
puzzle_pack_button_45.alarm[3] = 1;
puzzle_pack_button_45.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_45.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_45.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_45.puzzle_pack = 0;
}
puzzle_pack_button_46 = instance_create(global.button_1_x + 570, global.button_1_y + 3040, ob_puzzle_pack_button);
puzzle_pack_button_46.pack_is_a_fav = 0;
puzzle_pack_button_46.pack_button_number = 102;
puzzle_pack_button_46.button_x_plus_amount = 570;
puzzle_pack_button_46.button_y_plus_amount = 3040;
puzzle_pack_button_46.alarm[3] = 1;
puzzle_pack_button_46.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_46.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_46.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_46.puzzle_pack = 0;
}
puzzle_pack_button_47 = instance_create(global.button_1_x + 760, global.button_1_y + 3040, ob_puzzle_pack_button);
puzzle_pack_button_47.pack_is_a_fav = 0;
puzzle_pack_button_47.pack_button_number = 96;
puzzle_pack_button_47.button_x_plus_amount = 760;
puzzle_pack_button_47.button_y_plus_amount = 3040;
puzzle_pack_button_47.alarm[3] = 1;
puzzle_pack_button_47.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_47.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_47.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_47.puzzle_pack = 0;
}
puzzle_pack_button_48 = instance_create(global.button_1_x + 950, global.button_1_y + 3040, ob_puzzle_pack_button);
puzzle_pack_button_48.pack_is_a_fav = 0;
puzzle_pack_button_48.pack_button_number = 104;
puzzle_pack_button_48.button_x_plus_amount = 950;
puzzle_pack_button_48.button_y_plus_amount = 3040;
puzzle_pack_button_48.alarm[3] = 1;
puzzle_pack_button_48.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_48.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_48.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_48.puzzle_pack = 0;
}
puzzle_pack_button_49 = instance_create(global.button_1_x + 1140, global.button_1_y + 3040, ob_puzzle_pack_button);
puzzle_pack_button_49.pack_is_a_fav = 0;
puzzle_pack_button_49.pack_button_number = 98;
puzzle_pack_button_49.button_x_plus_amount = 1140;
puzzle_pack_button_49.button_y_plus_amount = 3040;
puzzle_pack_button_49.alarm[3] = 1;
puzzle_pack_button_49.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_49.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_49.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_49.puzzle_pack = 0;
}
puzzle_pack_button_43 = instance_create(global.button_1_x, global.button_1_y + 3230, ob_puzzle_pack_button);
puzzle_pack_button_43.pack_is_a_fav = 0;
puzzle_pack_button_43.pack_button_number = 99;
puzzle_pack_button_43.button_x_plus_amount = 0;
puzzle_pack_button_43.button_y_plus_amount = 3230;
puzzle_pack_button_43.alarm[3] = 1;
puzzle_pack_button_43.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_43.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_43.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_43.puzzle_pack = 0;
}
puzzle_pack_button_44 = instance_create(global.button_1_x + 190, global.button_1_y + 3230, ob_puzzle_pack_button);
puzzle_pack_button_44.pack_is_a_fav = 0;
puzzle_pack_button_44.pack_button_number = 100;
puzzle_pack_button_44.button_x_plus_amount = 190;
puzzle_pack_button_44.button_y_plus_amount = 3230;
puzzle_pack_button_44.alarm[3] = 1;
puzzle_pack_button_44.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_44.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_44.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_44.puzzle_pack = 0;
}
puzzle_pack_button_45 = instance_create(global.button_1_x + 380, global.button_1_y + 3230, ob_puzzle_pack_button);
puzzle_pack_button_45.pack_is_a_fav = 0;
puzzle_pack_button_45.pack_button_number = 101;
puzzle_pack_button_45.button_x_plus_amount = 380;
puzzle_pack_button_45.button_y_plus_amount = 3230;
puzzle_pack_button_45.alarm[3] = 1;
puzzle_pack_button_45.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_45.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_45.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_45.puzzle_pack = 0;
}
puzzle_pack_button_46 = instance_create(global.button_1_x + 570, global.button_1_y + 3230, ob_puzzle_pack_button);
puzzle_pack_button_46.pack_is_a_fav = 0;
puzzle_pack_button_46.pack_button_number = 102;
puzzle_pack_button_46.button_x_plus_amount = 570;
puzzle_pack_button_46.button_y_plus_amount = 3230;
puzzle_pack_button_46.alarm[3] = 1;
puzzle_pack_button_46.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_46.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_46.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_46.puzzle_pack = 0;
}
puzzle_pack_button_47 = instance_create(global.button_1_x + 760, global.button_1_y + 3230, ob_puzzle_pack_button);
puzzle_pack_button_47.pack_is_a_fav = 0;
puzzle_pack_button_47.pack_button_number = 96;
puzzle_pack_button_47.button_x_plus_amount = 760;
puzzle_pack_button_47.button_y_plus_amount = 3230;
puzzle_pack_button_47.alarm[3] = 1;
puzzle_pack_button_47.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_47.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_47.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_47.puzzle_pack = 0;
}
puzzle_pack_button_48 = instance_create(global.button_1_x + 950, global.button_1_y + 3230, ob_puzzle_pack_button);
puzzle_pack_button_48.pack_is_a_fav = 0;
puzzle_pack_button_48.pack_button_number = 104;
puzzle_pack_button_48.button_x_plus_amount = 950;
puzzle_pack_button_48.button_y_plus_amount = 3230;
puzzle_pack_button_48.alarm[3] = 1;
puzzle_pack_button_48.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_48.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_48.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_48.puzzle_pack = 0;
}
puzzle_pack_button_49 = instance_create(global.button_1_x + 1140, global.button_1_y + 3230, ob_puzzle_pack_button);
puzzle_pack_button_49.pack_is_a_fav = 0;
puzzle_pack_button_49.pack_button_number = 98;
puzzle_pack_button_49.button_x_plus_amount = 1140;
puzzle_pack_button_49.button_y_plus_amount = 3230;
puzzle_pack_button_49.alarm[3] = 1;
puzzle_pack_button_49.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_49.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_49.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_49.puzzle_pack = 0;
}
puzzle_pack_button_43 = instance_create(global.button_1_x, global.button_1_y + 3420, ob_puzzle_pack_button);
puzzle_pack_button_43.pack_is_a_fav = 0;
puzzle_pack_button_43.pack_button_number = 99;
puzzle_pack_button_43.button_x_plus_amount = 0;
puzzle_pack_button_43.button_y_plus_amount = 3420;
puzzle_pack_button_43.alarm[3] = 1;
puzzle_pack_button_43.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_43.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_43.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_43.puzzle_pack = 0;
}
puzzle_pack_button_44 = instance_create(global.button_1_x + 190, global.button_1_y + 3420, ob_puzzle_pack_button);
puzzle_pack_button_44.pack_is_a_fav = 0;
puzzle_pack_button_44.pack_button_number = 100;
puzzle_pack_button_44.button_x_plus_amount = 190;
puzzle_pack_button_44.button_y_plus_amount = 3420;
puzzle_pack_button_44.alarm[3] = 1;
puzzle_pack_button_44.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_44.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_44.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_44.puzzle_pack = 0;
}
puzzle_pack_button_45 = instance_create(global.button_1_x + 380, global.button_1_y + 3420, ob_puzzle_pack_button);
puzzle_pack_button_45.pack_is_a_fav = 0;
puzzle_pack_button_45.pack_button_number = 101;
puzzle_pack_button_45.button_x_plus_amount = 380;
puzzle_pack_button_45.button_y_plus_amount = 3420;
puzzle_pack_button_45.alarm[3] = 1;
puzzle_pack_button_45.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_45.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_45.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_45.puzzle_pack = 0;
}
puzzle_pack_button_46 = instance_create(global.button_1_x + 570, global.button_1_y + 3420, ob_puzzle_pack_button);
puzzle_pack_button_46.pack_is_a_fav = 0;
puzzle_pack_button_46.pack_button_number = 102;
puzzle_pack_button_46.button_x_plus_amount = 570;
puzzle_pack_button_46.button_y_plus_amount = 3420;
puzzle_pack_button_46.alarm[3] = 1;
puzzle_pack_button_46.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_46.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_46.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_46.puzzle_pack = 0;
}
puzzle_pack_button_47 = instance_create(global.button_1_x + 760, global.button_1_y + 3420, ob_puzzle_pack_button);
puzzle_pack_button_47.pack_is_a_fav = 0;
puzzle_pack_button_47.pack_button_number = 96;
puzzle_pack_button_47.button_x_plus_amount = 760;
puzzle_pack_button_47.button_y_plus_amount = 3420;
puzzle_pack_button_47.alarm[3] = 1;
puzzle_pack_button_47.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_47.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_47.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_47.puzzle_pack = 0;
}
puzzle_pack_button_48 = instance_create(global.button_1_x + 950, global.button_1_y + 3420, ob_puzzle_pack_button);
puzzle_pack_button_48.pack_is_a_fav = 0;
puzzle_pack_button_48.pack_button_number = 104;
puzzle_pack_button_48.button_x_plus_amount = 950;
puzzle_pack_button_48.button_y_plus_amount = 3420;
puzzle_pack_button_48.alarm[3] = 1;
puzzle_pack_button_48.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_48.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_48.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_48.puzzle_pack = 0;
}
puzzle_pack_button_49 = instance_create(global.button_1_x + 1140, global.button_1_y + 3420, ob_puzzle_pack_button);
puzzle_pack_button_49.pack_is_a_fav = 0;
puzzle_pack_button_49.pack_button_number = 98;
puzzle_pack_button_49.button_x_plus_amount = 1140;
puzzle_pack_button_49.button_y_plus_amount = 3420;
puzzle_pack_button_49.alarm[3] = 1;
puzzle_pack_button_49.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_49.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_49.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_49.puzzle_pack = 0;
}
puzzle_pack_button_43 = instance_create(global.button_1_x, global.button_1_y + 3610, ob_puzzle_pack_button);
puzzle_pack_button_43.pack_is_a_fav = 0;
puzzle_pack_button_43.pack_button_number = 99;
puzzle_pack_button_43.button_x_plus_amount = 0;
puzzle_pack_button_43.button_y_plus_amount = 3610;
puzzle_pack_button_43.alarm[3] = 1;
puzzle_pack_button_43.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_43.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_43.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_43.puzzle_pack = 0;
}
puzzle_pack_button_44 = instance_create(global.button_1_x + 190, global.button_1_y + 3610, ob_puzzle_pack_button);
puzzle_pack_button_44.pack_is_a_fav = 0;
puzzle_pack_button_44.pack_button_number = 100;
puzzle_pack_button_44.button_x_plus_amount = 190;
puzzle_pack_button_44.button_y_plus_amount = 3610;
puzzle_pack_button_44.alarm[3] = 1;
puzzle_pack_button_44.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_44.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_44.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_44.puzzle_pack = 0;
}
puzzle_pack_button_45 = instance_create(global.button_1_x + 380, global.button_1_y + 3610, ob_puzzle_pack_button);
puzzle_pack_button_45.pack_is_a_fav = 0;
puzzle_pack_button_45.pack_button_number = 101;
puzzle_pack_button_45.button_x_plus_amount = 380;
puzzle_pack_button_45.button_y_plus_amount = 3610;
puzzle_pack_button_45.alarm[3] = 1;
puzzle_pack_button_45.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_45.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_45.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_45.puzzle_pack = 0;
}
puzzle_pack_button_46 = instance_create(global.button_1_x + 570, global.button_1_y + 3610, ob_puzzle_pack_button);
puzzle_pack_button_46.pack_is_a_fav = 0;
puzzle_pack_button_46.pack_button_number = 102;
puzzle_pack_button_46.button_x_plus_amount = 570;
puzzle_pack_button_46.button_y_plus_amount = 3610;
puzzle_pack_button_46.alarm[3] = 1;
puzzle_pack_button_46.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_46.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_46.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_46.puzzle_pack = 0;
}
puzzle_pack_button_47 = instance_create(global.button_1_x + 760, global.button_1_y + 3610, ob_puzzle_pack_button);
puzzle_pack_button_47.pack_is_a_fav = 0;
puzzle_pack_button_47.pack_button_number = 96;
puzzle_pack_button_47.button_x_plus_amount = 760;
puzzle_pack_button_47.button_y_plus_amount = 3610;
puzzle_pack_button_47.alarm[3] = 1;
puzzle_pack_button_47.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_47.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_47.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_47.puzzle_pack = 0;
}
puzzle_pack_button_48 = instance_create(global.button_1_x + 950, global.button_1_y + 3610, ob_puzzle_pack_button);
puzzle_pack_button_48.pack_is_a_fav = 0;
puzzle_pack_button_48.pack_button_number = 104;
puzzle_pack_button_48.button_x_plus_amount = 950;
puzzle_pack_button_48.button_y_plus_amount = 3610;
puzzle_pack_button_48.alarm[3] = 1;
puzzle_pack_button_48.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_48.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_48.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_48.puzzle_pack = 0;
}
puzzle_pack_button_49 = instance_create(global.button_1_x + 1140, global.button_1_y + 3610, ob_puzzle_pack_button);
puzzle_pack_button_49.pack_is_a_fav = 0;
puzzle_pack_button_49.pack_button_number = 98;
puzzle_pack_button_49.button_x_plus_amount = 1140;
puzzle_pack_button_49.button_y_plus_amount = 3610;
puzzle_pack_button_49.alarm[3] = 1;
puzzle_pack_button_49.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_49.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_49.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_49.puzzle_pack = 0;
}
puzzle_pack_button_43 = instance_create(global.button_1_x, global.button_1_y + 3800, ob_puzzle_pack_button);
puzzle_pack_button_43.pack_is_a_fav = 0;
puzzle_pack_button_43.pack_button_number = 99;
puzzle_pack_button_43.button_x_plus_amount = 0;
puzzle_pack_button_43.button_y_plus_amount = 3800;
puzzle_pack_button_43.alarm[3] = 1;
puzzle_pack_button_43.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_43.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_43.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_43.puzzle_pack = 0;
}
puzzle_pack_button_44 = instance_create(global.button_1_x + 190, global.button_1_y + 3800, ob_puzzle_pack_button);
puzzle_pack_button_44.pack_is_a_fav = 0;
puzzle_pack_button_44.pack_button_number = 100;
puzzle_pack_button_44.button_x_plus_amount = 190;
puzzle_pack_button_44.button_y_plus_amount = 3800;
puzzle_pack_button_44.alarm[3] = 1;
puzzle_pack_button_44.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_44.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_44.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_44.puzzle_pack = 0;
}
puzzle_pack_button_45 = instance_create(global.button_1_x + 380, global.button_1_y + 3800, ob_puzzle_pack_button);
puzzle_pack_button_45.pack_is_a_fav = 0;
puzzle_pack_button_45.pack_button_number = 101;
puzzle_pack_button_45.button_x_plus_amount = 380;
puzzle_pack_button_45.button_y_plus_amount = 3800;
puzzle_pack_button_45.alarm[3] = 1;
puzzle_pack_button_45.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_45.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_45.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_45.puzzle_pack = 0;
}
puzzle_pack_button_46 = instance_create(global.button_1_x + 570, global.button_1_y + 3800, ob_puzzle_pack_button);
puzzle_pack_button_46.pack_is_a_fav = 0;
puzzle_pack_button_46.pack_button_number = 102;
puzzle_pack_button_46.button_x_plus_amount = 570;
puzzle_pack_button_46.button_y_plus_amount = 3800;
puzzle_pack_button_46.alarm[3] = 1;
puzzle_pack_button_46.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_46.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_46.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_46.puzzle_pack = 0;
}
puzzle_pack_button_47 = instance_create(global.button_1_x + 760, global.button_1_y + 3800, ob_puzzle_pack_button);
puzzle_pack_button_47.pack_is_a_fav = 0;
puzzle_pack_button_47.pack_button_number = 96;
puzzle_pack_button_47.button_x_plus_amount = 760;
puzzle_pack_button_47.button_y_plus_amount = 3800;
puzzle_pack_button_47.alarm[3] = 1;
puzzle_pack_button_47.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_47.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_47.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_47.puzzle_pack = 0;
}
puzzle_pack_button_48 = instance_create(global.button_1_x + 950, global.button_1_y + 3800, ob_puzzle_pack_button);
puzzle_pack_button_48.pack_is_a_fav = 0;
puzzle_pack_button_48.pack_button_number = 104;
puzzle_pack_button_48.button_x_plus_amount = 950;
puzzle_pack_button_48.button_y_plus_amount = 3800;
puzzle_pack_button_48.alarm[3] = 1;
puzzle_pack_button_48.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_48.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_48.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_48.puzzle_pack = 0;
}
puzzle_pack_button_49 = instance_create(global.button_1_x + 1140, global.button_1_y + 3800, ob_puzzle_pack_button);
puzzle_pack_button_49.pack_is_a_fav = 0;
puzzle_pack_button_49.pack_button_number = 98;
puzzle_pack_button_49.button_x_plus_amount = 1140;
puzzle_pack_button_49.button_y_plus_amount = 3800;
puzzle_pack_button_49.alarm[3] = 1;
puzzle_pack_button_49.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_49.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_49.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_49.puzzle_pack = 0;
}
puzzle_pack_button_43 = instance_create(global.button_1_x, global.button_1_y + 3990, ob_puzzle_pack_button);
puzzle_pack_button_43.pack_is_a_fav = 0;
puzzle_pack_button_43.pack_button_number = 99;
puzzle_pack_button_43.button_x_plus_amount = 0;
puzzle_pack_button_43.button_y_plus_amount = 3990;
puzzle_pack_button_43.alarm[3] = 1;
puzzle_pack_button_43.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_43.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_43.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_43.puzzle_pack = 0;
}
puzzle_pack_button_44 = instance_create(global.button_1_x + 190, global.button_1_y + 3990, ob_puzzle_pack_button);
puzzle_pack_button_44.pack_is_a_fav = 0;
puzzle_pack_button_44.pack_button_number = 100;
puzzle_pack_button_44.button_x_plus_amount = 190;
puzzle_pack_button_44.button_y_plus_amount = 3990;
puzzle_pack_button_44.alarm[3] = 1;
puzzle_pack_button_44.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_44.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_44.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_44.puzzle_pack = 0;
}
puzzle_pack_button_45 = instance_create(global.button_1_x + 380, global.button_1_y + 3990, ob_puzzle_pack_button);
puzzle_pack_button_45.pack_is_a_fav = 0;
puzzle_pack_button_45.pack_button_number = 101;
puzzle_pack_button_45.button_x_plus_amount = 380;
puzzle_pack_button_45.button_y_plus_amount = 3990;
puzzle_pack_button_45.alarm[3] = 1;
puzzle_pack_button_45.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_45.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_45.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_45.puzzle_pack = 0;
}
puzzle_pack_button_46 = instance_create(global.button_1_x + 570, global.button_1_y + 3990, ob_puzzle_pack_button);
puzzle_pack_button_46.pack_is_a_fav = 0;
puzzle_pack_button_46.pack_button_number = 102;
puzzle_pack_button_46.button_x_plus_amount = 570;
puzzle_pack_button_46.button_y_plus_amount = 3990;
puzzle_pack_button_46.alarm[3] = 1;
puzzle_pack_button_46.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_46.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_46.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_46.puzzle_pack = 0;
}
puzzle_pack_button_47 = instance_create(global.button_1_x + 760, global.button_1_y + 3990, ob_puzzle_pack_button);
puzzle_pack_button_47.pack_is_a_fav = 0;
puzzle_pack_button_47.pack_button_number = 96;
puzzle_pack_button_47.button_x_plus_amount = 760;
puzzle_pack_button_47.button_y_plus_amount = 3990;
puzzle_pack_button_47.alarm[3] = 1;
puzzle_pack_button_47.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_47.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_47.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_47.puzzle_pack = 0;
}
puzzle_pack_button_48 = instance_create(global.button_1_x + 950, global.button_1_y + 3990, ob_puzzle_pack_button);
puzzle_pack_button_48.pack_is_a_fav = 0;
puzzle_pack_button_48.pack_button_number = 104;
puzzle_pack_button_48.button_x_plus_amount = 950;
puzzle_pack_button_48.button_y_plus_amount = 3990;
puzzle_pack_button_48.alarm[3] = 1;
puzzle_pack_button_48.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_48.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_48.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_48.puzzle_pack = 0;
}
puzzle_pack_button_49 = instance_create(global.button_1_x + 1140, global.button_1_y + 3990, ob_puzzle_pack_button);
puzzle_pack_button_49.pack_is_a_fav = 0;
puzzle_pack_button_49.pack_button_number = 98;
puzzle_pack_button_49.button_x_plus_amount = 1140;
puzzle_pack_button_49.button_y_plus_amount = 3990;
puzzle_pack_button_49.alarm[3] = 1;
puzzle_pack_button_49.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_pack_list_current_number > -1)
{
    puzzle_pack_button_49.puzzle_pack = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else if (unowned_list_current_number > -1)
{
    puzzle_pack_button_49.puzzle_pack = ds_list_find_value(unowned_list, unowned_list_current_number);
    unowned_list_current_number -= 1;
}
else
{
    puzzle_pack_button_49.puzzle_pack = 0;
}
ds_list_destroy(puzzle_pack_list);
ds_list_destroy(unowned_list);
