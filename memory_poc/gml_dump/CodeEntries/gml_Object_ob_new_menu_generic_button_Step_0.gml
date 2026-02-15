if (global.nm_block_for_intro == 0)
{
    if (button_number == 87 || button_number == 88 || button_number == 89 || button_number == 90 || button_number == 91 || button_number == 92 || button_number == 93 || button_number == 94)
    {
        if (place_meeting(x, y, ob_menu_cursor))
        {
            depth = -2;
            if (mouse_check_button(mb_left))
            {
                button_scale = 0.68;
            }
            else
            {
                button_scale = 0.71;
            }
        }
        else
        {
            button_scale = 0.69;
            depth = -1;
        }
    }
    else if (place_meeting(x, y, ob_menu_cursor))
    {
        depth = -2;
        if (mouse_check_button(mb_left))
        {
            button_scale = 0.99;
        }
        else
        {
            button_scale = 1.02;
        }
    }
    else
    {
        button_scale = 1;
        depth = -1;
    }
}
else if (button_number == 95)
{
    if (place_meeting(x, y, ob_menu_cursor))
    {
        if (mouse_check_button(mb_left))
        {
            button_scale = 0.99;
        }
        else
        {
            button_scale = 1.02;
        }
    }
    else
    {
        button_scale = 1;
    }
}
if (image_alpha < 1)
{
    image_alpha += 0.05;
}
if (place_meeting(x, y, ob_menu_cursor))
{
    if (global.nm_block_for_intro == 0)
    {
        if (mouse_check_button_pressed(mb_left))
        {
            if (button_number == 1)
            {
                if (global.image_can_be_rotated_0_is4_1_is0_2_is8 == 0)
                {
                    global.image_can_be_rotated_0_is4_1_is0_2_is8 = 2;
                }
                else if (global.image_can_be_rotated_0_is4_1_is0_2_is8 == 1)
                {
                    global.image_can_be_rotated_0_is4_1_is0_2_is8 = 0;
                }
                else if (global.image_can_be_rotated_0_is4_1_is0_2_is8 == 2)
                {
                    global.image_can_be_rotated_0_is4_1_is0_2_is8 = 1;
                }
                audio_play_sound(s_special_button_press, 1, false);
                ini_open("ppu.ini");
                var p0x197p20 = base64_encode(string(global.image_can_be_rotated_0_is4_1_is0_2_is8));
                ini_write_string("save", "p0x197p20", p0x197p20);
                ini_close();
                if (global.image_can_be_rotated_0_is4_1_is0_2_is8 == 0)
                {
                    button_text_value = "x4";
                }
                else if (global.image_can_be_rotated_0_is4_1_is0_2_is8 == 1)
                {
                    button_text_value = "OFF";
                }
                else if (global.image_can_be_rotated_0_is4_1_is0_2_is8 == 2)
                {
                    button_text_value = "x8";
                }
            }
            else if (button_number == 2)
            {
                if (global.piece_snap_amount < 4)
                {
                    global.piece_snap_amount += 1;
                }
                else
                {
                    global.piece_snap_amount = 0;
                }
                audio_play_sound(s_special_button_press, 1, false);
                ini_open("ppu.ini");
                var p0x197p57 = base64_encode(string(global.piece_snap_amount));
                ini_write_string("save", "p0x197p57", p0x197p57);
                ini_close();
                if (global.piece_snap_amount == 1)
                {
                    button_text_value = "x2";
                }
                else if (global.piece_snap_amount == 2)
                {
                    button_text_value = "x3";
                }
                else if (global.piece_snap_amount == 3)
                {
                    button_text_value = "x4";
                }
                else if (global.piece_snap_amount == 4)
                {
                    button_text_value = "x5";
                }
                else if (global.piece_snap_amount == 0)
                {
                    button_text_value = "x1";
                }
            }
            else if (button_number == 3)
            {
                if (global.ui_tip_showing == 0)
                {
                    global.ui_tip_showing = 1;
                }
                else
                {
                    global.ui_tip_showing = 0;
                }
                audio_play_sound(s_special_button_press, 1, false);
                ini_open("ppu.ini");
                var p0x187p651 = base64_encode(string(global.ui_tip_showing));
                ini_write_string("save", "p0x187p651", p0x187p651);
                ini_close();
                if (global.ui_tip_showing == 1)
                {
                    button_text_value = "ON";
                }
                else
                {
                    button_text_value = "OFF";
                }
            }
            else if (button_number == 4)
            {
                if (global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 == 1)
                {
                    global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 = 2;
                }
                else if (global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 == 2)
                {
                    global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 = 0;
                }
                else if (global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 == 0)
                {
                    global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 = 3;
                }
                else if (global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 == 3)
                {
                    global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 = 4;
                }
                else if (global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 == 4)
                {
                    global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 = 1;
                }
                audio_play_sound(s_special_button_press, 1, false);
                ini_open("ppu.ini");
                var p0x197p23 = base64_encode(string(global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5));
                ini_write_string("save", "p0x197p23", p0x197p23);
                ini_close();
                if (global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 == 1)
                {
                    button_text_value = "OFF";
                }
                else if (global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 == 2)
                {
                    button_text_value = ": x1";
                }
                else if (global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 == 3)
                {
                    button_text_value = ": x3";
                }
                else if (global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 == 4)
                {
                    button_text_value = ": x4";
                }
                else if (global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 == 0)
                {
                    button_text_value = ": x2";
                }
            }
            else if (button_number == 5)
            {
                if (global.pieces_can_rotate_in_pond_0_is_on_1_is_off == 0)
                {
                    global.pond_rotation_speed_0_is1_1_is2_2_is3 = 0;
                    global.pieces_can_rotate_in_pond_0_is_on_1_is_off = 1;
                }
                else if (global.pond_rotation_speed_0_is1_1_is2_2_is3 == 0)
                {
                    global.pond_rotation_speed_0_is1_1_is2_2_is3 = 1;
                    global.pieces_can_rotate_in_pond_0_is_on_1_is_off = 1;
                }
                else if (global.pond_rotation_speed_0_is1_1_is2_2_is3 == 1)
                {
                    global.pond_rotation_speed_0_is1_1_is2_2_is3 = 2;
                    global.pieces_can_rotate_in_pond_0_is_on_1_is_off = 1;
                }
                else if (global.pond_rotation_speed_0_is1_1_is2_2_is3 == 2)
                {
                    global.pond_rotation_speed_0_is1_1_is2_2_is3 = 0;
                    global.pieces_can_rotate_in_pond_0_is_on_1_is_off = 0;
                }
                audio_play_sound(s_special_button_press, 1, false);
                ini_open("ppu.ini");
                var p0x197p22 = base64_encode(string(global.pond_rotation_speed_0_is1_1_is2_2_is3));
                ini_write_string("save", "p0x197p22", p0x197p22);
                var p0x197p21 = base64_encode(string(global.pieces_can_rotate_in_pond_0_is_on_1_is_off));
                ini_write_string("save", "p0x197p21", p0x197p21);
                ini_close();
                if (global.pieces_can_rotate_in_pond_0_is_on_1_is_off == 0)
                {
                    button_text_value = "OFF";
                }
                else if (global.pond_rotation_speed_0_is1_1_is2_2_is3 == 1)
                {
                    button_text_value = "x2";
                }
                else if (global.pond_rotation_speed_0_is1_1_is2_2_is3 == 2)
                {
                    button_text_value = "x3";
                }
                else
                {
                    button_text_value = "x1";
                }
            }
            else if (button_number == 6)
            {
                if (global.loose_piece_hilight_colour < 6)
                {
                    global.loose_piece_hilight_colour += 1;
                }
                else
                {
                    global.loose_piece_hilight_colour = 0;
                }
                audio_play_sound(s_special_button_press, 1, false);
                ini_open("ppu.ini");
                var p0x197p16 = base64_encode(string(global.loose_piece_hilight_colour));
                ini_write_string("save", "p0x197p16", p0x197p16);
                ini_close();
                if (global.loose_piece_hilight_colour == 1)
                {
                    button_text_value = string(ob_language_controller.level_ui_basic_ops_2a);
                }
                else if (global.loose_piece_hilight_colour == 2)
                {
                    button_text_value = string(ob_language_controller.level_ui_basic_ops_2b);
                }
                else if (global.loose_piece_hilight_colour == 3)
                {
                    button_text_value = string(ob_language_controller.level_ui_basic_ops_2c);
                }
                else if (global.loose_piece_hilight_colour == 4)
                {
                    button_text_value = string(ob_language_controller.level_ui_basic_ops_2d);
                }
                else if (global.loose_piece_hilight_colour == 5)
                {
                    button_text_value = string(ob_language_controller.level_ui_basic_ops_2e);
                }
                else if (global.loose_piece_hilight_colour == 6)
                {
                    button_text_value = string(ob_language_controller.level_ui_basic_ops_2f);
                }
                else if (global.loose_piece_hilight_colour == 0)
                {
                    button_text_value = string(ob_language_controller.level_ui_basic_ops_2g);
                }
            }
            else if (button_number == 7)
            {
                if (global.intro_fade_out_speed_0is3_1is1_2is2_3is4 == 1)
                {
                    global.intro_fade_out_speed_0is3_1is1_2is2_3is4 = 2;
                }
                else if (global.intro_fade_out_speed_0is3_1is1_2is2_3is4 == 2)
                {
                    global.intro_fade_out_speed_0is3_1is1_2is2_3is4 = 0;
                }
                else if (global.intro_fade_out_speed_0is3_1is1_2is2_3is4 == 0)
                {
                    global.intro_fade_out_speed_0is3_1is1_2is2_3is4 = 3;
                }
                else if (global.intro_fade_out_speed_0is3_1is1_2is2_3is4 == 3)
                {
                    global.intro_fade_out_speed_0is3_1is1_2is2_3is4 = 1;
                }
                audio_play_sound(s_special_button_press, 1, false);
                ini_open("ppu.ini");
                var p0x197p24 = base64_encode(string(global.intro_fade_out_speed_0is3_1is1_2is2_3is4));
                ini_write_string("save", "p0x197p24", p0x197p24);
                ini_close();
                if (global.intro_fade_out_speed_0is3_1is1_2is2_3is4 == 1)
                {
                    button_text_value = "x1";
                }
                else if (global.intro_fade_out_speed_0is3_1is1_2is2_3is4 == 2)
                {
                    button_text_value = "x2";
                }
                else if (global.intro_fade_out_speed_0is3_1is1_2is2_3is4 == 3)
                {
                    button_text_value = "x4";
                }
                else if (global.intro_fade_out_speed_0is3_1is1_2is2_3is4 == 0)
                {
                    button_text_value = "x3";
                }
            }
            else if (button_number == 9)
            {
                ob_new_menu_controller.news_pip_x = 160;
                ob_new_menu_controller.news_page_alpha = 0;
                audio_play_sound(s_special_button_press, 1, false);
                if (ob_new_menu_controller.news_pages > 0)
                {
                    ob_new_menu_controller.news_pages -= 1;
                }
                else
                {
                    ob_new_menu_controller.news_pages = ob_new_menu_controller.news_pages_total;
                }
            }
            else if (button_number == 10)
            {
                ob_new_menu_controller.news_pip_x = 160;
                ob_new_menu_controller.news_page_alpha = 0;
                audio_play_sound(s_special_button_press, 1, false);
                if (ob_new_menu_controller.news_pages < ob_new_menu_controller.news_pages_total)
                {
                    ob_new_menu_controller.news_pages += 1;
                }
                else
                {
                    ob_new_menu_controller.news_pages = 0;
                }
            }
        }
        if (mouse_check_button_pressed(mb_right))
        {
            if (button_number == 1)
            {
                if (global.image_can_be_rotated_0_is4_1_is0_2_is8 == 1)
                {
                    global.image_can_be_rotated_0_is4_1_is0_2_is8 = 2;
                }
                else if (global.image_can_be_rotated_0_is4_1_is0_2_is8 == 0)
                {
                    global.image_can_be_rotated_0_is4_1_is0_2_is8 = 1;
                }
                else if (global.image_can_be_rotated_0_is4_1_is0_2_is8 == 2)
                {
                    global.image_can_be_rotated_0_is4_1_is0_2_is8 = 0;
                }
                audio_play_sound(s_special_button_press, 1, false);
                ini_open("ppu.ini");
                var p0x197p20 = base64_encode(string(global.image_can_be_rotated_0_is4_1_is0_2_is8));
                ini_write_string("save", "p0x197p20", p0x197p20);
                ini_close();
                if (global.image_can_be_rotated_0_is4_1_is0_2_is8 == 0)
                {
                    button_text_value = "x4";
                }
                else if (global.image_can_be_rotated_0_is4_1_is0_2_is8 == 1)
                {
                    button_text_value = "OFF";
                }
                else if (global.image_can_be_rotated_0_is4_1_is0_2_is8 == 2)
                {
                    button_text_value = "x8";
                }
            }
            else if (button_number == 2)
            {
                if (global.piece_snap_amount > 0)
                {
                    global.piece_snap_amount -= 1;
                }
                else
                {
                    global.piece_snap_amount = 4;
                }
                audio_play_sound(s_special_button_press, 1, false);
                ini_open("ppu.ini");
                var p0x197p57 = base64_encode(string(global.piece_snap_amount));
                ini_write_string("save", "p0x197p57", p0x197p57);
                ini_close();
                if (global.piece_snap_amount == 1)
                {
                    button_text_value = "x2";
                }
                else if (global.piece_snap_amount == 2)
                {
                    button_text_value = "x3";
                }
                else if (global.piece_snap_amount == 3)
                {
                    button_text_value = "x4";
                }
                else if (global.piece_snap_amount == 4)
                {
                    button_text_value = "x5";
                }
                else if (global.piece_snap_amount == 0)
                {
                    button_text_value = "x1";
                }
            }
            else if (button_number == 3)
            {
                if (global.ui_tip_showing == 0)
                {
                    global.ui_tip_showing = 1;
                }
                else
                {
                    global.ui_tip_showing = 0;
                }
                audio_play_sound(s_special_button_press, 1, false);
                ini_open("ppu.ini");
                var p0x187p651 = base64_encode(string(global.ui_tip_showing));
                ini_write_string("save", "p0x187p651", p0x187p651);
                ini_close();
                if (global.ui_tip_showing == 1)
                {
                    button_text_value = "ON";
                }
                else
                {
                    button_text_value = "OFF";
                }
            }
            else if (button_number == 4)
            {
                if (global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 == 1)
                {
                    global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 = 4;
                }
                else if (global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 == 4)
                {
                    global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 = 3;
                }
                else if (global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 == 3)
                {
                    global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 = 0;
                }
                else if (global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 == 0)
                {
                    global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 = 2;
                }
                else if (global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 == 2)
                {
                    global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 = 1;
                }
                audio_play_sound(s_special_button_press, 1, false);
                ini_open("ppu.ini");
                var p0x197p23 = base64_encode(string(global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5));
                ini_write_string("save", "p0x197p23", p0x197p23);
                ini_close();
                if (global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 == 1)
                {
                    button_text_value = "OFF";
                }
                else if (global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 == 2)
                {
                    button_text_value = ": x1";
                }
                else if (global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 == 3)
                {
                    button_text_value = ": x3";
                }
                else if (global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 == 4)
                {
                    button_text_value = ": x4";
                }
                else if (global.in_pond_movement_speed_0is3_1is1_2is2_3is4_4is5 == 0)
                {
                    button_text_value = ": x2";
                }
            }
            else if (button_number == 5)
            {
                if (global.pieces_can_rotate_in_pond_0_is_on_1_is_off == 0)
                {
                    global.pond_rotation_speed_0_is1_1_is2_2_is3 = 0;
                    global.pieces_can_rotate_in_pond_0_is_on_1_is_off = 1;
                }
                else if (global.pond_rotation_speed_0_is1_1_is2_2_is3 == 0)
                {
                    global.pond_rotation_speed_0_is1_1_is2_2_is3 = 1;
                    global.pieces_can_rotate_in_pond_0_is_on_1_is_off = 1;
                }
                else if (global.pond_rotation_speed_0_is1_1_is2_2_is3 == 1)
                {
                    global.pond_rotation_speed_0_is1_1_is2_2_is3 = 2;
                    global.pieces_can_rotate_in_pond_0_is_on_1_is_off = 1;
                }
                else if (global.pond_rotation_speed_0_is1_1_is2_2_is3 == 2)
                {
                    global.pond_rotation_speed_0_is1_1_is2_2_is3 = 0;
                    global.pieces_can_rotate_in_pond_0_is_on_1_is_off = 0;
                }
                audio_play_sound(s_special_button_press, 1, false);
                ini_open("ppu.ini");
                var p0x197p22 = base64_encode(string(global.pond_rotation_speed_0_is1_1_is2_2_is3));
                ini_write_string("save", "p0x197p22", p0x197p22);
                var p0x197p21 = base64_encode(string(global.pieces_can_rotate_in_pond_0_is_on_1_is_off));
                ini_write_string("save", "p0x197p21", p0x197p21);
                ini_close();
                if (global.pieces_can_rotate_in_pond_0_is_on_1_is_off == 0)
                {
                    button_text_value = "OFF";
                }
                else if (global.pond_rotation_speed_0_is1_1_is2_2_is3 == 1)
                {
                    button_text_value = "x2";
                }
                else if (global.pond_rotation_speed_0_is1_1_is2_2_is3 == 2)
                {
                    button_text_value = "x3";
                }
                else
                {
                    button_text_value = "x1";
                }
            }
            else if (button_number == 6)
            {
                if (global.loose_piece_hilight_colour > 0)
                {
                    global.loose_piece_hilight_colour -= 1;
                }
                else
                {
                    global.loose_piece_hilight_colour = 6;
                }
                audio_play_sound(s_special_button_press, 1, false);
                ini_open("ppu.ini");
                var p0x197p16 = base64_encode(string(global.loose_piece_hilight_colour));
                ini_write_string("save", "p0x197p16", p0x197p16);
                ini_close();
                if (global.loose_piece_hilight_colour == 1)
                {
                    button_text_value = string(ob_language_controller.level_ui_basic_ops_2a);
                }
                else if (global.loose_piece_hilight_colour == 2)
                {
                    button_text_value = string(ob_language_controller.level_ui_basic_ops_2b);
                }
                else if (global.loose_piece_hilight_colour == 3)
                {
                    button_text_value = string(ob_language_controller.level_ui_basic_ops_2c);
                }
                else if (global.loose_piece_hilight_colour == 4)
                {
                    button_text_value = string(ob_language_controller.level_ui_basic_ops_2d);
                }
                else if (global.loose_piece_hilight_colour == 5)
                {
                    button_text_value = string(ob_language_controller.level_ui_basic_ops_2e);
                }
                else if (global.loose_piece_hilight_colour == 6)
                {
                    button_text_value = string(ob_language_controller.level_ui_basic_ops_2f);
                }
                else if (global.loose_piece_hilight_colour == 0)
                {
                    button_text_value = string(ob_language_controller.level_ui_basic_ops_2g);
                }
            }
            else if (button_number == 7)
            {
                if (global.intro_fade_out_speed_0is3_1is1_2is2_3is4 == 3)
                {
                    global.intro_fade_out_speed_0is3_1is1_2is2_3is4 = 0;
                }
                else if (global.intro_fade_out_speed_0is3_1is1_2is2_3is4 == 0)
                {
                    global.intro_fade_out_speed_0is3_1is1_2is2_3is4 = 2;
                }
                else if (global.intro_fade_out_speed_0is3_1is1_2is2_3is4 == 2)
                {
                    global.intro_fade_out_speed_0is3_1is1_2is2_3is4 = 1;
                }
                else if (global.intro_fade_out_speed_0is3_1is1_2is2_3is4 == 1)
                {
                    global.intro_fade_out_speed_0is3_1is1_2is2_3is4 = 3;
                }
                audio_play_sound(s_special_button_press, 1, false);
                ini_open("ppu.ini");
                var p0x197p24 = base64_encode(string(global.intro_fade_out_speed_0is3_1is1_2is2_3is4));
                ini_write_string("save", "p0x197p24", p0x197p24);
                ini_close();
                if (global.intro_fade_out_speed_0is3_1is1_2is2_3is4 == 1)
                {
                    button_text_value = "x1";
                }
                else if (global.intro_fade_out_speed_0is3_1is1_2is2_3is4 == 2)
                {
                    button_text_value = "x2";
                }
                else if (global.intro_fade_out_speed_0is3_1is1_2is2_3is4 == 3)
                {
                    button_text_value = "x4";
                }
                else if (global.intro_fade_out_speed_0is3_1is1_2is2_3is4 == 0)
                {
                    button_text_value = "x3";
                }
            }
        }
    }
}
if (place_meeting(x, y, ob_menu_cursor))
{
    if (mouse_check_button_pressed(mb_left))
    {
        if (global.nm_block_for_intro == 0)
        {
            audio_play_sound(s_special_button_press, 1, false);
            if (button_number == 85 || button_number == 86 || button_number == 87 || button_number == 88 || button_number == 89 || button_number == 90 || button_number == 91 || button_number == 92 || button_number == 93 || button_number == 94)
            {
                if (button_number == 87 || button_number == 88 || button_number == 89 || button_number == 90 || button_number == 91 || button_number == 92 || button_number == 93 || button_number == 94)
                {
                    if (quick_puz_loaded == 1)
                    {
                        if (button_number == 87)
                        {
                            pack_num = global.quick_puz1_pack;
                            puz_num = global.quick_puz1_puz;
                        }
                        else if (button_number == 88)
                        {
                            pack_num = global.quick_puz2_pack;
                            puz_num = global.quick_puz2_puz;
                        }
                        else if (button_number == 89)
                        {
                            pack_num = global.quick_puz3_pack;
                            puz_num = global.quick_puz3_puz;
                        }
                        else if (button_number == 90)
                        {
                            pack_num = global.quick_puz4_pack;
                            puz_num = global.quick_puz4_puz;
                        }
                        else if (button_number == 91)
                        {
                            pack_num = global.quick_puz5_pack;
                            puz_num = global.quick_puz5_puz;
                        }
                        else if (button_number == 92)
                        {
                            pack_num = global.quick_puz6_pack;
                            puz_num = global.quick_puz6_puz;
                        }
                        else if (button_number == 93)
                        {
                            pack_num = global.quick_puz7_pack;
                            puz_num = global.quick_puz7_puz;
                        }
                        else if (button_number == 94)
                        {
                            pack_num = global.quick_puz8_pack;
                            puz_num = global.quick_puz8_puz;
                        }
                    }
                }
                else if (button_number == 85 || button_number == 86)
                {
                    var puz_list = ds_list_create();
                    if (steam_user_owns_dlc(535720))
                    {
                        if (!steam_get_achievement("complete_pack_1"))
                        {
                            ds_list_add(puz_list, 1);
                        }
                    }
                    if (steam_user_owns_dlc(502841))
                    {
                        if (!steam_get_achievement("complete_pack_2"))
                        {
                            ds_list_add(puz_list, 2);
                        }
                    }
                    if (steam_user_owns_dlc(1952658))
                    {
                        if (!steam_get_achievement("complete_pack_3"))
                        {
                            ds_list_add(puz_list, 3);
                        }
                    }
                    if (steam_user_owns_dlc(1952658))
                    {
                        if (!steam_get_achievement("complete_pack_4"))
                        {
                            ds_list_add(puz_list, 4);
                        }
                    }
                    if (steam_user_owns_dlc(509900))
                    {
                        if (!steam_get_achievement("complete_pack_5"))
                        {
                            ds_list_add(puz_list, 5);
                        }
                    }
                    if (steam_user_owns_dlc(1952658))
                    {
                        if (!steam_get_achievement("complete_pack_6"))
                        {
                            ds_list_add(puz_list, 6);
                        }
                    }
                    if (steam_user_owns_dlc(509520))
                    {
                        if (!steam_get_achievement("complete_pack_7"))
                        {
                            ds_list_add(puz_list, 7);
                        }
                    }
                    if (steam_user_owns_dlc(476010))
                    {
                        if (!steam_get_achievement("complete_pack_8"))
                        {
                            ds_list_add(puz_list, 8);
                        }
                    }
                    if (steam_user_owns_dlc(480594))
                    {
                        if (!steam_get_achievement("complete_pack_9"))
                        {
                            ds_list_add(puz_list, 9);
                        }
                    }
                    if (steam_user_owns_dlc(480593))
                    {
                        if (!steam_get_achievement("complete_pack_10"))
                        {
                            ds_list_add(puz_list, 10);
                        }
                    }
                    if (steam_user_owns_dlc(480590))
                    {
                        if (!steam_get_achievement("complete_pack_11"))
                        {
                            ds_list_add(puz_list, 11);
                        }
                    }
                    if (steam_user_owns_dlc(509521))
                    {
                        if (!steam_get_achievement("complete_pack_12"))
                        {
                            ds_list_add(puz_list, 12);
                        }
                    }
                    if (steam_user_owns_dlc(509522))
                    {
                        if (!steam_get_achievement("complete_pack_13"))
                        {
                            ds_list_add(puz_list, 13);
                        }
                    }
                    if (steam_user_owns_dlc(467500))
                    {
                        if (!steam_get_achievement("complete_pack_14"))
                        {
                            ds_list_add(puz_list, 14);
                        }
                    }
                    if (steam_user_owns_dlc(480595))
                    {
                        if (!steam_get_achievement("complete_pack_15"))
                        {
                            ds_list_add(puz_list, 15);
                        }
                    }
                    if (steam_user_owns_dlc(467770))
                    {
                        if (!steam_get_achievement("complete_pack_16"))
                        {
                            ds_list_add(puz_list, 16);
                        }
                    }
                    if (steam_user_owns_dlc(501170))
                    {
                        if (!steam_get_achievement("complete_pack_17"))
                        {
                            ds_list_add(puz_list, 17);
                        }
                    }
                    if (steam_user_owns_dlc(501172))
                    {
                        if (!steam_get_achievement("complete_pack_18"))
                        {
                            ds_list_add(puz_list, 18);
                        }
                    }
                    if (steam_user_owns_dlc(521970))
                    {
                        if (!steam_get_achievement("complete_pack_19"))
                        {
                            ds_list_add(puz_list, 19);
                        }
                    }
                    if (steam_user_owns_dlc(524420))
                    {
                        if (!steam_get_achievement("complete_pack_20"))
                        {
                            ds_list_add(puz_list, 20);
                        }
                    }
                    if (steam_user_owns_dlc(467260))
                    {
                        if (!steam_get_achievement("complete_pack_21"))
                        {
                            ds_list_add(puz_list, 21);
                        }
                    }
                    if (steam_user_owns_dlc(502840))
                    {
                        if (!steam_get_achievement("complete_pack_22"))
                        {
                            ds_list_add(puz_list, 22);
                        }
                    }
                    if (steam_user_owns_dlc(538600))
                    {
                        if (!steam_get_achievement("complete_pack_23"))
                        {
                            ds_list_add(puz_list, 23);
                        }
                    }
                    if (steam_user_owns_dlc(502842))
                    {
                        if (!steam_get_achievement("complete_pack_24"))
                        {
                            ds_list_add(puz_list, 24);
                        }
                    }
                    if (steam_user_owns_dlc(543811))
                    {
                        if (!steam_get_achievement("complete_pack_25"))
                        {
                            ds_list_add(puz_list, 25);
                        }
                    }
                    if (steam_user_owns_dlc(480592))
                    {
                        if (!steam_get_achievement("complete_pack_26"))
                        {
                            ds_list_add(puz_list, 26);
                        }
                    }
                    if (steam_user_owns_dlc(543810))
                    {
                        if (!steam_get_achievement("complete_pack_27"))
                        {
                            ds_list_add(puz_list, 27);
                        }
                    }
                    if (steam_user_owns_dlc(480591))
                    {
                        if (!steam_get_achievement("complete_pack_28"))
                        {
                            ds_list_add(puz_list, 28);
                        }
                    }
                    if (steam_user_owns_dlc(501171))
                    {
                        if (!steam_get_achievement("complete_pack_29"))
                        {
                            ds_list_add(puz_list, 29);
                        }
                    }
                    if (steam_user_owns_dlc(553070))
                    {
                        if (!steam_get_achievement("complete_pack_30"))
                        {
                            ds_list_add(puz_list, 30);
                        }
                    }
                    if (steam_user_owns_dlc(553071))
                    {
                        if (!steam_get_achievement("complete_pack_31"))
                        {
                            ds_list_add(puz_list, 31);
                        }
                    }
                    if (steam_user_owns_dlc(553072))
                    {
                        if (!steam_get_achievement("complete_pack_32"))
                        {
                            ds_list_add(puz_list, 32);
                        }
                    }
                    if (steam_user_owns_dlc(553073))
                    {
                        if (!steam_get_achievement("complete_pack_33"))
                        {
                            ds_list_add(puz_list, 33);
                        }
                    }
                    if (steam_user_owns_dlc(553075))
                    {
                        if (!steam_get_achievement("complete_pack_34"))
                        {
                            ds_list_add(puz_list, 34);
                        }
                    }
                    if (steam_user_owns_dlc(553074))
                    {
                        if (!steam_get_achievement("complete_pack_35"))
                        {
                            ds_list_add(puz_list, 35);
                        }
                    }
                    if (steam_user_owns_dlc(565320))
                    {
                        if (!steam_get_achievement("complete_pack_36"))
                        {
                            ds_list_add(puz_list, 36);
                        }
                    }
                    if (steam_user_owns_dlc(565321))
                    {
                        if (!steam_get_achievement("complete_pack_37"))
                        {
                            ds_list_add(puz_list, 37);
                        }
                    }
                    if (steam_user_owns_dlc(577402))
                    {
                        if (!steam_get_achievement("complete_pack_38"))
                        {
                            ds_list_add(puz_list, 38);
                        }
                    }
                    if (steam_user_owns_dlc(577405))
                    {
                        if (!steam_get_achievement("complete_pack_39"))
                        {
                            ds_list_add(puz_list, 39);
                        }
                    }
                    if (steam_user_owns_dlc(577403))
                    {
                        if (!steam_get_achievement("complete_pack_40"))
                        {
                            ds_list_add(puz_list, 40);
                        }
                    }
                    if (steam_user_owns_dlc(565322))
                    {
                        if (!steam_get_achievement("complete_pack_41"))
                        {
                            ds_list_add(puz_list, 41);
                        }
                    }
                    if (steam_user_owns_dlc(565324))
                    {
                        if (!steam_get_achievement("complete_pack_42"))
                        {
                            ds_list_add(puz_list, 42);
                        }
                    }
                    if (steam_user_owns_dlc(569400))
                    {
                        if (!steam_get_achievement("complete_pack_43"))
                        {
                            ds_list_add(puz_list, 43);
                        }
                    }
                    if (steam_user_owns_dlc(565323))
                    {
                        if (!steam_get_achievement("complete_pack_44"))
                        {
                            ds_list_add(puz_list, 44);
                        }
                    }
                    if (steam_user_owns_dlc(574990))
                    {
                        if (!steam_get_achievement("complete_pack_45"))
                        {
                            ds_list_add(puz_list, 45);
                        }
                    }
                    if (steam_user_owns_dlc(577310))
                    {
                        if (!steam_get_achievement("complete_pack_46"))
                        {
                            ds_list_add(puz_list, 46);
                        }
                    }
                    if (steam_user_owns_dlc(577311))
                    {
                        if (!steam_get_achievement("complete_pack_47"))
                        {
                            ds_list_add(puz_list, 47);
                        }
                    }
                    if (steam_user_owns_dlc(577312))
                    {
                        if (!steam_get_achievement("complete_pack_48"))
                        {
                            ds_list_add(puz_list, 48);
                        }
                    }
                    if (steam_user_owns_dlc(577400))
                    {
                        if (!steam_get_achievement("complete_pack_49"))
                        {
                            ds_list_add(puz_list, 49);
                        }
                    }
                    if (steam_user_owns_dlc(577401))
                    {
                        if (!steam_get_achievement("complete_pack_50"))
                        {
                            ds_list_add(puz_list, 50);
                        }
                    }
                    if (steam_user_owns_dlc(589650))
                    {
                        if (!steam_get_achievement("complete_pack_52"))
                        {
                            ds_list_add(puz_list, 52);
                        }
                    }
                    if (steam_user_owns_dlc(589651))
                    {
                        if (!steam_get_achievement("complete_pack_53"))
                        {
                            ds_list_add(puz_list, 53);
                        }
                    }
                    if (steam_user_owns_dlc(577404))
                    {
                        if (!steam_get_achievement("complete_pack_54"))
                        {
                            ds_list_add(puz_list, 54);
                        }
                    }
                    if (steam_user_owns_dlc(591490))
                    {
                        if (!steam_get_achievement("complete_pack_55"))
                        {
                            ds_list_add(puz_list, 55);
                        }
                    }
                    if (steam_user_owns_dlc(591492))
                    {
                        if (!steam_get_achievement("complete_pack_56"))
                        {
                            ds_list_add(puz_list, 56);
                        }
                    }
                    if (steam_user_owns_dlc(591491))
                    {
                        if (!steam_get_achievement("complete_pack_57"))
                        {
                            ds_list_add(puz_list, 57);
                        }
                    }
                    if (steam_user_owns_dlc(591493))
                    {
                        if (!steam_get_achievement("complete_pack_58"))
                        {
                            ds_list_add(puz_list, 58);
                        }
                    }
                    if (steam_user_owns_dlc(591494))
                    {
                        if (!steam_get_achievement("complete_pack_59"))
                        {
                            ds_list_add(puz_list, 59);
                        }
                    }
                    if (steam_user_owns_dlc(591495))
                    {
                        if (!steam_get_achievement("complete_pack_60"))
                        {
                            ds_list_add(puz_list, 60);
                        }
                    }
                    if (steam_user_owns_dlc(591497))
                    {
                        if (!steam_get_achievement("complete_pack_61"))
                        {
                            ds_list_add(puz_list, 61);
                        }
                    }
                    if (steam_user_owns_dlc(591496))
                    {
                        if (!steam_get_achievement("complete_pack_62"))
                        {
                            ds_list_add(puz_list, 62);
                        }
                    }
                    if (steam_user_owns_dlc(591498))
                    {
                        if (!steam_get_achievement("complete_pack_63"))
                        {
                            ds_list_add(puz_list, 63);
                        }
                    }
                    if (steam_user_owns_dlc(591499))
                    {
                        if (!steam_get_achievement("complete_pack_64"))
                        {
                            ds_list_add(puz_list, 64);
                        }
                    }
                    if (steam_user_owns_dlc(591500))
                    {
                        if (!steam_get_achievement("complete_pack_65"))
                        {
                            ds_list_add(puz_list, 65);
                        }
                    }
                    if (steam_user_owns_dlc(591501))
                    {
                        if (!steam_get_achievement("complete_pack_66"))
                        {
                            ds_list_add(puz_list, 66);
                        }
                    }
                    if (steam_user_owns_dlc(591502))
                    {
                        if (!steam_get_achievement("complete_pack_67"))
                        {
                            ds_list_add(puz_list, 67);
                        }
                    }
                    if (steam_user_owns_dlc(591503))
                    {
                        if (!steam_get_achievement("complete_pack_68"))
                        {
                            ds_list_add(puz_list, 68);
                        }
                    }
                    if (steam_user_owns_dlc(591509))
                    {
                        if (!steam_get_achievement("complete_pack_69"))
                        {
                            ds_list_add(puz_list, 69);
                        }
                    }
                    if (steam_user_owns_dlc(591506))
                    {
                        if (!steam_get_achievement("complete_pack_70"))
                        {
                            ds_list_add(puz_list, 70);
                        }
                    }
                    if (steam_user_owns_dlc(591507))
                    {
                        if (!steam_get_achievement("complete_pack_71"))
                        {
                            ds_list_add(puz_list, 71);
                        }
                    }
                    if (steam_user_owns_dlc(591508))
                    {
                        if (!steam_get_achievement("complete_pack_72"))
                        {
                            ds_list_add(puz_list, 72);
                        }
                    }
                    if (steam_user_owns_dlc(591504))
                    {
                        if (!steam_get_achievement("complete_pack_73"))
                        {
                            ds_list_add(puz_list, 73);
                        }
                    }
                    if (steam_user_owns_dlc(591505))
                    {
                        if (!steam_get_achievement("complete_pack_74"))
                        {
                            ds_list_add(puz_list, 74);
                        }
                    }
                    if (steam_user_owns_dlc(734862))
                    {
                        if (!steam_get_achievement("complete_pack_76"))
                        {
                            ds_list_add(puz_list, 76);
                        }
                    }
                    if (steam_user_owns_dlc(734866))
                    {
                        if (!steam_get_achievement("complete_pack_77"))
                        {
                            ds_list_add(puz_list, 77);
                        }
                    }
                    if (steam_user_owns_dlc(734865))
                    {
                        if (!steam_get_achievement("complete_pack_78"))
                        {
                            ds_list_add(puz_list, 78);
                        }
                    }
                    if (steam_user_owns_dlc(734864))
                    {
                        if (!steam_get_achievement("complete_pack_79"))
                        {
                            ds_list_add(puz_list, 79);
                        }
                    }
                    if (steam_user_owns_dlc(734863))
                    {
                        if (!steam_get_achievement("complete_pack_80"))
                        {
                            ds_list_add(puz_list, 80);
                        }
                    }
                    if (steam_user_owns_dlc(734860))
                    {
                        if (!steam_get_achievement("complete_pack_81"))
                        {
                            ds_list_add(puz_list, 81);
                        }
                    }
                    if (steam_user_owns_dlc(734861))
                    {
                        if (!steam_get_achievement("complete_pack_82"))
                        {
                            ds_list_add(puz_list, 82);
                        }
                    }
                    if (steam_user_owns_dlc(734867))
                    {
                        if (!steam_get_achievement("complete_pack_83"))
                        {
                            ds_list_add(puz_list, 83);
                        }
                    }
                    if (steam_user_owns_dlc(957910))
                    {
                        if (!steam_get_achievement("complete_pack_84"))
                        {
                            ds_list_add(puz_list, 84);
                        }
                    }
                    if (steam_user_owns_dlc(734868))
                    {
                        if (!steam_get_achievement("complete_pack_85"))
                        {
                            ds_list_add(puz_list, 85);
                        }
                    }
                    if (steam_user_owns_dlc(957901))
                    {
                        if (!steam_get_achievement("complete_pack_86"))
                        {
                            ds_list_add(puz_list, 86);
                        }
                    }
                    if (steam_user_owns_dlc(734869))
                    {
                        if (!steam_get_achievement("complete_pack_87"))
                        {
                            ds_list_add(puz_list, 87);
                        }
                    }
                    if (steam_user_owns_dlc(957912))
                    {
                        if (!steam_get_achievement("complete_pack_88"))
                        {
                            ds_list_add(puz_list, 88);
                        }
                    }
                    if (steam_user_owns_dlc(957911))
                    {
                        if (!steam_get_achievement("complete_pack_89"))
                        {
                            ds_list_add(puz_list, 89);
                        }
                    }
                    if (steam_user_owns_dlc(957914))
                    {
                        if (!steam_get_achievement("complete_pack_90"))
                        {
                            ds_list_add(puz_list, 90);
                        }
                    }
                    if (steam_user_owns_dlc(957916))
                    {
                        if (!steam_get_achievement("complete_pack_91"))
                        {
                            ds_list_add(puz_list, 91);
                        }
                    }
                    if (steam_user_owns_dlc(957917))
                    {
                        if (!steam_get_achievement("complete_pack_92"))
                        {
                            ds_list_add(puz_list, 92);
                        }
                    }
                    if (steam_user_owns_dlc(957915))
                    {
                        if (!steam_get_achievement("complete_pack_93"))
                        {
                            ds_list_add(puz_list, 93);
                        }
                    }
                    if (steam_user_owns_dlc(957902))
                    {
                        if (!steam_get_achievement("complete_pack_94"))
                        {
                            ds_list_add(puz_list, 94);
                        }
                    }
                    if (steam_user_owns_dlc(957903))
                    {
                        if (!steam_get_achievement("complete_pack_95"))
                        {
                            ds_list_add(puz_list, 95);
                        }
                    }
                    if (steam_user_owns_dlc(957904))
                    {
                        if (!steam_get_achievement("complete_pack_96"))
                        {
                            ds_list_add(puz_list, 96);
                        }
                    }
                    if (steam_user_owns_dlc(957905))
                    {
                        if (!steam_get_achievement("complete_pack_97"))
                        {
                            ds_list_add(puz_list, 97);
                        }
                    }
                    if (steam_user_owns_dlc(957906))
                    {
                        if (!steam_get_achievement("complete_pack_98"))
                        {
                            ds_list_add(puz_list, 98);
                        }
                    }
                    if (steam_user_owns_dlc(957900))
                    {
                        if (!steam_get_achievement("complete_pack_99"))
                        {
                            ds_list_add(puz_list, 99);
                        }
                    }
                    if (steam_user_owns_dlc(1088499))
                    {
                        if (!steam_get_achievement("complete_pack_100"))
                        {
                            ds_list_add(puz_list, 100);
                        }
                    }
                    if (steam_user_owns_dlc(1088496))
                    {
                        if (!steam_get_achievement("complete_pack_101"))
                        {
                            ds_list_add(puz_list, 101);
                        }
                    }
                    if (steam_user_owns_dlc(1088488))
                    {
                        if (!steam_get_achievement("complete_pack_102"))
                        {
                            ds_list_add(puz_list, 102);
                        }
                    }
                    if (steam_user_owns_dlc(1088490))
                    {
                        if (!steam_get_achievement("complete_pack_103"))
                        {
                            ds_list_add(puz_list, 103);
                        }
                    }
                    if (steam_user_owns_dlc(1088498))
                    {
                        if (!steam_get_achievement("complete_pack_104"))
                        {
                            ds_list_add(puz_list, 104);
                        }
                    }
                    if (steam_user_owns_dlc(1088493))
                    {
                        if (!steam_get_achievement("complete_pack_105"))
                        {
                            ds_list_add(puz_list, 105);
                        }
                    }
                    if (steam_user_owns_dlc(1088487))
                    {
                        if (!steam_get_achievement("complete_pack_106"))
                        {
                            ds_list_add(puz_list, 106);
                        }
                    }
                    if (steam_user_owns_dlc(1088482))
                    {
                        if (!steam_get_achievement("complete_pack_107"))
                        {
                            ds_list_add(puz_list, 107);
                        }
                    }
                    if (steam_user_owns_dlc(957919))
                    {
                        if (!steam_get_achievement("complete_pack_108"))
                        {
                            ds_list_add(puz_list, 108);
                        }
                    }
                    if (steam_user_owns_dlc(1088489))
                    {
                        if (!steam_get_achievement("complete_pack_109"))
                        {
                            ds_list_add(puz_list, 109);
                        }
                    }
                    if (steam_user_owns_dlc(1088491))
                    {
                        if (!steam_get_achievement("complete_pack_110"))
                        {
                            ds_list_add(puz_list, 110);
                        }
                    }
                    if (steam_user_owns_dlc(1088492))
                    {
                        if (!steam_get_achievement("complete_pack_111"))
                        {
                            ds_list_add(puz_list, 111);
                        }
                    }
                    if (steam_user_owns_dlc(957913))
                    {
                        if (!steam_get_achievement("complete_pack_112"))
                        {
                            ds_list_add(puz_list, 112);
                        }
                    }
                    if (steam_user_owns_dlc(957918))
                    {
                        if (!steam_get_achievement("complete_pack_113"))
                        {
                            ds_list_add(puz_list, 113);
                        }
                    }
                    if (steam_user_owns_dlc(1088497))
                    {
                        if (!steam_get_achievement("complete_pack_114"))
                        {
                            ds_list_add(puz_list, 114);
                        }
                    }
                    if (steam_user_owns_dlc(1088483))
                    {
                        if (!steam_get_achievement("complete_pack_115"))
                        {
                            ds_list_add(puz_list, 115);
                        }
                    }
                    if (steam_user_owns_dlc(1088484))
                    {
                        if (!steam_get_achievement("complete_pack_116"))
                        {
                            ds_list_add(puz_list, 116);
                        }
                    }
                    if (steam_user_owns_dlc(1088495))
                    {
                        if (!steam_get_achievement("complete_pack_117"))
                        {
                            ds_list_add(puz_list, 117);
                        }
                    }
                    if (steam_user_owns_dlc(1088481))
                    {
                        if (!steam_get_achievement("complete_pack_118"))
                        {
                            ds_list_add(puz_list, 118);
                        }
                    }
                    if (steam_user_owns_dlc(957922))
                    {
                        if (!steam_get_achievement("complete_pack_19"))
                        {
                            ds_list_add(puz_list, 119);
                        }
                    }
                    if (steam_user_owns_dlc(957920))
                    {
                        if (!steam_get_achievement("complete_pack_120"))
                        {
                            ds_list_add(puz_list, 120);
                        }
                    }
                    if (steam_user_owns_dlc(1088494))
                    {
                        if (!steam_get_achievement("complete_pack_121"))
                        {
                            ds_list_add(puz_list, 121);
                        }
                    }
                    if (steam_user_owns_dlc(957921))
                    {
                        if (!steam_get_achievement("complete_pack_122"))
                        {
                            ds_list_add(puz_list, 122);
                        }
                    }
                    if (steam_user_owns_dlc(1088486))
                    {
                        if (!steam_get_achievement("complete_pack_123"))
                        {
                            ds_list_add(puz_list, 123);
                        }
                    }
                    if (steam_user_owns_dlc(1088485))
                    {
                        if (!steam_get_achievement("complete_pack_124"))
                        {
                            ds_list_add(puz_list, 124);
                        }
                    }
                    if (steam_user_owns_dlc(1088480))
                    {
                        if (!steam_get_achievement("complete_pack_125"))
                        {
                            ds_list_add(puz_list, 125);
                        }
                    }
                    if (steam_user_owns_dlc(1952658))
                    {
                        if (!steam_get_achievement("complete_pack_127"))
                        {
                            ds_list_add(puz_list, 127);
                        }
                    }
                    if (steam_user_owns_dlc(1630722))
                    {
                        if (!steam_get_achievement("complete_pack_128"))
                        {
                            ds_list_add(puz_list, 128);
                        }
                    }
                    if (steam_user_owns_dlc(1630735))
                    {
                        if (!steam_get_achievement("complete_pack_129"))
                        {
                            ds_list_add(puz_list, 129);
                        }
                    }
                    if (steam_user_owns_dlc(1630728))
                    {
                        if (!steam_get_achievement("complete_pack_130"))
                        {
                            ds_list_add(puz_list, 130);
                        }
                    }
                    if (steam_user_owns_dlc(1630729))
                    {
                        if (!steam_get_achievement("complete_pack_131"))
                        {
                            ds_list_add(puz_list, 131);
                        }
                    }
                    if (steam_user_owns_dlc(1630720))
                    {
                        if (!steam_get_achievement("complete_pack_132"))
                        {
                            ds_list_add(puz_list, 132);
                        }
                    }
                    if (steam_user_owns_dlc(1630723))
                    {
                        if (!steam_get_achievement("complete_pack_133"))
                        {
                            ds_list_add(puz_list, 133);
                        }
                    }
                    if (steam_user_owns_dlc(1630724))
                    {
                        if (!steam_get_achievement("complete_pack_134"))
                        {
                            ds_list_add(puz_list, 134);
                        }
                    }
                    if (steam_user_owns_dlc(1630721))
                    {
                        if (!steam_get_achievement("complete_pack_135"))
                        {
                            ds_list_add(puz_list, 135);
                        }
                    }
                    if (steam_user_owns_dlc(1952647))
                    {
                        if (!steam_get_achievement("complete_pack_136"))
                        {
                            ds_list_add(puz_list, 136);
                        }
                    }
                    if (steam_user_owns_dlc(1630736))
                    {
                        if (!steam_get_achievement("complete_pack_140"))
                        {
                            ds_list_add(puz_list, 140);
                        }
                    }
                    if (steam_user_owns_dlc(1630734))
                    {
                        if (!steam_get_achievement("complete_pack_141"))
                        {
                            ds_list_add(puz_list, 141);
                        }
                    }
                    if (steam_user_owns_dlc(1630733))
                    {
                        if (!steam_get_achievement("complete_pack_142"))
                        {
                            ds_list_add(puz_list, 142);
                        }
                    }
                    if (steam_user_owns_dlc(1630732))
                    {
                        if (!steam_get_achievement("complete_pack_143"))
                        {
                            ds_list_add(puz_list, 143);
                        }
                    }
                    if (steam_user_owns_dlc(1630727))
                    {
                        if (!steam_get_achievement("complete_pack_144"))
                        {
                            ds_list_add(puz_list, 144);
                        }
                    }
                    if (steam_user_owns_dlc(1630726))
                    {
                        if (!steam_get_achievement("complete_pack_145"))
                        {
                            ds_list_add(puz_list, 145);
                        }
                    }
                    if (steam_user_owns_dlc(1630738))
                    {
                        if (!steam_get_achievement("complete_pack_146"))
                        {
                            ds_list_add(puz_list, 146);
                        }
                    }
                    if (steam_user_owns_dlc(1630730))
                    {
                        if (!steam_get_achievement("complete_pack_147"))
                        {
                            ds_list_add(puz_list, 147);
                        }
                    }
                    if (steam_user_owns_dlc(1952651))
                    {
                        if (!steam_get_achievement("complete_pack_150"))
                        {
                            ds_list_add(puz_list, 150);
                        }
                    }
                    if (steam_user_owns_dlc(1952657))
                    {
                        if (!steam_get_achievement("complete_pack_154"))
                        {
                            ds_list_add(puz_list, 154);
                        }
                    }
                    if (steam_user_owns_dlc(1952641))
                    {
                        if (!steam_get_achievement("complete_pack_153"))
                        {
                            ds_list_add(puz_list, 153);
                        }
                    }
                    if (steam_user_owns_dlc(1952642))
                    {
                        if (!steam_get_achievement("complete_pack_155"))
                        {
                            ds_list_add(puz_list, 155);
                        }
                    }
                    if (steam_user_owns_dlc(1952656))
                    {
                        if (!steam_get_achievement("complete_pack_169"))
                        {
                            ds_list_add(puz_list, 169);
                        }
                    }
                    if (steam_user_owns_dlc(1952640))
                    {
                        if (!steam_get_achievement("complete_pack_137"))
                        {
                            ds_list_add(puz_list, 137);
                        }
                    }
                    if (steam_user_owns_dlc(1952655))
                    {
                        if (!steam_get_achievement("complete_pack_167"))
                        {
                            ds_list_add(puz_list, 167);
                        }
                    }
                    if (steam_user_owns_dlc(1952653))
                    {
                        if (!steam_get_achievement("complete_pack_161"))
                        {
                            ds_list_add(puz_list, 161);
                        }
                    }
                    if (steam_user_owns_dlc(1952648))
                    {
                        if (!steam_get_achievement("complete_pack_138"))
                        {
                            ds_list_add(puz_list, 138);
                        }
                    }
                    if (steam_user_owns_dlc(1952654))
                    {
                        if (!steam_get_achievement("complete_pack_148"))
                        {
                            ds_list_add(puz_list, 148);
                        }
                    }
                    if (steam_user_owns_dlc(1952650))
                    {
                        if (!steam_get_achievement("complete_pack_149"))
                        {
                            ds_list_add(puz_list, 149);
                        }
                    }
                    if (steam_user_owns_dlc(1952652))
                    {
                        if (!steam_get_achievement("complete_pack_160"))
                        {
                            ds_list_add(puz_list, 160);
                        }
                    }
                    if (steam_user_owns_dlc(1630739))
                    {
                        if (!steam_get_achievement("complete_pack_139"))
                        {
                            ds_list_add(puz_list, 139);
                        }
                    }
                    if (steam_user_owns_dlc(1952644))
                    {
                        if (!steam_get_achievement("complete_pack_156"))
                        {
                            ds_list_add(puz_list, 156);
                        }
                    }
                    if (steam_user_owns_dlc(1952646))
                    {
                        if (!steam_get_achievement("complete_pack_162"))
                        {
                            ds_list_add(puz_list, 162);
                        }
                    }
                    ds_list_shuffle(puz_list);
                    pack_num = ds_list_find_value(puz_list, 0);
                    ds_list_destroy(puz_list);
                    var pack_qnt = 0;
                    if (pack_num == 1)
                    {
                        pack_qnt = 5;
                    }
                    if (pack_num == 2)
                    {
                        pack_qnt = 4;
                    }
                    if (pack_num == 3)
                    {
                        pack_qnt = 4;
                    }
                    if (pack_num == 4)
                    {
                        pack_qnt = 4;
                    }
                    if (pack_num == 5)
                    {
                        pack_qnt = 6;
                    }
                    if (pack_num == 6)
                    {
                        pack_qnt = 4;
                    }
                    if (pack_num == 7)
                    {
                        pack_qnt = 3;
                    }
                    if (pack_num == 8)
                    {
                        pack_qnt = 9;
                    }
                    if (pack_num == 9)
                    {
                        pack_qnt = 7;
                    }
                    if (pack_num == 10)
                    {
                        pack_qnt = 6;
                    }
                    if (pack_num == 11)
                    {
                        pack_qnt = 5;
                    }
                    if (pack_num == 12)
                    {
                        pack_qnt = 7;
                    }
                    if (pack_num == 13)
                    {
                        pack_qnt = 7;
                    }
                    if (pack_num == 14)
                    {
                        pack_qnt = 7;
                    }
                    if (pack_num == 15)
                    {
                        pack_qnt = 5;
                    }
                    if (pack_num == 16)
                    {
                        pack_qnt = 5;
                    }
                    if (pack_num == 18)
                    {
                        pack_qnt = 5;
                    }
                    if (pack_num == 19)
                    {
                        pack_qnt = 1;
                    }
                    if (pack_num == 20)
                    {
                        pack_qnt = 1;
                    }
                    if (pack_num == 21)
                    {
                        pack_qnt = 6;
                    }
                    if (pack_num == 22)
                    {
                        pack_qnt = 2;
                    }
                    if (pack_num == 23)
                    {
                        pack_qnt = 15;
                    }
                    if (pack_num == 24)
                    {
                        pack_qnt = 7;
                    }
                    if (pack_num == 25)
                    {
                        pack_qnt = 5;
                    }
                    if (pack_num == 26)
                    {
                        pack_qnt = 8;
                    }
                    if (pack_num == 27)
                    {
                        pack_qnt = 6;
                    }
                    if (pack_num == 28)
                    {
                        pack_qnt = 5;
                    }
                    if (pack_num == 29)
                    {
                        pack_qnt = 1;
                    }
                    if (pack_num == 30)
                    {
                        pack_qnt = 9;
                    }
                    if (pack_num == 31)
                    {
                        pack_qnt = 10;
                    }
                    if (pack_num == 32)
                    {
                        pack_qnt = 11;
                    }
                    if (pack_num == 33)
                    {
                        pack_qnt = 8;
                    }
                    if (pack_num == 34)
                    {
                        pack_qnt = 6;
                    }
                    if (pack_num == 35)
                    {
                        pack_qnt = 6;
                    }
                    if (pack_num == 36)
                    {
                        pack_qnt = 12;
                    }
                    if (pack_num == 37)
                    {
                        pack_qnt = 15;
                    }
                    if (pack_num == 38)
                    {
                        pack_qnt = 25;
                    }
                    if (pack_num == 39)
                    {
                        pack_qnt = 25;
                    }
                    if (pack_num == 40)
                    {
                        pack_qnt = 25;
                    }
                    if (pack_num == 41)
                    {
                        pack_qnt = 21;
                    }
                    if (pack_num == 42)
                    {
                        pack_qnt = 2;
                    }
                    if (pack_num == 44)
                    {
                        pack_qnt = 6;
                    }
                    if (pack_num == 46)
                    {
                        pack_qnt = 4;
                    }
                    if (pack_num == 47)
                    {
                        pack_qnt = 6;
                    }
                    if (pack_num == 48)
                    {
                        pack_qnt = 10;
                    }
                    if (pack_num == 49)
                    {
                        pack_qnt = 22;
                    }
                    if (pack_num == 50)
                    {
                        pack_qnt = 19;
                    }
                    if (pack_num == 52)
                    {
                        pack_qnt = 12;
                    }
                    if (pack_num == 53)
                    {
                        pack_qnt = 15;
                    }
                    if (pack_num == 54)
                    {
                        pack_qnt = 25;
                    }
                    if (pack_num == 55)
                    {
                        pack_qnt = 7;
                    }
                    if (pack_num == 56)
                    {
                        pack_qnt = 6;
                    }
                    if (pack_num == 57)
                    {
                        pack_qnt = 6;
                    }
                    if (pack_num == 58)
                    {
                        pack_qnt = 8;
                    }
                    if (pack_num == 59)
                    {
                        pack_qnt = 13;
                    }
                    if (pack_num == 60)
                    {
                        pack_qnt = 8;
                    }
                    if (pack_num == 61)
                    {
                        pack_qnt = 14;
                    }
                    if (pack_num == 62)
                    {
                        pack_qnt = 8;
                    }
                    if (pack_num == 63)
                    {
                        pack_qnt = 6;
                    }
                    if (pack_num == 64)
                    {
                        pack_qnt = 1;
                    }
                    if (pack_num == 65)
                    {
                        pack_qnt = 7;
                    }
                    if (pack_num == 66)
                    {
                        pack_qnt = 18;
                    }
                    if (pack_num == 67)
                    {
                        pack_qnt = 17;
                    }
                    if (pack_num == 68)
                    {
                        pack_qnt = 9;
                    }
                    if (pack_num == 69)
                    {
                        pack_qnt = 16;
                    }
                    if (pack_num == 70)
                    {
                        pack_qnt = 25;
                    }
                    if (pack_num == 71)
                    {
                        pack_qnt = 12;
                    }
                    if (pack_num == 72)
                    {
                        pack_qnt = 13;
                    }
                    if (pack_num == 73)
                    {
                        pack_qnt = 14;
                    }
                    if (pack_num == 74)
                    {
                        pack_qnt = 25;
                    }
                    if (pack_num == 76)
                    {
                        pack_qnt = 25;
                    }
                    if (pack_num == 77)
                    {
                        pack_qnt = 19;
                    }
                    if (pack_num == 78)
                    {
                        pack_qnt = 12;
                    }
                    if (pack_num == 79)
                    {
                        pack_qnt = 14;
                    }
                    if (pack_num == 80)
                    {
                        pack_qnt = 14;
                    }
                    if (pack_num == 81)
                    {
                        pack_qnt = 11;
                    }
                    if (pack_num == 82)
                    {
                        pack_qnt = 18;
                    }
                    if (pack_num == 83)
                    {
                        pack_qnt = 20;
                    }
                    if (pack_num == 84)
                    {
                        pack_qnt = 22;
                    }
                    if (pack_num == 85)
                    {
                        pack_qnt = 25;
                    }
                    if (pack_num == 86)
                    {
                        pack_qnt = 16;
                    }
                    if (pack_num == 87)
                    {
                        pack_qnt = 25;
                    }
                    if (pack_num == 88)
                    {
                        pack_qnt = 17;
                    }
                    if (pack_num == 89)
                    {
                        pack_qnt = 19;
                    }
                    if (pack_num == 90)
                    {
                        pack_qnt = 20;
                    }
                    if (pack_num == 91)
                    {
                        pack_qnt = 15;
                    }
                    if (pack_num == 92)
                    {
                        pack_qnt = 13;
                    }
                    if (pack_num == 93)
                    {
                        pack_qnt = 23;
                    }
                    if (pack_num == 94)
                    {
                        pack_qnt = 25;
                    }
                    if (pack_num == 95)
                    {
                        pack_qnt = 25;
                    }
                    if (pack_num == 96)
                    {
                        pack_qnt = 25;
                    }
                    if (pack_num == 97)
                    {
                        pack_qnt = 25;
                    }
                    if (pack_num == 98)
                    {
                        pack_qnt = 25;
                    }
                    if (pack_num == 99)
                    {
                        pack_qnt = 25;
                    }
                    if (pack_num == 100)
                    {
                        pack_qnt = 25;
                    }
                    if (pack_num == 101)
                    {
                        pack_qnt = 17;
                    }
                    if (pack_num == 102)
                    {
                        pack_qnt = 15;
                    }
                    if (pack_num == 103)
                    {
                        pack_qnt = 18;
                    }
                    if (pack_num == 104)
                    {
                        pack_qnt = 12;
                    }
                    if (pack_num == 105)
                    {
                        pack_qnt = 12;
                    }
                    if (pack_num == 106)
                    {
                        pack_qnt = 18;
                    }
                    if (pack_num == 108)
                    {
                        pack_qnt = 25;
                    }
                    if (pack_num == 109)
                    {
                        pack_qnt = 7;
                    }
                    if (pack_num == 110)
                    {
                        pack_qnt = 25;
                    }
                    if (pack_num == 111)
                    {
                        pack_qnt = 25;
                    }
                    if (pack_num == 112)
                    {
                        pack_qnt = 6;
                    }
                    if (pack_num == 113)
                    {
                        pack_qnt = 8;
                    }
                    if (pack_num == 114)
                    {
                        pack_qnt = 25;
                    }
                    if (pack_num == 115)
                    {
                        pack_qnt = 16;
                    }
                    if (pack_num == 155)
                    {
                        pack_qnt = 11;
                    }
                    if (pack_num == 116)
                    {
                        pack_qnt = 25;
                    }
                    if (pack_num == 117)
                    {
                        pack_qnt = 25;
                    }
                    if (pack_num == 118)
                    {
                        pack_qnt = 10;
                    }
                    if (pack_num == 119)
                    {
                        pack_qnt = 25;
                    }
                    if (pack_num == 120)
                    {
                        pack_qnt = 16;
                    }
                    if (pack_num == 121)
                    {
                        pack_qnt = 25;
                    }
                    if (pack_num == 122)
                    {
                        pack_qnt = 19;
                    }
                    if (pack_num == 123)
                    {
                        pack_qnt = 14;
                    }
                    if (pack_num == 124)
                    {
                        pack_qnt = 6;
                    }
                    if (pack_num == 125)
                    {
                        pack_qnt = 25;
                    }
                    if (pack_num == 128)
                    {
                        pack_qnt = 25;
                    }
                    if (pack_num == 129)
                    {
                        pack_qnt = 15;
                    }
                    if (pack_num == 130)
                    {
                        pack_qnt = 25;
                    }
                    if (pack_num == 131)
                    {
                        pack_qnt = 11;
                    }
                    if (pack_num == 132)
                    {
                        pack_qnt = 25;
                    }
                    if (pack_num == 133)
                    {
                        pack_qnt = 25;
                    }
                    if (pack_num == 134)
                    {
                        pack_qnt = 16;
                    }
                    if (pack_num == 135)
                    {
                        pack_qnt = 25;
                    }
                    if (pack_num == 136)
                    {
                        pack_qnt = 25;
                    }
                    if (pack_num == 137)
                    {
                        pack_qnt = 25;
                    }
                    if (pack_num == 140)
                    {
                        pack_qnt = 10;
                    }
                    if (pack_num == 141)
                    {
                        pack_qnt = 15;
                    }
                    if (pack_num == 142)
                    {
                        pack_qnt = 18;
                    }
                    if (pack_num == 143)
                    {
                        pack_qnt = 18;
                    }
                    if (pack_num == 145)
                    {
                        pack_qnt = 25;
                    }
                    if (pack_num == 146)
                    {
                        pack_qnt = 10;
                    }
                    if (pack_num == 147)
                    {
                        pack_qnt = 12;
                    }
                    if (pack_num == 150)
                    {
                        pack_qnt = 24;
                    }
                    if (pack_num == 17)
                    {
                        pack_qnt = 1;
                    }
                    if (pack_num == 43)
                    {
                        pack_qnt = 5;
                    }
                    if (pack_num == 45)
                    {
                        pack_qnt = 9;
                    }
                    if (pack_num == 153)
                    {
                        pack_qnt = 13;
                    }
                    if (pack_num == 161)
                    {
                        pack_qnt = 13;
                    }
                    if (pack_num == 107)
                    {
                        pack_qnt = 7;
                    }
                    if (pack_num == 144)
                    {
                        pack_qnt = 6;
                    }
                    if (pack_num == 127)
                    {
                        pack_qnt = 4;
                    }
                    if (pack_num == 154)
                    {
                        pack_qnt = 20;
                    }
                    if (pack_num == 167)
                    {
                        pack_qnt = 14;
                    }
                    if (pack_num == 169)
                    {
                        pack_qnt = 17;
                    }
                    if (pack_num == 138)
                    {
                        pack_qnt = 25;
                    }
                    if (pack_num == 148)
                    {
                        pack_qnt = 16;
                    }
                    if (pack_num == 149)
                    {
                        pack_qnt = 13;
                    }
                    if (pack_num == 160)
                    {
                        pack_qnt = 9;
                    }
                    if (pack_num == 139)
                    {
                        pack_qnt = 25;
                    }
                    if (pack_num == 162)
                    {
                        pack_qnt = 9;
                    }
                    if (pack_num == 156)
                    {
                        pack_qnt = 21;
                    }
                    var pn1 = 0;
                    var s_l = 0;
                    var s_s = 0;
                    var s_p = 0;
                    var s_pp = 0;
                    var pn_list = ds_list_create();
                    ini_open("ppu.ini");
                    if (button_number == 85)
                    {
                        if (pack_qnt == 1)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_1");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x1";
                                s_s = "p" + string(pack_num) + "x1b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp > 0)
                                {
                                    ds_list_add(pn_list, 1);
                                }
                            }
                        }
                        if (pack_qnt > 1)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_2");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x2";
                                s_s = "p" + string(pack_num) + "x2b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp > 0)
                                {
                                    ds_list_add(pn_list, 2);
                                }
                            }
                        }
                        if (pack_qnt > 2)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_3");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x3";
                                s_s = "p" + string(pack_num) + "x3b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp > 0)
                                {
                                    ds_list_add(pn_list, 3);
                                }
                            }
                        }
                        if (pack_qnt > 3)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_4");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x4";
                                s_s = "p" + string(pack_num) + "x4b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp > 0)
                                {
                                    ds_list_add(pn_list, 4);
                                }
                            }
                        }
                        if (pack_qnt > 4)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_5");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x5";
                                s_s = "p" + string(pack_num) + "x5b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp > 0)
                                {
                                    ds_list_add(pn_list, 5);
                                }
                            }
                        }
                        if (pack_qnt > 5)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_6");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x6";
                                s_s = "p" + string(pack_num) + "x6b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp > 0)
                                {
                                    ds_list_add(pn_list, 6);
                                }
                            }
                        }
                        if (pack_qnt > 6)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_7");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x7";
                                s_s = "p" + string(pack_num) + "x7b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp > 0)
                                {
                                    ds_list_add(pn_list, 7);
                                }
                            }
                        }
                        if (pack_qnt > 7)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_8");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x8";
                                s_s = "p" + string(pack_num) + "x8b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp > 0)
                                {
                                    ds_list_add(pn_list, 8);
                                }
                            }
                        }
                        if (pack_qnt > 8)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_9");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x9";
                                s_s = "p" + string(pack_num) + "x9b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp > 0)
                                {
                                    ds_list_add(pn_list, 9);
                                }
                            }
                        }
                        if (pack_qnt > 9)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_10");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x10";
                                s_s = "p" + string(pack_num) + "x10b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp > 0)
                                {
                                    ds_list_add(pn_list, 10);
                                }
                            }
                        }
                        if (pack_qnt > 10)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_11");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x11";
                                s_s = "p" + string(pack_num) + "x11b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp > 0)
                                {
                                    ds_list_add(pn_list, 11);
                                }
                            }
                        }
                        if (pack_qnt > 11)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_12");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x12";
                                s_s = "p" + string(pack_num) + "x12b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp > 0)
                                {
                                    ds_list_add(pn_list, 12);
                                }
                            }
                        }
                        if (pack_qnt > 12)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_13");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x13";
                                s_s = "p" + string(pack_num) + "x13b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp > 0)
                                {
                                    ds_list_add(pn_list, 13);
                                }
                            }
                        }
                        if (pack_qnt > 13)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_14");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x14";
                                s_s = "p" + string(pack_num) + "x14b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp > 0)
                                {
                                    ds_list_add(pn_list, 14);
                                }
                            }
                        }
                        if (pack_qnt > 14)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_15");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x15";
                                s_s = "p" + string(pack_num) + "x15b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp > 0)
                                {
                                    ds_list_add(pn_list, 15);
                                }
                            }
                        }
                        if (pack_qnt > 15)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_19");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x16";
                                s_s = "p" + string(pack_num) + "x16b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp > 0)
                                {
                                    ds_list_add(pn_list, 16);
                                }
                            }
                        }
                        if (pack_qnt > 16)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_17");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x17";
                                s_s = "p" + string(pack_num) + "x17b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp > 0)
                                {
                                    ds_list_add(pn_list, 17);
                                }
                            }
                        }
                        if (pack_qnt > 17)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_18");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x18";
                                s_s = "p" + string(pack_num) + "x18b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp > 0)
                                {
                                    ds_list_add(pn_list, 18);
                                }
                            }
                        }
                        if (pack_qnt > 18)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_19");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x19";
                                s_s = "p" + string(pack_num) + "x19b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp > 0)
                                {
                                    ds_list_add(pn_list, 19);
                                }
                            }
                        }
                        if (pack_qnt > 19)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_20");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x20";
                                s_s = "p" + string(pack_num) + "x20b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp > 0)
                                {
                                    ds_list_add(pn_list, 20);
                                }
                            }
                        }
                        if (pack_qnt > 20)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_21");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x21";
                                s_s = "p" + string(pack_num) + "x21b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp > 0)
                                {
                                    ds_list_add(pn_list, 21);
                                }
                            }
                        }
                        if (pack_qnt > 21)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_22");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x22";
                                s_s = "p" + string(pack_num) + "x22b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp > 0)
                                {
                                    ds_list_add(pn_list, 22);
                                }
                            }
                        }
                        if (pack_qnt > 22)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_23");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x23";
                                s_s = "p" + string(pack_num) + "x23b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp > 0)
                                {
                                    ds_list_add(pn_list, 23);
                                }
                            }
                        }
                        if (pack_qnt > 23)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_24");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x24";
                                s_s = "p" + string(pack_num) + "x24b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp > 0)
                                {
                                    ds_list_add(pn_list, 24);
                                }
                            }
                        }
                        if (pack_qnt > 24)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_25");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x25";
                                s_s = "p" + string(pack_num) + "x25b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp > 0)
                                {
                                    ds_list_add(pn_list, 25);
                                }
                            }
                        }
                    }
                    else if (button_number == 86)
                    {
                        if (pack_qnt == 1)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_1");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x1";
                                s_s = "p" + string(pack_num) + "x1b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp == 0)
                                {
                                    ds_list_add(pn_list, 1);
                                }
                            }
                        }
                        if (pack_qnt > 1)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_2");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x2";
                                s_s = "p" + string(pack_num) + "x2b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp == 0)
                                {
                                    ds_list_add(pn_list, 2);
                                }
                            }
                        }
                        if (pack_qnt > 2)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_3");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x3";
                                s_s = "p" + string(pack_num) + "x3b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp == 0)
                                {
                                    ds_list_add(pn_list, 3);
                                }
                            }
                        }
                        if (pack_qnt > 3)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_4");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x4";
                                s_s = "p" + string(pack_num) + "x4b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp == 0)
                                {
                                    ds_list_add(pn_list, 4);
                                }
                            }
                        }
                        if (pack_qnt > 4)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_5");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x5";
                                s_s = "p" + string(pack_num) + "x5b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp == 0)
                                {
                                    ds_list_add(pn_list, 5);
                                }
                            }
                        }
                        if (pack_qnt > 5)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_6");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x6";
                                s_s = "p" + string(pack_num) + "x6b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp == 0)
                                {
                                    ds_list_add(pn_list, 6);
                                }
                            }
                        }
                        if (pack_qnt > 6)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_7");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x7";
                                s_s = "p" + string(pack_num) + "x7b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp == 0)
                                {
                                    ds_list_add(pn_list, 7);
                                }
                            }
                        }
                        if (pack_qnt > 7)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_8");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x8";
                                s_s = "p" + string(pack_num) + "x8b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp == 0)
                                {
                                    ds_list_add(pn_list, 8);
                                }
                            }
                        }
                        if (pack_qnt > 8)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_9");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x9";
                                s_s = "p" + string(pack_num) + "x9b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp == 0)
                                {
                                    ds_list_add(pn_list, 9);
                                }
                            }
                        }
                        if (pack_qnt > 9)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_10");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x10";
                                s_s = "p" + string(pack_num) + "x10b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp == 0)
                                {
                                    ds_list_add(pn_list, 10);
                                }
                            }
                        }
                        if (pack_qnt > 10)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_11");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x11";
                                s_s = "p" + string(pack_num) + "x11b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp == 0)
                                {
                                    ds_list_add(pn_list, 11);
                                }
                            }
                        }
                        if (pack_qnt > 11)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_12");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x12";
                                s_s = "p" + string(pack_num) + "x12b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp == 0)
                                {
                                    ds_list_add(pn_list, 12);
                                }
                            }
                        }
                        if (pack_qnt > 12)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_13");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x13";
                                s_s = "p" + string(pack_num) + "x13b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp == 0)
                                {
                                    ds_list_add(pn_list, 13);
                                }
                            }
                        }
                        if (pack_qnt > 13)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_14");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x14";
                                s_s = "p" + string(pack_num) + "x14b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp == 0)
                                {
                                    ds_list_add(pn_list, 14);
                                }
                            }
                        }
                        if (pack_qnt > 14)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_15");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x15";
                                s_s = "p" + string(pack_num) + "x15b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp == 0)
                                {
                                    ds_list_add(pn_list, 15);
                                }
                            }
                        }
                        if (pack_qnt > 15)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_19");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x16";
                                s_s = "p" + string(pack_num) + "x16b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp == 0)
                                {
                                    ds_list_add(pn_list, 16);
                                }
                            }
                        }
                        if (pack_qnt > 16)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_17");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x17";
                                s_s = "p" + string(pack_num) + "x17b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp == 0)
                                {
                                    ds_list_add(pn_list, 17);
                                }
                            }
                        }
                        if (pack_qnt > 17)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_18");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x18";
                                s_s = "p" + string(pack_num) + "x18b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp == 0)
                                {
                                    ds_list_add(pn_list, 18);
                                }
                            }
                        }
                        if (pack_qnt > 18)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_19");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x19";
                                s_s = "p" + string(pack_num) + "x19b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp == 0)
                                {
                                    ds_list_add(pn_list, 19);
                                }
                            }
                        }
                        if (pack_qnt > 19)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_20");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x20";
                                s_s = "p" + string(pack_num) + "x20b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp == 0)
                                {
                                    ds_list_add(pn_list, 20);
                                }
                            }
                        }
                        if (pack_qnt > 20)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_21");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x21";
                                s_s = "p" + string(pack_num) + "x21b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp == 0)
                                {
                                    ds_list_add(pn_list, 21);
                                }
                            }
                        }
                        if (pack_qnt > 21)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_22");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x22";
                                s_s = "p" + string(pack_num) + "x22b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp == 0)
                                {
                                    ds_list_add(pn_list, 22);
                                }
                            }
                        }
                        if (pack_qnt > 22)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_23");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x23";
                                s_s = "p" + string(pack_num) + "x23b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp == 0)
                                {
                                    ds_list_add(pn_list, 23);
                                }
                            }
                        }
                        if (pack_qnt > 23)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_24");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x24";
                                s_s = "p" + string(pack_num) + "x24b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp == 0)
                                {
                                    ds_list_add(pn_list, 24);
                                }
                            }
                        }
                        if (pack_qnt > 24)
                        {
                            pn1 = string("complete_pack_" + string(pack_num) + "_puzzle_25");
                            if (!steam_get_achievement(pn1))
                            {
                                s_l = "p" + string(pack_num) + "x25";
                                s_s = "p" + string(pack_num) + "x25b0";
                                s_p = ini_read_string(s_l, s_s, 0);
                                s_pp = real(base64_decode(s_p));
                                if (s_pp == 0)
                                {
                                    ds_list_add(pn_list, 25);
                                }
                            }
                        }
                    }
                    ini_close();
                    ds_list_shuffle(pn_list);
                    puz_num = ds_list_find_value(pn_list, 0);
                    ds_list_destroy(pn_list);
                }
                if (pack_num > 0)
                {
                    if (puz_num > 0)
                    {
                        var pn = puz_num;
                        var bits = 0;
                        var is_pan = 0;
                        if (pack_num == 75)
                        {
                            if (pn == 1)
                            {
                                bits = 425;
                            }
                            if (pn == 2)
                            {
                                bits = 425;
                            }
                            if (pn == 3)
                            {
                                bits = 425;
                            }
                            if (pn == 4)
                            {
                                bits = 400;
                            }
                            if (pn == 5)
                            {
                                bits = 330;
                            }
                            if (pn == 6)
                            {
                                bits = 169;
                            }
                            if (pn == 7)
                            {
                                bits = 330;
                            }
                            if (pn == 8)
                            {
                                bits = 169;
                            }
                            if (pn == 9)
                            {
                                bits = 425;
                            }
                            if (pn == 10)
                            {
                                bits = 216;
                            }
                            if (pn == 11)
                            {
                                bits = 400;
                            }
                            if (pn == 12)
                            {
                                bits = 216;
                            }
                            if (pn == 13)
                            {
                                bits = 140;
                            }
                            if (pn == 14)
                            {
                                bits = 216;
                            }
                            if (pn == 15)
                            {
                                bits = 140;
                            }
                            if (pn == 16)
                            {
                                bits = 140;
                            }
                            if (pn == 17)
                            {
                                bits = 169;
                            }
                        }
                        else if (pack_num == 126)
                        {
                            if (pn == 1)
                            {
                                bits = 140;
                            }
                            if (pn == 2)
                            {
                                bits = 96;
                            }
                            if (pn == 3)
                            {
                                bits = 140;
                            }
                            if (pn == 4)
                            {
                                bits = 140;
                            }
                            if (pn == 5)
                            {
                                bits = 330;
                            }
                            if (pn == 6)
                            {
                                bits = 216;
                            }
                            if (pn == 7)
                            {
                                bits = 330;
                            }
                            if (pn == 8)
                            {
                                bits = 96;
                            }
                            if (pn == 9)
                            {
                                bits = 425;
                            }
                            if (pn == 10)
                            {
                                bits = 140;
                            }
                            if (pn == 11)
                            {
                                bits = 216;
                            }
                            if (pn == 12)
                            {
                                bits = 216;
                            }
                            if (pn == 13)
                            {
                                bits = 640;
                            }
                            if (pn == 14)
                            {
                                bits = 425;
                            }
                            if (pn == 15)
                            {
                                bits = 330;
                            }
                            if (pn == 16)
                            {
                                bits = 324;
                            }
                            if (pn == 17)
                            {
                                bits = 100;
                            }
                            if (pn == 18)
                            {
                                bits = 216;
                            }
                            if (pn == 19)
                            {
                                bits = 140;
                            }
                        }
                        else if (pack_num == 156)
                        {
                            if (pn == 1)
                            {
                                bits = 96;
                            }
                            if (pn == 2)
                            {
                                bits = 140;
                            }
                            if (pn == 3)
                            {
                                bits = 216;
                            }
                            if (pn == 4)
                            {
                                bits = 216;
                            }
                            if (pn == 5)
                            {
                                bits = 140;
                            }
                            if (pn == 6)
                            {
                                bits = 425;
                            }
                            if (pn == 7)
                            {
                                bits = 330;
                            }
                            if (pn == 8)
                            {
                                bits = 140;
                            }
                            if (pn == 9)
                            {
                                bits = 216;
                            }
                            if (pn == 10)
                            {
                                bits = 140;
                            }
                            if (pn == 11)
                            {
                                bits = 216;
                            }
                            if (pn == 12)
                            {
                                bits = 330;
                            }
                            if (pn == 13)
                            {
                                bits = 96;
                            }
                            if (pn == 14)
                            {
                                bits = 330;
                            }
                            if (pn == 15)
                            {
                                bits = 140;
                            }
                            if (pn == 16)
                            {
                                bits = 140;
                            }
                            if (pn == 17)
                            {
                                bits = 425;
                            }
                            if (pn == 18)
                            {
                                bits = 330;
                            }
                            if (pn == 19)
                            {
                                bits = 140;
                            }
                            if (pn == 20)
                            {
                                bits = 96;
                            }
                            if (pn == 21)
                            {
                                bits = 330;
                            }
                        }
                        else if (pack_num == 162)
                        {
                            if (pn == 1)
                            {
                                bits = 216;
                            }
                            if (pn == 2)
                            {
                                bits = 330;
                            }
                            if (pn == 3)
                            {
                                bits = 140;
                            }
                            if (pn == 4)
                            {
                                bits = 216;
                            }
                            if (pn == 5)
                            {
                                bits = 140;
                            }
                            if (pn == 6)
                            {
                                bits = 96;
                            }
                            if (pn == 7)
                            {
                                bits = 425;
                            }
                            if (pn == 8)
                            {
                                bits = 330;
                            }
                            if (pn == 9)
                            {
                                bits = 216;
                            }
                        }
                        else if (pack_num == 139)
                        {
                            if (pn == 1)
                            {
                                bits = 216;
                            }
                            if (pn == 2)
                            {
                                bits = 330;
                            }
                            if (pn == 3)
                            {
                                bits = 216;
                            }
                            if (pn == 4)
                            {
                                bits = 425;
                            }
                            if (pn == 5)
                            {
                                bits = 425;
                            }
                            if (pn == 6)
                            {
                                bits = 140;
                            }
                            if (pn == 7)
                            {
                                bits = 425;
                            }
                            if (pn == 8)
                            {
                                bits = 140;
                            }
                            if (pn == 9)
                            {
                                bits = 330;
                            }
                            if (pn == 10)
                            {
                                bits = 330;
                            }
                            if (pn == 11)
                            {
                                bits = 96;
                            }
                            if (pn == 12)
                            {
                                bits = 330;
                            }
                            if (pn == 13)
                            {
                                bits = 216;
                            }
                            if (pn == 14)
                            {
                                bits = 330;
                            }
                            if (pn == 15)
                            {
                                bits = 216;
                            }
                            if (pn == 16)
                            {
                                bits = 140;
                            }
                            if (pn == 17)
                            {
                                bits = 330;
                            }
                            if (pn == 18)
                            {
                                bits = 425;
                            }
                            if (pn == 19)
                            {
                                bits = 330;
                            }
                            if (pn == 20)
                            {
                                bits = 330;
                            }
                            if (pn == 21)
                            {
                                bits = 216;
                            }
                            if (pn == 22)
                            {
                                bits = 216;
                            }
                            if (pn == 23)
                            {
                                bits = 216;
                            }
                            if (pn == 24)
                            {
                                bits = 425;
                            }
                            if (pn == 25)
                            {
                                bits = 330;
                            }
                        }
                        else if (pack_num == 160)
                        {
                            if (pn == 1)
                            {
                                bits = 330;
                            }
                            if (pn == 2)
                            {
                                bits = 425;
                            }
                            if (pn == 3)
                            {
                                bits = 330;
                            }
                            if (pn == 4)
                            {
                                bits = 140;
                            }
                            if (pn == 5)
                            {
                                bits = 216;
                            }
                            if (pn == 6)
                            {
                                bits = 425;
                            }
                            if (pn == 7)
                            {
                                bits = 140;
                            }
                            if (pn == 8)
                            {
                                bits = 216;
                            }
                            if (pn == 9)
                            {
                                bits = 330;
                            }
                        }
                        else if (pack_num == 153)
                        {
                            if (pn == 1)
                            {
                                bits = 140;
                            }
                            if (pn == 2)
                            {
                                bits = 96;
                            }
                            if (pn == 3)
                            {
                                bits = 140;
                            }
                            if (pn == 4)
                            {
                                bits = 216;
                            }
                            if (pn == 5)
                            {
                                bits = 330;
                            }
                            if (pn == 6)
                            {
                                bits = 216;
                            }
                            if (pn == 7)
                            {
                                bits = 425;
                            }
                            if (pn == 8)
                            {
                                bits = 216;
                            }
                            if (pn == 9)
                            {
                                bits = 96;
                            }
                            if (pn == 10)
                            {
                                bits = 140;
                            }
                            if (pn == 11)
                            {
                                bits = 96;
                            }
                            if (pn == 12)
                            {
                                bits = 216;
                            }
                            if (pn == 13)
                            {
                                bits = 330;
                            }
                        }
                        else if (pack_num == 154)
                        {
                            if (pn == 1)
                            {
                                bits = 330;
                            }
                            if (pn == 2)
                            {
                                bits = 96;
                            }
                            if (pn == 3)
                            {
                                bits = 425;
                            }
                            if (pn == 4)
                            {
                                bits = 96;
                            }
                            if (pn == 5)
                            {
                                bits = 96;
                            }
                            if (pn == 6)
                            {
                                bits = 216;
                            }
                            if (pn == 7)
                            {
                                bits = 425;
                            }
                            if (pn == 8)
                            {
                                bits = 140;
                            }
                            if (pn == 9)
                            {
                                bits = 216;
                            }
                            if (pn == 10)
                            {
                                bits = 140;
                            }
                            if (pn == 11)
                            {
                                bits = 330;
                            }
                            if (pn == 12)
                            {
                                bits = 216;
                            }
                            if (pn == 13)
                            {
                                bits = 140;
                            }
                            if (pn == 14)
                            {
                                bits = 96;
                            }
                            if (pn == 15)
                            {
                                bits = 330;
                            }
                            if (pn == 16)
                            {
                                bits = 216;
                            }
                            if (pn == 17)
                            {
                                bits = 425;
                            }
                            if (pn == 18)
                            {
                                bits = 330;
                            }
                            if (pn == 19)
                            {
                                bits = 216;
                            }
                            if (pn == 20)
                            {
                                bits = 140;
                            }
                        }
                        else if (pack_num == 169)
                        {
                            if (pn == 1)
                            {
                                bits = 330;
                            }
                            if (pn == 2)
                            {
                                bits = 425;
                            }
                            if (pn == 3)
                            {
                                bits = 140;
                            }
                            if (pn == 4)
                            {
                                bits = 216;
                            }
                            if (pn == 5)
                            {
                                bits = 330;
                            }
                            if (pn == 6)
                            {
                                bits = 96;
                            }
                            if (pn == 7)
                            {
                                bits = 216;
                            }
                            if (pn == 8)
                            {
                                bits = 140;
                            }
                            if (pn == 9)
                            {
                                bits = 96;
                            }
                            if (pn == 10)
                            {
                                bits = 216;
                            }
                            if (pn == 11)
                            {
                                bits = 425;
                            }
                            if (pn == 12)
                            {
                                bits = 330;
                            }
                            if (pn == 13)
                            {
                                bits = 330;
                            }
                            if (pn == 14)
                            {
                                bits = 216;
                            }
                            if (pn == 15)
                            {
                                bits = 96;
                            }
                            if (pn == 16)
                            {
                                bits = 140;
                            }
                            if (pn == 17)
                            {
                                bits = 330;
                            }
                        }
                        else if (pack_num == 137)
                        {
                            if (pn == 1)
                            {
                                bits = 96;
                            }
                            if (pn == 2)
                            {
                                bits = 96;
                            }
                            if (pn == 3)
                            {
                                bits = 96;
                            }
                            if (pn == 4)
                            {
                                bits = 140;
                            }
                            if (pn == 5)
                            {
                                bits = 140;
                            }
                            if (pn == 6)
                            {
                                bits = 96;
                            }
                            if (pn == 7)
                            {
                                bits = 140;
                            }
                            if (pn == 8)
                            {
                                bits = 96;
                            }
                            if (pn == 9)
                            {
                                bits = 140;
                            }
                            if (pn == 10)
                            {
                                bits = 96;
                            }
                            if (pn == 11)
                            {
                                bits = 96;
                            }
                            if (pn == 12)
                            {
                                bits = 140;
                            }
                            if (pn == 13)
                            {
                                bits = 140;
                            }
                            if (pn == 14)
                            {
                                bits = 140;
                            }
                            if (pn == 15)
                            {
                                bits = 96;
                            }
                            if (pn == 16)
                            {
                                bits = 140;
                            }
                            if (pn == 17)
                            {
                                bits = 96;
                            }
                            if (pn == 18)
                            {
                                bits = 96;
                            }
                            if (pn == 19)
                            {
                                bits = 140;
                            }
                            if (pn == 20)
                            {
                                bits = 96;
                            }
                            if (pn == 21)
                            {
                                bits = 96;
                            }
                            if (pn == 22)
                            {
                                bits = 140;
                            }
                            if (pn == 23)
                            {
                                bits = 96;
                            }
                            if (pn == 24)
                            {
                                bits = 96;
                            }
                            if (pn == 25)
                            {
                                bits = 96;
                            }
                        }
                        else if (pack_num == 138)
                        {
                            if (pn == 1)
                            {
                                bits = 330;
                            }
                            if (pn == 2)
                            {
                                bits = 330;
                            }
                            if (pn == 3)
                            {
                                bits = 425;
                            }
                            if (pn == 4)
                            {
                                bits = 425;
                            }
                            if (pn == 5)
                            {
                                bits = 425;
                            }
                            if (pn == 6)
                            {
                                bits = 330;
                            }
                            if (pn == 7)
                            {
                                bits = 330;
                            }
                            if (pn == 8)
                            {
                                bits = 425;
                            }
                            if (pn == 9)
                            {
                                bits = 425;
                            }
                            if (pn == 10)
                            {
                                bits = 330;
                            }
                            if (pn == 11)
                            {
                                bits = 330;
                            }
                            if (pn == 12)
                            {
                                bits = 425;
                            }
                            if (pn == 13)
                            {
                                bits = 425;
                            }
                            if (pn == 14)
                            {
                                bits = 425;
                            }
                            if (pn == 15)
                            {
                                bits = 425;
                            }
                            if (pn == 16)
                            {
                                bits = 425;
                            }
                            if (pn == 17)
                            {
                                bits = 330;
                            }
                            if (pn == 18)
                            {
                                bits = 330;
                            }
                            if (pn == 19)
                            {
                                bits = 425;
                            }
                            if (pn == 20)
                            {
                                bits = 330;
                            }
                            if (pn == 21)
                            {
                                bits = 425;
                            }
                            if (pn == 22)
                            {
                                bits = 425;
                            }
                            if (pn == 23)
                            {
                                bits = 330;
                            }
                            if (pn == 24)
                            {
                                bits = 330;
                            }
                            if (pn == 25)
                            {
                                bits = 330;
                            }
                        }
                        else if (pack_num == 148)
                        {
                            if (pn == 1)
                            {
                                bits = 330;
                            }
                            if (pn == 2)
                            {
                                bits = 216;
                            }
                            if (pn == 3)
                            {
                                bits = 425;
                            }
                            if (pn == 4)
                            {
                                bits = 140;
                            }
                            if (pn == 5)
                            {
                                bits = 330;
                            }
                            if (pn == 6)
                            {
                                bits = 216;
                            }
                            if (pn == 7)
                            {
                                bits = 330;
                            }
                            if (pn == 8)
                            {
                                bits = 96;
                            }
                            if (pn == 9)
                            {
                                bits = 140;
                            }
                            if (pn == 10)
                            {
                                bits = 330;
                            }
                            if (pn == 11)
                            {
                                bits = 216;
                            }
                            if (pn == 12)
                            {
                                bits = 96;
                            }
                            if (pn == 13)
                            {
                                bits = 96;
                            }
                            if (pn == 14)
                            {
                                bits = 216;
                            }
                            if (pn == 15)
                            {
                                bits = 140;
                            }
                            if (pn == 16)
                            {
                                bits = 100;
                            }
                        }
                        else if (pack_num == 149)
                        {
                            if (pn == 1)
                            {
                                bits = 140;
                            }
                            if (pn == 2)
                            {
                                bits = 216;
                            }
                            if (pn == 3)
                            {
                                bits = 330;
                            }
                            if (pn == 4)
                            {
                                bits = 140;
                            }
                            if (pn == 5)
                            {
                                bits = 216;
                            }
                            if (pn == 6)
                            {
                                bits = 96;
                            }
                            if (pn == 7)
                            {
                                bits = 96;
                            }
                            if (pn == 8)
                            {
                                bits = 330;
                            }
                            if (pn == 9)
                            {
                                bits = 140;
                            }
                            if (pn == 10)
                            {
                                bits = 425;
                            }
                            if (pn == 11)
                            {
                                bits = 216;
                            }
                            if (pn == 12)
                            {
                                bits = 216;
                            }
                            if (pn == 13)
                            {
                                bits = 330;
                            }
                        }
                        else if (pack_num == 150)
                        {
                            if (pn == 1)
                            {
                                bits = 169;
                            }
                            if (pn == 2)
                            {
                                bits = 140;
                            }
                            if (pn == 3)
                            {
                                bits = 216;
                            }
                            if (pn == 4)
                            {
                                bits = 100;
                            }
                            if (pn == 5)
                            {
                                bits = 100;
                            }
                            if (pn == 6)
                            {
                                bits = 169;
                            }
                            if (pn == 7)
                            {
                                bits = 250;
                            }
                            if (pn == 8)
                            {
                                bits = 100;
                            }
                            if (pn == 9)
                            {
                                bits = 100;
                            }
                            if (pn == 10)
                            {
                                bits = 324;
                            }
                            if (pn == 11)
                            {
                                bits = 100;
                            }
                            if (pn == 12)
                            {
                                bits = 169;
                            }
                            if (pn == 13)
                            {
                                bits = 324;
                            }
                            if (pn == 14)
                            {
                                bits = 169;
                            }
                            if (pn == 15)
                            {
                                bits = 169;
                            }
                            if (pn == 16)
                            {
                                bits = 455;
                            }
                            if (pn == 17)
                            {
                                bits = 169;
                            }
                            if (pn == 18)
                            {
                                bits = 324;
                            }
                            if (pn == 19)
                            {
                                bits = 169;
                            }
                            if (pn == 20)
                            {
                                bits = 100;
                            }
                        }
                        else if (pack_num == 155)
                        {
                            if (pn == 1)
                            {
                                bits = 216;
                            }
                            if (pn == 2)
                            {
                                bits = 96;
                            }
                            if (pn == 3)
                            {
                                bits = 216;
                            }
                            if (pn == 4)
                            {
                                bits = 425;
                            }
                            if (pn == 5)
                            {
                                bits = 330;
                            }
                            if (pn == 6)
                            {
                                bits = 140;
                            }
                            if (pn == 7)
                            {
                                bits = 330;
                            }
                            if (pn == 8)
                            {
                                bits = 216;
                            }
                            if (pn == 9)
                            {
                                bits = 330;
                            }
                            if (pn == 10)
                            {
                                bits = 96;
                            }
                            if (pn == 11)
                            {
                                bits = 425;
                            }
                        }
                        else if (pack_num == 147)
                        {
                            if (pn == 1)
                            {
                                bits = 640;
                            }
                            if (pn == 2)
                            {
                                bits = 640;
                            }
                            if (pn == 3)
                            {
                                bits = 640;
                            }
                            if (pn == 4)
                            {
                                bits = 840;
                            }
                            if (pn == 5)
                            {
                                bits = 640;
                            }
                            if (pn == 6)
                            {
                                bits = 840;
                            }
                            if (pn == 7)
                            {
                                bits = 841;
                            }
                            if (pn == 8)
                            {
                                bits = 840;
                            }
                            if (pn == 9)
                            {
                                bits = 640;
                            }
                            if (pn == 10)
                            {
                                bits = 676;
                            }
                            if (pn == 11)
                            {
                                bits = 840;
                            }
                            if (pn == 12)
                            {
                                bits = 676;
                            }
                        }
                        else if (pack_num == 146)
                        {
                            if (pn == 1)
                            {
                                bits = 60;
                            }
                            if (pn == 2)
                            {
                                bits = 169;
                            }
                            if (pn == 3)
                            {
                                bits = 330;
                            }
                            if (pn == 4)
                            {
                                bits = 324;
                            }
                            if (pn == 5)
                            {
                                bits = 216;
                            }
                            if (pn == 6)
                            {
                                bits = 169;
                            }
                            if (pn == 7)
                            {
                                bits = 140;
                            }
                            if (pn == 8)
                            {
                                bits = 330;
                            }
                            if (pn == 9)
                            {
                                bits = 96;
                            }
                            if (pn == 10)
                            {
                                bits = 250;
                            }
                        }
                        else if (pack_num == 145)
                        {
                            if (pn == 1)
                            {
                                bits = 96;
                            }
                            if (pn == 2)
                            {
                                bits = 96;
                            }
                            if (pn == 3)
                            {
                                bits = 330;
                            }
                            if (pn == 4)
                            {
                                bits = 140;
                            }
                            if (pn == 5)
                            {
                                bits = 216;
                            }
                            if (pn == 6)
                            {
                                bits = 330;
                            }
                            if (pn == 7)
                            {
                                bits = 140;
                            }
                            if (pn == 8)
                            {
                                bits = 96;
                            }
                            if (pn == 9)
                            {
                                bits = 330;
                            }
                            if (pn == 10)
                            {
                                bits = 425;
                            }
                            if (pn == 11)
                            {
                                bits = 100;
                            }
                            if (pn == 12)
                            {
                                bits = 330;
                            }
                            if (pn == 13)
                            {
                                bits = 96;
                            }
                            if (pn == 14)
                            {
                                bits = 140;
                            }
                            if (pn == 15)
                            {
                                bits = 330;
                            }
                            if (pn == 16)
                            {
                                bits = 140;
                            }
                            if (pn == 17)
                            {
                                bits = 96;
                            }
                            if (pn == 18)
                            {
                                bits = 140;
                            }
                            if (pn == 19)
                            {
                                bits = 216;
                            }
                            if (pn == 20)
                            {
                                bits = 169;
                            }
                            if (pn == 21)
                            {
                                bits = 330;
                            }
                            if (pn == 22)
                            {
                                bits = 216;
                            }
                            if (pn == 23)
                            {
                                bits = 216;
                            }
                            if (pn == 24)
                            {
                                bits = 330;
                            }
                            if (pn == 25)
                            {
                                bits = 140;
                            }
                        }
                        else if (pack_num == 144)
                        {
                            if (pn == 1)
                            {
                                bits = 140;
                            }
                            if (pn == 2)
                            {
                                bits = 169;
                            }
                            if (pn == 3)
                            {
                                bits = 216;
                            }
                            if (pn == 4)
                            {
                                bits = 96;
                            }
                            if (pn == 5)
                            {
                                bits = 100;
                            }
                            if (pn == 6)
                            {
                                bits = 100;
                            }
                        }
                        else if (pack_num == 143)
                        {
                            if (pn == 1)
                            {
                                bits = 96;
                            }
                            if (pn == 2)
                            {
                                bits = 140;
                            }
                            if (pn == 3)
                            {
                                bits = 169;
                            }
                            if (pn == 4)
                            {
                                bits = 140;
                            }
                            if (pn == 5)
                            {
                                bits = 216;
                            }
                            if (pn == 6)
                            {
                                bits = 400;
                            }
                            if (pn == 7)
                            {
                                bits = 140;
                            }
                            if (pn == 8)
                            {
                                bits = 330;
                            }
                            if (pn == 9)
                            {
                                bits = 140;
                            }
                            if (pn == 10)
                            {
                                bits = 100;
                            }
                            if (pn == 11)
                            {
                                bits = 330;
                            }
                            if (pn == 12)
                            {
                                bits = 140;
                            }
                            if (pn == 13)
                            {
                                bits = 96;
                            }
                            if (pn == 14)
                            {
                                bits = 216;
                            }
                            if (pn == 15)
                            {
                                bits = 216;
                            }
                            if (pn == 16)
                            {
                                bits = 330;
                            }
                            if (pn == 17)
                            {
                                bits = 216;
                            }
                            if (pn == 18)
                            {
                                bits = 140;
                            }
                        }
                        else if (pack_num == 142)
                        {
                            if (pn == 1)
                            {
                                bits = 96;
                            }
                            if (pn == 2)
                            {
                                bits = 96;
                            }
                            if (pn == 3)
                            {
                                bits = 324;
                            }
                            if (pn == 4)
                            {
                                bits = 96;
                            }
                            if (pn == 5)
                            {
                                bits = 96;
                            }
                            if (pn == 6)
                            {
                                bits = 100;
                            }
                            if (pn == 7)
                            {
                                bits = 140;
                            }
                            if (pn == 8)
                            {
                                bits = 140;
                            }
                            if (pn == 9)
                            {
                                bits = 169;
                            }
                            if (pn == 10)
                            {
                                bits = 96;
                            }
                            if (pn == 11)
                            {
                                bits = 96;
                            }
                            if (pn == 12)
                            {
                                bits = 140;
                            }
                            if (pn == 13)
                            {
                                bits = 216;
                            }
                            if (pn == 14)
                            {
                                bits = 216;
                            }
                            if (pn == 15)
                            {
                                bits = 169;
                            }
                            if (pn == 16)
                            {
                                bits = 330;
                            }
                            if (pn == 17)
                            {
                                bits = 330;
                            }
                            if (pn == 18)
                            {
                                bits = 140;
                            }
                        }
                        else if (pack_num == 141)
                        {
                            if (pn == 1)
                            {
                                bits = 100;
                            }
                            if (pn == 2)
                            {
                                bits = 100;
                            }
                            if (pn == 3)
                            {
                                bits = 169;
                            }
                            if (pn == 4)
                            {
                                bits = 169;
                            }
                            if (pn == 5)
                            {
                                bits = 324;
                            }
                            if (pn == 6)
                            {
                                bits = 169;
                            }
                            if (pn == 7)
                            {
                                bits = 324;
                            }
                            if (pn == 8)
                            {
                                bits = 169;
                            }
                            if (pn == 9)
                            {
                                bits = 169;
                            }
                            if (pn == 10)
                            {
                                bits = 324;
                            }
                            if (pn == 11)
                            {
                                bits = 169;
                            }
                            if (pn == 12)
                            {
                                bits = 400;
                            }
                            if (pn == 13)
                            {
                                bits = 324;
                            }
                            if (pn == 14)
                            {
                                bits = 400;
                            }
                            if (pn == 15)
                            {
                                bits = 400;
                            }
                        }
                        else if (pack_num == 140)
                        {
                            if (pn == 1)
                            {
                                bits = 169;
                            }
                            if (pn == 2)
                            {
                                bits = 100;
                            }
                            if (pn == 3)
                            {
                                bits = 400;
                            }
                            if (pn == 4)
                            {
                                bits = 324;
                            }
                            if (pn == 5)
                            {
                                bits = 169;
                            }
                            if (pn == 6)
                            {
                                bits = 100;
                            }
                            if (pn == 7)
                            {
                                bits = 169;
                            }
                            if (pn == 8)
                            {
                                bits = 324;
                            }
                            if (pn == 9)
                            {
                                bits = 100;
                            }
                            if (pn == 10)
                            {
                                bits = 169;
                            }
                        }
                        else if (pack_num == 161)
                        {
                            if (pn == 1)
                            {
                                bits = 96;
                            }
                            if (pn == 2)
                            {
                                bits = 425;
                            }
                            if (pn == 3)
                            {
                                bits = 140;
                            }
                            if (pn == 4)
                            {
                                bits = 216;
                            }
                            if (pn == 5)
                            {
                                bits = 216;
                            }
                            if (pn == 6)
                            {
                                bits = 140;
                            }
                            if (pn == 7)
                            {
                                bits = 330;
                            }
                            if (pn == 8)
                            {
                                bits = 216;
                            }
                            if (pn == 9)
                            {
                                bits = 330;
                            }
                            if (pn == 10)
                            {
                                bits = 140;
                            }
                            if (pn == 11)
                            {
                                bits = 96;
                            }
                            if (pn == 12)
                            {
                                bits = 330;
                            }
                            if (pn == 13)
                            {
                                bits = 216;
                            }
                        }
                        else if (pack_num == 167)
                        {
                            if (pn == 1)
                            {
                                bits = 425;
                            }
                            if (pn == 2)
                            {
                                bits = 96;
                            }
                            if (pn == 3)
                            {
                                bits = 140;
                            }
                            if (pn == 4)
                            {
                                bits = 330;
                            }
                            if (pn == 5)
                            {
                                bits = 216;
                            }
                            if (pn == 6)
                            {
                                bits = 140;
                            }
                            if (pn == 7)
                            {
                                bits = 96;
                            }
                            if (pn == 8)
                            {
                                bits = 216;
                            }
                            if (pn == 9)
                            {
                                bits = 140;
                            }
                            if (pn == 10)
                            {
                                bits = 216;
                            }
                            if (pn == 11)
                            {
                                bits = 425;
                            }
                            if (pn == 12)
                            {
                                bits = 330;
                            }
                            if (pn == 13)
                            {
                                bits = 96;
                            }
                            if (pn == 14)
                            {
                                bits = 96;
                            }
                        }
                        else if (pack_num == 136)
                        {
                            if (pn == 1)
                            {
                                bits = 96;
                            }
                            if (pn == 2)
                            {
                                bits = 140;
                            }
                            if (pn == 3)
                            {
                                bits = 140;
                            }
                            if (pn == 4)
                            {
                                bits = 216;
                            }
                            if (pn == 5)
                            {
                                bits = 140;
                            }
                            if (pn == 6)
                            {
                                bits = 216;
                            }
                            if (pn == 7)
                            {
                                bits = 330;
                            }
                            if (pn == 8)
                            {
                                bits = 140;
                            }
                            if (pn == 9)
                            {
                                bits = 216;
                            }
                            if (pn == 10)
                            {
                                bits = 216;
                            }
                            if (pn == 11)
                            {
                                bits = 96;
                            }
                            if (pn == 12)
                            {
                                bits = 330;
                            }
                            if (pn == 13)
                            {
                                bits = 96;
                            }
                            if (pn == 14)
                            {
                                bits = 425;
                            }
                            if (pn == 15)
                            {
                                bits = 330;
                            }
                            if (pn == 16)
                            {
                                bits = 216;
                            }
                            if (pn == 17)
                            {
                                bits = 330;
                            }
                            if (pn == 18)
                            {
                                bits = 140;
                            }
                            if (pn == 19)
                            {
                                bits = 96;
                            }
                            if (pn == 20)
                            {
                                bits = 216;
                            }
                            if (pn == 21)
                            {
                                bits = 330;
                            }
                            if (pn == 22)
                            {
                                bits = 425;
                            }
                            if (pn == 23)
                            {
                                bits = 330;
                            }
                            if (pn == 24)
                            {
                                bits = 425;
                            }
                            if (pn == 25)
                            {
                                bits = 96;
                            }
                        }
                        else if (pack_num == 135)
                        {
                            if (pn == 1)
                            {
                                bits = 96;
                            }
                            if (pn == 2)
                            {
                                bits = 140;
                            }
                            if (pn == 3)
                            {
                                bits = 96;
                            }
                            if (pn == 4)
                            {
                                bits = 140;
                            }
                            if (pn == 5)
                            {
                                bits = 330;
                            }
                            if (pn == 6)
                            {
                                bits = 169;
                            }
                            if (pn == 7)
                            {
                                bits = 96;
                            }
                            if (pn == 8)
                            {
                                bits = 140;
                            }
                            if (pn == 9)
                            {
                                bits = 330;
                            }
                            if (pn == 10)
                            {
                                bits = 96;
                            }
                            if (pn == 11)
                            {
                                bits = 140;
                            }
                            if (pn == 12)
                            {
                                bits = 330;
                            }
                            if (pn == 13)
                            {
                                bits = 140;
                            }
                            if (pn == 14)
                            {
                                bits = 96;
                            }
                            if (pn == 15)
                            {
                                bits = 425;
                            }
                            if (pn == 16)
                            {
                                bits = 216;
                            }
                            if (pn == 17)
                            {
                                bits = 330;
                            }
                            if (pn == 18)
                            {
                                bits = 140;
                            }
                            if (pn == 19)
                            {
                                bits = 96;
                            }
                            if (pn == 20)
                            {
                                bits = 216;
                            }
                            if (pn == 21)
                            {
                                bits = 330;
                            }
                            if (pn == 22)
                            {
                                bits = 425;
                            }
                            if (pn == 23)
                            {
                                bits = 330;
                            }
                            if (pn == 24)
                            {
                                bits = 140;
                            }
                            if (pn == 25)
                            {
                                bits = 216;
                            }
                        }
                        else if (pack_num == 134)
                        {
                            if (pn == 1)
                            {
                                bits = 169;
                            }
                            if (pn == 2)
                            {
                                bits = 140;
                            }
                            if (pn == 3)
                            {
                                bits = 216;
                            }
                            if (pn == 4)
                            {
                                bits = 100;
                            }
                            if (pn == 5)
                            {
                                bits = 169;
                            }
                            if (pn == 6)
                            {
                                bits = 330;
                            }
                            if (pn == 7)
                            {
                                bits = 216;
                            }
                            if (pn == 8)
                            {
                                bits = 100;
                            }
                            if (pn == 9)
                            {
                                bits = 96;
                            }
                            if (pn == 10)
                            {
                                bits = 216;
                            }
                            if (pn == 11)
                            {
                                bits = 216;
                            }
                            if (pn == 12)
                            {
                                bits = 140;
                            }
                            if (pn == 13)
                            {
                                bits = 96;
                            }
                            if (pn == 14)
                            {
                                bits = 324;
                            }
                            if (pn == 15)
                            {
                                bits = 169;
                            }
                            if (pn == 16)
                            {
                                bits = 169;
                            }
                        }
                        else if (pack_num == 133)
                        {
                            if (pn == 1)
                            {
                                bits = 140;
                            }
                            if (pn == 2)
                            {
                                bits = 126;
                            }
                            if (pn == 3)
                            {
                                bits = 140;
                            }
                            if (pn == 4)
                            {
                                bits = 100;
                            }
                            if (pn == 5)
                            {
                                bits = 96;
                            }
                            if (pn == 6)
                            {
                                bits = 100;
                            }
                            if (pn == 7)
                            {
                                bits = 100;
                            }
                            if (pn == 8)
                            {
                                bits = 140;
                            }
                            if (pn == 9)
                            {
                                bits = 96;
                            }
                            if (pn == 10)
                            {
                                bits = 140;
                            }
                            if (pn == 11)
                            {
                                bits = 100;
                            }
                            if (pn == 12)
                            {
                                bits = 169;
                            }
                            if (pn == 13)
                            {
                                bits = 140;
                            }
                            if (pn == 14)
                            {
                                bits = 100;
                            }
                            if (pn == 15)
                            {
                                bits = 169;
                            }
                            if (pn == 16)
                            {
                                bits = 96;
                            }
                            if (pn == 17)
                            {
                                bits = 216;
                            }
                            if (pn == 18)
                            {
                                bits = 140;
                            }
                            if (pn == 19)
                            {
                                bits = 96;
                            }
                            if (pn == 20)
                            {
                                bits = 100;
                            }
                            if (pn == 21)
                            {
                                bits = 96;
                            }
                            if (pn == 22)
                            {
                                bits = 96;
                            }
                            if (pn == 23)
                            {
                                bits = 100;
                            }
                            if (pn == 24)
                            {
                                bits = 216;
                            }
                            if (pn == 25)
                            {
                                bits = 140;
                            }
                        }
                        else if (pack_num == 132)
                        {
                            if (pn == 1)
                            {
                                bits = 100;
                            }
                            if (pn == 2)
                            {
                                bits = 216;
                            }
                            if (pn == 3)
                            {
                                bits = 96;
                            }
                            if (pn == 4)
                            {
                                bits = 330;
                            }
                            if (pn == 5)
                            {
                                bits = 169;
                            }
                            if (pn == 6)
                            {
                                bits = 140;
                            }
                            if (pn == 7)
                            {
                                bits = 425;
                            }
                            if (pn == 8)
                            {
                                bits = 324;
                            }
                            if (pn == 9)
                            {
                                bits = 96;
                            }
                            if (pn == 10)
                            {
                                bits = 140;
                            }
                            if (pn == 11)
                            {
                                bits = 100;
                            }
                            if (pn == 12)
                            {
                                bits = 100;
                            }
                            if (pn == 13)
                            {
                                bits = 100;
                            }
                            if (pn == 14)
                            {
                                bits = 425;
                            }
                            if (pn == 15)
                            {
                                bits = 400;
                            }
                            if (pn == 16)
                            {
                                bits = 169;
                            }
                            if (pn == 17)
                            {
                                bits = 330;
                            }
                            if (pn == 18)
                            {
                                bits = 216;
                            }
                            if (pn == 19)
                            {
                                bits = 324;
                            }
                            if (pn == 20)
                            {
                                bits = 330;
                            }
                            if (pn == 21)
                            {
                                bits = 169;
                            }
                            if (pn == 22)
                            {
                                bits = 169;
                            }
                            if (pn == 23)
                            {
                                bits = 100;
                            }
                            if (pn == 24)
                            {
                                bits = 169;
                            }
                            if (pn == 25)
                            {
                                bits = 140;
                            }
                        }
                        else if (pack_num == 131)
                        {
                            if (pn == 1)
                            {
                                bits = 841;
                            }
                            if (pn == 2)
                            {
                                bits = 840;
                            }
                            if (pn == 3)
                            {
                                bits = 640;
                            }
                            if (pn == 4)
                            {
                                bits = 1000;
                            }
                            if (pn == 5)
                            {
                                bits = 640;
                            }
                            if (pn == 6)
                            {
                                bits = 840;
                            }
                            if (pn == 7)
                            {
                                bits = 840;
                            }
                            if (pn == 8)
                            {
                                bits = 810;
                            }
                            if (pn == 9)
                            {
                                bits = 840;
                            }
                            if (pn == 10)
                            {
                                bits = 640;
                            }
                            if (pn == 11)
                            {
                                bits = 840;
                            }
                        }
                        else if (pack_num == 130)
                        {
                            if (pn == 1)
                            {
                                bits = 96;
                            }
                            if (pn == 2)
                            {
                                bits = 100;
                            }
                            if (pn == 3)
                            {
                                bits = 96;
                            }
                            if (pn == 4)
                            {
                                bits = 96;
                            }
                            if (pn == 5)
                            {
                                bits = 126;
                            }
                            if (pn == 6)
                            {
                                bits = 100;
                            }
                            if (pn == 7)
                            {
                                bits = 96;
                            }
                            if (pn == 8)
                            {
                                bits = 96;
                            }
                            if (pn == 9)
                            {
                                bits = 96;
                            }
                            if (pn == 10)
                            {
                                bits = 96;
                            }
                            if (pn == 11)
                            {
                                bits = 100;
                            }
                            if (pn == 12)
                            {
                                bits = 96;
                            }
                            if (pn == 13)
                            {
                                bits = 100;
                            }
                            if (pn == 14)
                            {
                                bits = 126;
                            }
                            if (pn == 15)
                            {
                                bits = 140;
                            }
                            if (pn == 16)
                            {
                                bits = 140;
                            }
                            if (pn == 17)
                            {
                                bits = 140;
                            }
                            if (pn == 18)
                            {
                                bits = 140;
                            }
                            if (pn == 19)
                            {
                                bits = 96;
                            }
                            if (pn == 20)
                            {
                                bits = 96;
                            }
                            if (pn == 21)
                            {
                                bits = 140;
                            }
                            if (pn == 22)
                            {
                                bits = 96;
                            }
                            if (pn == 23)
                            {
                                bits = 100;
                            }
                            if (pn == 24)
                            {
                                bits = 126;
                            }
                            if (pn == 25)
                            {
                                bits = 100;
                            }
                        }
                        else if (pack_num == 129)
                        {
                            if (pn == 1)
                            {
                                bits = 324;
                            }
                            if (pn == 2)
                            {
                                bits = 169;
                            }
                            if (pn == 3)
                            {
                                bits = 100;
                            }
                            if (pn == 4)
                            {
                                bits = 100;
                            }
                            if (pn == 5)
                            {
                                bits = 169;
                            }
                            if (pn == 6)
                            {
                                bits = 100;
                            }
                            if (pn == 7)
                            {
                                bits = 169;
                            }
                            if (pn == 8)
                            {
                                bits = 324;
                            }
                            if (pn == 9)
                            {
                                bits = 100;
                            }
                            if (pn == 10)
                            {
                                bits = 100;
                            }
                            if (pn == 11)
                            {
                                bits = 169;
                            }
                            if (pn == 12)
                            {
                                bits = 169;
                            }
                            if (pn == 13)
                            {
                                bits = 324;
                            }
                            if (pn == 14)
                            {
                                bits = 100;
                            }
                            if (pn == 15)
                            {
                                bits = 169;
                            }
                        }
                        else if (pack_num == 128)
                        {
                            if (pn == 1)
                            {
                                bits = 126;
                            }
                            if (pn == 2)
                            {
                                bits = 126;
                            }
                            if (pn == 3)
                            {
                                bits = 100;
                            }
                            if (pn == 4)
                            {
                                bits = 96;
                            }
                            if (pn == 5)
                            {
                                bits = 96;
                            }
                            if (pn == 6)
                            {
                                bits = 96;
                            }
                            if (pn == 7)
                            {
                                bits = 100;
                            }
                            if (pn == 8)
                            {
                                bits = 126;
                            }
                            if (pn == 9)
                            {
                                bits = 96;
                            }
                            if (pn == 10)
                            {
                                bits = 100;
                            }
                            if (pn == 11)
                            {
                                bits = 96;
                            }
                            if (pn == 12)
                            {
                                bits = 100;
                            }
                            if (pn == 13)
                            {
                                bits = 100;
                            }
                            if (pn == 14)
                            {
                                bits = 96;
                            }
                            if (pn == 15)
                            {
                                bits = 96;
                            }
                            if (pn == 16)
                            {
                                bits = 96;
                            }
                            if (pn == 17)
                            {
                                bits = 126;
                            }
                            if (pn == 18)
                            {
                                bits = 96;
                            }
                            if (pn == 19)
                            {
                                bits = 100;
                            }
                            if (pn == 20)
                            {
                                bits = 126;
                            }
                            if (pn == 21)
                            {
                                bits = 96;
                            }
                            if (pn == 22)
                            {
                                bits = 126;
                            }
                            if (pn == 23)
                            {
                                bits = 126;
                            }
                            if (pn == 24)
                            {
                                bits = 96;
                            }
                            if (pn == 25)
                            {
                                bits = 96;
                            }
                        }
                        else if (pack_num == 127)
                        {
                            if (pn == 1)
                            {
                                bits = 425;
                            }
                            if (pn == 2)
                            {
                                bits = 330;
                            }
                            if (pn == 3)
                            {
                                bits = 425;
                            }
                            if (pn == 4)
                            {
                                bits = 330;
                            }
                        }
                        else if (pack_num == 125)
                        {
                            if (pn == 1)
                            {
                                bits = 96;
                            }
                            if (pn == 2)
                            {
                                bits = 96;
                            }
                            if (pn == 3)
                            {
                                bits = 216;
                            }
                            if (pn == 4)
                            {
                                bits = 140;
                            }
                            if (pn == 5)
                            {
                                bits = 168;
                            }
                            if (pn == 6)
                            {
                                bits = 96;
                            }
                            if (pn == 7)
                            {
                                bits = 100;
                            }
                            if (pn == 8)
                            {
                                bits = 96;
                            }
                            if (pn == 9)
                            {
                                bits = 216;
                            }
                            if (pn == 10)
                            {
                                bits = 140;
                            }
                            if (pn == 11)
                            {
                                bits = 140;
                            }
                            if (pn == 12)
                            {
                                bits = 96;
                            }
                            if (pn == 13)
                            {
                                bits = 169;
                            }
                            if (pn == 14)
                            {
                                bits = 216;
                            }
                            if (pn == 15)
                            {
                                bits = 140;
                            }
                            if (pn == 16)
                            {
                                bits = 216;
                            }
                            if (pn == 17)
                            {
                                bits = 96;
                            }
                            if (pn == 18)
                            {
                                bits = 140;
                            }
                            if (pn == 19)
                            {
                                bits = 96;
                            }
                            if (pn == 20)
                            {
                                bits = 96;
                            }
                            if (pn == 21)
                            {
                                bits = 100;
                            }
                            if (pn == 22)
                            {
                                bits = 169;
                            }
                            if (pn == 23)
                            {
                                bits = 216;
                            }
                            if (pn == 24)
                            {
                                bits = 96;
                            }
                            if (pn == 25)
                            {
                                bits = 96;
                            }
                        }
                        else if (pack_num == 124)
                        {
                            if (pn == 1)
                            {
                                bits = 425;
                            }
                            if (pn == 2)
                            {
                                bits = 169;
                            }
                            if (pn == 3)
                            {
                                bits = 810;
                            }
                            if (pn == 4)
                            {
                                bits = 324;
                            }
                            if (pn == 5)
                            {
                                bits = 250;
                            }
                            if (pn == 6)
                            {
                                bits = 640;
                            }
                        }
                        else if (pack_num == 123)
                        {
                            if (pn == 1)
                            {
                                bits = 169;
                            }
                            if (pn == 2)
                            {
                                bits = 324;
                            }
                            if (pn == 3)
                            {
                                bits = 810;
                            }
                            if (pn == 4)
                            {
                                bits = 400;
                            }
                            if (pn == 5)
                            {
                                bits = 425;
                            }
                            if (pn == 6)
                            {
                                bits = 126;
                            }
                            if (pn == 7)
                            {
                                bits = 100;
                            }
                            if (pn == 8)
                            {
                                bits = 126;
                            }
                            if (pn == 9)
                            {
                                bits = 100;
                            }
                            if (pn == 10)
                            {
                                bits = 640;
                                is_pan = 1;
                            }
                            if (pn == 11)
                            {
                                bits = 425;
                            }
                            if (pn == 12)
                            {
                                bits = 140;
                            }
                            if (pn == 13)
                            {
                                bits = 455;
                            }
                            if (pn == 14)
                            {
                                bits = 169;
                            }
                        }
                        else if (pack_num == 122)
                        {
                            if (pn == 1)
                            {
                                bits = 400;
                            }
                            if (pn == 2)
                            {
                                bits = 100;
                            }
                            if (pn == 3)
                            {
                                bits = 169;
                            }
                            if (pn == 4)
                            {
                                bits = 400;
                            }
                            if (pn == 5)
                            {
                                bits = 324;
                            }
                            if (pn == 6)
                            {
                                bits = 324;
                            }
                            if (pn == 7)
                            {
                                bits = 100;
                            }
                            if (pn == 8)
                            {
                                bits = 169;
                            }
                            if (pn == 9)
                            {
                                bits = 169;
                            }
                            if (pn == 10)
                            {
                                bits = 100;
                            }
                            if (pn == 11)
                            {
                                bits = 169;
                            }
                            if (pn == 12)
                            {
                                bits = 169;
                            }
                            if (pn == 13)
                            {
                                bits = 100;
                            }
                            if (pn == 14)
                            {
                                bits = 400;
                            }
                            if (pn == 15)
                            {
                                bits = 100;
                            }
                            if (pn == 16)
                            {
                                bits = 100;
                            }
                            if (pn == 17)
                            {
                                bits = 96;
                            }
                            if (pn == 18)
                            {
                                bits = 100;
                            }
                            if (pn == 19)
                            {
                                bits = 324;
                            }
                        }
                        else if (pack_num == 121)
                        {
                            if (pn == 1)
                            {
                                bits = 96;
                            }
                            if (pn == 2)
                            {
                                bits = 96;
                            }
                            if (pn == 3)
                            {
                                bits = 96;
                            }
                            if (pn == 4)
                            {
                                bits = 140;
                            }
                            if (pn == 5)
                            {
                                bits = 96;
                            }
                            if (pn == 6)
                            {
                                bits = 140;
                            }
                            if (pn == 7)
                            {
                                bits = 96;
                            }
                            if (pn == 8)
                            {
                                bits = 140;
                            }
                            if (pn == 9)
                            {
                                bits = 96;
                            }
                            if (pn == 10)
                            {
                                bits = 140;
                            }
                            if (pn == 11)
                            {
                                bits = 100;
                            }
                            if (pn == 12)
                            {
                                bits = 140;
                            }
                            if (pn == 13)
                            {
                                bits = 96;
                            }
                            if (pn == 14)
                            {
                                bits = 96;
                            }
                            if (pn == 15)
                            {
                                bits = 100;
                            }
                            if (pn == 16)
                            {
                                bits = 140;
                            }
                            if (pn == 17)
                            {
                                bits = 96;
                            }
                            if (pn == 18)
                            {
                                bits = 140;
                            }
                            if (pn == 19)
                            {
                                bits = 96;
                            }
                            if (pn == 20)
                            {
                                bits = 96;
                            }
                            if (pn == 21)
                            {
                                bits = 140;
                            }
                            if (pn == 22)
                            {
                                bits = 96;
                            }
                            if (pn == 23)
                            {
                                bits = 140;
                            }
                            if (pn == 24)
                            {
                                bits = 96;
                            }
                            if (pn == 25)
                            {
                                bits = 140;
                            }
                        }
                        else if (pack_num == 120)
                        {
                            if (pn == 1)
                            {
                                bits = 330;
                            }
                            if (pn == 2)
                            {
                                bits = 216;
                            }
                            if (pn == 3)
                            {
                                bits = 140;
                            }
                            if (pn == 4)
                            {
                                bits = 425;
                            }
                            if (pn == 5)
                            {
                                bits = 330;
                            }
                            if (pn == 6)
                            {
                                bits = 169;
                            }
                            if (pn == 7)
                            {
                                bits = 100;
                            }
                            if (pn == 8)
                            {
                                bits = 640;
                            }
                            if (pn == 9)
                            {
                                bits = 96;
                            }
                            if (pn == 10)
                            {
                                bits = 100;
                            }
                            if (pn == 11)
                            {
                                bits = 324;
                            }
                            if (pn == 12)
                            {
                                bits = 126;
                            }
                            if (pn == 13)
                            {
                                bits = 140;
                            }
                            if (pn == 14)
                            {
                                bits = 216;
                            }
                            if (pn == 15)
                            {
                                bits = 168;
                            }
                            if (pn == 16)
                            {
                                bits = 250;
                            }
                        }
                        else if (pack_num == 119)
                        {
                            if (pn == 1)
                            {
                                bits = 96;
                            }
                            if (pn == 2)
                            {
                                bits = 324;
                            }
                            if (pn == 3)
                            {
                                bits = 216;
                            }
                            if (pn == 4)
                            {
                                bits = 330;
                            }
                            if (pn == 5)
                            {
                                bits = 96;
                            }
                            if (pn == 6)
                            {
                                bits = 140;
                            }
                            if (pn == 7)
                            {
                                bits = 640;
                            }
                            if (pn == 8)
                            {
                                bits = 216;
                            }
                            if (pn == 9)
                            {
                                bits = 216;
                            }
                            if (pn == 10)
                            {
                                bits = 425;
                            }
                            if (pn == 11)
                            {
                                bits = 169;
                            }
                            if (pn == 12)
                            {
                                bits = 425;
                            }
                            if (pn == 13)
                            {
                                bits = 216;
                            }
                            if (pn == 14)
                            {
                                bits = 140;
                            }
                            if (pn == 15)
                            {
                                bits = 324;
                            }
                            if (pn == 16)
                            {
                                bits = 169;
                            }
                            if (pn == 17)
                            {
                                bits = 425;
                            }
                            if (pn == 18)
                            {
                                bits = 96;
                            }
                            if (pn == 19)
                            {
                                bits = 330;
                            }
                            if (pn == 20)
                            {
                                bits = 330;
                            }
                            if (pn == 21)
                            {
                                bits = 140;
                            }
                            if (pn == 22)
                            {
                                bits = 96;
                            }
                            if (pn == 23)
                            {
                                bits = 324;
                            }
                            if (pn == 24)
                            {
                                bits = 169;
                            }
                            if (pn == 25)
                            {
                                bits = 100;
                            }
                        }
                        else if (pack_num == 118)
                        {
                            if (pn == 1)
                            {
                                bits = 216;
                            }
                            if (pn == 2)
                            {
                                bits = 140;
                            }
                            if (pn == 3)
                            {
                                bits = 330;
                            }
                            if (pn == 4)
                            {
                                bits = 140;
                            }
                            if (pn == 5)
                            {
                                bits = 425;
                            }
                            if (pn == 6)
                            {
                                bits = 216;
                            }
                            if (pn == 7)
                            {
                                bits = 324;
                            }
                            if (pn == 8)
                            {
                                bits = 330;
                            }
                            if (pn == 9)
                            {
                                bits = 100;
                            }
                            if (pn == 10)
                            {
                                bits = 169;
                            }
                        }
                        else if (pack_num == 117)
                        {
                            if (pn == 1)
                            {
                                bits = 140;
                            }
                            if (pn == 2)
                            {
                                bits = 140;
                            }
                            if (pn == 3)
                            {
                                bits = 140;
                            }
                            if (pn == 4)
                            {
                                bits = 140;
                            }
                            if (pn == 5)
                            {
                                bits = 140;
                            }
                            if (pn == 6)
                            {
                                bits = 96;
                            }
                            if (pn == 7)
                            {
                                bits = 96;
                            }
                            if (pn == 8)
                            {
                                bits = 96;
                            }
                            if (pn == 9)
                            {
                                bits = 96;
                            }
                            if (pn == 10)
                            {
                                bits = 96;
                            }
                            if (pn == 11)
                            {
                                bits = 96;
                            }
                            if (pn == 12)
                            {
                                bits = 100;
                            }
                            if (pn == 13)
                            {
                                bits = 100;
                            }
                            if (pn == 14)
                            {
                                bits = 100;
                            }
                            if (pn == 15)
                            {
                                bits = 96;
                            }
                            if (pn == 16)
                            {
                                bits = 96;
                            }
                            if (pn == 17)
                            {
                                bits = 96;
                            }
                            if (pn == 18)
                            {
                                bits = 96;
                            }
                            if (pn == 19)
                            {
                                bits = 96;
                            }
                            if (pn == 20)
                            {
                                bits = 100;
                            }
                            if (pn == 21)
                            {
                                bits = 140;
                            }
                            if (pn == 22)
                            {
                                bits = 140;
                            }
                            if (pn == 23)
                            {
                                bits = 140;
                            }
                            if (pn == 24)
                            {
                                bits = 140;
                            }
                            if (pn == 25)
                            {
                                bits = 140;
                            }
                        }
                        else if (pack_num == 116)
                        {
                            if (pn == 1)
                            {
                                bits = 216;
                            }
                            if (pn == 2)
                            {
                                bits = 96;
                            }
                            if (pn == 3)
                            {
                                bits = 100;
                            }
                            if (pn == 4)
                            {
                                bits = 324;
                            }
                            if (pn == 5)
                            {
                                bits = 330;
                            }
                            if (pn == 6)
                            {
                                bits = 400;
                            }
                            if (pn == 7)
                            {
                                bits = 169;
                            }
                            if (pn == 8)
                            {
                                bits = 168;
                            }
                            if (pn == 9)
                            {
                                bits = 425;
                            }
                            if (pn == 10)
                            {
                                bits = 250;
                            }
                            if (pn == 11)
                            {
                                bits = 216;
                            }
                            if (pn == 12)
                            {
                                bits = 96;
                            }
                            if (pn == 13)
                            {
                                bits = 140;
                            }
                            if (pn == 14)
                            {
                                bits = 324;
                            }
                            if (pn == 15)
                            {
                                bits = 425;
                            }
                            if (pn == 16)
                            {
                                bits = 216;
                            }
                            if (pn == 17)
                            {
                                bits = 96;
                            }
                            if (pn == 18)
                            {
                                bits = 640;
                            }
                            if (pn == 19)
                            {
                                bits = 330;
                            }
                            if (pn == 20)
                            {
                                bits = 425;
                            }
                            if (pn == 21)
                            {
                                bits = 140;
                            }
                            if (pn == 22)
                            {
                                bits = 96;
                            }
                            if (pn == 23)
                            {
                                bits = 425;
                            }
                            if (pn == 24)
                            {
                                bits = 400;
                            }
                            if (pn == 25)
                            {
                                bits = 330;
                            }
                        }
                        else if (pack_num == 115)
                        {
                            if (pn == 1)
                            {
                                bits = 330;
                            }
                            if (pn == 2)
                            {
                                bits = 140;
                            }
                            if (pn == 3)
                            {
                                bits = 324;
                            }
                            if (pn == 4)
                            {
                                bits = 425;
                            }
                            if (pn == 5)
                            {
                                bits = 169;
                            }
                            if (pn == 6)
                            {
                                bits = 216;
                            }
                            if (pn == 7)
                            {
                                bits = 100;
                            }
                            if (pn == 8)
                            {
                                bits = 250;
                            }
                            if (pn == 9)
                            {
                                bits = 324;
                            }
                            if (pn == 10)
                            {
                                bits = 96;
                            }
                            if (pn == 11)
                            {
                                bits = 168;
                            }
                            if (pn == 12)
                            {
                                bits = 169;
                            }
                            if (pn == 13)
                            {
                                bits = 330;
                            }
                            if (pn == 14)
                            {
                                bits = 169;
                            }
                            if (pn == 15)
                            {
                                bits = 455;
                            }
                            if (pn == 16)
                            {
                                bits = 169;
                            }
                        }
                        else if (pack_num == 114)
                        {
                            if (pn == 1)
                            {
                                bits = 216;
                            }
                            if (pn == 2)
                            {
                                bits = 140;
                            }
                            if (pn == 3)
                            {
                                bits = 425;
                            }
                            if (pn == 4)
                            {
                                bits = 640;
                            }
                            if (pn == 5)
                            {
                                bits = 96;
                            }
                            if (pn == 6)
                            {
                                bits = 425;
                            }
                            if (pn == 7)
                            {
                                bits = 400;
                            }
                            if (pn == 8)
                            {
                                bits = 324;
                            }
                            if (pn == 9)
                            {
                                bits = 330;
                            }
                            if (pn == 10)
                            {
                                bits = 330;
                            }
                            if (pn == 11)
                            {
                                bits = 425;
                            }
                            if (pn == 12)
                            {
                                bits = 216;
                            }
                            if (pn == 13)
                            {
                                bits = 169;
                            }
                            if (pn == 14)
                            {
                                bits = 216;
                            }
                            if (pn == 15)
                            {
                                bits = 96;
                            }
                            if (pn == 16)
                            {
                                bits = 425;
                            }
                            if (pn == 17)
                            {
                                bits = 216;
                            }
                            if (pn == 18)
                            {
                                bits = 330;
                            }
                            if (pn == 19)
                            {
                                bits = 425;
                            }
                            if (pn == 20)
                            {
                                bits = 216;
                            }
                            if (pn == 21)
                            {
                                bits = 330;
                            }
                            if (pn == 22)
                            {
                                bits = 96;
                            }
                            if (pn == 23)
                            {
                                bits = 216;
                            }
                            if (pn == 24)
                            {
                                bits = 140;
                            }
                            if (pn == 25)
                            {
                                bits = 840;
                            }
                        }
                        else if (pack_num == 113)
                        {
                            if (pn == 1)
                            {
                                bits = 140;
                            }
                            if (pn == 2)
                            {
                                bits = 216;
                            }
                            if (pn == 3)
                            {
                                bits = 324;
                            }
                            if (pn == 4)
                            {
                                bits = 100;
                            }
                            if (pn == 5)
                            {
                                bits = 169;
                            }
                            if (pn == 6)
                            {
                                bits = 330;
                            }
                            if (pn == 7)
                            {
                                bits = 400;
                            }
                            if (pn == 8)
                            {
                                bits = 100;
                            }
                        }
                        else if (pack_num == 112)
                        {
                            if (pn == 1)
                            {
                                bits = 216;
                            }
                            if (pn == 2)
                            {
                                bits = 330;
                            }
                            if (pn == 3)
                            {
                                bits = 425;
                            }
                            if (pn == 4)
                            {
                                bits = 330;
                            }
                            if (pn == 5)
                            {
                                bits = 400;
                            }
                            if (pn == 6)
                            {
                                bits = 330;
                            }
                        }
                        else if (pack_num == 111)
                        {
                            if (pn == 1)
                            {
                                bits = 330;
                            }
                            if (pn == 2)
                            {
                                bits = 400;
                            }
                            if (pn == 3)
                            {
                                bits = 216;
                            }
                            if (pn == 4)
                            {
                                bits = 169;
                            }
                            if (pn == 5)
                            {
                                bits = 100;
                            }
                            if (pn == 6)
                            {
                                bits = 324;
                            }
                            if (pn == 7)
                            {
                                bits = 96;
                            }
                            if (pn == 8)
                            {
                                bits = 100;
                            }
                            if (pn == 9)
                            {
                                bits = 140;
                            }
                            if (pn == 10)
                            {
                                bits = 96;
                            }
                            if (pn == 11)
                            {
                                bits = 140;
                            }
                            if (pn == 12)
                            {
                                bits = 216;
                            }
                            if (pn == 13)
                            {
                                bits = 96;
                            }
                            if (pn == 14)
                            {
                                bits = 216;
                            }
                            if (pn == 15)
                            {
                                bits = 216;
                            }
                            if (pn == 16)
                            {
                                bits = 324;
                            }
                            if (pn == 17)
                            {
                                bits = 169;
                            }
                            if (pn == 18)
                            {
                                bits = 126;
                            }
                            if (pn == 19)
                            {
                                bits = 169;
                            }
                            if (pn == 20)
                            {
                                bits = 140;
                            }
                            if (pn == 21)
                            {
                                bits = 140;
                            }
                            if (pn == 22)
                            {
                                bits = 169;
                            }
                            if (pn == 23)
                            {
                                bits = 330;
                            }
                            if (pn == 24)
                            {
                                bits = 140;
                            }
                            if (pn == 25)
                            {
                                bits = 330;
                            }
                        }
                        else if (pack_num == 110)
                        {
                            if (pn == 1)
                            {
                                bits = 250;
                            }
                            if (pn == 2)
                            {
                                bits = 220;
                            }
                            if (pn == 3)
                            {
                                bits = 96;
                            }
                            if (pn == 4)
                            {
                                bits = 425;
                            }
                            if (pn == 5)
                            {
                                bits = 330;
                            }
                            if (pn == 6)
                            {
                                bits = 216;
                            }
                            if (pn == 7)
                            {
                                bits = 169;
                            }
                            if (pn == 8)
                            {
                                bits = 330;
                            }
                            if (pn == 9)
                            {
                                bits = 455;
                            }
                            if (pn == 10)
                            {
                                bits = 153;
                            }
                            if (pn == 11)
                            {
                                bits = 350;
                            }
                            if (pn == 12)
                            {
                                bits = 250;
                            }
                            if (pn == 13)
                            {
                                bits = 140;
                            }
                            if (pn == 14)
                            {
                                bits = 96;
                            }
                            if (pn == 15)
                            {
                                bits = 140;
                            }
                            if (pn == 16)
                            {
                                bits = 169;
                            }
                            if (pn == 17)
                            {
                                bits = 216;
                            }
                            if (pn == 18)
                            {
                                bits = 100;
                            }
                            if (pn == 19)
                            {
                                bits = 126;
                            }
                            if (pn == 20)
                            {
                                bits = 216;
                            }
                            if (pn == 21)
                            {
                                bits = 169;
                            }
                            if (pn == 22)
                            {
                                bits = 250;
                            }
                            if (pn == 23)
                            {
                                bits = 100;
                            }
                            if (pn == 24)
                            {
                                bits = 400;
                            }
                            if (pn == 25)
                            {
                                bits = 425;
                            }
                        }
                        else if (pack_num == 109)
                        {
                            if (pn == 1)
                            {
                                bits = 250;
                            }
                            if (pn == 2)
                            {
                                bits = 400;
                            }
                            if (pn == 3)
                            {
                                bits = 330;
                            }
                            if (pn == 4)
                            {
                                bits = 425;
                            }
                            if (pn == 5)
                            {
                                bits = 100;
                            }
                            if (pn == 6)
                            {
                                bits = 168;
                            }
                            if (pn == 7)
                            {
                                bits = 330;
                            }
                        }
                        else if (pack_num == 108)
                        {
                            if (pn == 1)
                            {
                                bits = 168;
                            }
                            if (pn == 2)
                            {
                                bits = 216;
                            }
                            if (pn == 3)
                            {
                                bits = 169;
                            }
                            if (pn == 4)
                            {
                                bits = 140;
                            }
                            if (pn == 5)
                            {
                                bits = 455;
                            }
                            if (pn == 6)
                            {
                                bits = 330;
                            }
                            if (pn == 7)
                            {
                                bits = 330;
                            }
                            if (pn == 8)
                            {
                                bits = 324;
                            }
                            if (pn == 9)
                            {
                                bits = 140;
                            }
                            if (pn == 10)
                            {
                                bits = 250;
                            }
                            if (pn == 11)
                            {
                                bits = 330;
                            }
                            if (pn == 12)
                            {
                                bits = 400;
                            }
                            if (pn == 13)
                            {
                                bits = 455;
                            }
                            if (pn == 14)
                            {
                                bits = 168;
                            }
                            if (pn == 15)
                            {
                                bits = 126;
                            }
                            if (pn == 16)
                            {
                                bits = 330;
                            }
                            if (pn == 17)
                            {
                                bits = 250;
                            }
                            if (pn == 18)
                            {
                                bits = 216;
                            }
                            if (pn == 19)
                            {
                                bits = 640;
                            }
                            if (pn == 20)
                            {
                                bits = 169;
                            }
                            if (pn == 21)
                            {
                                bits = 100;
                            }
                            if (pn == 22)
                            {
                                bits = 840;
                            }
                            if (pn == 23)
                            {
                                bits = 168;
                            }
                            if (pn == 24)
                            {
                                bits = 324;
                            }
                            if (pn == 25)
                            {
                                bits = 216;
                            }
                        }
                        else if (pack_num == 107)
                        {
                            if (pn == 1)
                            {
                                bits = 100;
                            }
                            if (pn == 2)
                            {
                                bits = 330;
                            }
                            if (pn == 3)
                            {
                                bits = 140;
                            }
                            if (pn == 4)
                            {
                                bits = 169;
                            }
                            if (pn == 5)
                            {
                                bits = 96;
                            }
                            if (pn == 6)
                            {
                                bits = 96;
                            }
                            if (pn == 7)
                            {
                                bits = 425;
                            }
                        }
                        else if (pack_num == 106)
                        {
                            if (pn == 1)
                            {
                                bits = 140;
                            }
                            if (pn == 2)
                            {
                                bits = 330;
                            }
                            if (pn == 3)
                            {
                                bits = 216;
                            }
                            if (pn == 4)
                            {
                                bits = 330;
                            }
                            if (pn == 5)
                            {
                                bits = 330;
                            }
                            if (pn == 6)
                            {
                                bits = 425;
                            }
                            if (pn == 7)
                            {
                                bits = 216;
                            }
                            if (pn == 8)
                            {
                                bits = 425;
                            }
                            if (pn == 9)
                            {
                                bits = 330;
                            }
                            if (pn == 10)
                            {
                                bits = 140;
                            }
                            if (pn == 11)
                            {
                                bits = 425;
                            }
                            if (pn == 12)
                            {
                                bits = 324;
                            }
                            if (pn == 13)
                            {
                                bits = 330;
                            }
                            if (pn == 14)
                            {
                                bits = 216;
                            }
                            if (pn == 15)
                            {
                                bits = 640;
                            }
                            if (pn == 16)
                            {
                                bits = 330;
                            }
                            if (pn == 17)
                            {
                                bits = 425;
                            }
                            if (pn == 18)
                            {
                                bits = 216;
                            }
                        }
                        else if (pack_num == 105)
                        {
                            if (pn == 1)
                            {
                                bits = 140;
                            }
                            if (pn == 2)
                            {
                                bits = 330;
                            }
                            if (pn == 3)
                            {
                                bits = 216;
                            }
                            if (pn == 4)
                            {
                                bits = 330;
                            }
                            if (pn == 5)
                            {
                                bits = 425;
                            }
                            if (pn == 6)
                            {
                                bits = 216;
                            }
                            if (pn == 7)
                            {
                                bits = 425;
                            }
                            if (pn == 8)
                            {
                                bits = 153;
                            }
                            if (pn == 9)
                            {
                                bits = 140;
                            }
                            if (pn == 10)
                            {
                                bits = 250;
                            }
                            if (pn == 11)
                            {
                                bits = 330;
                            }
                            if (pn == 12)
                            {
                                bits = 640;
                            }
                        }
                        else if (pack_num == 104)
                        {
                            if (pn == 1)
                            {
                                bits = 1000;
                            }
                            if (pn == 2)
                            {
                                bits = 1000;
                            }
                            if (pn == 3)
                            {
                                bits = 1000;
                            }
                            if (pn == 4)
                            {
                                bits = 1000;
                            }
                            if (pn == 5)
                            {
                                bits = 1000;
                            }
                            if (pn == 6)
                            {
                                bits = 1000;
                            }
                            if (pn == 7)
                            {
                                bits = 1000;
                            }
                            if (pn == 8)
                            {
                                bits = 1000;
                            }
                            if (pn == 9)
                            {
                                bits = 1000;
                            }
                            if (pn == 10)
                            {
                                bits = 1000;
                            }
                            if (pn == 11)
                            {
                                bits = 1000;
                            }
                            if (pn == 12)
                            {
                                bits = 1000;
                            }
                        }
                        else if (pack_num == 103)
                        {
                            if (pn == 1)
                            {
                                bits = 216;
                            }
                            if (pn == 2)
                            {
                                bits = 455;
                            }
                            if (pn == 3)
                            {
                                bits = 330;
                            }
                            if (pn == 4)
                            {
                                bits = 350;
                            }
                            if (pn == 5)
                            {
                                bits = 324;
                            }
                            if (pn == 6)
                            {
                                bits = 425;
                            }
                            if (pn == 7)
                            {
                                bits = 330;
                            }
                            if (pn == 8)
                            {
                                bits = 250;
                            }
                            if (pn == 9)
                            {
                                bits = 220;
                            }
                            if (pn == 10)
                            {
                                bits = 216;
                            }
                            if (pn == 11)
                            {
                                bits = 400;
                            }
                            if (pn == 12)
                            {
                                bits = 140;
                            }
                            if (pn == 13)
                            {
                                bits = 216;
                            }
                            if (pn == 14)
                            {
                                bits = 324;
                            }
                            if (pn == 15)
                            {
                                bits = 169;
                            }
                            if (pn == 16)
                            {
                                bits = 330;
                            }
                            if (pn == 17)
                            {
                                bits = 216;
                            }
                            if (pn == 18)
                            {
                                bits = 96;
                            }
                        }
                        else if (pack_num == 102)
                        {
                            if (pn == 1)
                            {
                                bits = 330;
                            }
                            if (pn == 2)
                            {
                                bits = 140;
                            }
                            if (pn == 3)
                            {
                                bits = 324;
                            }
                            if (pn == 4)
                            {
                                bits = 330;
                            }
                            if (pn == 5)
                            {
                                bits = 330;
                            }
                            if (pn == 6)
                            {
                                bits = 425;
                            }
                            if (pn == 7)
                            {
                                bits = 96;
                            }
                            if (pn == 8)
                            {
                                bits = 400;
                            }
                            if (pn == 9)
                            {
                                bits = 324;
                            }
                            if (pn == 10)
                            {
                                bits = 640;
                            }
                            if (pn == 11)
                            {
                                bits = 330;
                            }
                            if (pn == 12)
                            {
                                bits = 216;
                            }
                            if (pn == 13)
                            {
                                bits = 216;
                            }
                            if (pn == 14)
                            {
                                bits = 425;
                            }
                            if (pn == 15)
                            {
                                bits = 640;
                            }
                        }
                        else if (pack_num == 101)
                        {
                            if (pn == 1)
                            {
                                bits = 250;
                            }
                            if (pn == 2)
                            {
                                bits = 216;
                            }
                            if (pn == 3)
                            {
                                bits = 140;
                            }
                            if (pn == 4)
                            {
                                bits = 216;
                            }
                            if (pn == 5)
                            {
                                bits = 169;
                            }
                            if (pn == 6)
                            {
                                bits = 324;
                            }
                            if (pn == 7)
                            {
                                bits = 330;
                            }
                            if (pn == 8)
                            {
                                bits = 425;
                            }
                            if (pn == 9)
                            {
                                bits = 425;
                            }
                            if (pn == 10)
                            {
                                bits = 140;
                            }
                            if (pn == 11)
                            {
                                bits = 330;
                            }
                            if (pn == 12)
                            {
                                bits = 168;
                            }
                            if (pn == 13)
                            {
                                bits = 216;
                            }
                            if (pn == 14)
                            {
                                bits = 400;
                            }
                            if (pn == 15)
                            {
                                bits = 330;
                            }
                            if (pn == 16)
                            {
                                bits = 425;
                            }
                            if (pn == 17)
                            {
                                bits = 455;
                            }
                        }
                        else if (pack_num == 100)
                        {
                            if (pn == 1)
                            {
                                bits = 250;
                            }
                            if (pn == 2)
                            {
                                bits = 140;
                            }
                            if (pn == 3)
                            {
                                bits = 324;
                            }
                            if (pn == 4)
                            {
                                bits = 96;
                            }
                            if (pn == 5)
                            {
                                bits = 400;
                            }
                            if (pn == 6)
                            {
                                bits = 169;
                            }
                            if (pn == 7)
                            {
                                bits = 216;
                            }
                            if (pn == 8)
                            {
                                bits = 330;
                            }
                            if (pn == 9)
                            {
                                bits = 126;
                            }
                            if (pn == 10)
                            {
                                bits = 100;
                            }
                            if (pn == 11)
                            {
                                bits = 455;
                            }
                            if (pn == 12)
                            {
                                bits = 126;
                            }
                            if (pn == 13)
                            {
                                bits = 324;
                            }
                            if (pn == 14)
                            {
                                bits = 455;
                            }
                            if (pn == 15)
                            {
                                bits = 140;
                            }
                            if (pn == 16)
                            {
                                bits = 425;
                            }
                            if (pn == 17)
                            {
                                bits = 330;
                            }
                            if (pn == 18)
                            {
                                bits = 169;
                            }
                            if (pn == 19)
                            {
                                bits = 216;
                            }
                            if (pn == 20)
                            {
                                bits = 350;
                            }
                            if (pn == 21)
                            {
                                bits = 250;
                            }
                            if (pn == 22)
                            {
                                bits = 640;
                            }
                            if (pn == 23)
                            {
                                bits = 330;
                            }
                            if (pn == 24)
                            {
                                bits = 216;
                            }
                            if (pn == 25)
                            {
                                bits = 425;
                            }
                        }
                        else if (pack_num == 99)
                        {
                            if (pn == 1)
                            {
                                bits = 140;
                            }
                            if (pn == 2)
                            {
                                bits = 330;
                            }
                            if (pn == 3)
                            {
                                bits = 640;
                            }
                            if (pn == 4)
                            {
                                bits = 840;
                            }
                            if (pn == 5)
                            {
                                bits = 425;
                            }
                            if (pn == 6)
                            {
                                bits = 400;
                            }
                            if (pn == 7)
                            {
                                bits = 455;
                            }
                            if (pn == 8)
                            {
                                bits = 330;
                            }
                            if (pn == 9)
                            {
                                bits = 425;
                            }
                            if (pn == 10)
                            {
                                bits = 425;
                            }
                            if (pn == 11)
                            {
                                bits = 96;
                            }
                            if (pn == 12)
                            {
                                bits = 169;
                            }
                            if (pn == 13)
                            {
                                bits = 425;
                            }
                            if (pn == 14)
                            {
                                bits = 216;
                            }
                            if (pn == 15)
                            {
                                bits = 140;
                            }
                            if (pn == 16)
                            {
                                bits = 330;
                            }
                            if (pn == 17)
                            {
                                bits = 324;
                            }
                            if (pn == 18)
                            {
                                bits = 250;
                            }
                            if (pn == 19)
                            {
                                bits = 330;
                            }
                            if (pn == 20)
                            {
                                bits = 216;
                            }
                            if (pn == 21)
                            {
                                bits = 640;
                            }
                            if (pn == 22)
                            {
                                bits = 96;
                            }
                            if (pn == 23)
                            {
                                bits = 216;
                            }
                            if (pn == 24)
                            {
                                bits = 330;
                            }
                            if (pn == 25)
                            {
                                bits = 324;
                            }
                        }
                        else if (pack_num == 98)
                        {
                            if (pn == 1)
                            {
                                bits = 169;
                            }
                            if (pn == 2)
                            {
                                bits = 330;
                            }
                            if (pn == 3)
                            {
                                bits = 140;
                            }
                            if (pn == 4)
                            {
                                bits = 96;
                            }
                            if (pn == 5)
                            {
                                bits = 330;
                            }
                            if (pn == 6)
                            {
                                bits = 96;
                            }
                            if (pn == 7)
                            {
                                bits = 330;
                            }
                            if (pn == 8)
                            {
                                bits = 330;
                            }
                            if (pn == 9)
                            {
                                bits = 425;
                            }
                            if (pn == 10)
                            {
                                bits = 676;
                            }
                            if (pn == 11)
                            {
                                bits = 330;
                            }
                            if (pn == 12)
                            {
                                bits = 425;
                            }
                            if (pn == 13)
                            {
                                bits = 400;
                            }
                            if (pn == 14)
                            {
                                bits = 640;
                            }
                            if (pn == 15)
                            {
                                bits = 425;
                            }
                            if (pn == 16)
                            {
                                bits = 330;
                            }
                            if (pn == 17)
                            {
                                bits = 216;
                            }
                            if (pn == 18)
                            {
                                bits = 100;
                            }
                            if (pn == 19)
                            {
                                bits = 330;
                            }
                            if (pn == 20)
                            {
                                bits = 640;
                            }
                            if (pn == 21)
                            {
                                bits = 455;
                            }
                            if (pn == 22)
                            {
                                bits = 400;
                            }
                            if (pn == 23)
                            {
                                bits = 140;
                            }
                            if (pn == 24)
                            {
                                bits = 96;
                            }
                            if (pn == 25)
                            {
                                bits = 250;
                            }
                        }
                        else if (pack_num == 97)
                        {
                            if (pn == 1)
                            {
                                bits = 216;
                            }
                            if (pn == 2)
                            {
                                bits = 330;
                            }
                            if (pn == 3)
                            {
                                bits = 216;
                            }
                            if (pn == 4)
                            {
                                bits = 425;
                            }
                            if (pn == 5)
                            {
                                bits = 640;
                            }
                            if (pn == 6)
                            {
                                bits = 250;
                            }
                            if (pn == 7)
                            {
                                bits = 1000;
                            }
                            if (pn == 8)
                            {
                                bits = 640;
                            }
                            if (pn == 9)
                            {
                                bits = 425;
                            }
                            if (pn == 10)
                            {
                                bits = 400;
                            }
                            if (pn == 11)
                            {
                                bits = 96;
                            }
                            if (pn == 12)
                            {
                                bits = 250;
                            }
                            if (pn == 13)
                            {
                                bits = 840;
                            }
                            if (pn == 14)
                            {
                                bits = 400;
                            }
                            if (pn == 15)
                            {
                                bits = 324;
                            }
                            if (pn == 16)
                            {
                                bits = 140;
                            }
                            if (pn == 17)
                            {
                                bits = 350;
                            }
                            if (pn == 18)
                            {
                                bits = 169;
                            }
                            if (pn == 19)
                            {
                                bits = 455;
                            }
                            if (pn == 20)
                            {
                                bits = 330;
                            }
                            if (pn == 21)
                            {
                                bits = 96;
                            }
                            if (pn == 22)
                            {
                                bits = 324;
                            }
                            if (pn == 23)
                            {
                                bits = 425;
                            }
                            if (pn == 24)
                            {
                                bits = 220;
                            }
                            if (pn == 25)
                            {
                                bits = 140;
                            }
                        }
                        else if (pack_num == 96)
                        {
                            if (pn == 1)
                            {
                                bits = 330;
                            }
                            if (pn == 2)
                            {
                                bits = 350;
                            }
                            if (pn == 3)
                            {
                                bits = 425;
                            }
                            if (pn == 4)
                            {
                                bits = 640;
                            }
                            if (pn == 5)
                            {
                                bits = 400;
                            }
                            if (pn == 6)
                            {
                                bits = 330;
                            }
                            if (pn == 7)
                            {
                                bits = 96;
                            }
                            if (pn == 8)
                            {
                                bits = 324;
                            }
                            if (pn == 9)
                            {
                                bits = 140;
                            }
                            if (pn == 10)
                            {
                                bits = 216;
                            }
                            if (pn == 11)
                            {
                                bits = 220;
                            }
                            if (pn == 12)
                            {
                                bits = 455;
                            }
                            if (pn == 13)
                            {
                                bits = 330;
                            }
                            if (pn == 14)
                            {
                                bits = 425;
                            }
                            if (pn == 15)
                            {
                                bits = 140;
                            }
                            if (pn == 16)
                            {
                                bits = 330;
                            }
                            if (pn == 17)
                            {
                                bits = 425;
                            }
                            if (pn == 18)
                            {
                                bits = 400;
                            }
                            if (pn == 19)
                            {
                                bits = 425;
                            }
                            if (pn == 20)
                            {
                                bits = 96;
                            }
                            if (pn == 21)
                            {
                                bits = 324;
                            }
                            if (pn == 22)
                            {
                                bits = 250;
                            }
                            if (pn == 23)
                            {
                                bits = 324;
                            }
                            if (pn == 24)
                            {
                                bits = 400;
                            }
                            if (pn == 25)
                            {
                                bits = 330;
                            }
                        }
                        else if (pack_num == 95)
                        {
                            if (pn == 1)
                            {
                                bits = 330;
                            }
                            if (pn == 2)
                            {
                                bits = 640;
                            }
                            if (pn == 3)
                            {
                                bits = 330;
                            }
                            if (pn == 4)
                            {
                                bits = 169;
                            }
                            if (pn == 5)
                            {
                                bits = 330;
                            }
                            if (pn == 6)
                            {
                                bits = 216;
                            }
                            if (pn == 7)
                            {
                                bits = 330;
                            }
                            if (pn == 8)
                            {
                                bits = 425;
                            }
                            if (pn == 9)
                            {
                                bits = 640;
                            }
                            if (pn == 10)
                            {
                                bits = 140;
                            }
                            if (pn == 11)
                            {
                                bits = 96;
                            }
                            if (pn == 12)
                            {
                                bits = 330;
                            }
                            if (pn == 13)
                            {
                                bits = 330;
                            }
                            if (pn == 14)
                            {
                                bits = 400;
                            }
                            if (pn == 15)
                            {
                                bits = 140;
                            }
                            if (pn == 16)
                            {
                                bits = 330;
                            }
                            if (pn == 17)
                            {
                                bits = 425;
                            }
                            if (pn == 18)
                            {
                                bits = 216;
                            }
                            if (pn == 19)
                            {
                                bits = 324;
                            }
                            if (pn == 20)
                            {
                                bits = 455;
                            }
                            if (pn == 21)
                            {
                                bits = 425;
                            }
                            if (pn == 22)
                            {
                                bits = 330;
                            }
                            if (pn == 23)
                            {
                                bits = 250;
                            }
                            if (pn == 24)
                            {
                                bits = 330;
                            }
                            if (pn == 25)
                            {
                                bits = 676;
                            }
                        }
                        else if (pack_num == 94)
                        {
                            if (pn == 1)
                            {
                                bits = 168;
                            }
                            if (pn == 2)
                            {
                                bits = 250;
                            }
                            if (pn == 3)
                            {
                                bits = 425;
                            }
                            if (pn == 4)
                            {
                                bits = 169;
                            }
                            if (pn == 5)
                            {
                                bits = 455;
                            }
                            if (pn == 6)
                            {
                                bits = 400;
                            }
                            if (pn == 7)
                            {
                                bits = 330;
                            }
                            if (pn == 8)
                            {
                                bits = 455;
                            }
                            if (pn == 9)
                            {
                                bits = 250;
                            }
                            if (pn == 10)
                            {
                                bits = 330;
                            }
                            if (pn == 11)
                            {
                                bits = 216;
                            }
                            if (pn == 12)
                            {
                                bits = 126;
                            }
                            if (pn == 13)
                            {
                                bits = 425;
                            }
                            if (pn == 14)
                            {
                                bits = 250;
                            }
                            if (pn == 15)
                            {
                                bits = 216;
                            }
                            if (pn == 16)
                            {
                                bits = 330;
                            }
                            if (pn == 17)
                            {
                                bits = 324;
                            }
                            if (pn == 18)
                            {
                                bits = 330;
                            }
                            if (pn == 19)
                            {
                                bits = 216;
                            }
                            if (pn == 20)
                            {
                                bits = 425;
                            }
                            if (pn == 21)
                            {
                                bits = 330;
                            }
                            if (pn == 22)
                            {
                                bits = 330;
                            }
                            if (pn == 23)
                            {
                                bits = 216;
                            }
                            if (pn == 24)
                            {
                                bits = 425;
                            }
                            if (pn == 25)
                            {
                                bits = 216;
                            }
                        }
                        else if (pack_num == 93)
                        {
                            if (pn == 1)
                            {
                                bits = 140;
                            }
                            if (pn == 2)
                            {
                                bits = 455;
                            }
                            if (pn == 3)
                            {
                                bits = 216;
                            }
                            if (pn == 4)
                            {
                                bits = 425;
                            }
                            if (pn == 5)
                            {
                                bits = 330;
                            }
                            if (pn == 6)
                            {
                                bits = 400;
                            }
                            if (pn == 7)
                            {
                                bits = 250;
                            }
                            if (pn == 8)
                            {
                                bits = 330;
                            }
                            if (pn == 9)
                            {
                                bits = 96;
                            }
                            if (pn == 10)
                            {
                                bits = 640;
                            }
                            if (pn == 11)
                            {
                                bits = 330;
                            }
                            if (pn == 12)
                            {
                                bits = 1000;
                            }
                            if (pn == 13)
                            {
                                bits = 169;
                            }
                            if (pn == 14)
                            {
                                bits = 400;
                            }
                            if (pn == 15)
                            {
                                bits = 330;
                            }
                            if (pn == 16)
                            {
                                bits = 140;
                            }
                            if (pn == 17)
                            {
                                bits = 330;
                            }
                            if (pn == 18)
                            {
                                bits = 126;
                            }
                            if (pn == 19)
                            {
                                bits = 169;
                            }
                            if (pn == 20)
                            {
                                bits = 96;
                            }
                            if (pn == 21)
                            {
                                bits = 216;
                            }
                            if (pn == 22)
                            {
                                bits = 324;
                            }
                            if (pn == 23)
                            {
                                bits = 330;
                            }
                        }
                        else if (pack_num == 92)
                        {
                            if (pn == 1)
                            {
                                bits = 640;
                            }
                            if (pn == 2)
                            {
                                bits = 250;
                            }
                            if (pn == 3)
                            {
                                bits = 96;
                            }
                            if (pn == 4)
                            {
                                bits = 425;
                            }
                            if (pn == 5)
                            {
                                bits = 330;
                            }
                            if (pn == 6)
                            {
                                bits = 840;
                            }
                            if (pn == 7)
                            {
                                bits = 126;
                            }
                            if (pn == 8)
                            {
                                bits = 425;
                            }
                            if (pn == 9)
                            {
                                bits = 330;
                            }
                            if (pn == 10)
                            {
                                bits = 330;
                            }
                            if (pn == 11)
                            {
                                bits = 425;
                            }
                            if (pn == 12)
                            {
                                bits = 330;
                            }
                            if (pn == 13)
                            {
                                bits = 216;
                            }
                        }
                        else if (pack_num == 91)
                        {
                            if (pn == 1)
                            {
                                bits = 640;
                            }
                            if (pn == 2)
                            {
                                bits = 640;
                            }
                            if (pn == 3)
                            {
                                bits = 840;
                            }
                            if (pn == 4)
                            {
                                bits = 676;
                            }
                            if (pn == 5)
                            {
                                bits = 810;
                            }
                            if (pn == 6)
                            {
                                bits = 1000;
                            }
                            if (pn == 7)
                            {
                                bits = 1410;
                            }
                            if (pn == 8)
                            {
                                bits = 640;
                            }
                            if (pn == 9)
                            {
                                bits = 840;
                            }
                            if (pn == 10)
                            {
                                bits = 840;
                            }
                            if (pn == 11)
                            {
                                bits = 840;
                            }
                            if (pn == 12)
                            {
                                bits = 841;
                            }
                            if (pn == 13)
                            {
                                bits = 640;
                            }
                            if (pn == 14)
                            {
                                bits = 1000;
                            }
                            if (pn == 15)
                            {
                                bits = 840;
                            }
                        }
                        else if (pack_num == 90)
                        {
                            if (pn == 1)
                            {
                                bits = 425;
                            }
                            if (pn == 2)
                            {
                                bits = 140;
                            }
                            if (pn == 3)
                            {
                                bits = 455;
                            }
                            if (pn == 4)
                            {
                                bits = 330;
                            }
                            if (pn == 5)
                            {
                                bits = 425;
                            }
                            if (pn == 6)
                            {
                                bits = 250;
                            }
                            if (pn == 7)
                            {
                                bits = 425;
                            }
                            if (pn == 8)
                            {
                                bits = 216;
                            }
                            if (pn == 9)
                            {
                                bits = 216;
                            }
                            if (pn == 10)
                            {
                                bits = 216;
                            }
                            if (pn == 11)
                            {
                                bits = 425;
                            }
                            if (pn == 12)
                            {
                                bits = 640;
                            }
                            if (pn == 13)
                            {
                                bits = 330;
                            }
                            if (pn == 14)
                            {
                                bits = 96;
                            }
                            if (pn == 15)
                            {
                                bits = 425;
                            }
                            if (pn == 16)
                            {
                                bits = 140;
                            }
                            if (pn == 17)
                            {
                                bits = 96;
                            }
                            if (pn == 18)
                            {
                                bits = 330;
                            }
                            if (pn == 19)
                            {
                                bits = 400;
                            }
                            if (pn == 20)
                            {
                                bits = 140;
                            }
                        }
                        else if (pack_num == 89)
                        {
                            if (pn == 1)
                            {
                                bits = 324;
                            }
                            if (pn == 2)
                            {
                                bits = 330;
                            }
                            if (pn == 3)
                            {
                                bits = 425;
                            }
                            if (pn == 4)
                            {
                                bits = 216;
                            }
                            if (pn == 5)
                            {
                                bits = 400;
                            }
                            if (pn == 6)
                            {
                                bits = 330;
                            }
                            if (pn == 7)
                            {
                                bits = 330;
                            }
                            if (pn == 8)
                            {
                                bits = 400;
                            }
                            if (pn == 9)
                            {
                                bits = 324;
                            }
                            if (pn == 10)
                            {
                                bits = 640;
                            }
                            if (pn == 11)
                            {
                                bits = 640;
                            }
                            if (pn == 12)
                            {
                                bits = 100;
                            }
                            if (pn == 13)
                            {
                                bits = 96;
                            }
                            if (pn == 14)
                            {
                                bits = 140;
                            }
                            if (pn == 15)
                            {
                                bits = 169;
                            }
                            if (pn == 16)
                            {
                                bits = 216;
                            }
                            if (pn == 17)
                            {
                                bits = 840;
                            }
                            if (pn == 18)
                            {
                                bits = 140;
                            }
                            if (pn == 19)
                            {
                                bits = 324;
                            }
                        }
                        else if (pack_num == 88)
                        {
                            if (pn == 1)
                            {
                                bits = 250;
                            }
                            if (pn == 2)
                            {
                                bits = 330;
                            }
                            if (pn == 3)
                            {
                                bits = 324;
                            }
                            if (pn == 4)
                            {
                                bits = 425;
                            }
                            if (pn == 5)
                            {
                                bits = 330;
                            }
                            if (pn == 6)
                            {
                                bits = 216;
                            }
                            if (pn == 7)
                            {
                                bits = 324;
                            }
                            if (pn == 8)
                            {
                                bits = 324;
                            }
                            if (pn == 9)
                            {
                                bits = 330;
                            }
                            if (pn == 10)
                            {
                                bits = 330;
                            }
                            if (pn == 11)
                            {
                                bits = 216;
                            }
                            if (pn == 12)
                            {
                                bits = 400;
                            }
                            if (pn == 13)
                            {
                                bits = 425;
                            }
                            if (pn == 14)
                            {
                                bits = 640;
                            }
                            if (pn == 15)
                            {
                                bits = 330;
                            }
                            if (pn == 16)
                            {
                                bits = 350;
                            }
                            if (pn == 17)
                            {
                                bits = 400;
                            }
                        }
                        else if (pack_num == 87)
                        {
                            if (pn == 1)
                            {
                                bits = 330;
                            }
                            if (pn == 2)
                            {
                                bits = 425;
                            }
                            if (pn == 3)
                            {
                                bits = 216;
                            }
                            if (pn == 4)
                            {
                                bits = 96;
                            }
                            if (pn == 5)
                            {
                                bits = 324;
                            }
                            if (pn == 6)
                            {
                                bits = 425;
                            }
                            if (pn == 7)
                            {
                                bits = 216;
                            }
                            if (pn == 8)
                            {
                                bits = 330;
                            }
                            if (pn == 9)
                            {
                                bits = 425;
                            }
                            if (pn == 10)
                            {
                                bits = 330;
                            }
                            if (pn == 11)
                            {
                                bits = 425;
                            }
                            if (pn == 12)
                            {
                                bits = 250;
                            }
                            if (pn == 13)
                            {
                                bits = 324;
                            }
                            if (pn == 14)
                            {
                                bits = 425;
                            }
                            if (pn == 15)
                            {
                                bits = 400;
                            }
                            if (pn == 16)
                            {
                                bits = 330;
                            }
                            if (pn == 17)
                            {
                                bits = 168;
                            }
                            if (pn == 18)
                            {
                                bits = 250;
                            }
                            if (pn == 19)
                            {
                                bits = 350;
                            }
                            if (pn == 20)
                            {
                                bits = 455;
                            }
                            if (pn == 21)
                            {
                                bits = 330;
                            }
                            if (pn == 22)
                            {
                                bits = 425;
                            }
                            if (pn == 23)
                            {
                                bits = 330;
                            }
                            if (pn == 24)
                            {
                                bits = 350;
                            }
                            if (pn == 25)
                            {
                                bits = 330;
                            }
                        }
                        else if (pack_num == 86)
                        {
                            if (pn == 1)
                            {
                                bits = 425;
                            }
                            if (pn == 2)
                            {
                                bits = 400;
                            }
                            if (pn == 3)
                            {
                                bits = 640;
                            }
                            if (pn == 4)
                            {
                                bits = 676;
                            }
                            if (pn == 5)
                            {
                                bits = 640;
                            }
                            if (pn == 6)
                            {
                                bits = 455;
                            }
                            if (pn == 7)
                            {
                                bits = 330;
                            }
                            if (pn == 8)
                            {
                                bits = 640;
                            }
                            if (pn == 9)
                            {
                                bits = 330;
                            }
                            if (pn == 10)
                            {
                                bits = 425;
                            }
                            if (pn == 11)
                            {
                                bits = 425;
                            }
                            if (pn == 12)
                            {
                                bits = 425;
                            }
                            if (pn == 13)
                            {
                                bits = 840;
                            }
                            if (pn == 14)
                            {
                                bits = 330;
                            }
                            if (pn == 15)
                            {
                                bits = 330;
                            }
                            if (pn == 16)
                            {
                                bits = 330;
                            }
                        }
                        else if (pack_num == 85)
                        {
                            if (pn == 1)
                            {
                                bits = 330;
                            }
                            if (pn == 2)
                            {
                                bits = 169;
                            }
                            if (pn == 3)
                            {
                                bits = 400;
                            }
                            if (pn == 4)
                            {
                                bits = 250;
                            }
                            if (pn == 5)
                            {
                                bits = 425;
                            }
                            if (pn == 6)
                            {
                                bits = 324;
                            }
                            if (pn == 7)
                            {
                                bits = 350;
                            }
                            if (pn == 8)
                            {
                                bits = 168;
                            }
                            if (pn == 9)
                            {
                                bits = 330;
                            }
                            if (pn == 10)
                            {
                                bits = 425;
                            }
                            if (pn == 11)
                            {
                                bits = 455;
                            }
                            if (pn == 12)
                            {
                                bits = 330;
                            }
                            if (pn == 13)
                            {
                                bits = 425;
                            }
                            if (pn == 14)
                            {
                                bits = 216;
                            }
                            if (pn == 15)
                            {
                                bits = 400;
                            }
                            if (pn == 16)
                            {
                                bits = 330;
                            }
                            if (pn == 17)
                            {
                                bits = 96;
                            }
                            if (pn == 18)
                            {
                                bits = 216;
                            }
                            if (pn == 19)
                            {
                                bits = 425;
                            }
                            if (pn == 20)
                            {
                                bits = 330;
                            }
                            if (pn == 21)
                            {
                                bits = 96;
                            }
                            if (pn == 22)
                            {
                                bits = 216;
                            }
                            if (pn == 23)
                            {
                                bits = 330;
                            }
                            if (pn == 24)
                            {
                                bits = 250;
                            }
                            if (pn == 25)
                            {
                                bits = 330;
                            }
                        }
                        else if (pack_num == 84)
                        {
                            if (pn == 1)
                            {
                                bits = 400;
                            }
                            if (pn == 2)
                            {
                                bits = 400;
                            }
                            if (pn == 3)
                            {
                                bits = 324;
                            }
                            if (pn == 4)
                            {
                                bits = 169;
                            }
                            if (pn == 5)
                            {
                                bits = 324;
                            }
                            if (pn == 6)
                            {
                                bits = 324;
                            }
                            if (pn == 7)
                            {
                                bits = 169;
                            }
                            if (pn == 8)
                            {
                                bits = 400;
                            }
                            if (pn == 9)
                            {
                                bits = 100;
                            }
                            if (pn == 10)
                            {
                                bits = 220;
                            }
                            if (pn == 11)
                            {
                                bits = 350;
                            }
                            if (pn == 12)
                            {
                                bits = 350;
                            }
                            if (pn == 13)
                            {
                                bits = 455;
                            }
                            if (pn == 14)
                            {
                                bits = 250;
                            }
                            if (pn == 15)
                            {
                                bits = 250;
                            }
                            if (pn == 16)
                            {
                                bits = 455;
                            }
                            if (pn == 17)
                            {
                                bits = 330;
                            }
                            if (pn == 18)
                            {
                                bits = 640;
                            }
                            if (pn == 19)
                            {
                                bits = 425;
                            }
                            if (pn == 20)
                            {
                                bits = 330;
                            }
                            if (pn == 21)
                            {
                                bits = 425;
                            }
                            if (pn == 22)
                            {
                                bits = 455;
                            }
                        }
                        else if (pack_num == 83)
                        {
                            if (pn == 1)
                            {
                                bits = 220;
                            }
                            if (pn == 2)
                            {
                                bits = 220;
                            }
                            if (pn == 3)
                            {
                                bits = 350;
                            }
                            if (pn == 4)
                            {
                                bits = 350;
                            }
                            if (pn == 5)
                            {
                                bits = 220;
                            }
                            if (pn == 6)
                            {
                                bits = 153;
                            }
                            if (pn == 7)
                            {
                                bits = 220;
                            }
                            if (pn == 8)
                            {
                                bits = 250;
                            }
                            if (pn == 9)
                            {
                                bits = 350;
                            }
                            if (pn == 10)
                            {
                                bits = 220;
                            }
                            if (pn == 11)
                            {
                                bits = 400;
                            }
                            if (pn == 12)
                            {
                                bits = 324;
                            }
                            if (pn == 13)
                            {
                                bits = 400;
                            }
                            if (pn == 14)
                            {
                                bits = 455;
                            }
                            if (pn == 15)
                            {
                                bits = 330;
                            }
                            if (pn == 16)
                            {
                                bits = 425;
                            }
                            if (pn == 17)
                            {
                                bits = 216;
                            }
                            if (pn == 18)
                            {
                                bits = 330;
                            }
                            if (pn == 19)
                            {
                                bits = 425;
                            }
                            if (pn == 20)
                            {
                                bits = 330;
                            }
                        }
                        else if (pack_num == 82)
                        {
                            if (pn == 1)
                            {
                                bits = 168;
                            }
                            if (pn == 2)
                            {
                                bits = 126;
                            }
                            if (pn == 3)
                            {
                                bits = 324;
                            }
                            if (pn == 4)
                            {
                                bits = 100;
                            }
                            if (pn == 5)
                            {
                                bits = 330;
                            }
                            if (pn == 6)
                            {
                                bits = 216;
                            }
                            if (pn == 7)
                            {
                                bits = 96;
                            }
                            if (pn == 8)
                            {
                                bits = 324;
                            }
                            if (pn == 9)
                            {
                                bits = 250;
                            }
                            if (pn == 10)
                            {
                                bits = 330;
                            }
                            if (pn == 11)
                            {
                                bits = 140;
                            }
                            if (pn == 12)
                            {
                                bits = 330;
                            }
                            if (pn == 13)
                            {
                                bits = 640;
                                is_pan = 1;
                            }
                            if (pn == 14)
                            {
                                bits = 216;
                            }
                            if (pn == 15)
                            {
                                bits = 168;
                            }
                            if (pn == 16)
                            {
                                bits = 400;
                            }
                            if (pn == 17)
                            {
                                bits = 220;
                            }
                            if (pn == 18)
                            {
                                bits = 425;
                            }
                        }
                        else if (pack_num == 81)
                        {
                            if (pn == 1)
                            {
                                bits = 425;
                            }
                            if (pn == 2)
                            {
                                bits = 140;
                            }
                            if (pn == 3)
                            {
                                bits = 100;
                            }
                            if (pn == 4)
                            {
                                bits = 169;
                            }
                            if (pn == 5)
                            {
                                bits = 220;
                            }
                            if (pn == 6)
                            {
                                bits = 330;
                            }
                            if (pn == 7)
                            {
                                bits = 455;
                            }
                            if (pn == 8)
                            {
                                bits = 330;
                            }
                            if (pn == 9)
                            {
                                bits = 250;
                            }
                            if (pn == 10)
                            {
                                bits = 216;
                            }
                            if (pn == 11)
                            {
                                bits = 250;
                            }
                        }
                        else if (pack_num == 80)
                        {
                            if (pn == 1)
                            {
                                bits = 216;
                            }
                            if (pn == 2)
                            {
                                bits = 350;
                            }
                            if (pn == 3)
                            {
                                bits = 324;
                            }
                            if (pn == 4)
                            {
                                bits = 400;
                            }
                            if (pn == 5)
                            {
                                bits = 216;
                            }
                            if (pn == 6)
                            {
                                bits = 324;
                            }
                            if (pn == 7)
                            {
                                bits = 250;
                            }
                            if (pn == 8)
                            {
                                bits = 169;
                            }
                            if (pn == 9)
                            {
                                bits = 96;
                            }
                            if (pn == 10)
                            {
                                bits = 169;
                            }
                            if (pn == 11)
                            {
                                bits = 140;
                            }
                            if (pn == 12)
                            {
                                bits = 216;
                            }
                            if (pn == 13)
                            {
                                bits = 330;
                            }
                            if (pn == 14)
                            {
                                bits = 140;
                            }
                        }
                        else if (pack_num == 79)
                        {
                            if (pn == 1)
                            {
                                bits = 216;
                            }
                            if (pn == 2)
                            {
                                bits = 455;
                            }
                            if (pn == 3)
                            {
                                bits = 140;
                            }
                            if (pn == 4)
                            {
                                bits = 425;
                            }
                            if (pn == 5)
                            {
                                bits = 250;
                            }
                            if (pn == 6)
                            {
                                bits = 220;
                            }
                            if (pn == 7)
                            {
                                bits = 330;
                            }
                            if (pn == 8)
                            {
                                bits = 425;
                            }
                            if (pn == 9)
                            {
                                bits = 169;
                            }
                            if (pn == 10)
                            {
                                bits = 216;
                            }
                            if (pn == 11)
                            {
                                bits = 96;
                            }
                            if (pn == 12)
                            {
                                bits = 169;
                            }
                            if (pn == 13)
                            {
                                bits = 330;
                            }
                            if (pn == 14)
                            {
                                bits = 400;
                            }
                        }
                        else if (pack_num == 78)
                        {
                            if (pn == 1)
                            {
                                bits = 350;
                            }
                            if (pn == 2)
                            {
                                bits = 216;
                            }
                            if (pn == 3)
                            {
                                bits = 330;
                            }
                            if (pn == 4)
                            {
                                bits = 96;
                            }
                            if (pn == 5)
                            {
                                bits = 455;
                            }
                            if (pn == 6)
                            {
                                bits = 330;
                            }
                            if (pn == 7)
                            {
                                bits = 140;
                            }
                            if (pn == 8)
                            {
                                bits = 425;
                            }
                            if (pn == 9)
                            {
                                bits = 169;
                            }
                            if (pn == 10)
                            {
                                bits = 220;
                            }
                            if (pn == 11)
                            {
                                bits = 330;
                            }
                            if (pn == 12)
                            {
                                bits = 640;
                            }
                        }
                        else if (pack_num == 77)
                        {
                            if (pn == 1)
                            {
                                bits = 330;
                            }
                            if (pn == 2)
                            {
                                bits = 250;
                            }
                            if (pn == 3)
                            {
                                bits = 216;
                            }
                            if (pn == 4)
                            {
                                bits = 220;
                            }
                            if (pn == 5)
                            {
                                bits = 153;
                            }
                            if (pn == 6)
                            {
                                bits = 216;
                            }
                            if (pn == 7)
                            {
                                bits = 250;
                            }
                            if (pn == 8)
                            {
                                bits = 140;
                            }
                            if (pn == 9)
                            {
                                bits = 216;
                            }
                            if (pn == 10)
                            {
                                bits = 126;
                            }
                            if (pn == 11)
                            {
                                bits = 169;
                            }
                            if (pn == 12)
                            {
                                bits = 425;
                            }
                            if (pn == 13)
                            {
                                bits = 324;
                            }
                            if (pn == 14)
                            {
                                bits = 96;
                            }
                            if (pn == 15)
                            {
                                bits = 220;
                            }
                            if (pn == 16)
                            {
                                bits = 169;
                            }
                            if (pn == 17)
                            {
                                bits = 220;
                            }
                            if (pn == 18)
                            {
                                bits = 250;
                            }
                            if (pn == 19)
                            {
                                bits = 350;
                            }
                        }
                        else if (pack_num == 76)
                        {
                            if (pn == 1)
                            {
                                bits = 324;
                            }
                            if (pn == 2)
                            {
                                bits = 216;
                            }
                            if (pn == 3)
                            {
                                bits = 330;
                            }
                            if (pn == 4)
                            {
                                bits = 168;
                            }
                            if (pn == 5)
                            {
                                bits = 250;
                            }
                            if (pn == 6)
                            {
                                bits = 216;
                            }
                            if (pn == 7)
                            {
                                bits = 455;
                            }
                            if (pn == 8)
                            {
                                bits = 425;
                            }
                            if (pn == 9)
                            {
                                bits = 220;
                            }
                            if (pn == 10)
                            {
                                bits = 350;
                            }
                            if (pn == 11)
                            {
                                bits = 330;
                            }
                            if (pn == 12)
                            {
                                bits = 810;
                            }
                            if (pn == 13)
                            {
                                bits = 140;
                            }
                            if (pn == 14)
                            {
                                bits = 96;
                            }
                            if (pn == 15)
                            {
                                bits = 400;
                            }
                            if (pn == 16)
                            {
                                bits = 250;
                            }
                            if (pn == 17)
                            {
                                bits = 153;
                            }
                            if (pn == 18)
                            {
                                bits = 216;
                            }
                            if (pn == 19)
                            {
                                bits = 168;
                            }
                            if (pn == 20)
                            {
                                bits = 676;
                            }
                            if (pn == 21)
                            {
                                bits = 140;
                            }
                            if (pn == 22)
                            {
                                bits = 324;
                            }
                            if (pn == 23)
                            {
                                bits = 250;
                            }
                            if (pn == 24)
                            {
                                bits = 425;
                            }
                            if (pn == 25)
                            {
                                bits = 140;
                            }
                        }
                        else if (pack_num == 74)
                        {
                            if (pn == 1)
                            {
                                bits = 400;
                            }
                            if (pn == 2)
                            {
                                bits = 169;
                            }
                            if (pn == 3)
                            {
                                bits = 324;
                            }
                            if (pn == 4)
                            {
                                bits = 169;
                            }
                            if (pn == 5)
                            {
                                bits = 455;
                            }
                            if (pn == 6)
                            {
                                bits = 455;
                            }
                            if (pn == 7)
                            {
                                bits = 250;
                            }
                            if (pn == 8)
                            {
                                bits = 455;
                            }
                            if (pn == 9)
                            {
                                bits = 250;
                            }
                            if (pn == 10)
                            {
                                bits = 220;
                            }
                            if (pn == 11)
                            {
                                bits = 350;
                            }
                            if (pn == 12)
                            {
                                bits = 220;
                            }
                            if (pn == 13)
                            {
                                bits = 220;
                            }
                            if (pn == 14)
                            {
                                bits = 153;
                            }
                            if (pn == 15)
                            {
                                bits = 153;
                            }
                            if (pn == 16)
                            {
                                bits = 140;
                            }
                            if (pn == 17)
                            {
                                bits = 425;
                            }
                            if (pn == 18)
                            {
                                bits = 330;
                            }
                            if (pn == 19)
                            {
                                bits = 640;
                            }
                            if (pn == 20)
                            {
                                bits = 216;
                            }
                            if (pn == 21)
                            {
                                bits = 330;
                            }
                            if (pn == 22)
                            {
                                bits = 425;
                            }
                            if (pn == 23)
                            {
                                bits = 216;
                            }
                            if (pn == 24)
                            {
                                bits = 330;
                            }
                            if (pn == 25)
                            {
                                bits = 250;
                            }
                        }
                        else if (pack_num == 73)
                        {
                            if (pn == 1)
                            {
                                bits = 324;
                            }
                            if (pn == 2)
                            {
                                bits = 455;
                            }
                            if (pn == 3)
                            {
                                bits = 126;
                            }
                            if (pn == 4)
                            {
                                bits = 455;
                            }
                            if (pn == 5)
                            {
                                bits = 168;
                            }
                            if (pn == 6)
                            {
                                bits = 216;
                            }
                            if (pn == 7)
                            {
                                bits = 425;
                            }
                            if (pn == 8)
                            {
                                bits = 330;
                            }
                            if (pn == 9)
                            {
                                bits = 330;
                            }
                            if (pn == 10)
                            {
                                bits = 350;
                            }
                            if (pn == 11)
                            {
                                bits = 153;
                            }
                            if (pn == 12)
                            {
                                bits = 220;
                            }
                            if (pn == 13)
                            {
                                bits = 250;
                            }
                            if (pn == 14)
                            {
                                bits = 425;
                            }
                        }
                        else if (pack_num == 72)
                        {
                            if (pn == 1)
                            {
                                bits = 400;
                            }
                            if (pn == 2)
                            {
                                bits = 350;
                            }
                            if (pn == 3)
                            {
                                bits = 350;
                            }
                            if (pn == 4)
                            {
                                bits = 168;
                            }
                            if (pn == 5)
                            {
                                bits = 250;
                            }
                            if (pn == 6)
                            {
                                bits = 455;
                            }
                            if (pn == 7)
                            {
                                bits = 250;
                            }
                            if (pn == 8)
                            {
                                bits = 216;
                            }
                            if (pn == 9)
                            {
                                bits = 330;
                            }
                            if (pn == 10)
                            {
                                bits = 425;
                            }
                            if (pn == 11)
                            {
                                bits = 425;
                            }
                            if (pn == 12)
                            {
                                bits = 425;
                            }
                            if (pn == 13)
                            {
                                bits = 330;
                            }
                        }
                        else if (pack_num == 71)
                        {
                            if (pn == 1)
                            {
                                bits = 169;
                            }
                            if (pn == 2)
                            {
                                bits = 324;
                            }
                            if (pn == 3)
                            {
                                bits = 400;
                            }
                            if (pn == 4)
                            {
                                bits = 100;
                            }
                            if (pn == 5)
                            {
                                bits = 455;
                            }
                            if (pn == 6)
                            {
                                bits = 250;
                            }
                            if (pn == 7)
                            {
                                bits = 350;
                            }
                            if (pn == 8)
                            {
                                bits = 220;
                            }
                            if (pn == 9)
                            {
                                bits = 350;
                            }
                            if (pn == 10)
                            {
                                bits = 330;
                            }
                            if (pn == 11)
                            {
                                bits = 425;
                            }
                            if (pn == 12)
                            {
                                bits = 640;
                            }
                        }
                        else if (pack_num == 70)
                        {
                            if (pn == 1)
                            {
                                bits = 324;
                            }
                            if (pn == 2)
                            {
                                bits = 169;
                            }
                            if (pn == 3)
                            {
                                bits = 400;
                            }
                            if (pn == 4)
                            {
                                bits = 324;
                            }
                            if (pn == 5)
                            {
                                bits = 455;
                            }
                            if (pn == 6)
                            {
                                bits = 250;
                            }
                            if (pn == 7)
                            {
                                bits = 455;
                            }
                            if (pn == 8)
                            {
                                bits = 250;
                            }
                            if (pn == 9)
                            {
                                bits = 455;
                            }
                            if (pn == 10)
                            {
                                bits = 220;
                            }
                            if (pn == 11)
                            {
                                bits = 640;
                            }
                            if (pn == 12)
                            {
                                bits = 216;
                            }
                            if (pn == 13)
                            {
                                bits = 330;
                            }
                            if (pn == 14)
                            {
                                bits = 330;
                            }
                            if (pn == 15)
                            {
                                bits = 425;
                            }
                            if (pn == 16)
                            {
                                bits = 216;
                            }
                            if (pn == 17)
                            {
                                bits = 140;
                            }
                            if (pn == 18)
                            {
                                bits = 140;
                            }
                            if (pn == 19)
                            {
                                bits = 350;
                            }
                            if (pn == 20)
                            {
                                bits = 330;
                            }
                            if (pn == 21)
                            {
                                bits = 425;
                            }
                            if (pn == 22)
                            {
                                bits = 330;
                            }
                            if (pn == 23)
                            {
                                bits = 425;
                            }
                            if (pn == 24)
                            {
                                bits = 640;
                            }
                            if (pn == 25)
                            {
                                bits = 425;
                            }
                        }
                        else if (pack_num == 69)
                        {
                            if (pn == 1)
                            {
                                bits = 126;
                            }
                            if (pn == 2)
                            {
                                bits = 220;
                            }
                            if (pn == 3)
                            {
                                bits = 153;
                            }
                            if (pn == 4)
                            {
                                bits = 153;
                            }
                            if (pn == 5)
                            {
                                bits = 220;
                            }
                            if (pn == 6)
                            {
                                bits = 220;
                            }
                            if (pn == 7)
                            {
                                bits = 350;
                            }
                            if (pn == 8)
                            {
                                bits = 400;
                            }
                            if (pn == 9)
                            {
                                bits = 425;
                            }
                            if (pn == 10)
                            {
                                bits = 330;
                            }
                            if (pn == 11)
                            {
                                bits = 330;
                            }
                            if (pn == 12)
                            {
                                bits = 425;
                            }
                            if (pn == 13)
                            {
                                bits = 330;
                            }
                            if (pn == 14)
                            {
                                bits = 216;
                            }
                            if (pn == 15)
                            {
                                bits = 330;
                            }
                            if (pn == 16)
                            {
                                bits = 425;
                            }
                        }
                        else if (pack_num == 68)
                        {
                            if (pn == 1)
                            {
                                bits = 400;
                            }
                            if (pn == 2)
                            {
                                bits = 324;
                            }
                            if (pn == 3)
                            {
                                bits = 100;
                            }
                            if (pn == 4)
                            {
                                bits = 169;
                            }
                            if (pn == 5)
                            {
                                bits = 140;
                            }
                            if (pn == 6)
                            {
                                bits = 216;
                            }
                            if (pn == 7)
                            {
                                bits = 153;
                            }
                            if (pn == 8)
                            {
                                bits = 126;
                            }
                            if (pn == 9)
                            {
                                bits = 168;
                            }
                        }
                        else if (pack_num == 67)
                        {
                            if (pn == 1)
                            {
                                bits = 250;
                            }
                            if (pn == 2)
                            {
                                bits = 400;
                            }
                            if (pn == 3)
                            {
                                bits = 324;
                            }
                            if (pn == 4)
                            {
                                bits = 169;
                            }
                            if (pn == 5)
                            {
                                bits = 169;
                            }
                            if (pn == 6)
                            {
                                bits = 400;
                            }
                            if (pn == 7)
                            {
                                bits = 676;
                            }
                            if (pn == 8)
                            {
                                bits = 220;
                            }
                            if (pn == 9)
                            {
                                bits = 350;
                            }
                            if (pn == 10)
                            {
                                bits = 330;
                            }
                            if (pn == 11)
                            {
                                bits = 216;
                            }
                            if (pn == 12)
                            {
                                bits = 140;
                            }
                            if (pn == 13)
                            {
                                bits = 640;
                            }
                            if (pn == 14)
                            {
                                bits = 330;
                            }
                            if (pn == 15)
                            {
                                bits = 96;
                            }
                            if (pn == 16)
                            {
                                bits = 330;
                            }
                            if (pn == 17)
                            {
                                bits = 640;
                            }
                        }
                        else if (pack_num == 66)
                        {
                            if (pn == 1)
                            {
                                bits = 140;
                            }
                            if (pn == 2)
                            {
                                bits = 216;
                            }
                            if (pn == 3)
                            {
                                bits = 400;
                            }
                            if (pn == 4)
                            {
                                bits = 126;
                            }
                            if (pn == 5)
                            {
                                bits = 153;
                            }
                            if (pn == 6)
                            {
                                bits = 126;
                            }
                            if (pn == 7)
                            {
                                bits = 324;
                            }
                            if (pn == 8)
                            {
                                bits = 169;
                            }
                            if (pn == 9)
                            {
                                bits = 220;
                            }
                            if (pn == 10)
                            {
                                bits = 153;
                            }
                            if (pn == 11)
                            {
                                bits = 350;
                            }
                            if (pn == 12)
                            {
                                bits = 96;
                            }
                            if (pn == 13)
                            {
                                bits = 112;
                            }
                            if (pn == 14)
                            {
                                bits = 216;
                            }
                            if (pn == 15)
                            {
                                bits = 330;
                            }
                            if (pn == 16)
                            {
                                bits = 250;
                            }
                            if (pn == 17)
                            {
                                bits = 400;
                            }
                            if (pn == 18)
                            {
                                bits = 330;
                            }
                        }
                        else if (pack_num == 65)
                        {
                            if (pn == 1)
                            {
                                bits = 640;
                            }
                            if (pn == 2)
                            {
                                bits = 216;
                            }
                            if (pn == 3)
                            {
                                bits = 330;
                            }
                            if (pn == 4)
                            {
                                bits = 425;
                            }
                            if (pn == 5)
                            {
                                bits = 169;
                            }
                            if (pn == 6)
                            {
                                bits = 100;
                            }
                            if (pn == 7)
                            {
                                bits = 640;
                                is_pan = 1;
                            }
                        }
                        else if (pack_num == 64)
                        {
                            if (pn == 1)
                            {
                                bits = 1000;
                            }
                        }
                        else if (pack_num == 63)
                        {
                            if (pn == 1)
                            {
                                bits = 330;
                            }
                            if (pn == 2)
                            {
                                bits = 324;
                            }
                            if (pn == 3)
                            {
                                bits = 112;
                            }
                            if (pn == 4)
                            {
                                bits = 640;
                                is_pan = 1;
                            }
                            if (pn == 5)
                            {
                                bits = 220;
                            }
                            if (pn == 6)
                            {
                                bits = 400;
                            }
                        }
                        else if (pack_num == 62)
                        {
                            if (pn == 1)
                            {
                                bits = 400;
                            }
                            if (pn == 2)
                            {
                                bits = 216;
                            }
                            if (pn == 3)
                            {
                                bits = 216;
                            }
                            if (pn == 4)
                            {
                                bits = 425;
                            }
                            if (pn == 5)
                            {
                                bits = 168;
                            }
                            if (pn == 6)
                            {
                                bits = 640;
                                is_pan = 1;
                            }
                            if (pn == 7)
                            {
                                bits = 640;
                                is_pan = 1;
                            }
                            if (pn == 8)
                            {
                                bits = 425;
                            }
                        }
                        else if (pack_num == 61)
                        {
                            if (pn == 1)
                            {
                                bits = 100;
                            }
                            if (pn == 2)
                            {
                                bits = 169;
                            }
                            if (pn == 3)
                            {
                                bits = 324;
                            }
                            if (pn == 4)
                            {
                                bits = 400;
                            }
                            if (pn == 5)
                            {
                                bits = 400;
                            }
                            if (pn == 6)
                            {
                                bits = 676;
                            }
                            if (pn == 7)
                            {
                                bits = 250;
                            }
                            if (pn == 8)
                            {
                                bits = 455;
                            }
                            if (pn == 9)
                            {
                                bits = 140;
                            }
                            if (pn == 10)
                            {
                                bits = 216;
                            }
                            if (pn == 11)
                            {
                                bits = 330;
                            }
                            if (pn == 12)
                            {
                                bits = 425;
                            }
                            if (pn == 13)
                            {
                                bits = 840;
                            }
                            if (pn == 14)
                            {
                                bits = 840;
                            }
                        }
                        else if (pack_num == 60)
                        {
                            if (pn == 1)
                            {
                                bits = 169;
                            }
                            if (pn == 2)
                            {
                                bits = 169;
                            }
                            if (pn == 3)
                            {
                                bits = 324;
                            }
                            if (pn == 4)
                            {
                                bits = 810;
                            }
                            if (pn == 5)
                            {
                                bits = 216;
                            }
                            if (pn == 6)
                            {
                                bits = 330;
                            }
                            if (pn == 7)
                            {
                                bits = 640;
                            }
                            if (pn == 8)
                            {
                                bits = 250;
                            }
                        }
                        else if (pack_num == 59)
                        {
                            if (pn == 1)
                            {
                                bits = 169;
                            }
                            if (pn == 2)
                            {
                                bits = 169;
                            }
                            if (pn == 3)
                            {
                                bits = 324;
                            }
                            if (pn == 4)
                            {
                                bits = 400;
                            }
                            if (pn == 5)
                            {
                                bits = 140;
                            }
                            if (pn == 6)
                            {
                                bits = 216;
                            }
                            if (pn == 7)
                            {
                                bits = 330;
                            }
                            if (pn == 8)
                            {
                                bits = 640;
                            }
                            if (pn == 9)
                            {
                                bits = 840;
                            }
                            if (pn == 10)
                            {
                                bits = 250;
                            }
                            if (pn == 11)
                            {
                                bits = 455;
                            }
                            if (pn == 12)
                            {
                                bits = 640;
                                is_pan = 1;
                            }
                            if (pn == 13)
                            {
                                bits = 168;
                            }
                        }
                        else if (pack_num == 58)
                        {
                            if (pn == 1)
                            {
                                bits = 455;
                            }
                            if (pn == 2)
                            {
                                bits = 169;
                            }
                            if (pn == 3)
                            {
                                bits = 324;
                            }
                            if (pn == 4)
                            {
                                bits = 400;
                            }
                            if (pn == 5)
                            {
                                bits = 216;
                            }
                            if (pn == 6)
                            {
                                bits = 330;
                            }
                            if (pn == 7)
                            {
                                bits = 640;
                            }
                            if (pn == 8)
                            {
                                bits = 840;
                            }
                        }
                        else if (pack_num == 57)
                        {
                            if (pn == 1)
                            {
                                bits = 169;
                            }
                            if (pn == 2)
                            {
                                bits = 126;
                            }
                            if (pn == 3)
                            {
                                bits = 126;
                            }
                            if (pn == 4)
                            {
                                bits = 140;
                            }
                            if (pn == 5)
                            {
                                bits = 216;
                            }
                            if (pn == 6)
                            {
                                bits = 216;
                            }
                        }
                        else if (pack_num == 56)
                        {
                            if (pn == 1)
                            {
                                bits = 1000;
                            }
                            if (pn == 2)
                            {
                                bits = 1000;
                            }
                            if (pn == 3)
                            {
                                bits = 1000;
                            }
                            if (pn == 4)
                            {
                                bits = 1000;
                            }
                            if (pn == 5)
                            {
                                bits = 1000;
                            }
                            if (pn == 6)
                            {
                                bits = 1000;
                            }
                        }
                        else if (pack_num == 55)
                        {
                            if (pn == 1)
                            {
                                bits = 100;
                            }
                            if (pn == 2)
                            {
                                bits = 169;
                            }
                            if (pn == 3)
                            {
                                bits = 216;
                            }
                            if (pn == 4)
                            {
                                bits = 640;
                            }
                            if (pn == 5)
                            {
                                bits = 168;
                            }
                            if (pn == 6)
                            {
                                bits = 455;
                            }
                            if (pn == 7)
                            {
                                bits = 350;
                            }
                        }
                        else if (pack_num == 54)
                        {
                            if (pn == 1)
                            {
                                bits = 60;
                            }
                            if (pn == 2)
                            {
                                bits = 60;
                            }
                            if (pn == 3)
                            {
                                bits = 60;
                            }
                            if (pn == 4)
                            {
                                bits = 60;
                            }
                            if (pn == 5)
                            {
                                bits = 60;
                            }
                            if (pn == 6)
                            {
                                bits = 60;
                            }
                            if (pn == 7)
                            {
                                bits = 112;
                            }
                            if (pn == 8)
                            {
                                bits = 112;
                            }
                            if (pn == 9)
                            {
                                bits = 112;
                            }
                            if (pn == 10)
                            {
                                bits = 112;
                            }
                            if (pn == 11)
                            {
                                bits = 112;
                            }
                            if (pn == 12)
                            {
                                bits = 112;
                            }
                            if (pn == 13)
                            {
                                bits = 153;
                            }
                            if (pn == 14)
                            {
                                bits = 153;
                            }
                            if (pn == 15)
                            {
                                bits = 153;
                            }
                            if (pn == 16)
                            {
                                bits = 153;
                            }
                            if (pn == 17)
                            {
                                bits = 153;
                            }
                            if (pn == 18)
                            {
                                bits = 153;
                            }
                            if (pn == 19)
                            {
                                bits = 220;
                            }
                            if (pn == 20)
                            {
                                bits = 220;
                            }
                            if (pn == 21)
                            {
                                bits = 220;
                            }
                            if (pn == 22)
                            {
                                bits = 220;
                            }
                            if (pn == 23)
                            {
                                bits = 220;
                            }
                            if (pn == 24)
                            {
                                bits = 220;
                            }
                            if (pn == 25)
                            {
                                bits = 350;
                            }
                        }
                        else if (pack_num == 53)
                        {
                            if (pn == 1)
                            {
                                bits = 100;
                            }
                            if (pn == 2)
                            {
                                bits = 100;
                            }
                            if (pn == 3)
                            {
                                bits = 169;
                            }
                            if (pn == 4)
                            {
                                bits = 169;
                            }
                            if (pn == 5)
                            {
                                bits = 324;
                            }
                            if (pn == 6)
                            {
                                bits = 324;
                            }
                            if (pn == 7)
                            {
                                bits = 400;
                            }
                            if (pn == 8)
                            {
                                bits = 400;
                            }
                            if (pn == 9)
                            {
                                bits = 400;
                            }
                            if (pn == 10)
                            {
                                bits = 676;
                            }
                            if (pn == 11)
                            {
                                bits = 140;
                            }
                            if (pn == 12)
                            {
                                bits = 216;
                            }
                            if (pn == 13)
                            {
                                bits = 640;
                            }
                            if (pn == 14)
                            {
                                bits = 425;
                            }
                            if (pn == 15)
                            {
                                bits = 330;
                            }
                        }
                        else if (pack_num == 52)
                        {
                            if (pn == 1)
                            {
                                bits = 169;
                            }
                            if (pn == 2)
                            {
                                bits = 169;
                            }
                            if (pn == 3)
                            {
                                bits = 324;
                            }
                            if (pn == 4)
                            {
                                bits = 400;
                            }
                            if (pn == 5)
                            {
                                bits = 676;
                            }
                            if (pn == 6)
                            {
                                bits = 216;
                            }
                            if (pn == 7)
                            {
                                bits = 330;
                            }
                            if (pn == 8)
                            {
                                bits = 425;
                            }
                            if (pn == 9)
                            {
                                bits = 640;
                            }
                            if (pn == 10)
                            {
                                bits = 250;
                            }
                            if (pn == 11)
                            {
                                bits = 250;
                            }
                            if (pn == 12)
                            {
                                bits = 810;
                            }
                        }
                        else if (pack_num == 50)
                        {
                            if (pn == 1)
                            {
                                bits = 60;
                            }
                            if (pn == 2)
                            {
                                bits = 60;
                            }
                            if (pn == 3)
                            {
                                bits = 60;
                            }
                            if (pn == 4)
                            {
                                bits = 60;
                            }
                            if (pn == 5)
                            {
                                bits = 60;
                            }
                            if (pn == 6)
                            {
                                bits = 60;
                            }
                            if (pn == 7)
                            {
                                bits = 112;
                            }
                            if (pn == 8)
                            {
                                bits = 112;
                            }
                            if (pn == 9)
                            {
                                bits = 112;
                            }
                            if (pn == 10)
                            {
                                bits = 112;
                            }
                            if (pn == 11)
                            {
                                bits = 112;
                            }
                            if (pn == 12)
                            {
                                bits = 153;
                            }
                            if (pn == 13)
                            {
                                bits = 153;
                            }
                            if (pn == 14)
                            {
                                bits = 153;
                            }
                            if (pn == 15)
                            {
                                bits = 153;
                            }
                            if (pn == 16)
                            {
                                bits = 220;
                            }
                            if (pn == 17)
                            {
                                bits = 220;
                            }
                            if (pn == 18)
                            {
                                bits = 220;
                            }
                            if (pn == 19)
                            {
                                bits = 350;
                            }
                        }
                        else if (pack_num == 49)
                        {
                            if (pn == 1)
                            {
                                bits = 60;
                            }
                            if (pn == 2)
                            {
                                bits = 60;
                            }
                            if (pn == 3)
                            {
                                bits = 60;
                            }
                            if (pn == 4)
                            {
                                bits = 60;
                            }
                            if (pn == 5)
                            {
                                bits = 60;
                            }
                            if (pn == 6)
                            {
                                bits = 60;
                            }
                            if (pn == 7)
                            {
                                bits = 112;
                            }
                            if (pn == 8)
                            {
                                bits = 112;
                            }
                            if (pn == 9)
                            {
                                bits = 112;
                            }
                            if (pn == 10)
                            {
                                bits = 112;
                            }
                            if (pn == 11)
                            {
                                bits = 112;
                            }
                            if (pn == 12)
                            {
                                bits = 153;
                            }
                            if (pn == 13)
                            {
                                bits = 153;
                            }
                            if (pn == 14)
                            {
                                bits = 153;
                            }
                            if (pn == 15)
                            {
                                bits = 153;
                            }
                            if (pn == 16)
                            {
                                bits = 220;
                            }
                            if (pn == 17)
                            {
                                bits = 220;
                            }
                            if (pn == 18)
                            {
                                bits = 220;
                            }
                            if (pn == 19)
                            {
                                bits = 350;
                            }
                            if (pn == 20)
                            {
                                bits = 220;
                            }
                            if (pn == 21)
                            {
                                bits = 220;
                            }
                            if (pn == 22)
                            {
                                bits = 220;
                            }
                        }
                        else if (pack_num == 48)
                        {
                            if (pn == 1)
                            {
                                bits = 153;
                            }
                            if (pn == 2)
                            {
                                bits = 126;
                            }
                            if (pn == 3)
                            {
                                bits = 168;
                            }
                            if (pn == 4)
                            {
                                bits = 250;
                            }
                            if (pn == 5)
                            {
                                bits = 140;
                            }
                            if (pn == 6)
                            {
                                bits = 216;
                            }
                            if (pn == 7)
                            {
                                bits = 425;
                            }
                            if (pn == 8)
                            {
                                bits = 840;
                            }
                            if (pn == 9)
                            {
                                bits = 169;
                            }
                            if (pn == 10)
                            {
                                bits = 324;
                            }
                        }
                        else if (pack_num == 47)
                        {
                            if (pn == 1)
                            {
                                bits = 100;
                            }
                            if (pn == 2)
                            {
                                bits = 169;
                            }
                            if (pn == 3)
                            {
                                bits = 96;
                            }
                            if (pn == 4)
                            {
                                bits = 425;
                            }
                            if (pn == 5)
                            {
                                bits = 330;
                            }
                            if (pn == 6)
                            {
                                bits = 126;
                            }
                        }
                        else if (pack_num == 46)
                        {
                            if (pn == 1)
                            {
                                bits = 840;
                            }
                            if (pn == 2)
                            {
                                bits = 169;
                            }
                            if (pn == 3)
                            {
                                bits = 455;
                            }
                            if (pn == 4)
                            {
                                bits = 350;
                            }
                        }
                        else if (pack_num == 45)
                        {
                            if (pn == 1)
                            {
                                bits = 425;
                            }
                            if (pn == 2)
                            {
                                bits = 250;
                            }
                            if (pn == 3)
                            {
                                bits = 330;
                            }
                            if (pn == 4)
                            {
                                bits = 169;
                            }
                            if (pn == 5)
                            {
                                bits = 330;
                            }
                            if (pn == 6)
                            {
                                bits = 330;
                            }
                            if (pn == 7)
                            {
                                bits = 330;
                            }
                            if (pn == 8)
                            {
                                bits = 216;
                            }
                            if (pn == 9)
                            {
                                bits = 216;
                            }
                        }
                        else if (pack_num == 44)
                        {
                            if (pn == 1)
                            {
                                bits = 169;
                            }
                            if (pn == 2)
                            {
                                bits = 400;
                            }
                            if (pn == 3)
                            {
                                bits = 153;
                            }
                            if (pn == 4)
                            {
                                bits = 330;
                            }
                            if (pn == 5)
                            {
                                bits = 168;
                            }
                            if (pn == 6)
                            {
                                bits = 330;
                            }
                        }
                        else if (pack_num == 43)
                        {
                            if (pn == 1)
                            {
                                bits = 126;
                            }
                            if (pn == 2)
                            {
                                bits = 216;
                            }
                            if (pn == 3)
                            {
                                bits = 169;
                            }
                            if (pn == 4)
                            {
                                bits = 455;
                            }
                            if (pn == 5)
                            {
                                bits = 140;
                            }
                        }
                        else if (pack_num == 42)
                        {
                            if (pn == 1)
                            {
                                bits = 1000;
                            }
                            if (pn == 2)
                            {
                                bits = 400;
                            }
                        }
                        else if (pack_num == 41)
                        {
                            if (pn == 1)
                            {
                                bits = 169;
                            }
                            if (pn == 2)
                            {
                                bits = 100;
                            }
                            if (pn == 3)
                            {
                                bits = 676;
                            }
                            if (pn == 4)
                            {
                                bits = 324;
                            }
                            if (pn == 5)
                            {
                                bits = 169;
                            }
                            if (pn == 6)
                            {
                                bits = 324;
                            }
                            if (pn == 7)
                            {
                                bits = 400;
                            }
                            if (pn == 8)
                            {
                                bits = 640;
                            }
                            if (pn == 9)
                            {
                                bits = 140;
                            }
                            if (pn == 10)
                            {
                                bits = 216;
                            }
                            if (pn == 11)
                            {
                                bits = 330;
                            }
                            if (pn == 12)
                            {
                                bits = 330;
                            }
                            if (pn == 13)
                            {
                                bits = 425;
                            }
                            if (pn == 14)
                            {
                                bits = 425;
                            }
                            if (pn == 15)
                            {
                                bits = 330;
                            }
                            if (pn == 16)
                            {
                                bits = 168;
                            }
                            if (pn == 17)
                            {
                                bits = 810;
                            }
                            if (pn == 18)
                            {
                                bits = 455;
                            }
                            if (pn == 19)
                            {
                                bits = 220;
                            }
                            if (pn == 20)
                            {
                                bits = 153;
                            }
                            if (pn == 21)
                            {
                                bits = 330;
                            }
                        }
                        else if (pack_num == 40)
                        {
                            if (pn == 1)
                            {
                                bits = 60;
                            }
                            if (pn == 2)
                            {
                                bits = 60;
                            }
                            if (pn == 3)
                            {
                                bits = 60;
                            }
                            if (pn == 4)
                            {
                                bits = 60;
                            }
                            if (pn == 5)
                            {
                                bits = 60;
                            }
                            if (pn == 6)
                            {
                                bits = 60;
                            }
                            if (pn == 7)
                            {
                                bits = 112;
                            }
                            if (pn == 8)
                            {
                                bits = 112;
                            }
                            if (pn == 9)
                            {
                                bits = 112;
                            }
                            if (pn == 10)
                            {
                                bits = 112;
                            }
                            if (pn == 11)
                            {
                                bits = 112;
                            }
                            if (pn == 12)
                            {
                                bits = 112;
                            }
                            if (pn == 13)
                            {
                                bits = 153;
                            }
                            if (pn == 14)
                            {
                                bits = 153;
                            }
                            if (pn == 15)
                            {
                                bits = 153;
                            }
                            if (pn == 16)
                            {
                                bits = 153;
                            }
                            if (pn == 17)
                            {
                                bits = 153;
                            }
                            if (pn == 18)
                            {
                                bits = 153;
                            }
                            if (pn == 19)
                            {
                                bits = 220;
                            }
                            if (pn == 20)
                            {
                                bits = 220;
                            }
                            if (pn == 21)
                            {
                                bits = 220;
                            }
                            if (pn == 22)
                            {
                                bits = 220;
                            }
                            if (pn == 23)
                            {
                                bits = 220;
                            }
                            if (pn == 24)
                            {
                                bits = 220;
                            }
                            if (pn == 25)
                            {
                                bits = 350;
                            }
                        }
                        else if (pack_num == 39)
                        {
                            if (pn == 1)
                            {
                                bits = 60;
                            }
                            if (pn == 2)
                            {
                                bits = 60;
                            }
                            if (pn == 3)
                            {
                                bits = 60;
                            }
                            if (pn == 4)
                            {
                                bits = 60;
                            }
                            if (pn == 5)
                            {
                                bits = 60;
                            }
                            if (pn == 6)
                            {
                                bits = 60;
                            }
                            if (pn == 7)
                            {
                                bits = 112;
                            }
                            if (pn == 8)
                            {
                                bits = 112;
                            }
                            if (pn == 9)
                            {
                                bits = 112;
                            }
                            if (pn == 10)
                            {
                                bits = 112;
                            }
                            if (pn == 11)
                            {
                                bits = 112;
                            }
                            if (pn == 12)
                            {
                                bits = 112;
                            }
                            if (pn == 13)
                            {
                                bits = 153;
                            }
                            if (pn == 14)
                            {
                                bits = 153;
                            }
                            if (pn == 15)
                            {
                                bits = 153;
                            }
                            if (pn == 16)
                            {
                                bits = 153;
                            }
                            if (pn == 17)
                            {
                                bits = 153;
                            }
                            if (pn == 18)
                            {
                                bits = 153;
                            }
                            if (pn == 19)
                            {
                                bits = 220;
                            }
                            if (pn == 20)
                            {
                                bits = 220;
                            }
                            if (pn == 21)
                            {
                                bits = 220;
                            }
                            if (pn == 22)
                            {
                                bits = 220;
                            }
                            if (pn == 23)
                            {
                                bits = 220;
                            }
                            if (pn == 24)
                            {
                                bits = 220;
                            }
                            if (pn == 25)
                            {
                                bits = 350;
                            }
                        }
                        else if (pack_num == 38)
                        {
                            if (pn == 1)
                            {
                                bits = 60;
                            }
                            if (pn == 2)
                            {
                                bits = 60;
                            }
                            if (pn == 3)
                            {
                                bits = 60;
                            }
                            if (pn == 4)
                            {
                                bits = 60;
                            }
                            if (pn == 5)
                            {
                                bits = 60;
                            }
                            if (pn == 6)
                            {
                                bits = 60;
                            }
                            if (pn == 7)
                            {
                                bits = 112;
                            }
                            if (pn == 8)
                            {
                                bits = 112;
                            }
                            if (pn == 9)
                            {
                                bits = 112;
                            }
                            if (pn == 10)
                            {
                                bits = 112;
                            }
                            if (pn == 11)
                            {
                                bits = 112;
                            }
                            if (pn == 12)
                            {
                                bits = 112;
                            }
                            if (pn == 13)
                            {
                                bits = 153;
                            }
                            if (pn == 14)
                            {
                                bits = 153;
                            }
                            if (pn == 15)
                            {
                                bits = 153;
                            }
                            if (pn == 16)
                            {
                                bits = 153;
                            }
                            if (pn == 17)
                            {
                                bits = 153;
                            }
                            if (pn == 18)
                            {
                                bits = 153;
                            }
                            if (pn == 19)
                            {
                                bits = 220;
                            }
                            if (pn == 20)
                            {
                                bits = 220;
                            }
                            if (pn == 21)
                            {
                                bits = 220;
                            }
                            if (pn == 22)
                            {
                                bits = 220;
                            }
                            if (pn == 23)
                            {
                                bits = 220;
                            }
                            if (pn == 24)
                            {
                                bits = 220;
                            }
                            if (pn == 25)
                            {
                                bits = 350;
                            }
                        }
                        else if (pack_num == 37)
                        {
                            if (pn == 1)
                            {
                                bits = 400;
                            }
                            if (pn == 2)
                            {
                                bits = 324;
                            }
                            if (pn == 3)
                            {
                                bits = 169;
                            }
                            if (pn == 4)
                            {
                                bits = 100;
                            }
                            if (pn == 5)
                            {
                                bits = 640;
                            }
                            if (pn == 6)
                            {
                                bits = 425;
                            }
                            if (pn == 7)
                            {
                                bits = 330;
                            }
                            if (pn == 8)
                            {
                                bits = 216;
                            }
                            if (pn == 9)
                            {
                                bits = 455;
                            }
                            if (pn == 10)
                            {
                                bits = 126;
                            }
                            if (pn == 11)
                            {
                                bits = 250;
                            }
                            if (pn == 12)
                            {
                                bits = 168;
                            }
                            if (pn == 13)
                            {
                                bits = 350;
                            }
                            if (pn == 14)
                            {
                                bits = 220;
                            }
                            if (pn == 15)
                            {
                                bits = 216;
                            }
                        }
                        else if (pack_num == 36)
                        {
                            if (pn == 1)
                            {
                                bits = 324;
                            }
                            if (pn == 2)
                            {
                                bits = 100;
                            }
                            if (pn == 3)
                            {
                                bits = 153;
                            }
                            if (pn == 4)
                            {
                                bits = 153;
                            }
                            if (pn == 5)
                            {
                                bits = 350;
                            }
                            if (pn == 6)
                            {
                                bits = 250;
                            }
                            if (pn == 7)
                            {
                                bits = 168;
                            }
                            if (pn == 8)
                            {
                                bits = 640;
                            }
                            if (pn == 9)
                            {
                                bits = 330;
                            }
                            if (pn == 10)
                            {
                                bits = 425;
                            }
                            if (pn == 11)
                            {
                                bits = 140;
                            }
                            if (pn == 12)
                            {
                                bits = 330;
                            }
                        }
                        else if (pack_num == 35)
                        {
                            if (pn == 1)
                            {
                                bits = 330;
                            }
                            if (pn == 2)
                            {
                                bits = 140;
                            }
                            if (pn == 3)
                            {
                                bits = 140;
                            }
                            if (pn == 4)
                            {
                                bits = 250;
                            }
                            if (pn == 5)
                            {
                                bits = 250;
                            }
                            if (pn == 6)
                            {
                                bits = 126;
                            }
                        }
                        else if (pack_num == 34)
                        {
                            if (pn == 1)
                            {
                                bits = 140;
                            }
                            if (pn == 2)
                            {
                                bits = 140;
                            }
                            if (pn == 3)
                            {
                                bits = 140;
                            }
                            if (pn == 4)
                            {
                                bits = 169;
                            }
                            if (pn == 5)
                            {
                                bits = 169;
                            }
                            if (pn == 6)
                            {
                                bits = 169;
                            }
                        }
                        else if (pack_num == 33)
                        {
                            if (pn == 1)
                            {
                                bits = 169;
                            }
                            if (pn == 2)
                            {
                                bits = 169;
                            }
                            if (pn == 3)
                            {
                                bits = 140;
                            }
                            if (pn == 4)
                            {
                                bits = 216;
                            }
                            if (pn == 5)
                            {
                                bits = 126;
                            }
                            if (pn == 6)
                            {
                                bits = 126;
                            }
                            if (pn == 7)
                            {
                                bits = 168;
                            }
                            if (pn == 8)
                            {
                                bits = 168;
                            }
                        }
                        else if (pack_num == 32)
                        {
                            if (pn == 1)
                            {
                                bits = 250;
                            }
                            if (pn == 2)
                            {
                                bits = 126;
                            }
                            if (pn == 3)
                            {
                                bits = 126;
                            }
                            if (pn == 4)
                            {
                                bits = 216;
                            }
                            if (pn == 5)
                            {
                                bits = 216;
                            }
                            if (pn == 6)
                            {
                                bits = 140;
                            }
                            if (pn == 7)
                            {
                                bits = 140;
                            }
                            if (pn == 8)
                            {
                                bits = 169;
                            }
                            if (pn == 9)
                            {
                                bits = 169;
                            }
                            if (pn == 10)
                            {
                                bits = 169;
                            }
                            if (pn == 11)
                            {
                                bits = 100;
                            }
                        }
                        else if (pack_num == 31)
                        {
                            if (pn == 1)
                            {
                                bits = 126;
                            }
                            if (pn == 2)
                            {
                                bits = 168;
                            }
                            if (pn == 3)
                            {
                                bits = 96;
                            }
                            if (pn == 4)
                            {
                                bits = 96;
                            }
                            if (pn == 5)
                            {
                                bits = 140;
                            }
                            if (pn == 6)
                            {
                                bits = 216;
                            }
                            if (pn == 7)
                            {
                                bits = 216;
                            }
                            if (pn == 8)
                            {
                                bits = 330;
                            }
                            if (pn == 9)
                            {
                                bits = 169;
                            }
                            if (pn == 10)
                            {
                                bits = 169;
                            }
                        }
                        else if (pack_num == 30)
                        {
                            if (pn == 1)
                            {
                                bits = 140;
                            }
                            if (pn == 2)
                            {
                                bits = 216;
                            }
                            if (pn == 3)
                            {
                                bits = 216;
                            }
                            if (pn == 4)
                            {
                                bits = 168;
                            }
                            if (pn == 5)
                            {
                                bits = 168;
                            }
                            if (pn == 6)
                            {
                                bits = 100;
                            }
                            if (pn == 7)
                            {
                                bits = 100;
                            }
                            if (pn == 8)
                            {
                                bits = 169;
                            }
                            if (pn == 9)
                            {
                                bits = 169;
                            }
                        }
                        else if (pack_num == 29)
                        {
                            if (pn == 1)
                            {
                                bits = 640;
                            }
                        }
                        else if (pack_num == 28)
                        {
                            if (pn == 1)
                            {
                                bits = 169;
                            }
                            if (pn == 2)
                            {
                                bits = 169;
                            }
                            if (pn == 3)
                            {
                                bits = 330;
                            }
                            if (pn == 4)
                            {
                                bits = 216;
                            }
                            if (pn == 5)
                            {
                                bits = 216;
                            }
                        }
                        else if (pack_num == 27)
                        {
                            if (pn == 1)
                            {
                                bits = 250;
                            }
                            if (pn == 2)
                            {
                                bits = 250;
                            }
                            if (pn == 3)
                            {
                                bits = 216;
                            }
                            if (pn == 4)
                            {
                                bits = 216;
                            }
                            if (pn == 5)
                            {
                                bits = 140;
                            }
                            if (pn == 6)
                            {
                                bits = 140;
                            }
                        }
                        else if (pack_num == 26)
                        {
                            if (pn == 1)
                            {
                                bits = 330;
                            }
                            if (pn == 2)
                            {
                                bits = 216;
                            }
                            if (pn == 3)
                            {
                                bits = 216;
                            }
                            if (pn == 4)
                            {
                                bits = 140;
                            }
                            if (pn == 5)
                            {
                                bits = 140;
                            }
                            if (pn == 6)
                            {
                                bits = 140;
                            }
                            if (pn == 7)
                            {
                                bits = 169;
                            }
                            if (pn == 8)
                            {
                                bits = 169;
                            }
                        }
                        else if (pack_num == 25)
                        {
                            if (pn == 1)
                            {
                                bits = 169;
                            }
                            if (pn == 2)
                            {
                                bits = 126;
                            }
                            if (pn == 3)
                            {
                                bits = 330;
                            }
                            if (pn == 4)
                            {
                                bits = 216;
                            }
                            if (pn == 5)
                            {
                                bits = 140;
                            }
                        }
                        else if (pack_num == 24)
                        {
                            if (pn == 1)
                            {
                                bits = 140;
                            }
                            if (pn == 2)
                            {
                                bits = 140;
                            }
                            if (pn == 3)
                            {
                                bits = 140;
                            }
                            if (pn == 4)
                            {
                                bits = 330;
                            }
                            if (pn == 5)
                            {
                                bits = 126;
                            }
                            if (pn == 6)
                            {
                                bits = 169;
                            }
                            if (pn == 7)
                            {
                                bits = 330;
                            }
                        }
                        else if (pack_num == 23)
                        {
                            if (pn == 1)
                            {
                                bits = 169;
                            }
                            if (pn == 2)
                            {
                                bits = 169;
                            }
                            if (pn == 3)
                            {
                                bits = 169;
                            }
                            if (pn == 4)
                            {
                                bits = 169;
                            }
                            if (pn == 5)
                            {
                                bits = 169;
                            }
                            if (pn == 6)
                            {
                                bits = 169;
                            }
                            if (pn == 7)
                            {
                                bits = 169;
                            }
                            if (pn == 8)
                            {
                                bits = 216;
                            }
                            if (pn == 9)
                            {
                                bits = 216;
                            }
                            if (pn == 10)
                            {
                                bits = 216;
                            }
                            if (pn == 11)
                            {
                                bits = 216;
                            }
                            if (pn == 12)
                            {
                                bits = 216;
                            }
                            if (pn == 13)
                            {
                                bits = 140;
                            }
                            if (pn == 14)
                            {
                                bits = 140;
                            }
                            if (pn == 15)
                            {
                                bits = 140;
                            }
                        }
                        else if (pack_num == 22)
                        {
                            if (pn == 1)
                            {
                                bits = 840;
                            }
                            if (pn == 2)
                            {
                                bits = 425;
                            }
                        }
                        else if (pack_num == 21)
                        {
                            if (pn == 1)
                            {
                                bits = 425;
                            }
                            if (pn == 2)
                            {
                                bits = 330;
                            }
                            if (pn == 3)
                            {
                                bits = 216;
                            }
                            if (pn == 4)
                            {
                                bits = 216;
                            }
                            if (pn == 5)
                            {
                                bits = 140;
                            }
                            if (pn == 6)
                            {
                                bits = 126;
                            }
                        }
                        else if (pack_num == 20)
                        {
                            if (pn == 1)
                            {
                                bits = 640;
                            }
                        }
                        else if (pack_num == 19)
                        {
                            if (pn == 1)
                            {
                                bits = 1000;
                            }
                        }
                        else if (pack_num == 18)
                        {
                            if (pn == 1)
                            {
                                bits = 841;
                            }
                            if (pn == 2)
                            {
                                bits = 140;
                            }
                            if (pn == 3)
                            {
                                bits = 169;
                            }
                            if (pn == 4)
                            {
                                bits = 425;
                            }
                            if (pn == 5)
                            {
                                bits = 455;
                            }
                        }
                        else if (pack_num == 17)
                        {
                            if (pn == 1)
                            {
                                bits = 1000;
                            }
                        }
                        else if (pack_num == 16)
                        {
                            if (pn == 1)
                            {
                                bits = 140;
                            }
                            if (pn == 2)
                            {
                                bits = 140;
                            }
                            if (pn == 3)
                            {
                                bits = 169;
                            }
                            if (pn == 4)
                            {
                                bits = 169;
                            }
                            if (pn == 5)
                            {
                                bits = 455;
                            }
                        }
                        else if (pack_num == 15)
                        {
                            if (pn == 1)
                            {
                                bits = 425;
                            }
                            if (pn == 2)
                            {
                                bits = 840;
                            }
                            if (pn == 3)
                            {
                                bits = 810;
                            }
                            if (pn == 4)
                            {
                                bits = 250;
                            }
                            if (pn == 5)
                            {
                                bits = 250;
                            }
                        }
                        else if (pack_num == 14)
                        {
                            if (pn == 1)
                            {
                                bits = 425;
                            }
                            if (pn == 2)
                            {
                                bits = 324;
                            }
                            if (pn == 3)
                            {
                                bits = 250;
                            }
                            if (pn == 4)
                            {
                                bits = 216;
                            }
                            if (pn == 5)
                            {
                                bits = 455;
                            }
                            if (pn == 6)
                            {
                                bits = 330;
                            }
                            if (pn == 7)
                            {
                                bits = 425;
                            }
                        }
                        else if (pack_num == 13)
                        {
                            if (pn == 1)
                            {
                                bits = 169;
                            }
                            if (pn == 2)
                            {
                                bits = 169;
                            }
                            if (pn == 3)
                            {
                                bits = 324;
                            }
                            if (pn == 4)
                            {
                                bits = 140;
                            }
                            if (pn == 5)
                            {
                                bits = 140;
                            }
                            if (pn == 6)
                            {
                                bits = 140;
                            }
                            if (pn == 7)
                            {
                                bits = 126;
                            }
                        }
                        else if (pack_num == 12)
                        {
                            if (pn == 1)
                            {
                                bits = 324;
                            }
                            if (pn == 2)
                            {
                                bits = 169;
                            }
                            if (pn == 3)
                            {
                                bits = 216;
                            }
                            if (pn == 4)
                            {
                                bits = 330;
                            }
                            if (pn == 5)
                            {
                                bits = 126;
                            }
                            if (pn == 6)
                            {
                                bits = 169;
                            }
                            if (pn == 7)
                            {
                                bits = 216;
                            }
                        }
                        else if (pack_num == 11)
                        {
                            if (pn == 1)
                            {
                                bits = 169;
                            }
                            if (pn == 2)
                            {
                                bits = 169;
                            }
                            if (pn == 3)
                            {
                                bits = 324;
                            }
                            if (pn == 4)
                            {
                                bits = 330;
                            }
                            if (pn == 5)
                            {
                                bits = 216;
                            }
                        }
                        else if (pack_num == 10)
                        {
                            if (pn == 1)
                            {
                                bits = 216;
                            }
                            if (pn == 2)
                            {
                                bits = 455;
                            }
                            if (pn == 3)
                            {
                                bits = 425;
                            }
                            if (pn == 4)
                            {
                                bits = 250;
                            }
                            if (pn == 5)
                            {
                                bits = 216;
                            }
                            if (pn == 6)
                            {
                                bits = 425;
                            }
                        }
                        else if (pack_num == 9)
                        {
                            if (pn == 1)
                            {
                                bits = 216;
                            }
                            if (pn == 2)
                            {
                                bits = 216;
                            }
                            if (pn == 3)
                            {
                                bits = 169;
                            }
                            if (pn == 4)
                            {
                                bits = 324;
                            }
                            if (pn == 5)
                            {
                                bits = 400;
                            }
                            if (pn == 6)
                            {
                                bits = 676;
                            }
                            if (pn == 7)
                            {
                                bits = 425;
                            }
                        }
                        else if (pack_num == 8)
                        {
                            if (pn == 1)
                            {
                                bits = 640;
                            }
                            if (pn == 2)
                            {
                                bits = 425;
                            }
                            if (pn == 3)
                            {
                                bits = 330;
                            }
                            if (pn == 4)
                            {
                                bits = 216;
                            }
                            if (pn == 5)
                            {
                                bits = 216;
                            }
                            if (pn == 6)
                            {
                                bits = 140;
                            }
                            if (pn == 7)
                            {
                                bits = 140;
                            }
                            if (pn == 8)
                            {
                                bits = 140;
                            }
                            if (pn == 9)
                            {
                                bits = 330;
                            }
                        }
                        else if (pack_num == 7)
                        {
                            if (pn == 1)
                            {
                                bits = 324;
                            }
                            if (pn == 2)
                            {
                                bits = 126;
                            }
                            if (pn == 3)
                            {
                                bits = 640;
                                is_pan = 1;
                            }
                        }
                        else if (pack_num == 6)
                        {
                            if (pn == 1)
                            {
                                bits = 216;
                            }
                            if (pn == 2)
                            {
                                bits = 425;
                            }
                            if (pn == 3)
                            {
                                bits = 640;
                            }
                            if (pn == 4)
                            {
                                bits = 324;
                            }
                        }
                        else if (pack_num == 5)
                        {
                            if (pn == 1)
                            {
                                bits = 112;
                            }
                            if (pn == 2)
                            {
                                bits = 216;
                            }
                            if (pn == 3)
                            {
                                bits = 455;
                            }
                            if (pn == 4)
                            {
                                bits = 400;
                            }
                            if (pn == 5)
                            {
                                bits = 676;
                            }
                            if (pn == 6)
                            {
                                bits = 250;
                            }
                        }
                        else if (pack_num == 4)
                        {
                            if (pn == 1)
                            {
                                bits = 112;
                            }
                            if (pn == 2)
                            {
                                bits = 112;
                            }
                            if (pn == 3)
                            {
                                bits = 153;
                            }
                            if (pn == 4)
                            {
                                bits = 220;
                            }
                        }
                        else if (pack_num == 3)
                        {
                            if (pn == 1)
                            {
                                bits = 350;
                            }
                            if (pn == 2)
                            {
                                bits = 330;
                            }
                            if (pn == 3)
                            {
                                bits = 324;
                            }
                            if (pn == 4)
                            {
                                bits = 455;
                            }
                        }
                        else if (pack_num == 2)
                        {
                            if (pn == 1)
                            {
                                bits = 250;
                            }
                            if (pn == 2)
                            {
                                bits = 640;
                            }
                            if (pn == 3)
                            {
                                bits = 400;
                            }
                            if (pn == 4)
                            {
                                bits = 126;
                            }
                        }
                        else if (pack_num == 1)
                        {
                            if (pn == 1)
                            {
                                bits = 640;
                                is_pan = 1;
                            }
                            if (pn == 2)
                            {
                                bits = 169;
                            }
                            if (pn == 3)
                            {
                                bits = 216;
                            }
                            if (pn == 4)
                            {
                                bits = 330;
                            }
                            if (pn == 5)
                            {
                                bits = 216;
                            }
                        }
                        if (bits == 60 || bits == 112 || bits == 153 || bits == 220 || bits == 350)
                        {
                            global.level_type = 1;
                        }
                        else if (bits == 96 || bits == 140 || bits == 216 || bits == 330 || bits == 425 || bits == 640 || bits == 840 || bits == 1410)
                        {
                            global.level_type = 2;
                        }
                        else if (bits == 100 || bits == 169 || bits == 324 || bits == 400 || bits == 676 || bits == 841)
                        {
                            global.level_type = 3;
                        }
                        else if (bits == 126 || bits == 168 || bits == 250 || bits == 455 || bits == 640 || bits == 810 || bits == 1000)
                        {
                            global.level_type = 4;
                        }
                        if (is_pan == 1)
                        {
                            global.level_type = 4;
                        }
                        var imag_name = "\misc\content\p" + string(pack_num) + "p" + string(puz_num) + "p.png";
                        if (file_exists(working_directory + string(imag_name)))
                        {
                            global.use_special_puz_controller = 0;
                            global.current_pack_open = pack_num;
                            global.puzzle_number_to_play = puz_num;
                            global.puzzle_pieces_to_use = ob_puzzle_pieces;
                            global.menu_return_to = 1;
                            global.total_number_of_pieces = bits;
                            global.puzzle_max_number_of_pieces = bits;
                            if (global.current_puzzle_ghost_image == 0)
                            {
                            }
                            else
                            {
                                sprite_delete(global.current_puzzle_ghost_image);
                            }
                            var ghost_use = "\misc\content\p" + string(pack_num) + "p" + string(puz_num) + ".png";
                            global.current_puzzle_ghost_image = sprite_add(working_directory + string(ghost_use), 0, false, false, 0, 0);
                            var sprite_x = 0;
                            var sprite_y = 0;
                            if (bits == 60)
                            {
                                sprite_x = 132;
                                sprite_y = 123;
                            }
                            if (bits == 112)
                            {
                                sprite_x = 92;
                                sprite_y = 90;
                            }
                            if (bits == 153)
                            {
                                sprite_x = 75;
                                sprite_y = 80;
                            }
                            if (bits == 220)
                            {
                                sprite_x = 64;
                                sprite_y = 64;
                            }
                            if (bits == 350)
                            {
                                sprite_x = 49;
                                sprite_y = 49;
                            }
                            if (bits == 96)
                            {
                                sprite_x = 112;
                                sprite_y = 108;
                            }
                            if (bits == 140)
                            {
                                sprite_x = 96;
                                sprite_y = 86;
                            }
                            if (bits == 216)
                            {
                                sprite_x = 74;
                                sprite_y = 71;
                            }
                            if (bits == 330)
                            {
                                sprite_x = 59;
                                sprite_y = 49;
                            }
                            if (bits == 425)
                            {
                                sprite_x = 51;
                                sprite_y = 49;
                            }
                            if (bits == 640 && global.level_type == 2)
                            {
                                sprite_x = 39;
                                sprite_y = 41;
                            }
                            if (bits == 840)
                            {
                                sprite_x = 35;
                                sprite_y = 33;
                            }
                            if (bits == 1410)
                            {
                                sprite_x = 26;
                                sprite_y = 26;
                            }
                            if (bits == 100)
                            {
                                sprite_x = 100;
                                sprite_y = 100;
                            }
                            if (bits == 169)
                            {
                                sprite_x = 76;
                                sprite_y = 76;
                            }
                            if (bits == 324)
                            {
                                sprite_x = 53;
                                sprite_y = 53;
                            }
                            if (bits == 400)
                            {
                                sprite_x = 48;
                                sprite_y = 48;
                            }
                            if (bits == 676)
                            {
                                sprite_x = 36;
                                sprite_y = 36;
                            }
                            if (bits == 841)
                            {
                                sprite_x = 30;
                                sprite_y = 30;
                            }
                            if (bits == 126)
                            {
                                sprite_x = 100;
                                sprite_y = 100;
                            }
                            if (bits == 168)
                            {
                                sprite_x = 85;
                                sprite_y = 85;
                            }
                            if (bits == 250)
                            {
                                sprite_x = 71;
                                sprite_y = 67;
                            }
                            if (bits == 455)
                            {
                                sprite_x = 49;
                                sprite_y = 51;
                            }
                            if (bits == 640 && global.level_type == 4)
                            {
                                sprite_x = 42;
                                sprite_y = 40;
                            }
                            if (bits == 810)
                            {
                                sprite_x = 37;
                                sprite_y = 35;
                            }
                            if (bits == 1000)
                            {
                                sprite_x = 33;
                                sprite_y = 31;
                            }
                            if (global.puzzle_sprite_index_to_use == 0)
                            {
                            }
                            else
                            {
                                sprite_delete(global.puzzle_sprite_index_to_use);
                            }
                            var sprite_use = "\misc\content\p" + string(pack_num) + "p" + string(puz_num) + "p.png";
                            global.puzzle_sprite_index_to_use = sprite_add(working_directory + string(sprite_use), bits, false, false, sprite_x, sprite_y);
                            sprite_collision_mask(global.puzzle_sprite_index_to_use, true, 1, 0, 0, 0, 0, 0, 0);
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_click_puzzle_button, 1, false);
                            }
                            room_goto(r_puzzle_room);
                        }
                    }
                }
            }
        }
    }
}
if (button_number == 12)
{
    if (ob_new_menu_controller.current_menu_page == 3)
    {
    }
    else
    {
        instance_destroy();
    }
}
if (place_meeting(x, y, ob_menu_cursor))
{
    if (mouse_check_button_released(mb_left))
    {
        if (button_number == 12)
        {
            var imag_name = "\misc\challenge\p5000p" + string(ob_new_menu_controller.current_challenge_number) + "p.png";
            if (file_exists(working_directory + string(imag_name)))
            {
                if (ob_new_menu_controller.current_menu_page == 3)
                {
                    global.menu_return_to = 3;
                }
                global.use_special_puz_controller = 1;
                global.level_type = 2;
                global.total_number_of_pieces = global.current_challenge_pieces;
                global.puzzle_max_number_of_pieces = global.total_number_of_pieces;
                var challenge_cur = "challenge_" + string(ob_new_menu_controller.current_challenge_number) + "_attempts";
                var challenge_attempts = steam_get_stat_int(challenge_cur) + 1;
                steam_upload_score(challenge_cur, challenge_attempts);
                steam_set_stat_int(challenge_cur, challenge_attempts);
                global.current_pack_open = 5000;
                global.puzzle_pieces_to_use = ob_puzzle_pieces;
                global.current_puzzle_global_puzzle_number = 100000;
                global.puzzle_controller_to_use = ob_challenge_puzzle_comtroller;
                room_goto(r_puzzle_room);
            }
        }
    }
}
if (button_number == 11)
{
    if (ob_new_menu_controller.current_menu_page == 11)
    {
    }
    else
    {
        instance_destroy();
    }
}
if (place_meeting(x, y, ob_menu_cursor))
{
    if (mouse_check_button_released(mb_left))
    {
        if (button_number == 11)
        {
            game_end();
        }
    }
}
if (button_number == 16 || button_number == 17)
{
    if (ob_new_menu_controller.current_menu_page == 1)
    {
    }
    else
    {
        instance_destroy();
    }
}
if (place_meeting(x, y, ob_menu_cursor))
{
    if (mouse_check_button_pressed(mb_left))
    {
        if (button_number == 16)
        {
            if (ob_new_menu_controller.current_generic_page > 0)
            {
                ob_new_menu_controller.current_generic_page -= 1;
                ob_puz_pac_but.alarm[6] = 1;
            }
        }
        else if (button_number == 17)
        {
            if (ob_new_menu_controller.current_generic_page < ob_new_menu_controller.max_generic_pages)
            {
                ob_new_menu_controller.current_generic_page += 1;
                ob_puz_pac_but.alarm[7] = 1;
            }
        }
    }
}
if (place_meeting(x, y, ob_menu_cursor))
{
    if (mouse_check_button(mb_left))
    {
        if (ob_new_menu_controller.tags_menu_open == 0)
        {
            if (button_number == 18)
            {
                if (hold_block == 0)
                {
                    if (ob_new_menu_controller.current_showing_pack_buttons > 0)
                    {
                        hold_block = 1;
                        alarm[1] = 7;
                        ob_puz_pac_but.alarm[8] = 1;
                        ob_new_menu_controller.current_showing_pack_buttons -= 1;
                        if (ob_new_menu_controller.current_showing_pack_buttons < 0)
                        {
                            ob_new_menu_controller.current_showing_pack_buttons = 0;
                        }
                    }
                }
            }
            else if (button_number == 19)
            {
                if (hold_block == 0)
                {
                    if (ob_new_menu_controller.current_showing_pack_buttons < ob_new_menu_controller.total_pack_buttons)
                    {
                        hold_block = 1;
                        alarm[1] = 7;
                        ob_puz_pac_but.alarm[9] = 1;
                        ob_new_menu_controller.current_showing_pack_buttons += 1;
                        if (ob_new_menu_controller.current_showing_pack_buttons > ob_new_menu_controller.total_pack_buttons)
                        {
                            ob_new_menu_controller.current_showing_pack_buttons = ob_new_menu_controller.total_pack_buttons;
                        }
                    }
                }
            }
        }
    }
}
if (place_meeting(x, y, ob_menu_cursor))
{
    if (mouse_check_button_pressed(mb_left))
    {
        if (ob_new_menu_controller.tags_menu_open == 0)
        {
            if (button_number == 18)
            {
                if (hold_block == 0)
                {
                    if (ob_new_menu_controller.current_showing_pack_buttons > 0)
                    {
                        hold_block = 1;
                        alarm[1] = 7;
                        ob_puz_pac_but.alarm[8] = 1;
                        ob_new_menu_controller.current_showing_pack_buttons -= 1;
                        if (ob_new_menu_controller.current_showing_pack_buttons < 0)
                        {
                            ob_new_menu_controller.current_showing_pack_buttons = 0;
                        }
                    }
                }
            }
            else if (button_number == 19)
            {
                if (hold_block == 0)
                {
                    if (ob_new_menu_controller.current_showing_pack_buttons < ob_new_menu_controller.total_pack_buttons)
                    {
                        hold_block = 1;
                        alarm[1] = 7;
                        ob_puz_pac_but.alarm[9] = 1;
                        ob_new_menu_controller.current_showing_pack_buttons += 1;
                        if (ob_new_menu_controller.current_showing_pack_buttons > ob_new_menu_controller.total_pack_buttons)
                        {
                            ob_new_menu_controller.current_showing_pack_buttons = ob_new_menu_controller.total_pack_buttons;
                        }
                    }
                }
            }
        }
    }
}
if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 443, 197, 696, 933))
{
    if (mouse_wheel_up())
    {
        if (ob_new_menu_controller.tags_menu_open == 0)
        {
            if (button_number == 18)
            {
                if (hold_block == 0)
                {
                    if (ob_new_menu_controller.current_showing_pack_buttons > 0)
                    {
                        hold_block = 1;
                        alarm[1] = 2;
                        ob_puz_pac_but.alarm[8] = 1;
                        ob_new_menu_controller.current_showing_pack_buttons -= 1;
                        if (ob_new_menu_controller.current_showing_pack_buttons < 0)
                        {
                            ob_new_menu_controller.current_showing_pack_buttons = 0;
                        }
                    }
                }
            }
        }
    }
    if (mouse_wheel_down())
    {
        if (ob_new_menu_controller.tags_menu_open == 0)
        {
            if (button_number == 19)
            {
                if (hold_block == 0)
                {
                    if (ob_new_menu_controller.current_showing_pack_buttons < ob_new_menu_controller.total_pack_buttons)
                    {
                        hold_block = 1;
                        alarm[1] = 2;
                        ob_puz_pac_but.alarm[9] = 1;
                        ob_new_menu_controller.current_showing_pack_buttons += 1;
                        if (ob_new_menu_controller.current_showing_pack_buttons > ob_new_menu_controller.total_pack_buttons)
                        {
                            ob_new_menu_controller.current_showing_pack_buttons = ob_new_menu_controller.total_pack_buttons;
                        }
                    }
                }
            }
        }
    }
}
if (button_number == 21 || button_number == 22)
{
    if (ob_new_menu_controller.current_menu_page == 2 || ob_new_menu_controller.current_menu_page == 4 || ob_new_menu_controller.current_menu_page == 5)
    {
    }
    else
    {
        instance_destroy();
    }
}
if (place_meeting(x, y, ob_menu_cursor))
{
    if (mouse_check_button_pressed(mb_left))
    {
        if (button_number == 21)
        {
            if (ob_new_menu_controller.current_generic_page > 0)
            {
                with (ob_new_menu_puz_button)
                {
                    y += 738;
                }
                ob_new_menu_controller.current_generic_page -= 1;
            }
        }
        else if (button_number == 22)
        {
            if (ob_new_menu_controller.current_generic_page < ob_new_menu_controller.max_generic_pages)
            {
                with (ob_new_menu_puz_button)
                {
                    y -= 738;
                }
                ob_new_menu_controller.current_generic_page += 1;
            }
        }
    }
}
if (button_number == 47)
{
    if (global.nm_block_for_intro == 0)
    {
        if (place_meeting(x, y, ob_menu_cursor))
        {
            if (audio_group_is_loaded(global.current_music_group_using))
            {
                if (audio_exists(global.backing_music_track))
                {
                    if (!audio_is_playing(s_christmas_paper_turn))
                    {
                        audio_play_sound(s_christmas_paper_turn, 1, true);
                    }
                }
            }
        }
        else
        {
            audio_stop_sound(s_christmas_paper_turn);
        }
        if (ob_new_menu_controller.current_menu_page == 14)
        {
            if (audio_is_playing(s_christmas_paper_turn))
            {
                audio_stop_sound(s_christmas_paper_turn);
            }
        }
    }
}
if (place_meeting(x, y, ob_menu_cursor))
{
    if (global.nm_block_for_intro == 0)
    {
        if (mouse_check_button_pressed(mb_left))
        {
            if (button_number == 47)
            {
                if (ob_new_menu_controller.current_menu_page == 14)
                {
                }
                else
                {
                    if (ob_new_menu_controller.current_menu_page == 2 || ob_new_menu_controller.current_menu_page == 3 || ob_new_menu_controller.current_menu_page == 4 || ob_new_menu_controller.current_menu_page == 5 || ob_new_menu_controller.current_menu_page == 6 || ob_new_menu_controller.current_menu_page == 7 || ob_new_menu_controller.current_menu_page == 8 || ob_new_menu_controller.current_menu_page == 9 || ob_new_menu_controller.current_menu_page == 10 || ob_new_menu_controller.current_menu_page == 11 || ob_new_menu_controller.current_menu_page == 14 || ob_new_menu_controller.current_menu_page == 15)
                    {
                    }
                    else
                    {
                        ob_new_menu_controller.p_ttm = 0;
                        ob_new_menu_controller.alarm[4] = 2;
                        ob_new_menu_controller.tags_menu_open = 0;
                    }
                    audio_play_sound(s_menu_button_press, 1, false);
                    with (ob_puz_pac_but)
                    {
                        alarm[5] = 1;
                    }
                    with (ob_puz_pac_but)
                    {
                        alarm[11] = 1;
                    }
                    ob_new_menu_controller.current_menu_page = 14;
                    ob_new_menu_controller.page_content_alpha = 0;
                    var p_l = ds_list_create();
                    if (ob_new_menu_controller.fav_1 > 0)
                    {
                        ds_list_add(p_l, ob_new_menu_controller.fav_1);
                    }
                    if (ob_new_menu_controller.fav_2 > 0)
                    {
                        ds_list_add(p_l, ob_new_menu_controller.fav_2);
                    }
                    if (ob_new_menu_controller.fav_3 > 0)
                    {
                        ds_list_add(p_l, ob_new_menu_controller.fav_3);
                    }
                    if (ob_new_menu_controller.fav_4 > 0)
                    {
                        ds_list_add(p_l, ob_new_menu_controller.fav_4);
                    }
                    if (ob_new_menu_controller.fav_5 > 0)
                    {
                        ds_list_add(p_l, ob_new_menu_controller.fav_5);
                    }
                    if (ob_new_menu_controller.fav_6 > 0)
                    {
                        ds_list_add(p_l, ob_new_menu_controller.fav_6);
                    }
                    if (ob_new_menu_controller.fav_7 > 0)
                    {
                        ds_list_add(p_l, ob_new_menu_controller.fav_7);
                    }
                    if (ob_new_menu_controller.fav_8 > 0)
                    {
                        ds_list_add(p_l, ob_new_menu_controller.fav_8);
                    }
                    if (ob_new_menu_controller.fav_9 > 0)
                    {
                        ds_list_add(p_l, ob_new_menu_controller.fav_9);
                    }
                    if (ob_new_menu_controller.fav_10 > 0)
                    {
                        ds_list_add(p_l, ob_new_menu_controller.fav_10);
                    }
                    if (ob_new_menu_controller.fav_11 > 0)
                    {
                        ds_list_add(p_l, ob_new_menu_controller.fav_11);
                    }
                    if (ob_new_menu_controller.fav_12 > 0)
                    {
                        ds_list_add(p_l, ob_new_menu_controller.fav_12);
                    }
                    if (ob_new_menu_controller.fav_13 > 0)
                    {
                        ds_list_add(p_l, ob_new_menu_controller.fav_13);
                    }
                    if (ob_new_menu_controller.fav_14 > 0)
                    {
                        ds_list_add(p_l, ob_new_menu_controller.fav_14);
                    }
                    if (ob_new_menu_controller.fav_15 > 0)
                    {
                        ds_list_add(p_l, ob_new_menu_controller.fav_15);
                    }
                    if (ob_new_menu_controller.fav_16 > 0)
                    {
                        ds_list_add(p_l, ob_new_menu_controller.fav_16);
                    }
                    if (ob_new_menu_controller.fav_17 > 0)
                    {
                        ds_list_add(p_l, ob_new_menu_controller.fav_17);
                    }
                    if (ob_new_menu_controller.fav_18 > 0)
                    {
                        ds_list_add(p_l, ob_new_menu_controller.fav_18);
                    }
                    if (ob_new_menu_controller.fav_19 > 0)
                    {
                        ds_list_add(p_l, ob_new_menu_controller.fav_19);
                    }
                    if (ob_new_menu_controller.fav_20 > 0)
                    {
                        ds_list_add(p_l, ob_new_menu_controller.fav_20);
                    }
                    if (ob_new_menu_controller.fav_21 > 0)
                    {
                        ds_list_add(p_l, ob_new_menu_controller.fav_21);
                    }
                    if (ob_new_menu_controller.fav_22 > 0)
                    {
                        ds_list_add(p_l, ob_new_menu_controller.fav_22);
                    }
                    if (ob_new_menu_controller.fav_23 > 0)
                    {
                        ds_list_add(p_l, ob_new_menu_controller.fav_23);
                    }
                    if (ob_new_menu_controller.fav_24 > 0)
                    {
                        ds_list_add(p_l, ob_new_menu_controller.fav_24);
                    }
                    if (ob_new_menu_controller.fav_25 > 0)
                    {
                        ds_list_add(p_l, ob_new_menu_controller.fav_25);
                    }
                    puz_remaining = ds_list_size(p_l);
                    puz_remaining -= 1;
                    var p_l_num = puz_remaining;
                    var puz_x = 799;
                    var puz_y = 271;
                    var puz_x_plus = 157;
                    var puz_y_plus = 148;
                    var y_times = 0;
                    ini_open("ppu.ini");
                    var puz_but = instance_create(puz_x, puz_y, ob_puz_pac_but);
                    puz_but.side_button_or_icon = 1;
                    puz_but.pack_is_fav = 1;
                    if (p_l_num > -1)
                    {
                        puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                        p_l_num -= 1;
                    }
                    puz_but = instance_create(puz_x + (1 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                    puz_but.side_button_or_icon = 1;
                    puz_but.pack_is_fav = 1;
                    if (p_l_num > -1)
                    {
                        puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                        p_l_num -= 1;
                    }
                    puz_but = instance_create(puz_x + (2 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                    puz_but.side_button_or_icon = 1;
                    puz_but.pack_is_fav = 1;
                    if (p_l_num > -1)
                    {
                        puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                        p_l_num -= 1;
                    }
                    puz_but = instance_create(puz_x + (3 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                    puz_but.side_button_or_icon = 1;
                    puz_but.pack_is_fav = 1;
                    if (p_l_num > -1)
                    {
                        puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                        p_l_num -= 1;
                    }
                    puz_but = instance_create(puz_x + (4 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                    puz_but.side_button_or_icon = 1;
                    puz_but.pack_is_fav = 1;
                    if (p_l_num > -1)
                    {
                        puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                        p_l_num -= 1;
                    }
                    y_times += 1;
                    puz_but = instance_create(puz_x, puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                    puz_but.side_button_or_icon = 1;
                    puz_but.pack_is_fav = 1;
                    if (p_l_num > -1)
                    {
                        puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                        p_l_num -= 1;
                    }
                    puz_but = instance_create(puz_x + (1 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                    puz_but.side_button_or_icon = 1;
                    puz_but.pack_is_fav = 1;
                    if (p_l_num > -1)
                    {
                        puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                        p_l_num -= 1;
                    }
                    puz_but = instance_create(puz_x + (2 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                    puz_but.side_button_or_icon = 1;
                    puz_but.pack_is_fav = 1;
                    if (p_l_num > -1)
                    {
                        puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                        p_l_num -= 1;
                    }
                    puz_but = instance_create(puz_x + (3 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                    puz_but.side_button_or_icon = 1;
                    puz_but.pack_is_fav = 1;
                    if (p_l_num > -1)
                    {
                        puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                        p_l_num -= 1;
                    }
                    puz_but = instance_create(puz_x + (4 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                    puz_but.side_button_or_icon = 1;
                    puz_but.pack_is_fav = 1;
                    if (p_l_num > -1)
                    {
                        puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                        p_l_num -= 1;
                    }
                    y_times += 1;
                    puz_but = instance_create(puz_x, puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                    puz_but.side_button_or_icon = 1;
                    puz_but.pack_is_fav = 1;
                    if (p_l_num > -1)
                    {
                        puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                        p_l_num -= 1;
                    }
                    puz_but = instance_create(puz_x + (1 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                    puz_but.side_button_or_icon = 1;
                    puz_but.pack_is_fav = 1;
                    if (p_l_num > -1)
                    {
                        puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                        p_l_num -= 1;
                    }
                    puz_but = instance_create(puz_x + (2 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                    puz_but.side_button_or_icon = 1;
                    puz_but.pack_is_fav = 1;
                    if (p_l_num > -1)
                    {
                        puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                        p_l_num -= 1;
                    }
                    puz_but = instance_create(puz_x + (3 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                    puz_but.side_button_or_icon = 1;
                    puz_but.pack_is_fav = 1;
                    if (p_l_num > -1)
                    {
                        puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                        p_l_num -= 1;
                    }
                    puz_but = instance_create(puz_x + (4 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                    puz_but.side_button_or_icon = 1;
                    puz_but.pack_is_fav = 1;
                    if (p_l_num > -1)
                    {
                        puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                        p_l_num -= 1;
                    }
                    y_times += 1;
                    puz_but = instance_create(puz_x, puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                    puz_but.side_button_or_icon = 1;
                    puz_but.pack_is_fav = 1;
                    if (p_l_num > -1)
                    {
                        puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                        p_l_num -= 1;
                    }
                    puz_but = instance_create(puz_x + (1 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                    puz_but.side_button_or_icon = 1;
                    puz_but.pack_is_fav = 1;
                    if (p_l_num > -1)
                    {
                        puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                        p_l_num -= 1;
                    }
                    puz_but = instance_create(puz_x + (2 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                    puz_but.side_button_or_icon = 1;
                    puz_but.pack_is_fav = 1;
                    if (p_l_num > -1)
                    {
                        puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                        p_l_num -= 1;
                    }
                    puz_but = instance_create(puz_x + (3 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                    puz_but.side_button_or_icon = 1;
                    puz_but.pack_is_fav = 1;
                    if (p_l_num > -1)
                    {
                        puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                        p_l_num -= 1;
                    }
                    puz_but = instance_create(puz_x + (4 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                    puz_but.side_button_or_icon = 1;
                    puz_but.pack_is_fav = 1;
                    if (p_l_num > -1)
                    {
                        puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                        p_l_num -= 1;
                    }
                    y_times += 1;
                    puz_but = instance_create(puz_x, puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                    puz_but.side_button_or_icon = 1;
                    puz_but.pack_is_fav = 1;
                    if (p_l_num > -1)
                    {
                        puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                        p_l_num -= 1;
                    }
                    puz_but = instance_create(puz_x + (1 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                    puz_but.side_button_or_icon = 1;
                    puz_but.pack_is_fav = 1;
                    if (p_l_num > -1)
                    {
                        puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                        p_l_num -= 1;
                    }
                    puz_but = instance_create(puz_x + (2 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                    puz_but.side_button_or_icon = 1;
                    puz_but.pack_is_fav = 1;
                    if (p_l_num > -1)
                    {
                        puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                        p_l_num -= 1;
                    }
                    puz_but = instance_create(puz_x + (3 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                    puz_but.side_button_or_icon = 1;
                    puz_but.pack_is_fav = 1;
                    if (p_l_num > -1)
                    {
                        puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                        p_l_num -= 1;
                    }
                    puz_but = instance_create(puz_x + (4 * puz_x_plus), puz_y + (y_times * puz_y_plus), ob_puz_pac_but);
                    puz_but.side_button_or_icon = 1;
                    puz_but.pack_is_fav = 1;
                    if (p_l_num > -1)
                    {
                        puz_but.pack_num = ds_list_find_value(p_l, p_l_num);
                        p_l_num -= 1;
                    }
                    y_times += 1;
                    ds_list_destroy(p_l);
                    ini_close();
                }
            }
        }
    }
}
if (button_number == 20)
{
    if (ob_new_menu_controller.tags_menu_open == 0)
    {
        image_index = 0;
    }
    else
    {
        image_index = 1;
    }
}
if (button_number == 96)
{
    if (ob_new_menu_controller.tags_menu_open == 0)
    {
        instance_destroy();
    }
}
if (place_meeting(x, y, ob_menu_cursor))
{
    if (global.nm_block_for_intro == 0)
    {
        if (mouse_check_button_pressed(mb_left))
        {
            if (button_number == 96)
            {
                if (ob_new_menu_controller.tags_menu_open == 1)
                {
                    audio_play_sound(s_option_button_arrow, 1, false);
                    ob_new_menu_controller.tags_menu_open = 0;
                    ob_new_menu_controller.p_ttm = 0;
                    ob_new_menu_controller.alarm[4] = 1;
                    instance_destroy();
                }
            }
            else if (button_number == 20)
            {
                if (ob_new_menu_controller.tags_menu_open == 1)
                {
                    audio_play_sound(s_option_button_arrow, 1, false);
                    ob_new_menu_controller.tags_menu_open = 0;
                    ob_new_menu_controller.p_ttm = 0;
                    ob_new_menu_controller.alarm[4] = 1;
                }
                else
                {
                    audio_play_sound(s_option_button_arrow, 1, false);
                    ob_new_menu_controller.tags_menu_open = 1;
                    with (ob_puz_pac_but)
                    {
                        alarm[10] = 1;
                    }
                    button_id = instance_create(502, 1016, ob_new_menu_generic_button);
                    button_id.button_number = 96;
                    button_id.sprite_index = sp_applytags_nm;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 281, ob_new_menu_generic_button);
                    button_id.button_number = 23;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 316, ob_new_menu_generic_button);
                    button_id.button_number = 24;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 211, ob_new_menu_generic_button);
                    button_id.button_number = 25;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 246, ob_new_menu_generic_button);
                    button_id.button_number = 26;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 351, ob_new_menu_generic_button);
                    button_id.button_number = 27;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 386, ob_new_menu_generic_button);
                    button_id.button_number = 28;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 421, ob_new_menu_generic_button);
                    button_id.button_number = 29;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 456, ob_new_menu_generic_button);
                    button_id.button_number = 30;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 491, ob_new_menu_generic_button);
                    button_id.button_number = 32;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 526, ob_new_menu_generic_button);
                    button_id.button_number = 33;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 561, ob_new_menu_generic_button);
                    button_id.button_number = 34;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 596, ob_new_menu_generic_button);
                    button_id.button_number = 35;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 631, ob_new_menu_generic_button);
                    button_id.button_number = 36;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 666, ob_new_menu_generic_button);
                    button_id.button_number = 37;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 701, ob_new_menu_generic_button);
                    button_id.button_number = 38;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 736, ob_new_menu_generic_button);
                    button_id.button_number = 39;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 771, ob_new_menu_generic_button);
                    button_id.button_number = 40;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 806, ob_new_menu_generic_button);
                    button_id.button_number = 41;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 841, ob_new_menu_generic_button);
                    button_id.button_number = 42;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 876, ob_new_menu_generic_button);
                    button_id.button_number = 43;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 911, ob_new_menu_generic_button);
                    button_id.button_number = 44;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 946, ob_new_menu_generic_button);
                    button_id.button_number = 45;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                    button_id = instance_create(570, 981, ob_new_menu_generic_button);
                    button_id.button_number = 46;
                    button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
                    button_id.image_alpha = 0;
                }
                if (global.p_t_free == 1 || global.p_t_1000_plus == 1 || global.p_t_animals == 1 || global.p_t_artwork == 1 || global.p_t_food == 1 || global.p_t_geography == 1 || global.p_t_history == 1 || global.p_t_holidays == 1 || global.p_t_landscapes == 1 || global.p_t_legacy == 1 || global.p_t_misc == 1 || global.p_t_nature == 1 || global.p_t_paintings == 1 || global.p_t_seasonal == 1 || global.p_t_space == 1 || global.p_t_sport == 1 || global.p_t_variety == 1 || global.p_t_vehicle == 1 || global.p_t_video_games == 1)
                {
                    global.p_t_notags = 0;
                }
                else
                {
                    global.p_t_notags = 1;
                }
            }
        }
    }
}
if (place_meeting(x, y, ob_menu_cursor))
{
    if (global.nm_block_for_intro == 0)
    {
        if (mouse_check_button_pressed(mb_left))
        {
            if (ob_new_menu_controller.tags_menu_open == 1)
            {
                if (button_number == 23)
                {
                    if (global.p_t_complete == 1)
                    {
                        audio_play_sound(s_remove_fav, 1, false);
                        global.p_t_complete = 0;
                    }
                    else
                    {
                        audio_play_sound(s_add_fav, 1, false);
                        global.p_t_complete = 1;
                        global.p_t_incomplete = 0;
                        global.p_t_unowned = 0;
                    }
                    ini_open("ppu.ini");
                    var p0x1u7p701 = base64_encode(string(global.p_t_complete));
                    ini_write_string("save", "p0x1u7p701", p0x1u7p701);
                    var p0x1u7p702 = base64_encode(string(global.p_t_incomplete));
                    ini_write_string("save", "p0x1u7p702", p0x1u7p702);
                    var p0x1u7p704 = base64_encode(string(global.p_t_unowned));
                    ini_write_string("save", "p0x1u7p704", p0x1u7p704);
                    ini_close();
                }
                if (button_number == 24)
                {
                    if (global.p_t_incomplete == 1)
                    {
                        audio_play_sound(s_remove_fav, 1, false);
                        global.p_t_incomplete = 0;
                    }
                    else
                    {
                        audio_play_sound(s_add_fav, 1, false);
                        global.p_t_incomplete = 1;
                        global.p_t_complete = 0;
                        global.p_t_unowned = 0;
                    }
                    ini_open("ppu.ini");
                    var p0x1u7p701 = base64_encode(string(global.p_t_complete));
                    ini_write_string("save", "p0x1u7p701", p0x1u7p701);
                    var p0x1u7p702 = base64_encode(string(global.p_t_incomplete));
                    ini_write_string("save", "p0x1u7p702", p0x1u7p702);
                    var p0x1u7p704 = base64_encode(string(global.p_t_unowned));
                    ini_write_string("save", "p0x1u7p704", p0x1u7p704);
                    ini_close();
                }
                if (button_number == 26)
                {
                    if (global.p_t_unowned == 1)
                    {
                        audio_play_sound(s_remove_fav, 1, false);
                        global.p_t_unowned = 0;
                    }
                    else
                    {
                        audio_play_sound(s_add_fav, 1, false);
                        global.p_t_unowned = 1;
                        global.p_t_owned = 0;
                        global.p_t_complete = 0;
                        global.p_t_incomplete = 0;
                    }
                    ini_open("ppu.ini");
                    var p0x1u7p701 = base64_encode(string(global.p_t_complete));
                    ini_write_string("save", "p0x1u7p701", p0x1u7p701);
                    var p0x1u7p702 = base64_encode(string(global.p_t_incomplete));
                    ini_write_string("save", "p0x1u7p702", p0x1u7p702);
                    var p0x1u7p703 = base64_encode(string(global.p_t_owned));
                    ini_write_string("save", "p0x1u7p703", p0x1u7p703);
                    var p0x1u7p704 = base64_encode(string(global.p_t_unowned));
                    ini_write_string("save", "p0x1u7p704", p0x1u7p704);
                    ini_close();
                }
                if (button_number == 27)
                {
                    if (global.p_t_free == 1)
                    {
                        audio_play_sound(s_remove_fav, 1, false);
                        global.p_t_free = 0;
                    }
                    else
                    {
                        audio_play_sound(s_add_fav, 1, false);
                        global.p_t_free = 1;
                        global.p_t_owned = 0;
                    }
                    ini_open("ppu.ini");
                    var p0x1u7p601 = base64_encode(string(global.p_t_free));
                    ini_write_string("save", "p0x1u7p601", p0x1u7p601);
                    var p0x1u7p703 = base64_encode(string(global.p_t_owned));
                    ini_write_string("save", "p0x1u7p703", p0x1u7p703);
                    var p0x1u7p704 = base64_encode(string(global.p_t_unowned));
                    ini_write_string("save", "p0x1u7p704", p0x1u7p704);
                    ini_close();
                }
                if (button_number == 28)
                {
                    if (global.p_t_1000_plus == 1)
                    {
                        audio_play_sound(s_remove_fav, 1, false);
                        global.p_t_1000_plus = 0;
                    }
                    else
                    {
                        audio_play_sound(s_add_fav, 1, false);
                        global.p_t_1000_plus = 1;
                        global.p_t_owned = 0;
                    }
                    ini_open("ppu.ini");
                    var p0x1u7p602 = base64_encode(string(global.p_t_1000_plus));
                    ini_write_string("save", "p0x1u7p602", p0x1u7p602);
                    var p0x1u7p703 = base64_encode(string(global.p_t_owned));
                    ini_write_string("save", "p0x1u7p703", p0x1u7p703);
                    var p0x1u7p704 = base64_encode(string(global.p_t_unowned));
                    ini_write_string("save", "p0x1u7p704", p0x1u7p704);
                    ini_close();
                }
                if (button_number == 29)
                {
                    if (global.p_t_animals == 1)
                    {
                        audio_play_sound(s_remove_fav, 1, false);
                        global.p_t_animals = 0;
                    }
                    else
                    {
                        audio_play_sound(s_add_fav, 1, false);
                        global.p_t_animals = 1;
                        global.p_t_owned = 0;
                    }
                    ini_open("ppu.ini");
                    var p0x1u7p603 = base64_encode(string(global.p_t_animals));
                    ini_write_string("save", "p0x1u7p603", p0x1u7p603);
                    var p0x1u7p703 = base64_encode(string(global.p_t_owned));
                    ini_write_string("save", "p0x1u7p703", p0x1u7p703);
                    var p0x1u7p704 = base64_encode(string(global.p_t_unowned));
                    ini_write_string("save", "p0x1u7p704", p0x1u7p704);
                    ini_close();
                }
                if (button_number == 30)
                {
                    if (global.p_t_artwork == 1)
                    {
                        audio_play_sound(s_remove_fav, 1, false);
                        global.p_t_artwork = 0;
                    }
                    else
                    {
                        audio_play_sound(s_add_fav, 1, false);
                        global.p_t_artwork = 1;
                        global.p_t_owned = 0;
                    }
                    ini_open("ppu.ini");
                    var p0x1u7p604 = base64_encode(string(global.p_t_artwork));
                    ini_write_string("save", "p0x1u7p604", p0x1u7p604);
                    var p0x1u7p703 = base64_encode(string(global.p_t_owned));
                    ini_write_string("save", "p0x1u7p703", p0x1u7p703);
                    var p0x1u7p704 = base64_encode(string(global.p_t_unowned));
                    ini_write_string("save", "p0x1u7p704", p0x1u7p704);
                    ini_close();
                }
                if (button_number == 32)
                {
                    if (global.p_t_food == 1)
                    {
                        audio_play_sound(s_remove_fav, 1, false);
                        global.p_t_food = 0;
                    }
                    else
                    {
                        audio_play_sound(s_add_fav, 1, false);
                        global.p_t_food = 1;
                        global.p_t_owned = 0;
                    }
                    ini_open("ppu.ini");
                    var p0x1u7p605 = base64_encode(string(global.p_t_food));
                    ini_write_string("save", "p0x1u7p605", p0x1u7p605);
                    var p0x1u7p703 = base64_encode(string(global.p_t_owned));
                    ini_write_string("save", "p0x1u7p703", p0x1u7p703);
                    var p0x1u7p704 = base64_encode(string(global.p_t_unowned));
                    ini_write_string("save", "p0x1u7p704", p0x1u7p704);
                    ini_close();
                }
                if (button_number == 33)
                {
                    if (global.p_t_geography == 1)
                    {
                        audio_play_sound(s_remove_fav, 1, false);
                        global.p_t_geography = 0;
                    }
                    else
                    {
                        audio_play_sound(s_add_fav, 1, false);
                        global.p_t_geography = 1;
                        global.p_t_owned = 0;
                    }
                    ini_open("ppu.ini");
                    var p0x1u7p606 = base64_encode(string(global.p_t_geography));
                    ini_write_string("save", "p0x1u7p606", p0x1u7p606);
                    var p0x1u7p703 = base64_encode(string(global.p_t_owned));
                    ini_write_string("save", "p0x1u7p703", p0x1u7p703);
                    var p0x1u7p704 = base64_encode(string(global.p_t_unowned));
                    ini_write_string("save", "p0x1u7p704", p0x1u7p704);
                    ini_close();
                }
                if (button_number == 34)
                {
                    if (global.p_t_history == 1)
                    {
                        audio_play_sound(s_remove_fav, 1, false);
                        global.p_t_history = 0;
                    }
                    else
                    {
                        audio_play_sound(s_add_fav, 1, false);
                        global.p_t_history = 1;
                        global.p_t_owned = 0;
                    }
                    ini_open("ppu.ini");
                    var p0x1u7p607 = base64_encode(string(global.p_t_history));
                    ini_write_string("save", "p0x1u7p607", p0x1u7p607);
                    var p0x1u7p703 = base64_encode(string(global.p_t_owned));
                    ini_write_string("save", "p0x1u7p703", p0x1u7p703);
                    var p0x1u7p704 = base64_encode(string(global.p_t_unowned));
                    ini_write_string("save", "p0x1u7p704", p0x1u7p704);
                    ini_close();
                }
                if (button_number == 35)
                {
                    if (global.p_t_holidays == 1)
                    {
                        audio_play_sound(s_remove_fav, 1, false);
                        global.p_t_holidays = 0;
                    }
                    else
                    {
                        audio_play_sound(s_add_fav, 1, false);
                        global.p_t_holidays = 1;
                        global.p_t_owned = 0;
                    }
                    ini_open("ppu.ini");
                    var p0x1u7p608 = base64_encode(string(global.p_t_holidays));
                    ini_write_string("save", "p0x1u7p608", p0x1u7p608);
                    var p0x1u7p703 = base64_encode(string(global.p_t_owned));
                    ini_write_string("save", "p0x1u7p703", p0x1u7p703);
                    var p0x1u7p704 = base64_encode(string(global.p_t_unowned));
                    ini_write_string("save", "p0x1u7p704", p0x1u7p704);
                    ini_close();
                }
                if (button_number == 36)
                {
                    if (global.p_t_landscapes == 1)
                    {
                        audio_play_sound(s_remove_fav, 1, false);
                        global.p_t_landscapes = 0;
                    }
                    else
                    {
                        audio_play_sound(s_add_fav, 1, false);
                        global.p_t_landscapes = 1;
                        global.p_t_owned = 0;
                    }
                    ini_open("ppu.ini");
                    var p0x1u7p609 = base64_encode(string(global.p_t_landscapes));
                    ini_write_string("save", "p0x1u7p609", p0x1u7p609);
                    var p0x1u7p703 = base64_encode(string(global.p_t_owned));
                    ini_write_string("save", "p0x1u7p703", p0x1u7p703);
                    var p0x1u7p704 = base64_encode(string(global.p_t_unowned));
                    ini_write_string("save", "p0x1u7p704", p0x1u7p704);
                    ini_close();
                }
                if (button_number == 37)
                {
                    if (global.p_t_legacy == 1)
                    {
                        audio_play_sound(s_remove_fav, 1, false);
                        global.p_t_legacy = 0;
                    }
                    else
                    {
                        audio_play_sound(s_add_fav, 1, false);
                        global.p_t_legacy = 1;
                        global.p_t_owned = 0;
                    }
                    ini_open("ppu.ini");
                    var p0x1u7p6010 = base64_encode(string(global.p_t_legacy));
                    ini_write_string("save", "p0x1u7p6010", p0x1u7p6010);
                    var p0x1u7p703 = base64_encode(string(global.p_t_owned));
                    ini_write_string("save", "p0x1u7p703", p0x1u7p703);
                    var p0x1u7p704 = base64_encode(string(global.p_t_unowned));
                    ini_write_string("save", "p0x1u7p704", p0x1u7p704);
                    ini_close();
                }
                if (button_number == 38)
                {
                    if (global.p_t_misc == 1)
                    {
                        audio_play_sound(s_remove_fav, 1, false);
                        global.p_t_misc = 0;
                    }
                    else
                    {
                        audio_play_sound(s_add_fav, 1, false);
                        global.p_t_misc = 1;
                        global.p_t_owned = 0;
                    }
                    ini_open("ppu.ini");
                    var p0x1u7p6011 = base64_encode(string(global.p_t_misc));
                    ini_write_string("save", "p0x1u7p6011", p0x1u7p6011);
                    var p0x1u7p703 = base64_encode(string(global.p_t_owned));
                    ini_write_string("save", "p0x1u7p703", p0x1u7p703);
                    var p0x1u7p704 = base64_encode(string(global.p_t_unowned));
                    ini_write_string("save", "p0x1u7p704", p0x1u7p704);
                    ini_close();
                }
                if (button_number == 39)
                {
                    if (global.p_t_nature == 1)
                    {
                        audio_play_sound(s_remove_fav, 1, false);
                        global.p_t_nature = 0;
                    }
                    else
                    {
                        audio_play_sound(s_add_fav, 1, false);
                        global.p_t_nature = 1;
                        global.p_t_owned = 0;
                    }
                    ini_open("ppu.ini");
                    var p0x1u7p6012 = base64_encode(string(global.p_t_nature));
                    ini_write_string("save", "p0x1u7p6012", p0x1u7p6012);
                    var p0x1u7p703 = base64_encode(string(global.p_t_owned));
                    ini_write_string("save", "p0x1u7p703", p0x1u7p703);
                    var p0x1u7p704 = base64_encode(string(global.p_t_unowned));
                    ini_write_string("save", "p0x1u7p704", p0x1u7p704);
                    ini_close();
                }
                if (button_number == 40)
                {
                    if (global.p_t_paintings == 1)
                    {
                        audio_play_sound(s_remove_fav, 1, false);
                        global.p_t_paintings = 0;
                    }
                    else
                    {
                        audio_play_sound(s_add_fav, 1, false);
                        global.p_t_paintings = 1;
                        global.p_t_owned = 0;
                    }
                    ini_open("ppu.ini");
                    var p0x1u7p6013 = base64_encode(string(global.p_t_paintings));
                    ini_write_string("save", "p0x1u7p6013", p0x1u7p6013);
                    var p0x1u7p703 = base64_encode(string(global.p_t_owned));
                    ini_write_string("save", "p0x1u7p703", p0x1u7p703);
                    var p0x1u7p704 = base64_encode(string(global.p_t_unowned));
                    ini_write_string("save", "p0x1u7p704", p0x1u7p704);
                    ini_close();
                }
                if (button_number == 41)
                {
                    if (global.p_t_seasonal == 1)
                    {
                        audio_play_sound(s_remove_fav, 1, false);
                        global.p_t_seasonal = 0;
                    }
                    else
                    {
                        audio_play_sound(s_add_fav, 1, false);
                        global.p_t_seasonal = 1;
                        global.p_t_owned = 0;
                    }
                    ini_open("ppu.ini");
                    var p0x1u7p6014 = base64_encode(string(global.p_t_seasonal));
                    ini_write_string("save", "p0x1u7p6014", p0x1u7p6014);
                    var p0x1u7p703 = base64_encode(string(global.p_t_owned));
                    ini_write_string("save", "p0x1u7p703", p0x1u7p703);
                    var p0x1u7p704 = base64_encode(string(global.p_t_unowned));
                    ini_write_string("save", "p0x1u7p704", p0x1u7p704);
                    ini_close();
                }
                if (button_number == 42)
                {
                    if (global.p_t_space == 1)
                    {
                        audio_play_sound(s_remove_fav, 1, false);
                        global.p_t_space = 0;
                    }
                    else
                    {
                        audio_play_sound(s_add_fav, 1, false);
                        global.p_t_space = 1;
                        global.p_t_owned = 0;
                    }
                    ini_open("ppu.ini");
                    var p0x1u7p6015 = base64_encode(string(global.p_t_space));
                    ini_write_string("save", "p0x1u7p6015", p0x1u7p6015);
                    var p0x1u7p703 = base64_encode(string(global.p_t_owned));
                    ini_write_string("save", "p0x1u7p703", p0x1u7p703);
                    var p0x1u7p704 = base64_encode(string(global.p_t_unowned));
                    ini_write_string("save", "p0x1u7p704", p0x1u7p704);
                    ini_close();
                }
                if (button_number == 43)
                {
                    if (global.p_t_sport == 1)
                    {
                        audio_play_sound(s_remove_fav, 1, false);
                        global.p_t_sport = 0;
                    }
                    else
                    {
                        audio_play_sound(s_add_fav, 1, false);
                        global.p_t_sport = 1;
                        global.p_t_owned = 0;
                    }
                    ini_open("ppu.ini");
                    var p0x1u7p6016 = base64_encode(string(global.p_t_sport));
                    ini_write_string("save", "p0x1u7p6016", p0x1u7p6016);
                    var p0x1u7p703 = base64_encode(string(global.p_t_owned));
                    ini_write_string("save", "p0x1u7p703", p0x1u7p703);
                    var p0x1u7p704 = base64_encode(string(global.p_t_unowned));
                    ini_write_string("save", "p0x1u7p704", p0x1u7p704);
                    ini_close();
                }
                if (button_number == 44)
                {
                    if (global.p_t_variety == 1)
                    {
                        audio_play_sound(s_remove_fav, 1, false);
                        global.p_t_variety = 0;
                    }
                    else
                    {
                        audio_play_sound(s_add_fav, 1, false);
                        global.p_t_variety = 1;
                        global.p_t_owned = 0;
                    }
                    ini_open("ppu.ini");
                    var p0x1u7p6017 = base64_encode(string(global.p_t_variety));
                    ini_write_string("save", "p0x1u7p6017", p0x1u7p6017);
                    var p0x1u7p703 = base64_encode(string(global.p_t_owned));
                    ini_write_string("save", "p0x1u7p703", p0x1u7p703);
                    var p0x1u7p704 = base64_encode(string(global.p_t_unowned));
                    ini_write_string("save", "p0x1u7p704", p0x1u7p704);
                    ini_close();
                }
                if (button_number == 45)
                {
                    if (global.p_t_vehicle == 1)
                    {
                        audio_play_sound(s_remove_fav, 1, false);
                        global.p_t_vehicle = 0;
                    }
                    else
                    {
                        audio_play_sound(s_add_fav, 1, false);
                        global.p_t_vehicle = 1;
                        global.p_t_owned = 0;
                    }
                    ini_open("ppu.ini");
                    var p0x1u7p6018 = base64_encode(string(global.p_t_vehicle));
                    ini_write_string("save", "p0x1u7p6018", p0x1u7p6018);
                    var p0x1u7p703 = base64_encode(string(global.p_t_owned));
                    ini_write_string("save", "p0x1u7p703", p0x1u7p703);
                    var p0x1u7p704 = base64_encode(string(global.p_t_unowned));
                    ini_write_string("save", "p0x1u7p704", p0x1u7p704);
                    ini_close();
                }
                if (button_number == 46)
                {
                    if (global.p_t_video_games == 1)
                    {
                        audio_play_sound(s_remove_fav, 1, false);
                        global.p_t_video_games = 0;
                    }
                    else
                    {
                        audio_play_sound(s_add_fav, 1, false);
                        global.p_t_video_games = 1;
                        global.p_t_owned = 0;
                    }
                    ini_open("ppu.ini");
                    var p0x1u7p6019 = base64_encode(string(global.p_t_video_games));
                    ini_write_string("save", "p0x1u7p6019", p0x1u7p6019);
                    var p0x1u7p703 = base64_encode(string(global.p_t_owned));
                    ini_write_string("save", "p0x1u7p703", p0x1u7p703);
                    var p0x1u7p704 = base64_encode(string(global.p_t_unowned));
                    ini_write_string("save", "p0x1u7p704", p0x1u7p704);
                    ini_close();
                }
                if (button_number == 25)
                {
                    if (global.p_t_owned == 1)
                    {
                        audio_play_sound(s_remove_fav, 1, false);
                        global.p_t_owned = 0;
                    }
                    else
                    {
                        audio_play_sound(s_add_fav, 1, false);
                        global.p_t_owned = 1;
                        global.p_t_unowned = 0;
                        global.p_t_free = 0;
                        global.p_t_1000_plus = 0;
                        global.p_t_animals = 0;
                        global.p_t_artwork = 0;
                        global.p_t_food = 0;
                        global.p_t_geography = 0;
                        global.p_t_history = 0;
                        global.p_t_holidays = 0;
                        global.p_t_landscapes = 0;
                        global.p_t_legacy = 0;
                        global.p_t_misc = 0;
                        global.p_t_nature = 0;
                        global.p_t_paintings = 0;
                        global.p_t_seasonal = 0;
                        global.p_t_space = 0;
                        global.p_t_sport = 0;
                        global.p_t_variety = 0;
                        global.p_t_vehicle = 0;
                        global.p_t_video_games = 0;
                    }
                    ini_open("ppu.ini");
                    var p0x1u7p703 = base64_encode(string(global.p_t_owned));
                    ini_write_string("save", "p0x1u7p703", p0x1u7p703);
                    var p0x1u7p704 = base64_encode(string(global.p_t_unowned));
                    ini_write_string("save", "p0x1u7p704", p0x1u7p704);
                    var p0x1u7p601 = base64_encode(string(global.p_t_free));
                    ini_write_string("save", "p0x1u7p601", p0x1u7p601);
                    var p0x1u7p602 = base64_encode(string(global.p_t_1000_plus));
                    ini_write_string("save", "p0x1u7p602", p0x1u7p602);
                    var p0x1u7p603 = base64_encode(string(global.p_t_animals));
                    ini_write_string("save", "p0x1u7p603", p0x1u7p603);
                    var p0x1u7p604 = base64_encode(string(global.p_t_artwork));
                    ini_write_string("save", "p0x1u7p604", p0x1u7p604);
                    var p0x1u7p605 = base64_encode(string(global.p_t_food));
                    ini_write_string("save", "p0x1u7p605", p0x1u7p605);
                    var p0x1u7p606 = base64_encode(string(global.p_t_geography));
                    ini_write_string("save", "p0x1u7p606", p0x1u7p606);
                    var p0x1u7p607 = base64_encode(string(global.p_t_history));
                    ini_write_string("save", "p0x1u7p607", p0x1u7p607);
                    var p0x1u7p608 = base64_encode(string(global.p_t_holidays));
                    ini_write_string("save", "p0x1u7p608", p0x1u7p608);
                    var p0x1u7p609 = base64_encode(string(global.p_t_landscapes));
                    ini_write_string("save", "p0x1u7p609", p0x1u7p609);
                    var p0x1u7p6010 = base64_encode(string(global.p_t_legacy));
                    ini_write_string("save", "p0x1u7p6010", p0x1u7p6010);
                    var p0x1u7p6011 = base64_encode(string(global.p_t_misc));
                    ini_write_string("save", "p0x1u7p6011", p0x1u7p6011);
                    var p0x1u7p6012 = base64_encode(string(global.p_t_nature));
                    ini_write_string("save", "p0x1u7p6012", p0x1u7p6012);
                    var p0x1u7p6013 = base64_encode(string(global.p_t_paintings));
                    ini_write_string("save", "p0x1u7p6013", p0x1u7p6013);
                    var p0x1u7p6014 = base64_encode(string(global.p_t_seasonal));
                    ini_write_string("save", "p0x1u7p6014", p0x1u7p6014);
                    var p0x1u7p6015 = base64_encode(string(global.p_t_space));
                    ini_write_string("save", "p0x1u7p6015", p0x1u7p6015);
                    var p0x1u7p6016 = base64_encode(string(global.p_t_sport));
                    ini_write_string("save", "p0x1u7p6016", p0x1u7p6016);
                    var p0x1u7p6017 = base64_encode(string(global.p_t_variety));
                    ini_write_string("save", "p0x1u7p6017", p0x1u7p6017);
                    var p0x1u7p6018 = base64_encode(string(global.p_t_vehicle));
                    ini_write_string("save", "p0x1u7p6018", p0x1u7p6018);
                    var p0x1u7p6019 = base64_encode(string(global.p_t_video_games));
                    ini_write_string("save", "p0x1u7p6019", p0x1u7p6019);
                    ini_close();
                }
                if (button_number == 23 || button_number == 24 || button_number == 25 || button_number == 26 || button_number == 27 || button_number == 28 || button_number == 29 || button_number == 30 || button_number == 32 || button_number == 33 || button_number == 34 || button_number == 35 || button_number == 36 || button_number == 37 || button_number == 38 || button_number == 39 || button_number == 40 || button_number == 41 || button_number == 42 || button_number == 43 || button_number == 44 || button_number == 45 || button_number == 46)
                {
                    if (ob_new_menu_controller.current_menu_page == 1)
                    {
                        with (ob_puz_pac_but)
                        {
                            alarm[11] = 1;
                        }
                        with (ob_puz_pac_but)
                        {
                            alarm[5] = 1;
                        }
                        ob_new_menu_controller.current_generic_page = 0;
                        ob_new_menu_controller.max_generic_pages = 7;
                        ob_new_menu_controller.p_ttm = 1;
                        ob_new_menu_controller.alarm[4] = 2;
                    }
                }
                if (global.p_t_free == 1 || global.p_t_1000_plus == 1 || global.p_t_animals == 1 || global.p_t_artwork == 1 || global.p_t_food == 1 || global.p_t_geography == 1 || global.p_t_history == 1 || global.p_t_holidays == 1 || global.p_t_landscapes == 1 || global.p_t_legacy == 1 || global.p_t_misc == 1 || global.p_t_nature == 1 || global.p_t_paintings == 1 || global.p_t_seasonal == 1 || global.p_t_space == 1 || global.p_t_sport == 1 || global.p_t_variety == 1 || global.p_t_vehicle == 1 || global.p_t_video_games == 1)
                {
                    global.p_t_notags = 0;
                }
                else
                {
                    global.p_t_notags = 1;
                }
            }
        }
    }
}
if (button_number == 23 || button_number == 24 || button_number == 25 || button_number == 26 || button_number == 27 || button_number == 28 || button_number == 29 || button_number == 30 || button_number == 32 || button_number == 33 || button_number == 34 || button_number == 35 || button_number == 36 || button_number == 37 || button_number == 38 || button_number == 39 || button_number == 40 || button_number == 41 || button_number == 42 || button_number == 43 || button_number == 44 || button_number == 45 || button_number == 46)
{
    if (ob_new_menu_controller.tags_menu_open == 0)
    {
        instance_destroy();
    }
}
if (button_number == 8)
{
    if (global.nm_block_for_intro == 0)
    {
        if (place_meeting(x, y, ob_menu_cursor))
        {
            ob_new_menu_controller.show_theme_chooser = 1;
            if (ob_new_menu_controller.theme_choose_alpha < 1)
            {
                ob_new_menu_controller.theme_choose_alpha += 0.05;
            }
            if (mouse_check_button_pressed(mb_left))
            {
                audio_play_sound(s_special_button_press, 1, false);
                if (global.theme_to_use < 9)
                {
                    global.theme_to_use += 1;
                }
                else
                {
                    global.theme_to_use = 0;
                }
                if (global.theme_to_use == 4)
                {
                    if (!steam_get_achievement("kiosktheme5"))
                    {
                        global.theme_to_use += 1;
                    }
                }
                if (global.theme_to_use == 5)
                {
                    if (!steam_get_achievement("kiosktheme2"))
                    {
                        global.theme_to_use += 1;
                    }
                }
                if (global.theme_to_use == 7)
                {
                    if (!steam_get_achievement("kiosktheme1"))
                    {
                        global.theme_to_use += 1;
                    }
                }
                if (global.theme_to_use == 8)
                {
                    if (!steam_get_achievement("kiosktheme3"))
                    {
                        global.theme_to_use += 1;
                    }
                }
                if (global.theme_to_use == 9)
                {
                    if (!steam_get_achievement("kiosktheme4"))
                    {
                        global.theme_to_use = 0;
                    }
                }
                ini_open("ppu.ini");
                var p0x197p47 = base64_encode(string(global.theme_to_use));
                ini_write_string("save", "p0x197p47", p0x197p47);
                ini_close();
                if (global.theme_to_use == 1)
                {
                    button_text_value = string(ob_language_controller.puzzle_select_theme_2);
                }
                else if (global.theme_to_use == 2)
                {
                    button_text_value = string(ob_language_controller.puzzle_select_theme_3);
                }
                else if (global.theme_to_use == 3)
                {
                    button_text_value = string(ob_language_controller.puzzle_select_theme_4);
                }
                else if (global.theme_to_use == 4)
                {
                    button_text_value = string(ob_language_controller.puzzle_select_theme_5);
                }
                else if (global.theme_to_use == 5)
                {
                    button_text_value = string(ob_language_controller.puzzle_select_theme_6);
                }
                else if (global.theme_to_use == 6)
                {
                    button_text_value = string(ob_language_controller.puzzle_select_theme_7);
                }
                else if (global.theme_to_use == 7)
                {
                    button_text_value = string(ob_language_controller.puzzle_select_theme_8);
                }
                else if (global.theme_to_use == 8)
                {
                    button_text_value = string(ob_language_controller.puzzle_select_theme_9);
                }
                else if (global.theme_to_use == 9)
                {
                    button_text_value = string(ob_language_controller.puzzle_select_theme_10);
                }
                else
                {
                    button_text_value = string(ob_language_controller.puzzle_select_theme_1);
                }
            }
        }
        else
        {
            ob_new_menu_controller.show_theme_chooser = 0;
            ob_new_menu_controller.theme_choose_alpha = 0;
        }
    }
}
if (button_number == 15)
{
    if (place_meeting(x, y, ob_menu_cursor))
    {
        if (mouse_check_button_released(mb_left))
        {
            ob_new_menu_controller.puz_shop_page = 0;
        }
    }
    if (ob_new_menu_controller.current_menu_page == 6)
    {
        if (ob_new_menu_controller.puz_shop_page == 1 || ob_new_menu_controller.puz_shop_page == 2 || ob_new_menu_controller.puz_shop_page == 3 || ob_new_menu_controller.puz_shop_page == 4)
        {
        }
        else
        {
            instance_destroy();
        }
    }
    else
    {
        instance_destroy();
    }
}
if (button_number == 13 || button_number == 14)
{
    if (ob_new_menu_controller.current_menu_page == 3)
    {
    }
    else if (ob_new_menu_controller.current_menu_page == 6)
    {
        if (ob_new_menu_controller.puz_shop_page == 1 || ob_new_menu_controller.puz_shop_page == 2 || ob_new_menu_controller.puz_shop_page == 3 || ob_new_menu_controller.puz_shop_page == 4)
        {
        }
        else
        {
            instance_destroy();
        }
    }
    else
    {
        instance_destroy();
    }
}
if (place_meeting(x, y, ob_menu_cursor))
{
    if (mouse_check_button_pressed(mb_left))
    {
        if (button_number == 13)
        {
            if (ob_new_menu_controller.kiosk_current_page > 0)
            {
                ob_new_menu_controller.kiosk_current_page -= 1;
                if (ob_new_menu_controller.current_menu_page == 3)
                {
                    with (ob_new_menu_kiosk_puz)
                    {
                        y += 232;
                    }
                }
                else if (ob_new_menu_controller.current_menu_page == 6)
                {
                    with (ob_new_menu_kiosk_puz)
                    {
                        y += 696;
                    }
                }
                with (ob_new_menu_kiosk_puz)
                {
                    trade_open = 0;
                }
                with (ob_new_menu_kiosk_puz)
                {
                    puz_options_open = 0;
                }
            }
        }
        else if (button_number == 14)
        {
            if (ob_new_menu_controller.kiosk_current_page < ob_new_menu_controller.kiosk_total_pages)
            {
                ob_new_menu_controller.kiosk_current_page += 1;
                if (ob_new_menu_controller.current_menu_page == 3)
                {
                    with (ob_new_menu_kiosk_puz)
                    {
                        y -= 232;
                    }
                }
                else if (ob_new_menu_controller.current_menu_page == 6)
                {
                    with (ob_new_menu_kiosk_puz)
                    {
                        y -= 696;
                    }
                }
                with (ob_new_menu_kiosk_puz)
                {
                    trade_open = 0;
                }
                with (ob_new_menu_kiosk_puz)
                {
                    puz_options_open = 0;
                }
            }
        }
    }
}
if (button_number == 48 || button_number == 49 || button_number == 50 || button_number == 51 || button_number == 52 || button_number == 53 || button_number == 54 || button_number == 55 || button_number == 56 || button_number == 57 || button_number == 58 || button_number == 59 || button_number == 60 || button_number == 61 || button_number == 62 || button_number == 63 || button_number == 64 || button_number == 65 || button_number == 66 || button_number == 97)
{
    if (ob_new_menu_controller.current_menu_page == 8)
    {
    }
    else
    {
        instance_destroy();
    }
}
if (place_meeting(x, y, ob_menu_cursor))
{
    if (mouse_check_button_pressed(mb_left))
    {
        if (button_number == 51)
        {
            if (global.config_game_fullscreen_0_is_on == 1)
            {
                global.config_game_fullscreen_0_is_on = 0;
            }
            else
            {
                global.config_game_fullscreen_0_is_on = 1;
            }
            audio_play_sound(s_special_button_press, 1, false);
            ob_new_menu_controller.alarm[6] = 1;
            ini_open("ppu.ini");
            var p0x197p26 = base64_encode(string(global.config_game_fullscreen_0_is_on));
            ini_write_string("save", "p0x197p26", p0x197p26);
            ini_close();
            if (global.config_game_fullscreen_0_is_on == 1)
            {
                button_text_value = ": OFF";
            }
            else
            {
                button_text_value = ": ON";
            }
        }
        else if (button_number == 52)
        {
            if (global.config_resolution < 11)
            {
                global.config_resolution += 1;
            }
            else
            {
                global.config_resolution = 0;
            }
            audio_play_sound(s_special_button_press, 1, false);
            ini_open("ppu.ini");
            var p0x197p27 = base64_encode(string(global.config_resolution));
            ini_write_string("save", "p0x197p27", p0x197p27);
            ini_close();
            ob_new_menu_controller.alarm[6] = 1;
            if (global.config_resolution == 1)
            {
                button_text_value = ": 1024x768";
            }
            else if (global.config_resolution == 2)
            {
                button_text_value = ": 1280x720";
            }
            else if (global.config_resolution == 3)
            {
                button_text_value = ": 1280x800";
            }
            else if (global.config_resolution == 4)
            {
                button_text_value = ": 1280x1024";
            }
            else if (global.config_resolution == 5)
            {
                button_text_value = ": 1360x768";
            }
            else if (global.config_resolution == 6)
            {
                button_text_value = ": 1366x768";
            }
            else if (global.config_resolution == 7)
            {
                button_text_value = ": 1440x900";
            }
            else if (global.config_resolution == 8)
            {
                button_text_value = ": 1536x864";
            }
            else if (global.config_resolution == 9)
            {
                button_text_value = ": 1600x900";
            }
            else if (global.config_resolution == 10)
            {
                button_text_value = ": 1680x1050";
            }
            else if (global.config_resolution == 11)
            {
                button_text_value = ": 1920x1080";
            }
            else
            {
                button_text_value = ": NATIVE";
            }
        }
        else if (button_number == 53)
        {
            audio_play_sound(s_remove_fav, 1, false);
            ini_open("ppu.ini");
            global.config_game_fullscreen_0_is_on = 0;
            global.config_resolution = 0;
            var p0x197p26 = base64_encode(string(global.config_game_fullscreen_0_is_on));
            ini_write_string("save", "p0x197p26", p0x197p26);
            var p0x197p27 = base64_encode(string(global.config_resolution));
            ini_write_string("save", "p0x197p27", p0x197p27);
            ini_close();
            ob_new_menu_controller.alarm[6] = 1;
            with (ob_new_menu_generic_button)
            {
                alarm[3] = 1;
            }
            if (global.audio_menu_effects_0_is_on == 0)
            {
                audio_play_sound(global.sound_option_reset_default, 1, false);
            }
        }
        else if (button_number == 54)
        {
            if (global.can_play_sound_effects_0_is_on_1_is_off == 0)
            {
                global.can_play_sound_effects_0_is_on_1_is_off = 1;
            }
            else
            {
                global.can_play_sound_effects_0_is_on_1_is_off = 0;
            }
            audio_play_sound(s_special_button_press, 1, false);
            ini_open("ppu.ini");
            var p0x197p19 = base64_encode(string(global.can_play_sound_effects_0_is_on_1_is_off));
            ini_write_string("save", "p0x197p19", p0x197p19);
            ini_close();
            if (global.can_play_sound_effects_0_is_on_1_is_off == 1)
            {
                button_text_value = ": OFF";
            }
            else
            {
                button_text_value = ": ON";
            }
        }
        else if (button_number == 55)
        {
            if (global.can_play_music_0_is_on_1_is_off == 0)
            {
                global.can_play_music_0_is_on_1_is_off = 1;
            }
            else
            {
                global.can_play_music_0_is_on_1_is_off = 0;
            }
            audio_play_sound(s_special_button_press, 1, false);
            ini_open("ppu.ini");
            var p0x197p17 = base64_encode(string(global.can_play_music_0_is_on_1_is_off));
            ini_write_string("save", "p0x197p17", p0x197p17);
            ini_close();
            if (global.can_play_music_0_is_on_1_is_off == 1)
            {
                button_text_value = ": OFF";
            }
            else
            {
                button_text_value = ": ON";
            }
        }
        else if (button_number == 56)
        {
            if (global.can_play_ambiance_0_is_on_1_is_off == 0)
            {
                global.can_play_ambiance_0_is_on_1_is_off = 1;
            }
            else
            {
                global.can_play_ambiance_0_is_on_1_is_off = 0;
            }
            audio_play_sound(s_special_button_press, 1, false);
            ini_open("ppu.ini");
            var p0x197p18 = base64_encode(string(global.can_play_ambiance_0_is_on_1_is_off));
            ini_write_string("save", "p0x197p18", p0x197p18);
            ini_close();
            if (global.can_play_ambiance_0_is_on_1_is_off == 1)
            {
                button_text_value = ": OFF";
            }
            else
            {
                button_text_value = ": ON";
            }
        }
        else if (button_number == 57)
        {
            if (global.actual_volume_level == 0)
            {
                global.actual_volume_level = 0.1;
                global.volume_level_0_is_full = 9;
            }
            else if (global.actual_volume_level == 0.1)
            {
                global.actual_volume_level = 0.2;
                global.volume_level_0_is_full = 8;
            }
            else if (global.actual_volume_level == 0.2)
            {
                global.actual_volume_level = 0.3;
                global.volume_level_0_is_full = 7;
            }
            else if (global.actual_volume_level == 0.3)
            {
                global.actual_volume_level = 0.4;
                global.volume_level_0_is_full = 6;
            }
            else if (global.actual_volume_level == 0.4)
            {
                global.actual_volume_level = 0.5;
                global.volume_level_0_is_full = 5;
            }
            else if (global.actual_volume_level == 0.5)
            {
                global.actual_volume_level = 0.6;
                global.volume_level_0_is_full = 4;
            }
            else if (global.actual_volume_level == 0.6)
            {
                global.actual_volume_level = 0.7;
                global.volume_level_0_is_full = 3;
            }
            else if (global.actual_volume_level == 0.7)
            {
                global.actual_volume_level = 0.8;
                global.volume_level_0_is_full = 2;
            }
            else if (global.actual_volume_level == 0.8)
            {
                global.actual_volume_level = 0.9;
                global.volume_level_0_is_full = 1;
            }
            else if (global.actual_volume_level == 0.9)
            {
                global.actual_volume_level = 1;
                global.volume_level_0_is_full = 0;
            }
            else if (global.actual_volume_level == 1)
            {
                global.actual_volume_level = 0;
                global.volume_level_0_is_full = 10;
            }
            audio_play_sound(s_special_button_press, 1, false);
            ini_open("ppu.ini");
            var p0x197p25 = base64_encode(string(global.volume_level_0_is_full));
            ini_write_string("save", "p0x197p25", p0x197p25);
            ini_close();
            audio_master_gain(global.actual_volume_level);
            audio_play_sound(s_special_button_press, 1, false);
            if (global.actual_volume_level == 0)
            {
                button_text_value = ": OFF";
            }
            else if (global.actual_volume_level == 0.1)
            {
                button_text_value = ": x1";
            }
            else if (global.actual_volume_level == 0.2)
            {
                button_text_value = ": x2";
            }
            else if (global.actual_volume_level == 0.3)
            {
                button_text_value = ": x3";
            }
            else if (global.actual_volume_level == 0.4)
            {
                button_text_value = ": x4";
            }
            else if (global.actual_volume_level == 0.5)
            {
                button_text_value = ": x5";
            }
            else if (global.actual_volume_level == 0.6)
            {
                button_text_value = ": x6";
            }
            else if (global.actual_volume_level == 0.7)
            {
                button_text_value = ": x7";
            }
            else if (global.actual_volume_level == 0.8)
            {
                button_text_value = ": x8";
            }
            else if (global.actual_volume_level == 0.9)
            {
                button_text_value = ": x9";
            }
            else
            {
                button_text_value = ": x10";
            }
        }
        else if (button_number == 58)
        {
            if (global.actual_effects_volume_level == 0)
            {
                global.actual_effects_volume_level = 0.1;
                global.effects_volume_level_0_is_full = 9;
            }
            else if (global.actual_effects_volume_level == 0.1)
            {
                global.actual_effects_volume_level = 0.2;
                global.effects_volume_level_0_is_full = 8;
            }
            else if (global.actual_effects_volume_level == 0.2)
            {
                global.actual_effects_volume_level = 0.3;
                global.effects_volume_level_0_is_full = 7;
            }
            else if (global.actual_effects_volume_level == 0.3)
            {
                global.actual_effects_volume_level = 0.4;
                global.effects_volume_level_0_is_full = 6;
            }
            else if (global.actual_effects_volume_level == 0.4)
            {
                global.actual_effects_volume_level = 0.5;
                global.effects_volume_level_0_is_full = 5;
            }
            else if (global.actual_effects_volume_level == 0.5)
            {
                global.actual_effects_volume_level = 0.6;
                global.effects_volume_level_0_is_full = 4;
            }
            else if (global.actual_effects_volume_level == 0.6)
            {
                global.actual_effects_volume_level = 0.7;
                global.effects_volume_level_0_is_full = 3;
            }
            else if (global.actual_effects_volume_level == 0.7)
            {
                global.actual_effects_volume_level = 0.8;
                global.effects_volume_level_0_is_full = 2;
            }
            else if (global.actual_effects_volume_level == 0.8)
            {
                global.actual_effects_volume_level = 0.9;
                global.effects_volume_level_0_is_full = 1;
            }
            else if (global.actual_effects_volume_level == 0.9)
            {
                global.actual_effects_volume_level = 1;
                global.effects_volume_level_0_is_full = 0;
            }
            else if (global.actual_effects_volume_level == 1)
            {
                global.actual_effects_volume_level = 0;
                global.effects_volume_level_0_is_full = 10;
            }
            audio_play_sound(s_special_button_press, 1, false);
            ini_open("ppu.ini");
            var p0x197p54 = base64_encode(string(global.effects_volume_level_0_is_full));
            ini_write_string("save", "p0x197p54", p0x197p54);
            ini_close();
            ob_audio_controller.alarm[2] = 1;
            if (global.actual_effects_volume_level == 0)
            {
                button_text_value = ": OFF";
            }
            else if (global.actual_effects_volume_level == 0.1)
            {
                button_text_value = ": x1";
            }
            else if (global.actual_effects_volume_level == 0.2)
            {
                button_text_value = ": x2";
            }
            else if (global.actual_effects_volume_level == 0.3)
            {
                button_text_value = ": x3";
            }
            else if (global.actual_effects_volume_level == 0.4)
            {
                button_text_value = ": x4";
            }
            else if (global.actual_effects_volume_level == 0.5)
            {
                button_text_value = ": x5";
            }
            else if (global.actual_effects_volume_level == 0.6)
            {
                button_text_value = ": x6";
            }
            else if (global.actual_effects_volume_level == 0.7)
            {
                button_text_value = ": x7";
            }
            else if (global.actual_effects_volume_level == 0.8)
            {
                button_text_value = ": x8";
            }
            else if (global.actual_effects_volume_level == 0.9)
            {
                button_text_value = ": x9";
            }
            else
            {
                button_text_value = ": x10";
            }
        }
        else if (button_number == 59)
        {
            if (global.actual_music_volume_level == 0)
            {
                global.actual_music_volume_level = 0.1;
                global.music_volume_level_0_is_full = 9;
            }
            else if (global.actual_music_volume_level == 0.1)
            {
                global.actual_music_volume_level = 0.2;
                global.music_volume_level_0_is_full = 8;
            }
            else if (global.actual_music_volume_level == 0.2)
            {
                global.actual_music_volume_level = 0.3;
                global.music_volume_level_0_is_full = 7;
            }
            else if (global.actual_music_volume_level == 0.3)
            {
                global.actual_music_volume_level = 0.4;
                global.music_volume_level_0_is_full = 6;
            }
            else if (global.actual_music_volume_level == 0.4)
            {
                global.actual_music_volume_level = 0.5;
                global.music_volume_level_0_is_full = 5;
            }
            else if (global.actual_music_volume_level == 0.5)
            {
                global.actual_music_volume_level = 0.6;
                global.music_volume_level_0_is_full = 4;
            }
            else if (global.actual_music_volume_level == 0.6)
            {
                global.actual_music_volume_level = 0.7;
                global.music_volume_level_0_is_full = 3;
            }
            else if (global.actual_music_volume_level == 0.7)
            {
                global.actual_music_volume_level = 0.8;
                global.music_volume_level_0_is_full = 2;
            }
            else if (global.actual_music_volume_level == 0.8)
            {
                global.actual_music_volume_level = 0.9;
                global.music_volume_level_0_is_full = 1;
            }
            else if (global.actual_music_volume_level == 0.9)
            {
                global.actual_music_volume_level = 1;
                global.music_volume_level_0_is_full = 0;
            }
            else if (global.actual_music_volume_level == 1)
            {
                global.actual_music_volume_level = 0;
                global.music_volume_level_0_is_full = 10;
            }
            audio_play_sound(s_special_button_press, 1, false);
            ini_open("ppu.ini");
            var p0x197p55 = base64_encode(string(global.music_volume_level_0_is_full));
            ini_write_string("save", "p0x197p55", p0x197p55);
            ini_close();
            ob_audio_controller.alarm[2] = 1;
            if (global.actual_music_volume_level == 0)
            {
                button_text_value = ": OFF";
            }
            else if (global.actual_music_volume_level == 0.1)
            {
                button_text_value = ": x1";
            }
            else if (global.actual_music_volume_level == 0.2)
            {
                button_text_value = ": x2";
            }
            else if (global.actual_music_volume_level == 0.3)
            {
                button_text_value = ": x3";
            }
            else if (global.actual_music_volume_level == 0.4)
            {
                button_text_value = ": x4";
            }
            else if (global.actual_music_volume_level == 0.5)
            {
                button_text_value = ": x5";
            }
            else if (global.actual_music_volume_level == 0.6)
            {
                button_text_value = ": x6";
            }
            else if (global.actual_music_volume_level == 0.7)
            {
                button_text_value = ": x7";
            }
            else if (global.actual_music_volume_level == 0.8)
            {
                button_text_value = ": x8";
            }
            else if (global.actual_music_volume_level == 0.9)
            {
                button_text_value = ": x9";
            }
            else
            {
                button_text_value = ": x10";
            }
        }
        else if (button_number == 60)
        {
            if (global.actual_ambiance_volume_level == 0)
            {
                global.actual_ambiance_volume_level = 0.1;
                global.ambiance_volume_level_0_is_full = 9;
            }
            else if (global.actual_ambiance_volume_level == 0.1)
            {
                global.actual_ambiance_volume_level = 0.2;
                global.ambiance_volume_level_0_is_full = 8;
            }
            else if (global.actual_ambiance_volume_level == 0.2)
            {
                global.actual_ambiance_volume_level = 0.3;
                global.ambiance_volume_level_0_is_full = 7;
            }
            else if (global.actual_ambiance_volume_level == 0.3)
            {
                global.actual_ambiance_volume_level = 0.4;
                global.ambiance_volume_level_0_is_full = 6;
            }
            else if (global.actual_ambiance_volume_level == 0.4)
            {
                global.actual_ambiance_volume_level = 0.5;
                global.ambiance_volume_level_0_is_full = 5;
            }
            else if (global.actual_ambiance_volume_level == 0.5)
            {
                global.actual_ambiance_volume_level = 0.6;
                global.ambiance_volume_level_0_is_full = 4;
            }
            else if (global.actual_ambiance_volume_level == 0.6)
            {
                global.actual_ambiance_volume_level = 0.7;
                global.ambiance_volume_level_0_is_full = 3;
            }
            else if (global.actual_ambiance_volume_level == 0.7)
            {
                global.actual_ambiance_volume_level = 0.8;
                global.ambiance_volume_level_0_is_full = 2;
            }
            else if (global.actual_ambiance_volume_level == 0.8)
            {
                global.actual_ambiance_volume_level = 0.9;
                global.ambiance_volume_level_0_is_full = 1;
            }
            else if (global.actual_ambiance_volume_level == 0.9)
            {
                global.actual_ambiance_volume_level = 1;
                global.ambiance_volume_level_0_is_full = 0;
            }
            else if (global.actual_ambiance_volume_level == 1)
            {
                global.actual_ambiance_volume_level = 0;
                global.ambiance_volume_level_0_is_full = 10;
            }
            audio_play_sound(s_special_button_press, 1, false);
            ini_open("ppu.ini");
            var p0x197p56 = base64_encode(string(global.ambiance_volume_level_0_is_full));
            ini_write_string("save", "p0x197p56", p0x197p56);
            ini_close();
            ob_audio_controller.alarm[2] = 1;
            if (global.actual_ambiance_volume_level == 0)
            {
                button_text_value = ": OFF";
            }
            else if (global.actual_ambiance_volume_level == 0.1)
            {
                button_text_value = ": x1";
            }
            else if (global.actual_ambiance_volume_level == 0.2)
            {
                button_text_value = ": x2";
            }
            else if (global.actual_ambiance_volume_level == 0.3)
            {
                button_text_value = ": x3";
            }
            else if (global.actual_ambiance_volume_level == 0.4)
            {
                button_text_value = ": x4";
            }
            else if (global.actual_ambiance_volume_level == 0.5)
            {
                button_text_value = ": x5";
            }
            else if (global.actual_ambiance_volume_level == 0.6)
            {
                button_text_value = ": x6";
            }
            else if (global.actual_ambiance_volume_level == 0.7)
            {
                button_text_value = ": x7";
            }
            else if (global.actual_ambiance_volume_level == 0.8)
            {
                button_text_value = ": x8";
            }
            else if (global.actual_ambiance_volume_level == 0.9)
            {
                button_text_value = ": x9";
            }
            else
            {
                button_text_value = ": x10";
            }
        }
        else if (button_number == 61)
        {
            if (global.audio_menu_effects_0_is_on == 1)
            {
                global.audio_menu_effects_0_is_on = 0;
            }
            else
            {
                global.audio_menu_effects_0_is_on = 1;
            }
            audio_play_sound(s_special_button_press, 1, false);
            ini_open("ppu.ini");
            var p0x197p33 = base64_encode(string(global.audio_menu_effects_0_is_on));
            ini_write_string("save", "p0x197p33", p0x197p33);
            ini_close();
            if (global.audio_menu_effects_0_is_on == 1)
            {
                button_text_value = ": OFF";
            }
            else
            {
                button_text_value = ": ON";
            }
        }
        else if (button_number == 62)
        {
            if (global.audio_menu_music_0_is_on == 1)
            {
                global.audio_menu_music_0_is_on = 0;
            }
            else
            {
                global.audio_menu_music_0_is_on = 1;
                audio_group_stop_all(audiogroup_music_menu);
            }
            audio_play_sound(s_special_button_press, 1, false);
            ini_open("ppu.ini");
            var p0x197p34 = base64_encode(string(global.audio_menu_music_0_is_on));
            ini_write_string("save", "p0x197p34", p0x197p34);
            ini_close();
            if (global.audio_menu_music_0_is_on == 1)
            {
                button_text_value = ": OFF";
            }
            else
            {
                button_text_value = ": ON";
            }
        }
        else if (button_number == 63)
        {
            audio_play_sound(s_remove_fav, 1, false);
            ini_open("ppu.ini");
            global.actual_volume_level = 1;
            global.volume_level_0_is_full = 0;
            var p0x197p25 = base64_encode(string(global.volume_level_0_is_full));
            ini_write_string("save", "p0x197p25", p0x197p25);
            audio_master_gain(global.actual_volume_level);
            global.actual_effects_volume_level = 1;
            global.effects_volume_level_0_is_full = 0;
            var p0x197p54 = base64_encode(string(global.effects_volume_level_0_is_full));
            ini_write_string("save", "p0x197p54", p0x197p54);
            global.actual_music_volume_level = 1;
            global.music_volume_level_0_is_full = 0;
            var p0x197p55 = base64_encode(string(global.music_volume_level_0_is_full));
            ini_write_string("save", "p0x197p55", p0x197p55);
            global.actual_ambiance_volume_level = 1;
            global.ambiance_volume_level_0_is_full = 0;
            var p0x197p56 = base64_encode(string(global.ambiance_volume_level_0_is_full));
            ini_write_string("save", "p0x197p56", p0x197p56);
            ob_audio_controller.alarm[2] = 1;
            global.audio_menu_effects_0_is_on = 0;
            var p0x197p33 = base64_encode(string(global.audio_menu_effects_0_is_on));
            ini_write_string("save", "p0x197p33", p0x197p33);
            global.audio_menu_music_0_is_on = 0;
            var p0x197p34 = base64_encode(string(global.audio_menu_music_0_is_on));
            ini_write_string("save", "p0x197p34", p0x197p34);
            global.can_play_sound_effects_0_is_on_1_is_off = 0;
            var p0x197p19 = base64_encode(string(global.can_play_sound_effects_0_is_on_1_is_off));
            ini_write_string("save", "p0x197p19", p0x197p19);
            global.can_play_music_0_is_on_1_is_off = 0;
            var p0x197p17 = base64_encode(string(global.can_play_music_0_is_on_1_is_off));
            ini_write_string("save", "p0x197p17", p0x197p17);
            global.can_play_ambiance_0_is_on_1_is_off = 0;
            var p0x197p18 = base64_encode(string(global.can_play_ambiance_0_is_on_1_is_off));
            ini_write_string("save", "p0x197p18", p0x197p18);
            ini_close();
            with (ob_new_menu_generic_button)
            {
                alarm[3] = 1;
            }
            if (global.audio_menu_effects_0_is_on == 0)
            {
                audio_play_sound(global.sound_option_reset_default, 1, false);
            }
        }
        else if (button_number == 64)
        {
            if (global.gamepad_sensetivity == 1)
            {
                global.gamepad_sensetivity = 2;
            }
            else if (global.gamepad_sensetivity == 2)
            {
                global.gamepad_sensetivity = 3;
            }
            else if (global.gamepad_sensetivity == 3)
            {
                global.gamepad_sensetivity = 4;
            }
            else if (global.gamepad_sensetivity == 4)
            {
                global.gamepad_sensetivity = 0;
            }
            else if (global.gamepad_sensetivity == 5)
            {
                global.gamepad_sensetivity = 6;
            }
            else if (global.gamepad_sensetivity == 6)
            {
                global.gamepad_sensetivity = 7;
            }
            else if (global.gamepad_sensetivity == 7)
            {
                global.gamepad_sensetivity = 8;
            }
            else if (global.gamepad_sensetivity == 8)
            {
                global.gamepad_sensetivity = 9;
            }
            else if (global.gamepad_sensetivity == 9)
            {
                global.gamepad_sensetivity = 1;
            }
            else if (global.gamepad_sensetivity == 0)
            {
                global.gamepad_sensetivity = 5;
            }
            audio_play_sound(s_special_button_press, 1, false);
            ob_menu_cursor.alarm[1] = 1;
            ini_open("ppu.ini");
            var p0x197p59 = base64_encode(string(global.gamepad_sensetivity));
            ini_write_string("save", "p0x197p59", p0x197p59);
            ini_close();
            if (global.gamepad_sensetivity == 1)
            {
                button_text_value = ": x1";
            }
            else if (global.gamepad_sensetivity == 2)
            {
                button_text_value = ": x2";
            }
            else if (global.gamepad_sensetivity == 3)
            {
                button_text_value = ": x3";
            }
            else if (global.gamepad_sensetivity == 4)
            {
                button_text_value = ": x4";
            }
            else if (global.gamepad_sensetivity == 5)
            {
                button_text_value = ": x6";
            }
            else if (global.gamepad_sensetivity == 6)
            {
                button_text_value = ": x7";
            }
            else if (global.gamepad_sensetivity == 7)
            {
                button_text_value = ": x8";
            }
            else if (global.gamepad_sensetivity == 8)
            {
                button_text_value = ": x9";
            }
            else if (global.gamepad_sensetivity == 9)
            {
                button_text_value = ": x10";
            }
            else
            {
                button_text_value = ": x5";
            }
        }
        else if (button_number == 65)
        {
            if (global.zoom_pan_speed < 4)
            {
                global.zoom_pan_speed += 1;
            }
            else
            {
                global.zoom_pan_speed = 0;
            }
            audio_play_sound(s_special_button_press, 1, false);
            ini_open("ppu.ini");
            var p0x197p58 = base64_encode(string(global.zoom_pan_speed));
            ini_write_string("save", "p0x197p58", p0x197p58);
            ini_close();
            if (global.zoom_pan_speed == 1)
            {
                button_text_value = ": x2";
            }
            else if (global.zoom_pan_speed == 2)
            {
                button_text_value = ": x3";
            }
            else if (global.zoom_pan_speed == 3)
            {
                button_text_value = ": x4";
            }
            else if (global.zoom_pan_speed == 4)
            {
                button_text_value = ": x5";
            }
            else
            {
                button_text_value = ": x1";
            }
        }
        else if (button_number == 66)
        {
        }
        else if (button_number == 97)
        {
            if (global.hide_zoom_text == 1)
            {
                global.hide_zoom_text = 0;
            }
            else
            {
                global.hide_zoom_text = 1;
            }
            ini_open("ppu.ini");
            var p0x17p81 = base64_encode(string(global.hide_zoom_text));
            ini_write_string("save", "p0x17p81", p0x17p81);
            ini_close();
            if (global.hide_zoom_text == 1)
            {
                button_text_value = ": OFF";
            }
            else
            {
                button_text_value = ": ON";
            }
        }
    }
    if (mouse_check_button_pressed(mb_right))
    {
        if (button_number == 51)
        {
            if (global.config_game_fullscreen_0_is_on == 1)
            {
                global.config_game_fullscreen_0_is_on = 0;
            }
            else
            {
                global.config_game_fullscreen_0_is_on = 1;
            }
            audio_play_sound(s_special_button_press, 1, false);
            ob_new_menu_controller.alarm[6] = 1;
            ini_open("ppu.ini");
            var p0x197p26 = base64_encode(string(global.config_game_fullscreen_0_is_on));
            ini_write_string("save", "p0x197p26", p0x197p26);
            ini_close();
            if (global.config_game_fullscreen_0_is_on == 1)
            {
                button_text_value = ": OFF";
            }
            else
            {
                button_text_value = ": ON";
            }
        }
        else if (button_number == 52)
        {
            if (global.config_resolution > 0)
            {
                global.config_resolution -= 1;
            }
            else
            {
                global.config_resolution = 11;
            }
            audio_play_sound(s_special_button_press, 1, false);
            ini_open("ppu.ini");
            var p0x197p27 = base64_encode(string(global.config_resolution));
            ini_write_string("save", "p0x197p27", p0x197p27);
            ini_close();
            ob_new_menu_controller.alarm[6] = 1;
            if (global.config_resolution == 1)
            {
                button_text_value = ": 1024x768";
            }
            else if (global.config_resolution == 2)
            {
                button_text_value = ": 1280x720";
            }
            else if (global.config_resolution == 3)
            {
                button_text_value = ": 1280x800";
            }
            else if (global.config_resolution == 4)
            {
                button_text_value = ": 1280x1024";
            }
            else if (global.config_resolution == 5)
            {
                button_text_value = ": 1360x768";
            }
            else if (global.config_resolution == 6)
            {
                button_text_value = ": 1366x768";
            }
            else if (global.config_resolution == 7)
            {
                button_text_value = ": 1440x900";
            }
            else if (global.config_resolution == 8)
            {
                button_text_value = ": 1536x864";
            }
            else if (global.config_resolution == 9)
            {
                button_text_value = ": 1600x900";
            }
            else if (global.config_resolution == 10)
            {
                button_text_value = ": 1680x1050";
            }
            else if (global.config_resolution == 11)
            {
                button_text_value = ": 1920x1080";
            }
            else
            {
                button_text_value = ": NATIVE";
            }
        }
        else if (button_number == 53)
        {
            audio_play_sound(s_remove_fav, 1, false);
            ini_open("ppu.ini");
            global.config_game_fullscreen_0_is_on = 0;
            global.config_resolution = 0;
            var p0x197p26 = base64_encode(string(global.config_game_fullscreen_0_is_on));
            ini_write_string("save", "p0x197p26", p0x197p26);
            var p0x197p27 = base64_encode(string(global.config_resolution));
            ini_write_string("save", "p0x197p27", p0x197p27);
            ini_close();
            ob_new_menu_controller.alarm[6] = 1;
            with (ob_new_menu_generic_button)
            {
                alarm[3] = 1;
            }
            if (global.audio_menu_effects_0_is_on == 0)
            {
                audio_play_sound(global.sound_option_reset_default, 1, false);
            }
        }
        else if (button_number == 54)
        {
            if (global.can_play_sound_effects_0_is_on_1_is_off == 0)
            {
                global.can_play_sound_effects_0_is_on_1_is_off = 1;
            }
            else
            {
                global.can_play_sound_effects_0_is_on_1_is_off = 0;
            }
            audio_play_sound(s_special_button_press, 1, false);
            ini_open("ppu.ini");
            var p0x197p19 = base64_encode(string(global.can_play_sound_effects_0_is_on_1_is_off));
            ini_write_string("save", "p0x197p19", p0x197p19);
            ini_close();
            if (global.can_play_sound_effects_0_is_on_1_is_off == 1)
            {
                button_text_value = ": OFF";
            }
            else
            {
                button_text_value = ": ON";
            }
        }
        else if (button_number == 55)
        {
            if (global.can_play_music_0_is_on_1_is_off == 0)
            {
                global.can_play_music_0_is_on_1_is_off = 1;
            }
            else
            {
                global.can_play_music_0_is_on_1_is_off = 0;
            }
            audio_play_sound(s_special_button_press, 1, false);
            ini_open("ppu.ini");
            var p0x197p17 = base64_encode(string(global.can_play_music_0_is_on_1_is_off));
            ini_write_string("save", "p0x197p17", p0x197p17);
            ini_close();
            if (global.can_play_music_0_is_on_1_is_off == 1)
            {
                button_text_value = ": OFF";
            }
            else
            {
                button_text_value = ": ON";
            }
        }
        else if (button_number == 56)
        {
            if (global.can_play_ambiance_0_is_on_1_is_off == 0)
            {
                global.can_play_ambiance_0_is_on_1_is_off = 1;
            }
            else
            {
                global.can_play_ambiance_0_is_on_1_is_off = 0;
            }
            audio_play_sound(s_special_button_press, 1, false);
            ini_open("ppu.ini");
            var p0x197p18 = base64_encode(string(global.can_play_ambiance_0_is_on_1_is_off));
            ini_write_string("save", "p0x197p18", p0x197p18);
            ini_close();
            if (global.can_play_ambiance_0_is_on_1_is_off == 1)
            {
                button_text_value = ": OFF";
            }
            else
            {
                button_text_value = ": ON";
            }
        }
        else if (button_number == 57)
        {
            if (global.actual_volume_level == 1)
            {
                global.actual_volume_level = 0.9;
                global.volume_level_0_is_full = 1;
            }
            else if (global.actual_volume_level == 0.9)
            {
                global.actual_volume_level = 0.8;
                global.volume_level_0_is_full = 2;
            }
            else if (global.actual_volume_level == 0.8)
            {
                global.actual_volume_level = 0.7;
                global.volume_level_0_is_full = 3;
            }
            else if (global.actual_volume_level == 0.7)
            {
                global.actual_volume_level = 0.6;
                global.volume_level_0_is_full = 4;
            }
            else if (global.actual_volume_level == 0.6)
            {
                global.actual_volume_level = 0.5;
                global.volume_level_0_is_full = 5;
            }
            else if (global.actual_volume_level == 0.5)
            {
                global.actual_volume_level = 0.4;
                global.volume_level_0_is_full = 6;
            }
            else if (global.actual_volume_level == 0.4)
            {
                global.actual_volume_level = 0.3;
                global.volume_level_0_is_full = 7;
            }
            else if (global.actual_volume_level == 0.3)
            {
                global.actual_volume_level = 0.2;
                global.volume_level_0_is_full = 8;
            }
            else if (global.actual_volume_level == 0.2)
            {
                global.actual_volume_level = 0.1;
                global.volume_level_0_is_full = 9;
            }
            else if (global.actual_volume_level == 0.1)
            {
                global.actual_volume_level = 0;
                global.volume_level_0_is_full = 10;
            }
            else if (global.actual_volume_level == 0)
            {
                global.actual_volume_level = 1;
                global.volume_level_0_is_full = 0;
            }
            audio_play_sound(s_special_button_press, 1, false);
            ini_open("ppu.ini");
            var p0x197p25 = base64_encode(string(global.volume_level_0_is_full));
            ini_write_string("save", "p0x197p25", p0x197p25);
            ini_close();
            audio_master_gain(global.actual_volume_level);
            audio_play_sound(s_special_button_press, 1, false);
            if (global.actual_volume_level == 0)
            {
                button_text_value = ": OFF";
            }
            else if (global.actual_volume_level == 0.1)
            {
                button_text_value = ": x1";
            }
            else if (global.actual_volume_level == 0.2)
            {
                button_text_value = ": x2";
            }
            else if (global.actual_volume_level == 0.3)
            {
                button_text_value = ": x3";
            }
            else if (global.actual_volume_level == 0.4)
            {
                button_text_value = ": x4";
            }
            else if (global.actual_volume_level == 0.5)
            {
                button_text_value = ": x5";
            }
            else if (global.actual_volume_level == 0.6)
            {
                button_text_value = ": x6";
            }
            else if (global.actual_volume_level == 0.7)
            {
                button_text_value = ": x7";
            }
            else if (global.actual_volume_level == 0.8)
            {
                button_text_value = ": x8";
            }
            else if (global.actual_volume_level == 0.9)
            {
                button_text_value = ": x9";
            }
            else
            {
                button_text_value = ": x10";
            }
        }
        else if (button_number == 58)
        {
            if (global.actual_effects_volume_level == 1)
            {
                global.actual_effects_volume_level = 0.9;
                global.effects_volume_level_0_is_full = 1;
            }
            else if (global.actual_effects_volume_level == 0.9)
            {
                global.actual_effects_volume_level = 0.8;
                global.effects_volume_level_0_is_full = 2;
            }
            else if (global.actual_effects_volume_level == 0.8)
            {
                global.actual_effects_volume_level = 0.7;
                global.effects_volume_level_0_is_full = 3;
            }
            else if (global.actual_effects_volume_level == 0.7)
            {
                global.actual_effects_volume_level = 0.6;
                global.effects_volume_level_0_is_full = 4;
            }
            else if (global.actual_effects_volume_level == 0.6)
            {
                global.actual_effects_volume_level = 0.5;
                global.effects_volume_level_0_is_full = 5;
            }
            else if (global.actual_effects_volume_level == 0.5)
            {
                global.actual_effects_volume_level = 0.4;
                global.effects_volume_level_0_is_full = 6;
            }
            else if (global.actual_effects_volume_level == 0.4)
            {
                global.actual_effects_volume_level = 0.3;
                global.effects_volume_level_0_is_full = 7;
            }
            else if (global.actual_effects_volume_level == 0.3)
            {
                global.actual_effects_volume_level = 0.2;
                global.effects_volume_level_0_is_full = 8;
            }
            else if (global.actual_effects_volume_level == 0.2)
            {
                global.actual_effects_volume_level = 0.1;
                global.effects_volume_level_0_is_full = 9;
            }
            else if (global.actual_effects_volume_level == 0.1)
            {
                global.actual_effects_volume_level = 0;
                global.effects_volume_level_0_is_full = 10;
            }
            else if (global.actual_effects_volume_level == 0)
            {
                global.actual_effects_volume_level = 1;
                global.effects_volume_level_0_is_full = 0;
            }
            audio_play_sound(s_special_button_press, 1, false);
            ini_open("ppu.ini");
            var p0x197p54 = base64_encode(string(global.effects_volume_level_0_is_full));
            ini_write_string("save", "p0x197p54", p0x197p54);
            ini_close();
            ob_audio_controller.alarm[2] = 1;
            if (global.actual_effects_volume_level == 0)
            {
                button_text_value = ": OFF";
            }
            else if (global.actual_effects_volume_level == 0.1)
            {
                button_text_value = ": x1";
            }
            else if (global.actual_effects_volume_level == 0.2)
            {
                button_text_value = ": x2";
            }
            else if (global.actual_effects_volume_level == 0.3)
            {
                button_text_value = ": x3";
            }
            else if (global.actual_effects_volume_level == 0.4)
            {
                button_text_value = ": x4";
            }
            else if (global.actual_effects_volume_level == 0.5)
            {
                button_text_value = ": x5";
            }
            else if (global.actual_effects_volume_level == 0.6)
            {
                button_text_value = ": x6";
            }
            else if (global.actual_effects_volume_level == 0.7)
            {
                button_text_value = ": x7";
            }
            else if (global.actual_effects_volume_level == 0.8)
            {
                button_text_value = ": x8";
            }
            else if (global.actual_effects_volume_level == 0.9)
            {
                button_text_value = ": x9";
            }
            else
            {
                button_text_value = ": x10";
            }
        }
        else if (button_number == 59)
        {
            if (global.actual_music_volume_level == 1)
            {
                global.actual_music_volume_level = 0.9;
                global.music_volume_level_0_is_full = 1;
            }
            else if (global.actual_music_volume_level == 0.9)
            {
                global.actual_music_volume_level = 0.8;
                global.music_volume_level_0_is_full = 2;
            }
            else if (global.actual_music_volume_level == 0.8)
            {
                global.actual_music_volume_level = 0.7;
                global.music_volume_level_0_is_full = 3;
            }
            else if (global.actual_music_volume_level == 0.7)
            {
                global.actual_music_volume_level = 0.6;
                global.music_volume_level_0_is_full = 4;
            }
            else if (global.actual_music_volume_level == 0.6)
            {
                global.actual_music_volume_level = 0.5;
                global.music_volume_level_0_is_full = 5;
            }
            else if (global.actual_music_volume_level == 0.5)
            {
                global.actual_music_volume_level = 0.4;
                global.music_volume_level_0_is_full = 6;
            }
            else if (global.actual_music_volume_level == 0.4)
            {
                global.actual_music_volume_level = 0.3;
                global.music_volume_level_0_is_full = 7;
            }
            else if (global.actual_music_volume_level == 0.3)
            {
                global.actual_music_volume_level = 0.2;
                global.music_volume_level_0_is_full = 8;
            }
            else if (global.actual_music_volume_level == 0.2)
            {
                global.actual_music_volume_level = 0.1;
                global.music_volume_level_0_is_full = 9;
            }
            else if (global.actual_music_volume_level == 0.1)
            {
                global.actual_music_volume_level = 0;
                global.music_volume_level_0_is_full = 10;
            }
            else if (global.actual_music_volume_level == 0)
            {
                global.actual_music_volume_level = 1;
                global.music_volume_level_0_is_full = 0;
            }
            audio_play_sound(s_special_button_press, 1, false);
            ini_open("ppu.ini");
            var p0x197p55 = base64_encode(string(global.music_volume_level_0_is_full));
            ini_write_string("save", "p0x197p55", p0x197p55);
            ini_close();
            ob_audio_controller.alarm[2] = 1;
            if (global.actual_music_volume_level == 0)
            {
                button_text_value = ": OFF";
            }
            else if (global.actual_music_volume_level == 0.1)
            {
                button_text_value = ": x1";
            }
            else if (global.actual_music_volume_level == 0.2)
            {
                button_text_value = ": x2";
            }
            else if (global.actual_music_volume_level == 0.3)
            {
                button_text_value = ": x3";
            }
            else if (global.actual_music_volume_level == 0.4)
            {
                button_text_value = ": x4";
            }
            else if (global.actual_music_volume_level == 0.5)
            {
                button_text_value = ": x5";
            }
            else if (global.actual_music_volume_level == 0.6)
            {
                button_text_value = ": x6";
            }
            else if (global.actual_music_volume_level == 0.7)
            {
                button_text_value = ": x7";
            }
            else if (global.actual_music_volume_level == 0.8)
            {
                button_text_value = ": x8";
            }
            else if (global.actual_music_volume_level == 0.9)
            {
                button_text_value = ": x9";
            }
            else
            {
                button_text_value = ": x10";
            }
        }
        else if (button_number == 60)
        {
            if (global.actual_ambiance_volume_level == 1)
            {
                global.actual_ambiance_volume_level = 0.9;
                global.ambiance_volume_level_0_is_full = 1;
            }
            else if (global.actual_ambiance_volume_level == 0.9)
            {
                global.actual_ambiance_volume_level = 0.8;
                global.ambiance_volume_level_0_is_full = 2;
            }
            else if (global.actual_ambiance_volume_level == 0.8)
            {
                global.actual_ambiance_volume_level = 0.7;
                global.ambiance_volume_level_0_is_full = 3;
            }
            else if (global.actual_ambiance_volume_level == 0.7)
            {
                global.actual_ambiance_volume_level = 0.6;
                global.ambiance_volume_level_0_is_full = 4;
            }
            else if (global.actual_ambiance_volume_level == 0.6)
            {
                global.actual_ambiance_volume_level = 0.5;
                global.ambiance_volume_level_0_is_full = 5;
            }
            else if (global.actual_ambiance_volume_level == 0.5)
            {
                global.actual_ambiance_volume_level = 0.4;
                global.ambiance_volume_level_0_is_full = 6;
            }
            else if (global.actual_ambiance_volume_level == 0.4)
            {
                global.actual_ambiance_volume_level = 0.3;
                global.ambiance_volume_level_0_is_full = 7;
            }
            else if (global.actual_ambiance_volume_level == 0.3)
            {
                global.actual_ambiance_volume_level = 0.2;
                global.ambiance_volume_level_0_is_full = 8;
            }
            else if (global.actual_ambiance_volume_level == 0.2)
            {
                global.actual_ambiance_volume_level = 0.1;
                global.ambiance_volume_level_0_is_full = 9;
            }
            else if (global.actual_ambiance_volume_level == 0.1)
            {
                global.actual_ambiance_volume_level = 0;
                global.ambiance_volume_level_0_is_full = 10;
            }
            else if (global.actual_ambiance_volume_level == 0)
            {
                global.actual_ambiance_volume_level = 1;
                global.ambiance_volume_level_0_is_full = 0;
            }
            audio_play_sound(s_special_button_press, 1, false);
            ini_open("ppu.ini");
            var p0x197p56 = base64_encode(string(global.ambiance_volume_level_0_is_full));
            ini_write_string("save", "p0x197p56", p0x197p56);
            ini_close();
            ob_audio_controller.alarm[2] = 1;
            if (global.actual_ambiance_volume_level == 0)
            {
                button_text_value = ": OFF";
            }
            else if (global.actual_ambiance_volume_level == 0.1)
            {
                button_text_value = ": x1";
            }
            else if (global.actual_ambiance_volume_level == 0.2)
            {
                button_text_value = ": x2";
            }
            else if (global.actual_ambiance_volume_level == 0.3)
            {
                button_text_value = ": x3";
            }
            else if (global.actual_ambiance_volume_level == 0.4)
            {
                button_text_value = ": x4";
            }
            else if (global.actual_ambiance_volume_level == 0.5)
            {
                button_text_value = ": x5";
            }
            else if (global.actual_ambiance_volume_level == 0.6)
            {
                button_text_value = ": x6";
            }
            else if (global.actual_ambiance_volume_level == 0.7)
            {
                button_text_value = ": x7";
            }
            else if (global.actual_ambiance_volume_level == 0.8)
            {
                button_text_value = ": x8";
            }
            else if (global.actual_ambiance_volume_level == 0.9)
            {
                button_text_value = ": x9";
            }
            else
            {
                button_text_value = ": x10";
            }
        }
        else if (button_number == 61)
        {
            if (global.audio_menu_effects_0_is_on == 1)
            {
                global.audio_menu_effects_0_is_on = 0;
            }
            else
            {
                global.audio_menu_effects_0_is_on = 1;
            }
            audio_play_sound(s_special_button_press, 1, false);
            ini_open("ppu.ini");
            var p0x197p33 = base64_encode(string(global.audio_menu_effects_0_is_on));
            ini_write_string("save", "p0x197p33", p0x197p33);
            ini_close();
            if (global.audio_menu_effects_0_is_on == 1)
            {
                button_text_value = ": OFF";
            }
            else
            {
                button_text_value = ": ON";
            }
        }
        else if (button_number == 62)
        {
            if (global.audio_menu_music_0_is_on == 1)
            {
                global.audio_menu_music_0_is_on = 0;
            }
            else
            {
                global.audio_menu_music_0_is_on = 1;
                audio_group_stop_all(audiogroup_music_menu);
            }
            audio_play_sound(s_special_button_press, 1, false);
            ini_open("ppu.ini");
            var p0x197p34 = base64_encode(string(global.audio_menu_music_0_is_on));
            ini_write_string("save", "p0x197p34", p0x197p34);
            ini_close();
            if (global.audio_menu_music_0_is_on == 1)
            {
                button_text_value = ": OFF";
            }
            else
            {
                button_text_value = ": ON";
            }
        }
        else if (button_number == 63)
        {
            audio_play_sound(s_remove_fav, 1, false);
            ini_open("ppu.ini");
            global.actual_volume_level = 1;
            global.volume_level_0_is_full = 0;
            var p0x197p25 = base64_encode(string(global.volume_level_0_is_full));
            ini_write_string("save", "p0x197p25", p0x197p25);
            audio_master_gain(global.actual_volume_level);
            global.actual_effects_volume_level = 1;
            global.effects_volume_level_0_is_full = 0;
            var p0x197p54 = base64_encode(string(global.effects_volume_level_0_is_full));
            ini_write_string("save", "p0x197p54", p0x197p54);
            global.actual_music_volume_level = 1;
            global.music_volume_level_0_is_full = 0;
            var p0x197p55 = base64_encode(string(global.music_volume_level_0_is_full));
            ini_write_string("save", "p0x197p55", p0x197p55);
            global.actual_ambiance_volume_level = 1;
            global.ambiance_volume_level_0_is_full = 0;
            var p0x197p56 = base64_encode(string(global.ambiance_volume_level_0_is_full));
            ini_write_string("save", "p0x197p56", p0x197p56);
            ob_audio_controller.alarm[2] = 1;
            global.audio_menu_effects_0_is_on = 0;
            var p0x197p33 = base64_encode(string(global.audio_menu_effects_0_is_on));
            ini_write_string("save", "p0x197p33", p0x197p33);
            global.audio_menu_music_0_is_on = 0;
            var p0x197p34 = base64_encode(string(global.audio_menu_music_0_is_on));
            ini_write_string("save", "p0x197p34", p0x197p34);
            global.can_play_sound_effects_0_is_on_1_is_off = 0;
            var p0x197p19 = base64_encode(string(global.can_play_sound_effects_0_is_on_1_is_off));
            ini_write_string("save", "p0x197p19", p0x197p19);
            global.can_play_music_0_is_on_1_is_off = 0;
            var p0x197p17 = base64_encode(string(global.can_play_music_0_is_on_1_is_off));
            ini_write_string("save", "p0x197p17", p0x197p17);
            global.can_play_ambiance_0_is_on_1_is_off = 0;
            var p0x197p18 = base64_encode(string(global.can_play_ambiance_0_is_on_1_is_off));
            ini_write_string("save", "p0x197p18", p0x197p18);
            ini_close();
            with (ob_new_menu_generic_button)
            {
                alarm[3] = 1;
            }
            if (global.audio_menu_effects_0_is_on == 0)
            {
                audio_play_sound(global.sound_option_reset_default, 1, false);
            }
        }
        else if (button_number == 64)
        {
            if (global.gamepad_sensetivity == 0)
            {
                global.gamepad_sensetivity = 4;
            }
            else if (global.gamepad_sensetivity == 9)
            {
                global.gamepad_sensetivity = 8;
            }
            else if (global.gamepad_sensetivity == 8)
            {
                global.gamepad_sensetivity = 7;
            }
            else if (global.gamepad_sensetivity == 7)
            {
                global.gamepad_sensetivity = 6;
            }
            else if (global.gamepad_sensetivity == 6)
            {
                global.gamepad_sensetivity = 5;
            }
            else if (global.gamepad_sensetivity == 5)
            {
                global.gamepad_sensetivity = 0;
            }
            else if (global.gamepad_sensetivity == 4)
            {
                global.gamepad_sensetivity = 3;
            }
            else if (global.gamepad_sensetivity == 3)
            {
                global.gamepad_sensetivity = 2;
            }
            else if (global.gamepad_sensetivity == 2)
            {
                global.gamepad_sensetivity = 1;
            }
            else if (global.gamepad_sensetivity == 1)
            {
                global.gamepad_sensetivity = 9;
            }
            audio_play_sound(s_special_button_press, 1, false);
            ob_menu_cursor.alarm[1] = 1;
            ini_open("ppu.ini");
            var p0x197p59 = base64_encode(string(global.gamepad_sensetivity));
            ini_write_string("save", "p0x197p59", p0x197p59);
            ini_close();
            if (global.gamepad_sensetivity == 1)
            {
                button_text_value = ": x1";
            }
            else if (global.gamepad_sensetivity == 2)
            {
                button_text_value = ": x2";
            }
            else if (global.gamepad_sensetivity == 3)
            {
                button_text_value = ": x3";
            }
            else if (global.gamepad_sensetivity == 4)
            {
                button_text_value = ": x4";
            }
            else if (global.gamepad_sensetivity == 5)
            {
                button_text_value = ": x6";
            }
            else if (global.gamepad_sensetivity == 6)
            {
                button_text_value = ": x7";
            }
            else if (global.gamepad_sensetivity == 7)
            {
                button_text_value = ": x8";
            }
            else if (global.gamepad_sensetivity == 8)
            {
                button_text_value = ": x9";
            }
            else if (global.gamepad_sensetivity == 9)
            {
                button_text_value = ": x10";
            }
            else
            {
                button_text_value = ": x5";
            }
        }
        else if (button_number == 65)
        {
            if (global.zoom_pan_speed > 0)
            {
                global.zoom_pan_speed -= 1;
            }
            else
            {
                global.zoom_pan_speed = 4;
            }
            audio_play_sound(s_special_button_press, 1, false);
            ini_open("ppu.ini");
            var p0x197p58 = base64_encode(string(global.zoom_pan_speed));
            ini_write_string("save", "p0x197p58", p0x197p58);
            ini_close();
            if (global.zoom_pan_speed == 1)
            {
                button_text_value = ": x2";
            }
            else if (global.zoom_pan_speed == 2)
            {
                button_text_value = ": x3";
            }
            else if (global.zoom_pan_speed == 3)
            {
                button_text_value = ": x4";
            }
            else if (global.zoom_pan_speed == 4)
            {
                button_text_value = ": x5";
            }
            else
            {
                button_text_value = ": x1";
            }
        }
        else if (button_number == 66)
        {
        }
        else if (button_number == 97)
        {
            if (global.hide_zoom_text == 1)
            {
                global.hide_zoom_text = 0;
            }
            else
            {
                global.hide_zoom_text = 1;
            }
            ini_open("ppu.ini");
            var p0x17p81 = base64_encode(string(global.hide_zoom_text));
            ini_write_string("save", "p0x17p81", p0x17p81);
            ini_close();
            if (global.hide_zoom_text == 1)
            {
                button_text_value = ": OFF";
            }
            else
            {
                button_text_value = ": ON";
            }
        }
    }
}
if (button_number == 68 || button_number == 69 || button_number == 70)
{
    if (ob_new_menu_controller.current_menu_page == 10)
    {
    }
    else
    {
        instance_destroy();
    }
}
if (place_meeting(x, y, ob_menu_cursor))
{
    if (mouse_check_button_pressed(mb_left))
    {
        if (button_number == 68)
        {
            audio_play_sound(s_button_pressed_accepted, 1, false);
            steam_activate_overlay_browser("https://www.instagram.com/pixel_puzzles/");
        }
        else if (button_number == 69)
        {
            audio_play_sound(s_button_pressed_accepted, 1, false);
            steam_activate_overlay_browser("https://twitter.com/Pixel_Puzzles");
        }
        else if (button_number == 70)
        {
            audio_play_sound(s_button_pressed_accepted, 1, false);
            steam_activate_overlay_browser("http://pixelpuzzles.co.uk/");
        }
    }
}
if (button_number == 71 || button_number == 72 || button_number == 73 || button_number == 74 || button_number == 75 || button_number == 76 || button_number == 77 || button_number == 78 || button_number == 79 || button_number == 80 || button_number == 81)
{
    if (ob_new_menu_controller.current_menu_page == 7)
    {
        if (ob_new_menu_controller.kiosk_items_showing == 0)
        {
        }
        else
        {
            instance_destroy();
        }
    }
    else
    {
        instance_destroy();
    }
}
if (button_number == 82 || button_number == 83 || button_number == 84)
{
    if (ob_new_menu_controller.current_menu_page == 7)
    {
        if (ob_new_menu_controller.kiosk_items_showing == 0)
        {
            instance_destroy();
        }
    }
    else
    {
        instance_destroy();
    }
}
if (place_meeting(x, y, ob_menu_cursor))
{
    if (mouse_check_button_pressed(mb_left))
    {
        if (button_number == 83)
        {
            if (ob_new_menu_controller.kiosk_current_page > 0)
            {
                ob_new_menu_controller.kiosk_current_page -= 1;
                with (ob_new_menu_kiosk_puz)
                {
                    y += 696;
                }
            }
        }
        else if (button_number == 84)
        {
            if (ob_new_menu_controller.kiosk_current_page < ob_new_menu_controller.kiosk_total_pages)
            {
                ob_new_menu_controller.kiosk_current_page += 1;
                with (ob_new_menu_kiosk_puz)
                {
                    y -= 696;
                }
            }
        }
        else if (button_number == 82)
        {
            audio_play_sound(s_ui_x_button, 1, false);
            ob_new_menu_controller.kiosk_items_showing = 0;
            button_id = instance_create(850, 970, ob_new_menu_generic_button);
            button_id.button_number = 71;
            button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
            button_id.image_alpha = 0;
            button_id = instance_create(1112, 970, ob_new_menu_generic_button);
            button_id.button_number = 72;
            button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
            button_id.image_alpha = 0;
            button_id = instance_create(1374, 970, ob_new_menu_generic_button);
            button_id.button_number = 73;
            button_id.sprite_index = sp_new_menu_wide_thin_box_shorter;
            button_id.image_alpha = 0;
            button_id = instance_create(825, 687, ob_new_menu_generic_button);
            button_id.button_number = 74;
            button_id.sprite_index = sp_new_menu_puzzle_button_blank;
            button_id.image_alpha = 0;
            button_id = instance_create(1017, 687, ob_new_menu_generic_button);
            button_id.button_number = 75;
            button_id.sprite_index = sp_new_menu_puzzle_button_blank;
            button_id.image_alpha = 0;
            button_id = instance_create(1209, 687, ob_new_menu_generic_button);
            button_id.button_number = 76;
            button_id.sprite_index = sp_new_menu_puzzle_button_blank;
            button_id.image_alpha = 0;
            button_id = instance_create(1401, 687, ob_new_menu_generic_button);
            button_id.button_number = 77;
            button_id.sprite_index = sp_new_menu_puzzle_button_blank;
            button_id.image_alpha = 0;
            button_id = instance_create(825, 811, ob_new_menu_generic_button);
            button_id.button_number = 78;
            button_id.sprite_index = sp_new_menu_puzzle_button_blank;
            button_id.image_alpha = 0;
            button_id = instance_create(1017, 811, ob_new_menu_generic_button);
            button_id.button_number = 79;
            button_id.sprite_index = sp_new_menu_puzzle_button_blank;
            button_id.image_alpha = 0;
            button_id = instance_create(1209, 811, ob_new_menu_generic_button);
            button_id.button_number = 80;
            button_id.sprite_index = sp_new_menu_puzzle_button_blank;
            button_id.image_alpha = 0;
            button_id = instance_create(1401, 811, ob_new_menu_generic_button);
            button_id.button_number = 81;
            button_id.sprite_index = sp_new_menu_puzzle_button_blank;
            button_id.image_alpha = 0;
            instance_destroy();
        }
        else if (button_number == 71)
        {
            if (steam_stats_ready())
            {
                var total_gold_earned = steam_get_stat_int("gold_bits_earned");
                var total_gold_spent = steam_get_stat_int("gold_bits_used");
                var gold_to_spend = 1;
                var current_gold = total_gold_earned - total_gold_spent;
                if (current_gold >= gold_to_spend)
                {
                    var new_hints_earned = steam_get_stat_int("hints_earned") + 10;
                    var new_total_gold_spent = steam_get_stat_int("gold_bits_used") + 1;
                    steam_set_stat_int("hints_earned", new_hints_earned);
                    steam_set_stat_int("gold_bits_used", new_total_gold_spent);
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_hint_trader_give_tokens, 1, false);
                    }
                    if (!steam_get_achievement("use_hint_trader"))
                    {
                        steam_set_achievement("use_hint_trader");
                    }
                    ob_new_menu_controller.alarm[1] = 1;
                }
            }
        }
        else if (button_number == 72)
        {
            if (steam_stats_ready())
            {
                var total_gold_earned = steam_get_stat_int("ultimate_pieces_earned");
                var total_gold_spent = steam_get_stat_int("ultimate_pieces_used");
                var gold_to_spend = 1;
                var current_gold = total_gold_earned - total_gold_spent;
                if (current_gold >= gold_to_spend)
                {
                    var new_hints_earned = steam_get_stat_int("hints_earned") + 100;
                    var new_total_gold_spent = steam_get_stat_int("ultimate_pieces_used") + 1;
                    steam_set_stat_int("hints_earned", new_hints_earned);
                    steam_set_stat_int("ultimate_pieces_used", new_total_gold_spent);
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_hint_trader_give_tokens, 1, false);
                    }
                    if (!steam_get_achievement("use_hint_trader"))
                    {
                        steam_set_achievement("use_hint_trader");
                    }
                    ob_new_menu_controller.alarm[1] = 1;
                }
            }
        }
        else if (button_number == 73)
        {
            if (steam_stats_ready())
            {
                var total_gold_earned = steam_get_stat_int("hints_earned");
                var total_gold_spent = steam_get_stat_int("hints_used");
                var gold_to_spend = 50;
                var current_gold = total_gold_earned - total_gold_spent;
                if (current_gold >= gold_to_spend)
                {
                    var new_hints_earned = steam_get_stat_int("gold_bits_earned") + 1;
                    var new_total_gold_spent = steam_get_stat_int("hints_used") + 50;
                    steam_set_stat_int("gold_bits_earned", new_hints_earned);
                    steam_set_stat_int("hints_used", new_total_gold_spent);
                    if (global.audio_menu_effects_0_is_on == 0)
                    {
                        audio_play_sound(global.sound_hint_trader_give_tokens, 1, false);
                    }
                    if (!steam_get_achievement("use_hint_trader"))
                    {
                        steam_set_achievement("use_hint_trader");
                    }
                    ob_new_menu_controller.alarm[1] = 1;
                }
            }
        }
        else if (button_number == 74)
        {
            var imag_name = "\misc\kiosk\kc1.png";
            if (file_exists(working_directory + string(imag_name)))
            {
                audio_play_sound(s_hint_ghost, 1, false);
                var sprite_to_use = sprite_add(working_directory + string(imag_name), 0, false, false, 87, 53);
                ob_new_menu_controller.kiosk_items_showing = 1;
                ob_new_menu_controller.kiosk_current_page = 0;
                ob_new_menu_controller.kiosk_total_pages = 1;
                button_id = instance_create(755, 223, ob_new_menu_generic_button);
                button_id.button_number = 82;
                button_id.sprite_index = sp_new_menu_next_button;
                button_id.image_alpha = 0;
                button_id = instance_create(755, 967, ob_new_menu_generic_button);
                button_id.button_number = 83;
                button_id.sprite_index = sp_new_menu_next_button;
                button_id = instance_create(1468, 967, ob_new_menu_generic_button);
                button_id.button_number = 84;
                button_id.sprite_index = sp_new_menu_next_button;
            }
        }
        else if (button_number == 75)
        {
            var imag_name = "\misc\kiosk\theme1.png";
            if (file_exists(working_directory + string(imag_name)))
            {
                audio_play_sound(s_hint_ghost, 1, false);
                ob_new_menu_controller.kiosk_items_showing = 2;
                ob_new_menu_controller.kiosk_current_page = 0;
                ob_new_menu_controller.kiosk_total_pages = 0;
                button_id = instance_create(755, 223, ob_new_menu_generic_button);
                button_id.button_number = 82;
                button_id.sprite_index = sp_new_menu_next_button;
                button_id.image_alpha = 0;
                button_id = instance_create(755, 967, ob_new_menu_generic_button);
                button_id.button_number = 83;
                button_id.sprite_index = sp_new_menu_next_button;
                button_id = instance_create(1468, 967, ob_new_menu_generic_button);
                button_id.button_number = 84;
                button_id.sprite_index = sp_new_menu_next_button;
            }
        }
        else if (button_number == 76)
        {
            var imag_name = "\misc\kiosk\mbg1.png";
            if (file_exists(working_directory + string(imag_name)))
            {
                audio_play_sound(s_hint_ghost, 1, false);
                ob_new_menu_controller.kiosk_items_showing = 3;
                ob_new_menu_controller.kiosk_current_page = 0;
                ob_new_menu_controller.kiosk_total_pages = 1;
                button_id = instance_create(755, 223, ob_new_menu_generic_button);
                button_id.button_number = 82;
                button_id.sprite_index = sp_new_menu_next_button;
                button_id.image_alpha = 0;
                button_id = instance_create(755, 967, ob_new_menu_generic_button);
                button_id.button_number = 83;
                button_id.sprite_index = sp_new_menu_next_button;
                button_id = instance_create(1468, 967, ob_new_menu_generic_button);
                button_id.button_number = 84;
                button_id.sprite_index = sp_new_menu_next_button;
            }
        }
        else if (button_number == 77)
        {
        }
        else if (button_number == 78)
        {
        }
        else if (button_number == 79)
        {
        }
        else if (button_number == 80)
        {
        }
        if (button_number == 74 || button_number == 75 || button_number == 76)
        {
            var puz_list = ds_list_create();
            var p_t_u;
            if (ob_new_menu_controller.kiosk_items_showing == 1)
            {
                p_t_u = 6;
                ds_list_add(puz_list, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1);
            }
            if (ob_new_menu_controller.kiosk_items_showing == 2)
            {
                p_t_u = 7;
                ds_list_add(puz_list, 5, 4, 3, 2, 1);
            }
            if (ob_new_menu_controller.kiosk_items_showing == 3)
            {
                p_t_u = 8;
                ds_list_add(puz_list, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1);
            }
            if (ob_new_menu_controller.kiosk_items_showing == 4)
            {
                p_t_u = 9;
                ds_list_add(puz_list, 9, 8, 7, 6, 5, 4, 3, 2, 1);
            }
            puz_remaining = ds_list_size(puz_list);
            puz_remaining -= 1;
            var p_l_num = puz_remaining;
            var item_x = 827;
            var item_y = 307;
            var puz_but = 0;
            puz_but = instance_create(item_x, item_y, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 191, item_y, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 382, item_y, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 573, item_y, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x, item_y + 116, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 191, item_y + 116, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 382, item_y + 116, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 573, item_y + 116, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x, item_y + 232, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 191, item_y + 232, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 382, item_y + 232, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 573, item_y + 232, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x, item_y + 348, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 191, item_y + 348, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 382, item_y + 348, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 573, item_y + 348, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x, item_y + 464, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 191, item_y + 464, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 382, item_y + 464, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 573, item_y + 464, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x, item_y + 580, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 191, item_y + 580, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 382, item_y + 580, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 573, item_y + 580, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x, item_y + 696, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 191, item_y + 696, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 382, item_y + 696, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 573, item_y + 696, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x, item_y + 812, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 191, item_y + 812, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 382, item_y + 812, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 573, item_y + 812, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x, item_y + 928, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 191, item_y + 928, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 382, item_y + 928, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 573, item_y + 928, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x, item_y + 1044, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 191, item_y + 1044, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 382, item_y + 1044, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 573, item_y + 1044, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x, item_y + 1160, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 191, item_y + 1160, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 382, item_y + 1160, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 573, item_y + 1160, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x, item_y + 1276, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 191, item_y + 1276, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 382, item_y + 1276, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 573, item_y + 1276, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x, item_y + 1392, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 191, item_y + 1392, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 382, item_y + 1392, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 573, item_y + 1392, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x, item_y + 1508, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 191, item_y + 1508, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 382, item_y + 1508, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 573, item_y + 1508, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x, item_y + 1624, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 191, item_y + 1624, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 382, item_y + 1624, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 573, item_y + 1624, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x, item_y + 1740, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 191, item_y + 1740, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 382, item_y + 1740, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 573, item_y + 1740, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x, item_y + 1856, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 191, item_y + 1856, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 382, item_y + 1856, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 573, item_y + 1856, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x, item_y + 1972, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 191, item_y + 1972, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 382, item_y + 1972, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            puz_but = instance_create(item_x + 573, item_y + 1972, ob_new_menu_kiosk_puz);
            if (p_l_num > -1)
            {
                puz_but.puz_num = ds_list_find_value(puz_list, p_l_num);
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
                puz_but.puz_type = p_t_u;
                p_l_num -= 1;
            }
            else
            {
                puz_but.puz_num = 0;
                puz_but.maxy_vis = 930;
                puz_but.miny_vis = 244;
            }
            ds_list_destroy(puz_list);
        }
    }
}
