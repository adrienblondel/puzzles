if (pack_is_owned == 1)
{
    button_colour = 16777215;
}
else if (place_meeting(x, y, ob_menu_cursor))
{
    button_colour = 16777215;
}
else
{
    button_colour = 4210752;
}
if (place_meeting(x, y, ob_menu_cursor))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (image_alpha == 1)
            {
                if (pack_is_a_fav == 0)
                {
                    if (ob_menu_cursor.y > 540)
                    {
                        global.on_sale_puzzle_pack = puzzle_pack;
                        if (puzzle_pack == 1)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = 65;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 2)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_2_mountains;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 3)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = 66;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 4)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_4_free_4;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 5)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_5_thailand;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 6)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_6_himalayas;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 7)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_7_davinci;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 8)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_8_dinosaurs;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 9)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_9_dogs;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 10)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_10_korea;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 11)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_11_owls;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 12)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_12_rio;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 13)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_13_savana;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 14)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_14_cats;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 15)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_15_uslandscapes;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 16)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_16_ukiyoe;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 17)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_17_horses;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 18)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_18_montana;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 19)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_19_angelwings;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 20)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_20_jigsaw;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 21)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_21_japan;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 22)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_22_fractal_rings;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 23)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_23_2000_ad;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 24)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_24_autumn;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 25)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_25_halloween;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 26)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_26_new_engalnd_fall;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 27)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_27_aki;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 28)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_28_spooky;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 29)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_29_tcotc;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 30)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_30_england;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 31)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_31_wales;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 32)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_32_scotland;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 33)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_33_ireland;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 34)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_34_beach_volleyball;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 35)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_35_castles;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 36)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_36_winter;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 37)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_37_snow_an_ice;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 38)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_38_pp2_anime;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 39)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_39_pp2_space;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 40)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_40_pp2_birds;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 41)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_41_christmas;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 42)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_42_glacier;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 43)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_43_wolves;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 44)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_44_santa;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 45)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_45_new_years;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 46)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_46_elephants;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 47)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_47_embers;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 48)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_48_samurai;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 49)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_49_pp1_japan;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 50)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_50_pp1_undeadz;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 51)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_51_drwho;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 52)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_52_australia;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 53)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_53_pinups;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 54)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_54_radical_roach;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 55)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_55_wild_west;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 56)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_56_landscapes_xl;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 57)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_57_volcanoes;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 58)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_58_chernobyl;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 59)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_59_coral_reef;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 60)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_60_medeival;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 61)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_61_primates;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 62)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_62_trains;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 63)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_63_dolphins;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 64)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_64_sunflowers;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 65)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_65_boschs_garden;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 66)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_66_urban_decay;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 67)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_67_china;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 68)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_68_russia;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 69)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_69_desserts;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 70)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_70_varietypack1;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 71)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_71_macro;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 72)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_72_spain;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 73)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_73_shipwrecks;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 74)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_74_varietypack2;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 75)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_75_anniversary;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 76)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_76_varietypack3;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 77)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_77_extreme_sports;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 78)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_78_waterfalls;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 79)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_79_fantasy;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 80)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_80_surreal;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 81)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_81_spring;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 82)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_82_summer;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 83)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_83_halloween2;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 84)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_84_ukiyoe2;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 85)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_85_varietypack4;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 86)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_86_germany;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 87)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_87_varietypack5;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 88)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_88_christmas_2;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 89)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_89_europeanart;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 90)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_90_space2;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 91)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_91_varietypack_xl;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 92)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_92_aerial_photography;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 93)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_93_usa;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 94)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_94_varietypack6;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 95)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_95_varietypack7;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 96)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_96_varietypack8;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 97)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_97_varietypack9;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 98)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_98_varietypack10;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 99)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_99_varietypack11;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 100)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_100_varietypack12;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 101)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_101_castles_2;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 102)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_102_india;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 103)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_103_cats2;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 104)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_104_varietypackxxl;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 105)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_105_summertime;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 106)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_106_traditional_cut;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 107)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_107_stuck_at_home;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 108)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_108_varietypack13;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 109)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_109_fantasy2;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 110)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_110_varietypack14;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 111)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_111_varietypack15;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 112)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_112_horror;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 113)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_113_surreal2;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 114)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_114_varietypack16;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 115)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_115_japan2;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 116)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_116_varietypack17;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 117)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_117_varietypack_xxs;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 118)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_118_flowers;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 119)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_119_varietypack18;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 120)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_120_noel;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 121)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_121_varietypack_xs;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 122)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_122_cheregi;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 123)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_123_iws;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 124)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_124_cyberpunk;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 125)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_125_varietypack_3xs;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 126)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_126_freebies;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 127)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_127_video_games;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 128)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_128_varietypack_4xs;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 129)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_129_cheregi2;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 140)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_140_autumn2;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 141)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_141_halloween_3;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 143)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_143_deutschland;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 144)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_144_halloween_4;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 130)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_130_varietypack_5xs;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 131)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_131_varietypack_3xl;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 145)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_145_canary_islands;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 142)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_142_christmas_3;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 146)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_146_lunar_newyear;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 134)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_134_animals;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 133)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_133_varietypack_6xs;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 147)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_147_4xl;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 132)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_132_varietypack19;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 150)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_150_ukiyoe3;
                            room_goto(r_puzzle_select);
                        }
                        if (puzzle_pack == 135)
                        {
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                            }
                            global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_135_varietypack20;
                            room_goto(r_puzzle_select);
                        }
                    }
                }
                else if (pack_is_a_fav == 1)
                {
                    if (x > 227)
                    {
                        if (ob_menu_cursor.x > 290 && ob_menu_cursor.x < 1628)
                        {
                            global.on_sale_puzzle_pack = puzzle_pack;
                            if (puzzle_pack == 1)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = 65;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 2)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_2_mountains;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 3)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = 66;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 4)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_4_free_4;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 5)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_5_thailand;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 6)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_6_himalayas;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 7)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_7_davinci;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 8)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_8_dinosaurs;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 9)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_9_dogs;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 10)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_10_korea;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 11)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_11_owls;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 12)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_12_rio;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 13)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_13_savana;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 14)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_14_cats;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 15)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_15_uslandscapes;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 16)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_16_ukiyoe;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 17)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_17_horses;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 18)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_18_montana;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 19)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_19_angelwings;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 20)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_20_jigsaw;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 21)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_21_japan;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 22)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_22_fractal_rings;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 23)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_23_2000_ad;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 24)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_24_autumn;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 25)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_25_halloween;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 26)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_26_new_engalnd_fall;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 27)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_27_aki;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 28)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_28_spooky;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 29)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_29_tcotc;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 30)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_30_england;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 31)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_31_wales;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 32)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_32_scotland;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 33)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_33_ireland;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 34)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_34_beach_volleyball;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 35)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_35_castles;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 36)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_36_winter;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 37)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_37_snow_an_ice;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 38)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_38_pp2_anime;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 39)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_39_pp2_space;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 40)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_40_pp2_birds;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 41)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_41_christmas;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 42)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_42_glacier;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 43)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_43_wolves;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 44)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_44_santa;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 45)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_45_new_years;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 46)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_46_elephants;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 47)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_47_embers;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 48)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_48_samurai;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 49)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_49_pp1_japan;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 50)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_50_pp1_undeadz;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 51)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_51_drwho;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 52)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_52_australia;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 53)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_53_pinups;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 54)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_54_radical_roach;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 55)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_55_wild_west;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 56)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_56_landscapes_xl;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 57)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_57_volcanoes;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 58)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_58_chernobyl;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 59)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_59_coral_reef;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 60)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_60_medeival;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 61)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_61_primates;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 62)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_62_trains;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 63)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_63_dolphins;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 64)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_64_sunflowers;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 65)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_65_boschs_garden;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 66)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_66_urban_decay;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 67)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_67_china;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 68)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_68_russia;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 69)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_69_desserts;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 70)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_70_varietypack1;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 71)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_71_macro;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 72)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_72_spain;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 73)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_73_shipwrecks;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 74)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_74_varietypack2;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 75)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_75_anniversary;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 76)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_76_varietypack3;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 77)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_77_extreme_sports;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 78)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_78_waterfalls;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 79)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_79_fantasy;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 80)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_80_surreal;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 81)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_81_spring;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 82)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_82_summer;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 83)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_83_halloween2;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 84)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_84_ukiyoe2;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 85)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_85_varietypack4;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 86)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_86_germany;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 87)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_87_varietypack5;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 88)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_88_christmas_2;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 89)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_89_europeanart;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 90)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_90_space2;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 91)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_91_varietypack_xl;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 92)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_92_aerial_photography;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 93)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_93_usa;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 94)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_94_varietypack6;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 95)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_95_varietypack7;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 96)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_96_varietypack8;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 97)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_97_varietypack9;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 98)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_98_varietypack10;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 99)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_99_varietypack11;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 100)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_100_varietypack12;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 101)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_101_castles_2;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 102)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_102_india;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 103)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_103_cats2;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 104)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_104_varietypackxxl;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 105)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_105_summertime;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 106)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_106_traditional_cut;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 107)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_107_stuck_at_home;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 108)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_108_varietypack13;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 109)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_109_fantasy2;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 110)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_110_varietypack14;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 111)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_111_varietypack15;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 112)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_112_horror;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 113)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_113_surreal2;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 114)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_114_varietypack16;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 115)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_115_japan2;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 116)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_116_varietypack17;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 117)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_117_varietypack_xxs;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 118)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_118_flowers;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 119)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_119_varietypack18;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 120)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_120_noel;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 121)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_121_varietypack_xs;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 122)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_122_cheregi;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 123)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_123_iws;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 124)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_124_cyberpunk;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 125)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_125_varietypack_3xs;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 126)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_126_freebies;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 127)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_127_video_games;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 128)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_128_varietypack_4xs;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 129)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_129_cheregi2;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 140)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_140_autumn2;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 141)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_141_halloween_3;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 143)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_143_deutschland;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 144)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_144_halloween_4;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 130)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_130_varietypack_5xs;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 131)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_131_varietypack_3xl;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 145)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_145_canary_islands;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 142)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_142_christmas_3;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 146)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_146_lunar_newyear;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 134)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_134_animals;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 133)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_133_varietypack_6xs;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 147)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_147_4xl;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 132)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_132_varietypack19;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 150)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_150_ukiyoe3;
                                room_goto(r_puzzle_select);
                            }
                            if (puzzle_pack == 135)
                            {
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_click_puzzle_pack, 1, false);
                                }
                                global.puzzle_pack_controller_to_spawn = ob_puzzle_select_pack_controller_135_varietypack20;
                                room_goto(r_puzzle_select);
                            }
                        }
                    }
                }
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        if (pack_is_a_fav == 0)
        {
            if (ob_menu_cursor.y > 500)
            {
                if (puzzle_pack > 0)
                {
                    button_size = 0.685;
                }
                else
                {
                    button_size = 0.715;
                }
            }
            else
            {
                button_size = 0.715;
            }
        }
        else if (pack_is_a_fav == 1)
        {
            if (ob_menu_cursor.x > 290 && ob_menu_cursor.x < 1628)
            {
                if (puzzle_pack > 0)
                {
                    button_size = 0.685;
                }
                else
                {
                    button_size = 0.715;
                }
            }
            else
            {
                button_size = 0.7;
            }
        }
    }
    else if (pack_is_a_fav == 0)
    {
        if (ob_menu_cursor.y < 500)
        {
            button_size = 0.7;
        }
        else
        {
            button_size = 0.715;
        }
    }
    else if (ob_menu_cursor.x > 290 && ob_menu_cursor.x < 1628)
    {
        button_size = 0.715;
    }
    else
    {
        button_size = 0.7;
    }
}
else if (pack_is_a_fav == 0)
{
    button_size = 0.7;
}
else
{
    button_size = 0.7;
}
if (pack_is_a_fav == 0)
{
    if (place_meeting(x, y, ob_menu_cursor))
    {
        if (ob_menu_cursor.y > 540)
        {
            if (mouse_check_button_released(mb_right) || gamepad_button_check_released(0, gp_face4))
            {
                if (global.a_menu_overlay_is_showing == 0)
                {
                    if (image_alpha == 1)
                    {
                        if (puzzle_pack > 0)
                        {
                            if (global.puzzle_fav_1 == 0)
                            {
                                global.puzzle_fav_1 = puzzle_pack;
                                ini_open("ppu.ini");
                                var p0x17p1 = base64_encode(string(global.puzzle_fav_1));
                                ini_write_string("save", "p0x17p1", p0x17p1);
                                ini_close();
                                global.puzzle_favorites_can_fade_in = 0;
                                global.fav_1_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                                global.fav_1_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                                audio_stop_sound(global.sound_puzzle_packs_load_in);
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_fav_a_pack, 1, false);
                                }
                                if (steam_stats_ready())
                                {
                                    if (!steam_get_achievement("add_a_fav_pack"))
                                    {
                                        steam_set_achievement("add_a_fav_pack");
                                    }
                                }
                                room_restart();
                            }
                            else if (global.puzzle_fav_2 == 0)
                            {
                                global.puzzle_fav_2 = puzzle_pack;
                                ini_open("ppu.ini");
                                var p0x17p2 = base64_encode(string(global.puzzle_fav_2));
                                ini_write_string("save", "p0x17p2", p0x17p2);
                                ini_close();
                                global.puzzle_favorites_can_fade_in = 0;
                                global.fav_2_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                                global.fav_2_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                                audio_stop_sound(global.sound_puzzle_packs_load_in);
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_fav_a_pack, 1, false);
                                }
                                room_restart();
                            }
                            else if (global.puzzle_fav_3 == 0)
                            {
                                global.puzzle_fav_3 = puzzle_pack;
                                ini_open("ppu.ini");
                                var p0x17p3 = base64_encode(string(global.puzzle_fav_3));
                                ini_write_string("save", "p0x17p3", p0x17p3);
                                ini_close();
                                global.puzzle_favorites_can_fade_in = 0;
                                global.fav_3_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                                global.fav_3_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                                audio_stop_sound(global.sound_puzzle_packs_load_in);
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_fav_a_pack, 1, false);
                                }
                                room_restart();
                            }
                            else if (global.puzzle_fav_4 == 0)
                            {
                                global.puzzle_fav_4 = puzzle_pack;
                                ini_open("ppu.ini");
                                var p0x17p4 = base64_encode(string(global.puzzle_fav_4));
                                ini_write_string("save", "p0x17p4", p0x17p4);
                                ini_close();
                                global.puzzle_favorites_can_fade_in = 0;
                                global.fav_4_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                                global.fav_4_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                                audio_stop_sound(global.sound_puzzle_packs_load_in);
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_fav_a_pack, 1, false);
                                }
                                room_restart();
                            }
                            else if (global.puzzle_fav_5 == 0)
                            {
                                global.puzzle_fav_5 = puzzle_pack;
                                ini_open("ppu.ini");
                                var p0x17p5 = base64_encode(string(global.puzzle_fav_5));
                                ini_write_string("save", "p0x17p5", p0x17p5);
                                ini_close();
                                global.puzzle_favorites_can_fade_in = 0;
                                global.fav_5_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                                global.fav_5_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                                audio_stop_sound(global.sound_puzzle_packs_load_in);
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_fav_a_pack, 1, false);
                                }
                                room_restart();
                            }
                            else if (global.puzzle_fav_6 == 0)
                            {
                                global.puzzle_fav_6 = puzzle_pack;
                                ini_open("ppu.ini");
                                var p0x17p6 = base64_encode(string(global.puzzle_fav_6));
                                ini_write_string("save", "p0x17p6", p0x17p6);
                                ini_close();
                                global.puzzle_favorites_can_fade_in = 0;
                                global.fav_6_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                                global.fav_6_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                                audio_stop_sound(global.sound_puzzle_packs_load_in);
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_fav_a_pack, 1, false);
                                }
                                room_restart();
                            }
                            else if (global.puzzle_fav_7 == 0)
                            {
                                global.puzzle_fav_7 = puzzle_pack;
                                ini_open("ppu.ini");
                                var p0x17p7 = base64_encode(string(global.puzzle_fav_7));
                                ini_write_string("save", "p0x17p7", p0x17p7);
                                ini_close();
                                global.puzzle_favorites_can_fade_in = 0;
                                global.fav_7_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                                global.fav_7_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                                audio_stop_sound(global.sound_puzzle_packs_load_in);
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_fav_a_pack, 1, false);
                                }
                                room_restart();
                            }
                            else if (global.puzzle_fav_8 == 0)
                            {
                                global.puzzle_fav_8 = puzzle_pack;
                                ini_open("ppu.ini");
                                var p0x17p8 = base64_encode(string(global.puzzle_fav_8));
                                ini_write_string("save", "p0x17p8", p0x17p8);
                                ini_close();
                                global.puzzle_favorites_can_fade_in = 0;
                                global.fav_8_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                                global.fav_8_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                                audio_stop_sound(global.sound_puzzle_packs_load_in);
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_fav_a_pack, 1, false);
                                }
                                room_restart();
                            }
                            else if (global.puzzle_fav_9 == 0)
                            {
                                global.puzzle_fav_9 = puzzle_pack;
                                ini_open("ppu.ini");
                                var p0x17p9 = base64_encode(string(global.puzzle_fav_9));
                                ini_write_string("save", "p0x17p9", p0x17p9);
                                ini_close();
                                global.puzzle_favorites_can_fade_in = 0;
                                global.fav_9_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                                global.fav_9_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                                audio_stop_sound(global.sound_puzzle_packs_load_in);
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_fav_a_pack, 1, false);
                                }
                                room_restart();
                            }
                            else if (global.puzzle_fav_10 == 0)
                            {
                                global.puzzle_fav_10 = puzzle_pack;
                                ini_open("ppu.ini");
                                var p0x17p10 = base64_encode(string(global.puzzle_fav_10));
                                ini_write_string("save", "p0x17p10", p0x17p10);
                                ini_close();
                                global.puzzle_favorites_can_fade_in = 0;
                                global.fav_10_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                                global.fav_10_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                                audio_stop_sound(global.sound_puzzle_packs_load_in);
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_fav_a_pack, 1, false);
                                }
                                room_restart();
                            }
                            else if (global.puzzle_fav_11 == 0)
                            {
                                global.puzzle_fav_11 = puzzle_pack;
                                ini_open("ppu.ini");
                                var p0x17p11 = base64_encode(string(global.puzzle_fav_11));
                                ini_write_string("save", "p0x17p11", p0x17p11);
                                ini_close();
                                global.puzzle_favorites_can_fade_in = 0;
                                global.fav_11_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                                global.fav_11_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                                audio_stop_sound(global.sound_puzzle_packs_load_in);
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_fav_a_pack, 1, false);
                                }
                                room_restart();
                            }
                            else if (global.puzzle_fav_12 == 0)
                            {
                                global.puzzle_fav_12 = puzzle_pack;
                                ini_open("ppu.ini");
                                var p0x17p12 = base64_encode(string(global.puzzle_fav_12));
                                ini_write_string("save", "p0x17p12", p0x17p12);
                                ini_close();
                                global.puzzle_favorites_can_fade_in = 0;
                                global.fav_12_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                                global.fav_12_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                                audio_stop_sound(global.sound_puzzle_packs_load_in);
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_fav_a_pack, 1, false);
                                }
                                room_restart();
                            }
                            else if (global.puzzle_fav_13 == 0)
                            {
                                global.puzzle_fav_13 = puzzle_pack;
                                ini_open("ppu.ini");
                                var p0x17p13 = base64_encode(string(global.puzzle_fav_13));
                                ini_write_string("save", "p0x17p13", p0x17p13);
                                ini_close();
                                global.puzzle_favorites_can_fade_in = 0;
                                global.fav_13_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                                global.fav_13_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                                audio_stop_sound(global.sound_puzzle_packs_load_in);
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_fav_a_pack, 1, false);
                                }
                                room_restart();
                            }
                            else if (global.puzzle_fav_14 == 0)
                            {
                                global.puzzle_fav_14 = puzzle_pack;
                                ini_open("ppu.ini");
                                var p0x17p14 = base64_encode(string(global.puzzle_fav_14));
                                ini_write_string("save", "p0x17p14", p0x17p14);
                                ini_close();
                                global.puzzle_favorites_can_fade_in = 0;
                                global.fav_14_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                                global.fav_14_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                                audio_stop_sound(global.sound_puzzle_packs_load_in);
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_fav_a_pack, 1, false);
                                }
                                room_restart();
                            }
                            else if (global.puzzle_fav_15 == 0)
                            {
                                global.puzzle_fav_15 = puzzle_pack;
                                ini_open("ppu.ini");
                                var p0x17p15 = base64_encode(string(global.puzzle_fav_15));
                                ini_write_string("save", "p0x17p15", p0x17p15);
                                ini_close();
                                global.puzzle_favorites_can_fade_in = 0;
                                global.fav_15_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                                global.fav_15_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                                audio_stop_sound(global.sound_puzzle_packs_load_in);
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_fav_a_pack, 1, false);
                                }
                                room_restart();
                            }
                        }
                    }
                }
            }
            if (mouse_check_button(mb_right) || gamepad_button_check(0, gp_face4))
            {
                if (pack_is_a_fav == 0)
                {
                    if (puzzle_pack > 0)
                    {
                        if (global.puzzle_fav_1 > 0 && global.puzzle_fav_2 > 0 && global.puzzle_fav_3 > 0 && global.puzzle_fav_4 > 0 && global.puzzle_fav_5 > 0 && global.puzzle_fav_6 > 0 && global.puzzle_fav_7 > 0 && global.puzzle_fav_8 > 0 && global.puzzle_fav_9 > 0 && global.puzzle_fav_10 > 0 && global.puzzle_fav_11 > 0 && global.puzzle_fav_12 > 0 && global.puzzle_fav_13 > 0 && global.puzzle_fav_14 > 0 && global.puzzle_fav_15 > 0)
                        {
                            add_to_favorite_hilight_is_showing = 2;
                        }
                        else
                        {
                            add_to_favorite_hilight_is_showing = 1;
                        }
                    }
                    else
                    {
                        add_to_favorite_hilight_is_showing = 0;
                    }
                }
                else
                {
                    add_to_favorite_hilight_is_showing = 0;
                }
            }
            else
            {
                add_to_favorite_hilight_is_showing = 0;
            }
        }
        else
        {
            add_to_favorite_hilight_is_showing = 0;
        }
    }
    else
    {
        add_to_favorite_hilight_is_showing = 0;
    }
}
if (pack_is_a_fav == 1)
{
    if (place_meeting(x, y, ob_menu_cursor))
    {
        if (mouse_check_button_released(mb_right) || gamepad_button_check_released(0, gp_face4))
        {
            if (global.a_menu_overlay_is_showing == 0)
            {
                if (image_alpha == 1)
                {
                    if (x > 227)
                    {
                        if (ob_menu_cursor.x > 290 && ob_menu_cursor.x < 1628)
                        {
                            if (fav_number == 1)
                            {
                                if (global.puzzle_fav_1 > 0)
                                {
                                    global.puzzle_fav_1 = 0;
                                    ini_open("ppu.ini");
                                    var p0x17p1 = base64_encode(string(global.puzzle_fav_1));
                                    ini_write_string("save", "p0x17p1", p0x17p1);
                                    ini_close();
                                    global.puzzle_favorites_can_fade_in = 0;
                                    audio_stop_sound(global.sound_puzzle_packs_load_in);
                                    if (global.audio_menu_effects_0_is_on == 0)
                                    {
                                        audio_play_sound(global.sound_unfav_a_pack, 1, false);
                                    }
                                    room_restart();
                                }
                            }
                            else if (fav_number == 2)
                            {
                                if (global.puzzle_fav_2 > 0)
                                {
                                    global.puzzle_fav_2 = 0;
                                    ini_open("ppu.ini");
                                    var p0x17p2 = base64_encode(string(global.puzzle_fav_2));
                                    ini_write_string("save", "p0x17p2", p0x17p2);
                                    ini_close();
                                    global.puzzle_favorites_can_fade_in = 0;
                                    audio_stop_sound(global.sound_puzzle_packs_load_in);
                                    if (global.audio_menu_effects_0_is_on == 0)
                                    {
                                        audio_play_sound(global.sound_unfav_a_pack, 1, false);
                                    }
                                    room_restart();
                                }
                            }
                            else if (fav_number == 3)
                            {
                                if (global.puzzle_fav_3 > 0)
                                {
                                    global.puzzle_fav_3 = 0;
                                    ini_open("ppu.ini");
                                    var p0x17p3 = base64_encode(string(global.puzzle_fav_3));
                                    ini_write_string("save", "p0x17p3", p0x17p3);
                                    ini_close();
                                    global.puzzle_favorites_can_fade_in = 0;
                                    audio_stop_sound(global.sound_puzzle_packs_load_in);
                                    if (global.audio_menu_effects_0_is_on == 0)
                                    {
                                        audio_play_sound(global.sound_unfav_a_pack, 1, false);
                                    }
                                    room_restart();
                                }
                            }
                            else if (fav_number == 4)
                            {
                                if (global.puzzle_fav_4 > 0)
                                {
                                    global.puzzle_fav_4 = 0;
                                    ini_open("ppu.ini");
                                    var p0x17p4 = base64_encode(string(global.puzzle_fav_4));
                                    ini_write_string("save", "p0x17p4", p0x17p4);
                                    ini_close();
                                    global.puzzle_favorites_can_fade_in = 0;
                                    audio_stop_sound(global.sound_puzzle_packs_load_in);
                                    if (global.audio_menu_effects_0_is_on == 0)
                                    {
                                        audio_play_sound(global.sound_unfav_a_pack, 1, false);
                                    }
                                    room_restart();
                                }
                            }
                            else if (fav_number == 5)
                            {
                                if (global.puzzle_fav_5 > 0)
                                {
                                    global.puzzle_fav_5 = 0;
                                    ini_open("ppu.ini");
                                    var p0x17p5 = base64_encode(string(global.puzzle_fav_5));
                                    ini_write_string("save", "p0x17p5", p0x17p5);
                                    ini_close();
                                    global.puzzle_favorites_can_fade_in = 0;
                                    audio_stop_sound(global.sound_puzzle_packs_load_in);
                                    if (global.audio_menu_effects_0_is_on == 0)
                                    {
                                        audio_play_sound(global.sound_unfav_a_pack, 1, false);
                                    }
                                    room_restart();
                                }
                            }
                            else if (fav_number == 6)
                            {
                                if (global.puzzle_fav_6 > 0)
                                {
                                    global.puzzle_fav_6 = 0;
                                    ini_open("ppu.ini");
                                    var p0x17p6 = base64_encode(string(global.puzzle_fav_6));
                                    ini_write_string("save", "p0x17p6", p0x17p6);
                                    ini_close();
                                    global.puzzle_favorites_can_fade_in = 0;
                                    audio_stop_sound(global.sound_puzzle_packs_load_in);
                                    if (global.audio_menu_effects_0_is_on == 0)
                                    {
                                        audio_play_sound(global.sound_unfav_a_pack, 1, false);
                                    }
                                    room_restart();
                                }
                            }
                            else if (fav_number == 7)
                            {
                                if (global.puzzle_fav_7 > 0)
                                {
                                    global.puzzle_fav_7 = 0;
                                    ini_open("ppu.ini");
                                    var p0x17p7 = base64_encode(string(global.puzzle_fav_7));
                                    ini_write_string("save", "p0x17p7", p0x17p7);
                                    ini_close();
                                    global.puzzle_favorites_can_fade_in = 0;
                                    audio_stop_sound(global.sound_puzzle_packs_load_in);
                                    if (global.audio_menu_effects_0_is_on == 0)
                                    {
                                        audio_play_sound(global.sound_unfav_a_pack, 1, false);
                                    }
                                    room_restart();
                                }
                            }
                            else if (fav_number == 8)
                            {
                                if (global.puzzle_fav_8 > 0)
                                {
                                    global.puzzle_fav_8 = 0;
                                    ini_open("ppu.ini");
                                    var p0x17p8 = base64_encode(string(global.puzzle_fav_8));
                                    ini_write_string("save", "p0x17p8", p0x17p8);
                                    ini_close();
                                    global.puzzle_favorites_can_fade_in = 0;
                                    audio_stop_sound(global.sound_puzzle_packs_load_in);
                                    if (global.audio_menu_effects_0_is_on == 0)
                                    {
                                        audio_play_sound(global.sound_unfav_a_pack, 1, false);
                                    }
                                    room_restart();
                                }
                            }
                            else if (fav_number == 9)
                            {
                                if (global.puzzle_fav_9 > 0)
                                {
                                    global.puzzle_fav_9 = 0;
                                    ini_open("ppu.ini");
                                    var p0x17p9 = base64_encode(string(global.puzzle_fav_9));
                                    ini_write_string("save", "p0x17p9", p0x17p9);
                                    ini_close();
                                    global.puzzle_favorites_can_fade_in = 0;
                                    audio_stop_sound(global.sound_puzzle_packs_load_in);
                                    if (global.audio_menu_effects_0_is_on == 0)
                                    {
                                        audio_play_sound(global.sound_unfav_a_pack, 1, false);
                                    }
                                    room_restart();
                                }
                            }
                            else if (fav_number == 10)
                            {
                                if (global.puzzle_fav_10 > 0)
                                {
                                    global.puzzle_fav_10 = 0;
                                    ini_open("ppu.ini");
                                    var p0x17p10 = base64_encode(string(global.puzzle_fav_10));
                                    ini_write_string("save", "p0x17p10", p0x17p10);
                                    ini_close();
                                    global.puzzle_favorites_can_fade_in = 0;
                                    audio_stop_sound(global.sound_puzzle_packs_load_in);
                                    if (global.audio_menu_effects_0_is_on == 0)
                                    {
                                        audio_play_sound(global.sound_unfav_a_pack, 1, false);
                                    }
                                    room_restart();
                                }
                            }
                            else if (fav_number == 11)
                            {
                                if (global.puzzle_fav_11 > 0)
                                {
                                    global.puzzle_fav_11 = 0;
                                    ini_open("ppu.ini");
                                    var p0x17p11 = base64_encode(string(global.puzzle_fav_11));
                                    ini_write_string("save", "p0x17p11", p0x17p11);
                                    ini_close();
                                    global.puzzle_favorites_can_fade_in = 0;
                                    audio_stop_sound(global.sound_puzzle_packs_load_in);
                                    if (global.audio_menu_effects_0_is_on == 0)
                                    {
                                        audio_play_sound(global.sound_unfav_a_pack, 1, false);
                                    }
                                    room_restart();
                                }
                            }
                            else if (fav_number == 12)
                            {
                                if (global.puzzle_fav_12 > 0)
                                {
                                    global.puzzle_fav_12 = 0;
                                    ini_open("ppu.ini");
                                    var p0x17p12 = base64_encode(string(global.puzzle_fav_12));
                                    ini_write_string("save", "p0x17p12", p0x17p12);
                                    ini_close();
                                    global.puzzle_favorites_can_fade_in = 0;
                                    audio_stop_sound(global.sound_puzzle_packs_load_in);
                                    if (global.audio_menu_effects_0_is_on == 0)
                                    {
                                        audio_play_sound(global.sound_unfav_a_pack, 1, false);
                                    }
                                    room_restart();
                                }
                            }
                            else if (fav_number == 13)
                            {
                                if (global.puzzle_fav_13 > 0)
                                {
                                    global.puzzle_fav_13 = 0;
                                    ini_open("ppu.ini");
                                    var p0x17p13 = base64_encode(string(global.puzzle_fav_13));
                                    ini_write_string("save", "p0x17p13", p0x17p13);
                                    ini_close();
                                    global.puzzle_favorites_can_fade_in = 0;
                                    audio_stop_sound(global.sound_puzzle_packs_load_in);
                                    if (global.audio_menu_effects_0_is_on == 0)
                                    {
                                        audio_play_sound(global.sound_unfav_a_pack, 1, false);
                                    }
                                    room_restart();
                                }
                            }
                            else if (fav_number == 14)
                            {
                                if (global.puzzle_fav_14 > 0)
                                {
                                    global.puzzle_fav_14 = 0;
                                    ini_open("ppu.ini");
                                    var p0x17p14 = base64_encode(string(global.puzzle_fav_14));
                                    ini_write_string("save", "p0x17p14", p0x17p14);
                                    ini_close();
                                    global.puzzle_favorites_can_fade_in = 0;
                                    audio_stop_sound(global.sound_puzzle_packs_load_in);
                                    if (global.audio_menu_effects_0_is_on == 0)
                                    {
                                        audio_play_sound(global.sound_unfav_a_pack, 1, false);
                                    }
                                    room_restart();
                                }
                            }
                            else if (fav_number == 15)
                            {
                                if (global.puzzle_fav_15 > 0)
                                {
                                    global.puzzle_fav_15 = 0;
                                    ini_open("ppu.ini");
                                    var p0x17p15 = base64_encode(string(global.puzzle_fav_15));
                                    ini_write_string("save", "p0x17p15", p0x17p15);
                                    ini_close();
                                    global.puzzle_favorites_can_fade_in = 0;
                                    audio_stop_sound(global.sound_puzzle_packs_load_in);
                                    if (global.audio_menu_effects_0_is_on == 0)
                                    {
                                        audio_play_sound(global.sound_unfav_a_pack, 1, false);
                                    }
                                    room_restart();
                                }
                            }
                        }
                    }
                }
            }
        }
        if (mouse_check_button(mb_right) || gamepad_button_check(0, gp_face4))
        {
            if (x > 227)
            {
                if (ob_menu_cursor.x > 290 && ob_menu_cursor.x < 1628)
                {
                    if (fav_number == 1)
                    {
                        if (global.puzzle_fav_1 > 0)
                        {
                            unfavorite_hilight_is_showing = 1;
                        }
                        else
                        {
                            unfavorite_hilight_is_showing = 0;
                        }
                    }
                    else if (fav_number == 2)
                    {
                        if (global.puzzle_fav_2 > 0)
                        {
                            unfavorite_hilight_is_showing = 1;
                        }
                        else
                        {
                            unfavorite_hilight_is_showing = 0;
                        }
                    }
                    else if (fav_number == 3)
                    {
                        if (global.puzzle_fav_3 > 0)
                        {
                            unfavorite_hilight_is_showing = 1;
                        }
                        else
                        {
                            unfavorite_hilight_is_showing = 0;
                        }
                    }
                    else if (fav_number == 4)
                    {
                        if (global.puzzle_fav_4 > 0)
                        {
                            unfavorite_hilight_is_showing = 1;
                        }
                        else
                        {
                            unfavorite_hilight_is_showing = 0;
                        }
                    }
                    else if (fav_number == 5)
                    {
                        if (global.puzzle_fav_5 > 0)
                        {
                            unfavorite_hilight_is_showing = 1;
                        }
                        else
                        {
                            unfavorite_hilight_is_showing = 0;
                        }
                    }
                    else if (fav_number == 6)
                    {
                        if (global.puzzle_fav_6 > 0)
                        {
                            unfavorite_hilight_is_showing = 1;
                        }
                        else
                        {
                            unfavorite_hilight_is_showing = 0;
                        }
                    }
                    else if (fav_number == 7)
                    {
                        if (global.puzzle_fav_7 > 0)
                        {
                            unfavorite_hilight_is_showing = 1;
                        }
                        else
                        {
                            unfavorite_hilight_is_showing = 0;
                        }
                    }
                    else if (fav_number == 8)
                    {
                        if (global.puzzle_fav_8 > 0)
                        {
                            unfavorite_hilight_is_showing = 1;
                        }
                        else
                        {
                            unfavorite_hilight_is_showing = 0;
                        }
                    }
                    else if (fav_number == 9)
                    {
                        if (global.puzzle_fav_9 > 0)
                        {
                            unfavorite_hilight_is_showing = 1;
                        }
                        else
                        {
                            unfavorite_hilight_is_showing = 0;
                        }
                    }
                    else if (fav_number == 10)
                    {
                        if (global.puzzle_fav_10 > 0)
                        {
                            unfavorite_hilight_is_showing = 1;
                        }
                        else
                        {
                            unfavorite_hilight_is_showing = 0;
                        }
                    }
                    else if (fav_number == 11)
                    {
                        if (global.puzzle_fav_11 > 0)
                        {
                            unfavorite_hilight_is_showing = 1;
                        }
                        else
                        {
                            unfavorite_hilight_is_showing = 0;
                        }
                    }
                    else if (fav_number == 12)
                    {
                        if (global.puzzle_fav_12 > 0)
                        {
                            unfavorite_hilight_is_showing = 1;
                        }
                        else
                        {
                            unfavorite_hilight_is_showing = 0;
                        }
                    }
                    else if (fav_number == 13)
                    {
                        if (global.puzzle_fav_13 > 0)
                        {
                            unfavorite_hilight_is_showing = 1;
                        }
                        else
                        {
                            unfavorite_hilight_is_showing = 0;
                        }
                    }
                    else if (fav_number == 14)
                    {
                        if (global.puzzle_fav_14 > 0)
                        {
                            unfavorite_hilight_is_showing = 1;
                        }
                        else
                        {
                            unfavorite_hilight_is_showing = 0;
                        }
                    }
                    else if (fav_number == 15)
                    {
                        if (global.puzzle_fav_15 > 0)
                        {
                            unfavorite_hilight_is_showing = 1;
                        }
                        else
                        {
                            unfavorite_hilight_is_showing = 0;
                        }
                    }
                    else
                    {
                        unfavorite_hilight_is_showing = 0;
                    }
                }
                else
                {
                    unfavorite_hilight_is_showing = 0;
                }
            }
            else
            {
                unfavorite_hilight_is_showing = 0;
            }
        }
        else
        {
            unfavorite_hilight_is_showing = 0;
        }
    }
    else
    {
        unfavorite_hilight_is_showing = 0;
    }
}
if (pack_is_a_fav == 0)
{
    if (image_alpha < 1)
    {
        button_sprite_to_show_1_alpha = image_alpha;
        button_sprite_to_show_2_alpha = image_alpha;
    }
    else if (current_button_sprite_showing_1_or_2 == 0)
    {
        if (button_sprite_to_show_1_alpha < 1)
        {
            button_sprite_to_show_1_alpha += 0.05;
        }
        if (button_sprite_to_show_2_alpha > 0)
        {
            button_sprite_to_show_2_alpha -= 0.05;
        }
    }
    else
    {
        if (button_sprite_to_show_2_alpha < 1)
        {
            button_sprite_to_show_2_alpha += 0.05;
        }
        if (button_sprite_to_show_1_alpha > 0)
        {
            button_sprite_to_show_1_alpha -= 0.05;
        }
    }
}
else if (pack_is_a_fav == 1)
{
    if (fav_number == 1)
    {
        if (global.fav_1_current_button_sprite_showing_1_or_2 == 0)
        {
            if (image_alpha < 1)
            {
                button_sprite_to_show_1_alpha = image_alpha;
            }
            else
            {
                if (button_sprite_to_show_1_alpha < 1)
                {
                    button_sprite_to_show_1_alpha += 0.05;
                }
                if (button_sprite_to_show_2_alpha > 0)
                {
                    button_sprite_to_show_2_alpha -= 0.05;
                }
            }
        }
        else if (image_alpha < 1)
        {
            button_sprite_to_show_2_alpha = image_alpha;
        }
        else
        {
            if (button_sprite_to_show_2_alpha < 1)
            {
                button_sprite_to_show_2_alpha += 0.05;
            }
            if (button_sprite_to_show_1_alpha > 0)
            {
                button_sprite_to_show_1_alpha -= 0.05;
            }
        }
    }
    else if (fav_number == 2)
    {
        if (global.fav_2_current_button_sprite_showing_1_or_2 == 0)
        {
            if (image_alpha < 1)
            {
                button_sprite_to_show_1_alpha = image_alpha;
            }
            else
            {
                if (button_sprite_to_show_1_alpha < 1)
                {
                    button_sprite_to_show_1_alpha += 0.05;
                }
                if (button_sprite_to_show_2_alpha > 0)
                {
                    button_sprite_to_show_2_alpha -= 0.05;
                }
            }
        }
        else if (image_alpha < 1)
        {
            button_sprite_to_show_2_alpha = image_alpha;
        }
        else
        {
            if (button_sprite_to_show_2_alpha < 1)
            {
                button_sprite_to_show_2_alpha += 0.05;
            }
            if (button_sprite_to_show_1_alpha > 0)
            {
                button_sprite_to_show_1_alpha -= 0.05;
            }
        }
    }
    else if (fav_number == 3)
    {
        if (global.fav_3_current_button_sprite_showing_1_or_2 == 0)
        {
            if (image_alpha < 1)
            {
                button_sprite_to_show_1_alpha = image_alpha;
            }
            else
            {
                if (button_sprite_to_show_1_alpha < 1)
                {
                    button_sprite_to_show_1_alpha += 0.05;
                }
                if (button_sprite_to_show_2_alpha > 0)
                {
                    button_sprite_to_show_2_alpha -= 0.05;
                }
            }
        }
        else if (image_alpha < 1)
        {
            button_sprite_to_show_2_alpha = image_alpha;
        }
        else
        {
            if (button_sprite_to_show_2_alpha < 1)
            {
                button_sprite_to_show_2_alpha += 0.05;
            }
            if (button_sprite_to_show_1_alpha > 0)
            {
                button_sprite_to_show_1_alpha -= 0.05;
            }
        }
    }
    else if (fav_number == 4)
    {
        if (global.fav_4_current_button_sprite_showing_1_or_2 == 0)
        {
            if (image_alpha < 1)
            {
                button_sprite_to_show_1_alpha = image_alpha;
            }
            else
            {
                if (button_sprite_to_show_1_alpha < 1)
                {
                    button_sprite_to_show_1_alpha += 0.05;
                }
                if (button_sprite_to_show_2_alpha > 0)
                {
                    button_sprite_to_show_2_alpha -= 0.05;
                }
            }
        }
        else if (image_alpha < 1)
        {
            button_sprite_to_show_2_alpha = image_alpha;
        }
        else
        {
            if (button_sprite_to_show_2_alpha < 1)
            {
                button_sprite_to_show_2_alpha += 0.05;
            }
            if (button_sprite_to_show_1_alpha > 0)
            {
                button_sprite_to_show_1_alpha -= 0.05;
            }
        }
    }
    else if (fav_number == 5)
    {
        if (global.fav_5_current_button_sprite_showing_1_or_2 == 0)
        {
            if (image_alpha < 1)
            {
                button_sprite_to_show_1_alpha = image_alpha;
            }
            else
            {
                if (button_sprite_to_show_1_alpha < 1)
                {
                    button_sprite_to_show_1_alpha += 0.05;
                }
                if (button_sprite_to_show_2_alpha > 0)
                {
                    button_sprite_to_show_2_alpha -= 0.05;
                }
            }
        }
        else if (image_alpha < 1)
        {
            button_sprite_to_show_2_alpha = image_alpha;
        }
        else
        {
            if (button_sprite_to_show_2_alpha < 1)
            {
                button_sprite_to_show_2_alpha += 0.05;
            }
            if (button_sprite_to_show_1_alpha > 0)
            {
                button_sprite_to_show_1_alpha -= 0.05;
            }
        }
    }
    else if (fav_number == 6)
    {
        if (global.fav_6_current_button_sprite_showing_1_or_2 == 0)
        {
            if (image_alpha < 1)
            {
                button_sprite_to_show_1_alpha = image_alpha;
            }
            else
            {
                if (button_sprite_to_show_1_alpha < 1)
                {
                    button_sprite_to_show_1_alpha += 0.05;
                }
                if (button_sprite_to_show_2_alpha > 0)
                {
                    button_sprite_to_show_2_alpha -= 0.05;
                }
            }
        }
        else if (image_alpha < 1)
        {
            button_sprite_to_show_2_alpha = image_alpha;
        }
        else
        {
            if (button_sprite_to_show_2_alpha < 1)
            {
                button_sprite_to_show_2_alpha += 0.05;
            }
            if (button_sprite_to_show_1_alpha > 0)
            {
                button_sprite_to_show_1_alpha -= 0.05;
            }
        }
    }
    else if (fav_number == 7)
    {
        if (global.fav_7_current_button_sprite_showing_1_or_2 == 0)
        {
            if (image_alpha < 1)
            {
                button_sprite_to_show_1_alpha = image_alpha;
            }
            else
            {
                if (button_sprite_to_show_1_alpha < 1)
                {
                    button_sprite_to_show_1_alpha += 0.05;
                }
                if (button_sprite_to_show_2_alpha > 0)
                {
                    button_sprite_to_show_2_alpha -= 0.05;
                }
            }
        }
        else if (image_alpha < 1)
        {
            button_sprite_to_show_2_alpha = image_alpha;
        }
        else
        {
            if (button_sprite_to_show_2_alpha < 1)
            {
                button_sprite_to_show_2_alpha += 0.05;
            }
            if (button_sprite_to_show_1_alpha > 0)
            {
                button_sprite_to_show_1_alpha -= 0.05;
            }
        }
    }
    else if (fav_number == 8)
    {
        if (global.fav_8_current_button_sprite_showing_1_or_2 == 0)
        {
            if (image_alpha < 1)
            {
                button_sprite_to_show_1_alpha = image_alpha;
            }
            else
            {
                if (button_sprite_to_show_1_alpha < 1)
                {
                    button_sprite_to_show_1_alpha += 0.05;
                }
                if (button_sprite_to_show_2_alpha > 0)
                {
                    button_sprite_to_show_2_alpha -= 0.05;
                }
            }
        }
        else if (image_alpha < 1)
        {
            button_sprite_to_show_2_alpha = image_alpha;
        }
        else
        {
            if (button_sprite_to_show_2_alpha < 1)
            {
                button_sprite_to_show_2_alpha += 0.05;
            }
            if (button_sprite_to_show_1_alpha > 0)
            {
                button_sprite_to_show_1_alpha -= 0.05;
            }
        }
    }
    else if (fav_number == 9)
    {
        if (global.fav_9_current_button_sprite_showing_1_or_2 == 0)
        {
            if (image_alpha < 1)
            {
                button_sprite_to_show_1_alpha = image_alpha;
            }
            else
            {
                if (button_sprite_to_show_1_alpha < 1)
                {
                    button_sprite_to_show_1_alpha += 0.05;
                }
                if (button_sprite_to_show_2_alpha > 0)
                {
                    button_sprite_to_show_2_alpha -= 0.05;
                }
            }
        }
        else if (image_alpha < 1)
        {
            button_sprite_to_show_2_alpha = image_alpha;
        }
        else
        {
            if (button_sprite_to_show_2_alpha < 1)
            {
                button_sprite_to_show_2_alpha += 0.05;
            }
            if (button_sprite_to_show_1_alpha > 0)
            {
                button_sprite_to_show_1_alpha -= 0.05;
            }
        }
    }
    else if (fav_number == 10)
    {
        if (global.fav_10_current_button_sprite_showing_1_or_2 == 0)
        {
            if (image_alpha < 1)
            {
                button_sprite_to_show_1_alpha = image_alpha;
            }
            else
            {
                if (button_sprite_to_show_1_alpha < 1)
                {
                    button_sprite_to_show_1_alpha += 0.05;
                }
                if (button_sprite_to_show_2_alpha > 0)
                {
                    button_sprite_to_show_2_alpha -= 0.05;
                }
            }
        }
        else if (image_alpha < 1)
        {
            button_sprite_to_show_2_alpha = image_alpha;
        }
        else
        {
            if (button_sprite_to_show_2_alpha < 1)
            {
                button_sprite_to_show_2_alpha += 0.05;
            }
            if (button_sprite_to_show_1_alpha > 0)
            {
                button_sprite_to_show_1_alpha -= 0.05;
            }
        }
    }
    else if (fav_number == 11)
    {
        if (global.fav_11_current_button_sprite_showing_1_or_2 == 0)
        {
            if (image_alpha < 1)
            {
                button_sprite_to_show_1_alpha = image_alpha;
            }
            else
            {
                if (button_sprite_to_show_1_alpha < 1)
                {
                    button_sprite_to_show_1_alpha += 0.05;
                }
                if (button_sprite_to_show_2_alpha > 0)
                {
                    button_sprite_to_show_2_alpha -= 0.05;
                }
            }
        }
        else if (image_alpha < 1)
        {
            button_sprite_to_show_2_alpha = image_alpha;
        }
        else
        {
            if (button_sprite_to_show_2_alpha < 1)
            {
                button_sprite_to_show_2_alpha += 0.05;
            }
            if (button_sprite_to_show_1_alpha > 0)
            {
                button_sprite_to_show_1_alpha -= 0.05;
            }
        }
    }
    else if (fav_number == 12)
    {
        if (global.fav_12_current_button_sprite_showing_1_or_2 == 0)
        {
            if (image_alpha < 1)
            {
                button_sprite_to_show_1_alpha = image_alpha;
            }
            else
            {
                if (button_sprite_to_show_1_alpha < 1)
                {
                    button_sprite_to_show_1_alpha += 0.05;
                }
                if (button_sprite_to_show_2_alpha > 0)
                {
                    button_sprite_to_show_2_alpha -= 0.05;
                }
            }
        }
        else if (image_alpha < 1)
        {
            button_sprite_to_show_2_alpha = image_alpha;
        }
        else
        {
            if (button_sprite_to_show_2_alpha < 1)
            {
                button_sprite_to_show_2_alpha += 0.05;
            }
            if (button_sprite_to_show_1_alpha > 0)
            {
                button_sprite_to_show_1_alpha -= 0.05;
            }
        }
    }
    else if (fav_number == 13)
    {
        if (global.fav_13_current_button_sprite_showing_1_or_2 == 0)
        {
            if (image_alpha < 1)
            {
                button_sprite_to_show_1_alpha = image_alpha;
            }
            else
            {
                if (button_sprite_to_show_1_alpha < 1)
                {
                    button_sprite_to_show_1_alpha += 0.05;
                }
                if (button_sprite_to_show_2_alpha > 0)
                {
                    button_sprite_to_show_2_alpha -= 0.05;
                }
            }
        }
        else if (image_alpha < 1)
        {
            button_sprite_to_show_2_alpha = image_alpha;
        }
        else
        {
            if (button_sprite_to_show_2_alpha < 1)
            {
                button_sprite_to_show_2_alpha += 0.05;
            }
            if (button_sprite_to_show_1_alpha > 0)
            {
                button_sprite_to_show_1_alpha -= 0.05;
            }
        }
    }
    else if (fav_number == 14)
    {
        if (global.fav_14_current_button_sprite_showing_1_or_2 == 0)
        {
            if (image_alpha < 1)
            {
                button_sprite_to_show_1_alpha = image_alpha;
            }
            else
            {
                if (button_sprite_to_show_1_alpha < 1)
                {
                    button_sprite_to_show_1_alpha += 0.05;
                }
                if (button_sprite_to_show_2_alpha > 0)
                {
                    button_sprite_to_show_2_alpha -= 0.05;
                }
            }
        }
        else if (image_alpha < 1)
        {
            button_sprite_to_show_2_alpha = image_alpha;
        }
        else
        {
            if (button_sprite_to_show_2_alpha < 1)
            {
                button_sprite_to_show_2_alpha += 0.05;
            }
            if (button_sprite_to_show_1_alpha > 0)
            {
                button_sprite_to_show_1_alpha -= 0.05;
            }
        }
    }
    else if (fav_number == 15)
    {
        if (global.fav_15_current_button_sprite_showing_1_or_2 == 0)
        {
            if (image_alpha < 1)
            {
                button_sprite_to_show_1_alpha = image_alpha;
            }
            else
            {
                if (button_sprite_to_show_1_alpha < 1)
                {
                    button_sprite_to_show_1_alpha += 0.05;
                }
                if (button_sprite_to_show_2_alpha > 0)
                {
                    button_sprite_to_show_2_alpha -= 0.05;
                }
            }
        }
        else if (image_alpha < 1)
        {
            button_sprite_to_show_2_alpha = image_alpha;
        }
        else
        {
            if (button_sprite_to_show_2_alpha < 1)
            {
                button_sprite_to_show_2_alpha += 0.05;
            }
            if (button_sprite_to_show_1_alpha > 0)
            {
                button_sprite_to_show_1_alpha -= 0.05;
            }
        }
    }
}
