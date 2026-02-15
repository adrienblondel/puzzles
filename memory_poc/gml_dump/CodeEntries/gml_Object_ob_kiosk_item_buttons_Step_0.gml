if (place_meeting(x, y, ob_menu_cursor))
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_face1))
    {
        if (global.a_menu_overlay_is_showing == 0)
        {
            if (image_alpha == 1)
            {
                if (ob_menu_cursor.y > 300)
                {
                    if (place_meeting(x, y, ob_kiosk_ultimate_piece))
                    {
                        if (global.kiosk_items_to_show > 0)
                        {
                            if (kiosk_item_number > 0)
                            {
                                if (item_is_owned == 0)
                                {
                                    global.kiosk_paid_gold_or_ultimate = 1;
                                    ob_kiosk_controller.purchase_kiosk_category_number = global.kiosk_items_to_show;
                                    ob_kiosk_controller.purchase_kiosk_item_number = kiosk_item_number;
                                    ob_kiosk_controller.purchase_gold_price = 1;
                                    ob_kiosk_controller.alarm[1] = 1;
                                    alarm[2] = 3;
                                }
                            }
                        }
                    }
                    else if (global.kiosk_items_to_show == 1)
                    {
                        if (kiosk_item_number > 0)
                        {
                            if (item_is_owned == 1)
                            {
                                global.kiosk_item_current_cursor = kiosk_item_number - 1;
                                ini_open("ppu.ini");
                                var p0x17p64 = base64_encode(string(global.kiosk_item_current_cursor));
                                ini_write_string("save", "p0x17p64", p0x17p64);
                                ini_close();
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_top_buttons_click, 1, false);
                                }
                            }
                            else
                            {
                                global.kiosk_paid_gold_or_ultimate = 0;
                                ob_kiosk_controller.purchase_kiosk_category_number = 1;
                                ob_kiosk_controller.purchase_kiosk_item_number = kiosk_item_number;
                                ob_kiosk_controller.purchase_gold_price = item_price;
                                ob_kiosk_controller.alarm[1] = 1;
                                alarm[2] = 3;
                            }
                        }
                    }
                    else if (global.kiosk_items_to_show == 2)
                    {
                        if (kiosk_item_number == 1000)
                        {
                            global.current_music_set = 0;
                            ini_open("ppu.ini");
                            var p0x17p32 = base64_encode(string(global.current_music_set));
                            ini_write_string("save", "p0x17p32", p0x17p32);
                            ini_close();
                            if (global.audio_menu_effects_0_is_on == 0)
                            {
                                audio_play_sound(global.sound_top_buttons_click, 1, false);
                            }
                        }
                        else if (kiosk_item_number > 0)
                        {
                            if (item_is_owned == 1)
                            {
                                global.current_music_set = kiosk_item_number;
                                ini_open("ppu.ini");
                                var p0x17p32 = base64_encode(string(global.current_music_set));
                                ini_write_string("save", "p0x17p32", p0x17p32);
                                ini_close();
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_top_buttons_click, 1, false);
                                }
                            }
                            else
                            {
                                global.kiosk_paid_gold_or_ultimate = 0;
                                ob_kiosk_controller.purchase_kiosk_category_number = 2;
                                ob_kiosk_controller.purchase_kiosk_item_number = kiosk_item_number;
                                ob_kiosk_controller.purchase_gold_price = item_price;
                                ob_kiosk_controller.alarm[1] = 1;
                                alarm[2] = 3;
                            }
                        }
                    }
                    else if (global.kiosk_items_to_show == 3)
                    {
                        if (kiosk_item_number > 0)
                        {
                            if (item_is_owned == 0)
                            {
                                global.kiosk_paid_gold_or_ultimate = 0;
                                ob_kiosk_controller.purchase_kiosk_category_number = 3;
                                ob_kiosk_controller.purchase_kiosk_item_number = kiosk_item_number;
                                ob_kiosk_controller.purchase_gold_price = item_price;
                                ob_kiosk_controller.alarm[1] = 1;
                                alarm[2] = 3;
                            }
                        }
                    }
                    else if (global.kiosk_items_to_show == 4)
                    {
                        if (kiosk_item_number > 0)
                        {
                            if (item_is_owned == 0)
                            {
                                global.kiosk_paid_gold_or_ultimate = 0;
                                ob_kiosk_controller.purchase_kiosk_category_number = 4;
                                ob_kiosk_controller.purchase_kiosk_item_number = kiosk_item_number;
                                ob_kiosk_controller.purchase_gold_price = item_price;
                                ob_kiosk_controller.alarm[1] = 1;
                                alarm[2] = 3;
                            }
                        }
                    }
                    else if (global.kiosk_items_to_show == 5)
                    {
                        if (kiosk_item_number > 0)
                        {
                            if (item_is_owned == 0)
                            {
                                global.kiosk_paid_gold_or_ultimate = 0;
                                ob_kiosk_controller.purchase_kiosk_category_number = 5;
                                ob_kiosk_controller.purchase_kiosk_item_number = kiosk_item_number;
                                ob_kiosk_controller.purchase_gold_price = item_price;
                                ob_kiosk_controller.alarm[1] = 1;
                                alarm[2] = 3;
                            }
                        }
                    }
                    else if (global.kiosk_items_to_show == 6)
                    {
                        if (kiosk_item_number > 0)
                        {
                            if (item_is_owned == 1)
                            {
                                global.kiosk_toolbar_skins = kiosk_item_number - 1;
                                ini_open("ppu.ini");
                                var p0x17p65 = base64_encode(string(global.kiosk_toolbar_skins));
                                ini_write_string("save", "p0x17p65", p0x17p65);
                                ini_close();
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_top_buttons_click, 1, false);
                                }
                            }
                            else
                            {
                                global.kiosk_paid_gold_or_ultimate = 0;
                                ob_kiosk_controller.purchase_kiosk_category_number = 6;
                                ob_kiosk_controller.purchase_kiosk_item_number = kiosk_item_number;
                                ob_kiosk_controller.purchase_gold_price = item_price;
                                ob_kiosk_controller.alarm[1] = 1;
                                alarm[2] = 3;
                            }
                        }
                    }
                    else if (global.kiosk_items_to_show == 7)
                    {
                        if (kiosk_item_number > 0)
                        {
                            if (item_is_owned == 1)
                            {
                                global.kiosk_item_current_avatar = kiosk_item_number - 1;
                                ini_open("ppu.ini");
                                var p0x17p63 = base64_encode(string(global.kiosk_item_current_avatar));
                                ini_write_string("save", "p0x17p63", p0x17p63);
                                ini_close();
                                if (global.audio_menu_effects_0_is_on == 0)
                                {
                                    audio_play_sound(global.sound_top_buttons_click, 1, false);
                                }
                            }
                            else
                            {
                                global.kiosk_paid_gold_or_ultimate = 0;
                                ob_kiosk_controller.purchase_kiosk_category_number = 7;
                                ob_kiosk_controller.purchase_kiosk_item_number = kiosk_item_number;
                                ob_kiosk_controller.purchase_gold_price = item_price;
                                ob_kiosk_controller.alarm[1] = 1;
                                alarm[2] = 3;
                            }
                        }
                    }
                    else if (global.kiosk_items_to_show == 8)
                    {
                        if (kiosk_item_number > 0)
                        {
                            if (item_is_owned == 0)
                            {
                                global.kiosk_paid_gold_or_ultimate = 0;
                                ob_kiosk_controller.purchase_kiosk_category_number = 8;
                                ob_kiosk_controller.purchase_kiosk_item_number = kiosk_item_number;
                                ob_kiosk_controller.purchase_gold_price = item_price;
                                ob_kiosk_controller.alarm[1] = 1;
                                alarm[2] = 3;
                            }
                        }
                    }
                    else if (global.kiosk_items_to_show == 9)
                    {
                        if (kiosk_item_number > 0)
                        {
                            if (item_is_owned == 0)
                            {
                                global.kiosk_paid_gold_or_ultimate = 0;
                                ob_kiosk_controller.purchase_kiosk_category_number = 9;
                                ob_kiosk_controller.purchase_kiosk_item_number = kiosk_item_number;
                                ob_kiosk_controller.purchase_gold_price = item_price;
                                ob_kiosk_controller.alarm[1] = 1;
                                alarm[2] = 3;
                            }
                        }
                    }
                }
            }
        }
    }
    if (mouse_check_button(mb_left) || gamepad_button_check(0, gp_face1))
    {
        if (kiosk_item_number > 0)
        {
            button_size = 0.98;
        }
        else
        {
            button_size = 1.02;
        }
    }
    else
    {
        button_size = 1.02;
    }
}
else
{
    button_size = 1;
}
if (item_is_owned == 1)
{
    item_sprite_colour = 16777215;
}
else if (place_meeting(x, y, ob_menu_cursor))
{
    if (mouse_check_button(mb_right) || gamepad_button_check(0, gp_face2))
    {
        item_sprite_colour = 16777215;
    }
    else
    {
        item_sprite_colour = 4210752;
    }
}
else
{
    item_sprite_colour = 4210752;
}
