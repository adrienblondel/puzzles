if (FadeIn > 0)
{
    FadeIn -= 0.02;
}
if (FadeToPuz == 1)
{
    if (FadeOut < 1)
    {
        FadeOut += 0.03;
    }
    else
    {
        with (ob_menu_puz_button)
        {
            instance_destroy();
        }
        with (ob_item_buttons)
        {
            instance_destroy();
        }
        if (global.MenuReturnPage != 1)
        {
            if (CurrentPuzImage != 54)
            {
                sprite_delete(CurrentPuzImage);
            }
        }
        if (CurPuzPackImg != 54)
        {
            sprite_delete(CurPuzPackImg);
        }
        if (QuickPuzIm2 != 54)
        {
            sprite_delete(QuickPuzIm2);
        }
        if (QuickPuzIm3 != 54)
        {
            sprite_delete(QuickPuzIm3);
        }
        if (QuickPuzIm4 != 54)
        {
            sprite_delete(QuickPuzIm4);
        }
        if (QuickPuzIm5 != 54)
        {
            sprite_delete(QuickPuzIm5);
        }
        if (QuickPuzIm6 != 54)
        {
            sprite_delete(QuickPuzIm6);
        }
        if (QuickPuzIm7 != 54)
        {
            sprite_delete(QuickPuzIm7);
        }
        if (FavPuzIm1 != 54)
        {
            sprite_delete(FavPuzIm1);
        }
        if (FavPuzIm2 != 54)
        {
            sprite_delete(FavPuzIm2);
        }
        if (FavPuzIm3 != 54)
        {
            sprite_delete(FavPuzIm3);
        }
        if (FavPuzIm4 != 54)
        {
            sprite_delete(FavPuzIm4);
        }
        if (FavPuzIm5 != 54)
        {
            sprite_delete(FavPuzIm5);
        }
        if (FavPuzIm6 != 54)
        {
            sprite_delete(FavPuzIm6);
        }
        room_goto(r_puzzle_room);
    }
    if (DropFadeCoins == 1)
    {
        DropFadeCoins = 0;
        var numCoins = 50;
        for (var i = 0; i < numCoins; i++)
        {
            instance_create(0 + random(1920), -10 - random(1000), ob_transition_coin);
        }
    }
}
if (general_ui_alpha == 1)
{
    if (current_page_alpha < 1)
    {
        current_page_alpha += 0.03;
    }
}
if (EventISOn == 1)
{
    if (EventTYPE == 1)
    {
        if (CurrentPage != 10 || FadeToPuz == 1)
        {
            if (audio_is_playing(s_advent))
            {
                audio_stop_sound(s_advent);
                global.music_vol = adventMUTEvol;
                ob_game_controller.alarm[5] = 1;
            }
        }
    }
    if (EventTYPE == 2)
    {
        if (CurrentPage != 10 || FadeToPuz == 1)
        {
            if (audio_is_playing(s_event_newyears))
            {
                audio_stop_sound(s_event_newyears);
                global.music_vol = adventMUTEvol;
                ob_game_controller.alarm[5] = 1;
            }
        }
        else
        {
            if (nyCOL_counter > 0)
            {
                nyCOL_counter -= 1;
            }
            else
            {
                nyCOL_counter = 10;
                if (nyCOl_index == 0)
                {
                    nyCOl_index += 1;
                    nyCOL1 = make_colour_rgb(255, 188, 0);
                    nyCOL2 = 16777215;
                    nyCOL3 = make_colour_rgb(255, 223, 132);
                    nyCOL4 = make_colour_rgb(255, 223, 132);
                }
                else if (nyCOl_index == 1)
                {
                    nyCOl_index += 1;
                    nyCOL = 16777215;
                    nyCOL2 = make_colour_rgb(255, 188, 0);
                    nyCOL3 = make_colour_rgb(255, 223, 132);
                    nyCOL4 = make_colour_rgb(255, 223, 132);
                }
                else if (nyCOl_index == 2)
                {
                    nyCOl_index += 1;
                    nyCOL1 = 16777215;
                    nyCOL2 = 16777215;
                    nyCOL3 = make_colour_rgb(255, 188, 0);
                    nyCOL4 = make_colour_rgb(255, 223, 132);
                }
                else if (nyCOl_index == 3)
                {
                    nyCOl_index = 0;
                    nyCOL1 = 16777215;
                    nyCOL2 = 16777215;
                    nyCOL3 = make_colour_rgb(255, 223, 132);
                    nyCOL4 = make_colour_rgb(255, 188, 0);
                }
            }
            var can_make_firework = irandom(30);
            if (can_make_firework == 1)
            {
                instance_create(0 + random(1920), 1100, ob_firework);
            }
            if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 280, 300, 1607, 802))
            {
                QP1Hov = 1;
                if (mouse_check_button_pressed(mb_left) && ob_menu_3_controller.can_press_ui_buttons == 1)
                {
                    global.MenuReturnPage = 10;
                    var bits = 0;
                    var pack_num = 45;
                    var puz_num = 11;
                    bits = 126;
                    var file_name = "\misc\content\45\p45p" + string(puz_num);
                    if (file_exists(working_directory + string(file_name) + ".png"))
                    {
                        ob_menu_3_controller.can_press_ui_buttons = 0;
                        global.current_pack_open = pack_num;
                        global.puzzle_number_to_play = puz_num;
                        global.total_number_of_pieces = bits;
                        global.puzzle_max_number_of_pieces = bits;
                        if (global.current_puzzle_ghost_image == 0)
                        {
                        }
                        else
                        {
                            sprite_delete(global.current_puzzle_ghost_image);
                        }
                        global.current_puzzle_ghost_image = sprite_add(working_directory + string(file_name) + ".png", 0, false, false, 0, 0);
                        var sprW = sprite_get_width(global.current_puzzle_ghost_image);
                        if (sprW == 1400)
                        {
                            global.level_type = 2;
                        }
                        else if (sprW == 1388)
                        {
                            global.level_type = 1;
                        }
                        else if (sprW == 1880)
                        {
                            global.level_type = 4;
                        }
                        else if (sprW == 1040)
                        {
                            global.level_type = 3;
                        }
                        var spx = 0;
                        var spy = 0;
                        if (bits == 60)
                        {
                            spx = 132;
                            spy = 123;
                        }
                        if (bits == 112)
                        {
                            spx = 92;
                            spy = 90;
                        }
                        if (bits == 153)
                        {
                            spx = 75;
                            spy = 80;
                        }
                        if (bits == 220)
                        {
                            spx = 64;
                            spy = 64;
                        }
                        if (bits == 350)
                        {
                            spx = 49;
                            spy = 49;
                        }
                        if (bits == 96)
                        {
                            spx = 112;
                            spy = 108;
                        }
                        if (bits == 140)
                        {
                            spx = 96;
                            spy = 86;
                        }
                        if (bits == 216)
                        {
                            spx = 74;
                            spy = 71;
                        }
                        if (bits == 330)
                        {
                            spx = 59;
                            spy = 49;
                        }
                        if (bits == 425)
                        {
                            spx = 51;
                            spy = 49;
                        }
                        if (bits == 640 && global.level_type == 2)
                        {
                            spx = 39;
                            spy = 41;
                        }
                        if (bits == 840)
                        {
                            spx = 35;
                            spy = 33;
                        }
                        if (bits == 1410)
                        {
                            spx = 26;
                            spy = 26;
                        }
                        if (bits == 100)
                        {
                            spx = 100;
                            spy = 100;
                        }
                        if (bits == 169)
                        {
                            spx = 76;
                            spy = 76;
                        }
                        if (bits == 324)
                        {
                            spx = 53;
                            spy = 53;
                        }
                        if (bits == 400)
                        {
                            spx = 48;
                            spy = 48;
                        }
                        if (bits == 676)
                        {
                            spx = 36;
                            spy = 36;
                        }
                        if (bits == 841)
                        {
                            spx = 30;
                            spy = 30;
                        }
                        if (bits == 126)
                        {
                            spx = 100;
                            spy = 100;
                        }
                        if (bits == 168)
                        {
                            spx = 85;
                            spy = 85;
                        }
                        if (bits == 250)
                        {
                            spx = 71;
                            spy = 67;
                        }
                        if (bits == 455)
                        {
                            spx = 49;
                            spy = 51;
                        }
                        if (bits == 640 && global.level_type == 4)
                        {
                            spx = 42;
                            spy = 40;
                        }
                        if (bits == 810)
                        {
                            spx = 37;
                            spy = 35;
                        }
                        if (bits == 1000)
                        {
                            spx = 33;
                            spy = 31;
                        }
                        if (global.puzzle_sprite_index_to_use == 0)
                        {
                        }
                        else
                        {
                            sprite_delete(global.puzzle_sprite_index_to_use);
                        }
                        global.puzzle_sprite_index_to_use = sprite_add(working_directory + string(file_name) + "p.png", bits, false, false, spx, spy);
                        sprite_collision_mask(global.puzzle_sprite_index_to_use, true, 1, 0, 0, 0, 0, 0, 0);
                        audio_play_sound(s_normal_button_press, 10, false);
                        if (ob_menu_3_controller.FadeToPuz != 1)
                        {
                            ob_menu_3_controller.FadeToPuz = 1;
                        }
                    }
                }
            }
            else
            {
                QP1Hov = 0;
            }
        }
    }
    if (EventTYPE == 4)
    {
        if (CurrentPage != 10 || FadeToPuz == 1)
        {
            if (audio_is_playing(s_lunarnewyears))
            {
                audio_stop_sound(s_lunarnewyears);
                global.music_vol = adventMUTEvol;
                ob_game_controller.alarm[5] = 1;
            }
        }
        else
        {
            if (nyCOL_counter > 0)
            {
                nyCOL_counter -= 1;
            }
            else
            {
                nyCOL_counter = 10;
                if (nyCOl_index == 0)
                {
                    nyCOl_index += 1;
                    nyCOL1 = make_colour_rgb(255, 188, 0);
                    nyCOL2 = 255;
                    nyCOL3 = 255;
                    nyCOL4 = 255;
                }
                else if (nyCOl_index == 1)
                {
                    nyCOl_index += 1;
                    nyCOL = 255;
                    nyCOL2 = make_colour_rgb(255, 188, 0);
                    nyCOL3 = make_colour_rgb(255, 223, 132);
                    nyCOL4 = 255;
                }
                else if (nyCOl_index == 2)
                {
                    nyCOl_index += 1;
                    nyCOL1 = 255;
                    nyCOL2 = 255;
                    nyCOL3 = make_colour_rgb(255, 188, 0);
                    nyCOL4 = 255;
                }
                else if (nyCOl_index == 3)
                {
                    nyCOl_index = 0;
                    nyCOL1 = 255;
                    nyCOL2 = 255;
                    nyCOL3 = 255;
                    nyCOL4 = make_colour_rgb(255, 188, 0);
                }
            }
            var can_make_firework = irandom(30);
            if (can_make_firework == 1)
            {
                instance_create(0 + random(1920), 1100, ob_firework);
            }
            if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 550, 248, 1336, 751))
            {
                QP1Hov = 1;
                if (mouse_check_button_pressed(mb_left) && ob_menu_3_controller.can_press_ui_buttons == 1)
                {
                    global.MenuReturnPage = 10;
                    var bits = 0;
                    var pack_num = 126;
                    var puz_num = 42;
                    bits = 140;
                    var file_name = "\misc\content\126\p126p" + string(puz_num);
                    if (file_exists(working_directory + string(file_name) + ".png"))
                    {
                        ob_menu_3_controller.can_press_ui_buttons = 0;
                        global.current_pack_open = pack_num;
                        global.puzzle_number_to_play = puz_num;
                        global.total_number_of_pieces = bits;
                        global.puzzle_max_number_of_pieces = bits;
                        if (global.current_puzzle_ghost_image == 0)
                        {
                        }
                        else
                        {
                            sprite_delete(global.current_puzzle_ghost_image);
                        }
                        global.current_puzzle_ghost_image = sprite_add(working_directory + string(file_name) + ".png", 0, false, false, 0, 0);
                        var sprW = sprite_get_width(global.current_puzzle_ghost_image);
                        if (sprW == 1400)
                        {
                            global.level_type = 2;
                        }
                        else if (sprW == 1388)
                        {
                            global.level_type = 1;
                        }
                        else if (sprW == 1880)
                        {
                            global.level_type = 4;
                        }
                        else if (sprW == 1040)
                        {
                            global.level_type = 3;
                        }
                        var spx = 0;
                        var spy = 0;
                        if (bits == 60)
                        {
                            spx = 132;
                            spy = 123;
                        }
                        if (bits == 112)
                        {
                            spx = 92;
                            spy = 90;
                        }
                        if (bits == 153)
                        {
                            spx = 75;
                            spy = 80;
                        }
                        if (bits == 220)
                        {
                            spx = 64;
                            spy = 64;
                        }
                        if (bits == 350)
                        {
                            spx = 49;
                            spy = 49;
                        }
                        if (bits == 96)
                        {
                            spx = 112;
                            spy = 108;
                        }
                        if (bits == 140)
                        {
                            spx = 96;
                            spy = 86;
                        }
                        if (bits == 216)
                        {
                            spx = 74;
                            spy = 71;
                        }
                        if (bits == 330)
                        {
                            spx = 59;
                            spy = 49;
                        }
                        if (bits == 425)
                        {
                            spx = 51;
                            spy = 49;
                        }
                        if (bits == 640 && global.level_type == 2)
                        {
                            spx = 39;
                            spy = 41;
                        }
                        if (bits == 840)
                        {
                            spx = 35;
                            spy = 33;
                        }
                        if (bits == 1410)
                        {
                            spx = 26;
                            spy = 26;
                        }
                        if (bits == 100)
                        {
                            spx = 100;
                            spy = 100;
                        }
                        if (bits == 169)
                        {
                            spx = 76;
                            spy = 76;
                        }
                        if (bits == 324)
                        {
                            spx = 53;
                            spy = 53;
                        }
                        if (bits == 400)
                        {
                            spx = 48;
                            spy = 48;
                        }
                        if (bits == 676)
                        {
                            spx = 36;
                            spy = 36;
                        }
                        if (bits == 841)
                        {
                            spx = 30;
                            spy = 30;
                        }
                        if (bits == 126)
                        {
                            spx = 100;
                            spy = 100;
                        }
                        if (bits == 168)
                        {
                            spx = 85;
                            spy = 85;
                        }
                        if (bits == 250)
                        {
                            spx = 71;
                            spy = 67;
                        }
                        if (bits == 455)
                        {
                            spx = 49;
                            spy = 51;
                        }
                        if (bits == 640 && global.level_type == 4)
                        {
                            spx = 42;
                            spy = 40;
                        }
                        if (bits == 810)
                        {
                            spx = 37;
                            spy = 35;
                        }
                        if (bits == 1000)
                        {
                            spx = 33;
                            spy = 31;
                        }
                        if (global.puzzle_sprite_index_to_use == 0)
                        {
                        }
                        else
                        {
                            sprite_delete(global.puzzle_sprite_index_to_use);
                        }
                        global.puzzle_sprite_index_to_use = sprite_add(working_directory + string(file_name) + "p.png", bits, false, false, spx, spy);
                        sprite_collision_mask(global.puzzle_sprite_index_to_use, true, 1, 0, 0, 0, 0, 0, 0);
                        audio_play_sound(s_normal_button_press, 10, false);
                        if (ob_menu_3_controller.FadeToPuz != 1)
                        {
                            ob_menu_3_controller.FadeToPuz = 1;
                        }
                    }
                }
            }
            else
            {
                QP1Hov = 0;
            }
        }
    }
}
if (can_press_ui_buttons == 1)
{
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 7, 62, 221, 104))
    {
        if (CurrentPage == 1)
        {
            NavHov_1 = 0;
        }
        else
        {
            NavHov_1 = 1;
            if (mouse_check_button_released(mb_left))
            {
                CurrentPage = 1;
                current_page_alpha = 0;
                audio_play_sound(s_menu_tabs, 10, false);
            }
        }
    }
    else
    {
        NavHov_1 = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 7, 106, 221, 148))
    {
        if (CurrentPage == 2)
        {
            NavHov_2 = 0;
        }
        else
        {
            NavHov_2 = 1;
            if (mouse_check_button_released(mb_left))
            {
                CurrentPage = 2;
                current_page_alpha = 0;
                audio_play_sound(s_menu_tabs, 10, false);
                ArrowClicksMax = 0;
                ArrowClicks = 0;
                ScrollAmount = 198;
                with (ob_catalogue_pack_button)
                {
                    instance_destroy();
                }
                alarm[0] = 1;
                ini_open("settings.ini");
                LibCatCheck800 = 0;
                CatCheckComplete = ini_read_real("other", "o923", 0);
                CatCheckIncomplete = ini_read_real("other", "o936", 0);
                CatCheckInProgress = ini_read_real("other", "o941", 0);
                CatFilter = ini_read_real("other", "o921", 0);
                ini_close();
            }
        }
    }
    else
    {
        NavHov_2 = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 7, 150, 221, 192))
    {
        if (CurrentPage == 3)
        {
            NavHov_3 = 0;
        }
        else
        {
            NavHov_3 = 1;
            if (mouse_check_button_released(mb_left))
            {
                if (steam_user_owns_dlc(1952658) && steam_user_installed_dlc(1952658))
                {
                    CurrentPage = 3;
                    current_page_alpha = 0;
                    audio_play_sound(s_menu_tabs, 10, false);
                    ArrowClicksMax = 0;
                    ArrowClicks = 0;
                    ScrollAmount = 150;
                    var pack_num = 126;
                    var total_buttons = global.FreePuzQuantity;
                    var buttons_per_row = 6;
                    var horizontal_spacing = 208;
                    var vertical_spacing = 150;
                    var initial_xpos = 423;
                    var initial_ypos = 110;
                    var total_rows = 0;
                    var puz_num = total_buttons;
                    ini_open("pidsg.ini");
                    var FpGrid = ds_grid_create(1, global.FreePuzQuantity + 1);
                    if (ini_key_exists("fp", "0"))
                    {
                        ds_grid_read(FpGrid, ini_read_string("fp", "0", ""));
                    }
                    ini_close();
                    var savefile = "p" + string(pack_num) + ".ini";
                    ini_open(string(savefile));
                    var ClickedGrid = ds_grid_create(1, 500);
                    if (ini_key_exists("PC", "0"))
                    {
                        ds_grid_read(ClickedGrid, ini_read_string("PC", "0", ""));
                    }
                    ini_close();
                    for (var i = 0; i < total_buttons; i++)
                    {
                        var row = i div buttons_per_row;
                        var col = i % buttons_per_row;
                        var xpos = initial_xpos + (col * horizontal_spacing);
                        var ypos = initial_ypos + (row * vertical_spacing);
                        var PuzBut = instance_create(xpos, ypos, ob_menu_puz_button);
                        PuzBut.puz_num = puz_num;
                        PuzBut.pack_num = pack_num;
                        PuzBut.startY = ypos;
                        var Puz_file = "\\misc\\content\\126\\p" + string(pack_num) + "p" + string(puz_num);
                        if (file_exists(working_directory + string(Puz_file) + "b.png"))
                        {
                            PuzBut.sprite_to_use = sprite_add(working_directory + string(Puz_file) + "b.png", 0, false, false, 87, 53);
                        }
                        PuzBut.bits = ds_grid_get(FpGrid, 0, puz_num);
                        var pieces_placed = ds_grid_get(ClickedGrid, 0, puz_num);
                        if (pieces_placed > 0)
                        {
                        }
                        else
                        {
                            pieces_placed = 0;
                        }
                        PuzBut.pieces_placed = pieces_placed;
                        var a_c = "complete_pack_" + string(pack_num) + "_puzzle_" + string(puz_num);
                        PuzBut.puz_beat = steam_get_achievement(a_c);
                        puz_num--;
                    }
                    ds_grid_destroy(FpGrid);
                    ds_grid_destroy(ClickedGrid);
                    total_rows = ceil(total_buttons / buttons_per_row);
                    if (total_rows > 7)
                    {
                        ArrowClicksMax = total_rows - 7;
                    }
                }
                else
                {
                    steam_activate_overlay_store(1952658);
                }
            }
        }
    }
    else
    {
        NavHov_3 = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 7, 194, 221, 236))
    {
        if (CurrentPage == 4)
        {
            NavHov_4 = 0;
        }
        else
        {
            NavHov_4 = 1;
            if (mouse_check_button_released(mb_left))
            {
                if (steam_user_owns_dlc(1952658) && steam_user_installed_dlc(1952658))
                {
                    CurrentPage = 4;
                    current_page_alpha = 0;
                    audio_play_sound(s_menu_tabs, 10, false);
                    ArrowClicksMax = 0;
                    ArrowClicks = 0;
                    ScrollAmount = 150;
                    var pack_num = 7000;
                    var total_buttons = global.CurChalNum - 1;
                    var buttons_per_row = 6;
                    var horizontal_spacing = 208;
                    var vertical_spacing = 150;
                    var initial_xpos = 423;
                    var initial_ypos = 839;
                    var total_rows = 0;
                    var puz_num = total_buttons;
                    ini_open("pidsg.ini");
                    var chalGrid = ds_grid_create(1, global.CurChalNum + 1);
                    if (ini_key_exists("chal", "0"))
                    {
                        ds_grid_read(chalGrid, ini_read_string("chal", "0", ""));
                    }
                    ini_close();
                    var savefile = "p" + string(pack_num) + ".ini";
                    ini_open(string(savefile));
                    var ClickedGrid = ds_grid_create(1, 500);
                    if (ini_key_exists("PC", "0"))
                    {
                        ds_grid_read(ClickedGrid, ini_read_string("PC", "0", ""));
                    }
                    ini_close();
                    for (var i = 0; i < total_buttons; i++)
                    {
                        var row = i div buttons_per_row;
                        var col = i % buttons_per_row;
                        var xpos = initial_xpos + (col * horizontal_spacing);
                        var ypos = initial_ypos + (row * vertical_spacing);
                        var PuzBut = instance_create(xpos, ypos, ob_menu_puz_button);
                        PuzBut.puz_num = puz_num;
                        PuzBut.pack_num = pack_num;
                        PuzBut.startY = ypos;
                        PuzBut.lockPrice = 50;
                        var Puz_file = "\\misc\\challenge\\p" + string(pack_num) + "p" + string(puz_num);
                        if (file_exists(working_directory + string(Puz_file) + "b.png"))
                        {
                            PuzBut.sprite_to_use = sprite_add(working_directory + string(Puz_file) + "b.png", 0, false, false, 87, 53);
                        }
                        PuzBut.bits = ds_grid_get(chalGrid, 0, puz_num);
                        var pieces_placed = ds_grid_get(ClickedGrid, 0, puz_num);
                        if (pieces_placed > 0)
                        {
                        }
                        else
                        {
                            pieces_placed = 0;
                        }
                        PuzBut.pieces_placed = pieces_placed;
                        var a_c = "complete_pack_" + string(pack_num) + "_puzzle_" + string(puz_num);
                        PuzBut.puz_beat = steam_get_achievement(a_c);
                        if (puz_num <= 87)
                        {
                            var LockKey = "kioskchallenges" + string(puz_num);
                            if (!steam_get_achievement(LockKey))
                            {
                                PuzBut.puzzle_is_locked = 1;
                            }
                        }
                        else
                        {
                            var LockKey = "kioskchallenges" + string(puz_num);
                            var statcheck = steam_get_stat_int(LockKey);
                            if (statcheck != 1)
                            {
                                PuzBut.puzzle_is_locked = 1;
                            }
                        }
                        puz_num--;
                    }
                    ds_grid_destroy(chalGrid);
                    ds_grid_destroy(ClickedGrid);
                    total_rows = ceil(total_buttons / buttons_per_row);
                    if (total_rows > 2)
                    {
                        ArrowClicksMax = total_rows - 2;
                    }
                }
                else
                {
                    steam_activate_overlay_store(1952658);
                }
            }
        }
    }
    else
    {
        NavHov_4 = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 7, 238, 221, 280))
    {
        if (CurrentPage == 5)
        {
            NavHov_5 = 0;
        }
        else
        {
            NavHov_5 = 1;
            if (mouse_check_button_released(mb_left))
            {
                if (steam_user_owns_dlc(1952658) && steam_user_installed_dlc(1952658))
                {
                    CurrentPage = 5;
                    current_page_alpha = 0;
                    audio_play_sound(s_menu_tabs, 10, false);
                    ArrowClicksMax = 0;
                    ArrowClicks = 0;
                    ScrollAmount = 150;
                    var pack_num = 5000;
                    var total_buttons = global.TotalUnlockables;
                    var buttons_per_row = 6;
                    var horizontal_spacing = 208;
                    var vertical_spacing = 150;
                    var initial_xpos = 423;
                    var initial_ypos = 110;
                    var total_rows = 0;
                    var puz_num = total_buttons;
                    ini_open("pidsg.ini");
                    var unlockGrid = ds_grid_create(2, global.TotalUnlockables + 1);
                    if (ini_key_exists("ul", "0"))
                    {
                        ds_grid_read(unlockGrid, ini_read_string("ul", "0", ""));
                    }
                    ini_close();
                    var savefile = "p" + string(pack_num) + ".ini";
                    ini_open(string(savefile));
                    var ClickedGrid = ds_grid_create(1, 500);
                    if (ini_key_exists("PC", "0"))
                    {
                        ds_grid_read(ClickedGrid, ini_read_string("PC", "0", ""));
                    }
                    ini_close();
                    for (var i = 0; i < total_buttons; i++)
                    {
                        var row = i div buttons_per_row;
                        var col = i % buttons_per_row;
                        var xpos = initial_xpos + (col * horizontal_spacing);
                        var ypos = initial_ypos + (row * vertical_spacing);
                        var PuzBut = instance_create(xpos, ypos, ob_menu_puz_button);
                        PuzBut.puz_num = puz_num;
                        PuzBut.pack_num = pack_num;
                        PuzBut.startY = ypos;
                        var Puz_file = "\\misc\\puzshop\\p" + string(pack_num) + "p" + string(puz_num);
                        if (file_exists(working_directory + string(Puz_file) + "b.png"))
                        {
                            PuzBut.sprite_to_use = sprite_add(working_directory + string(Puz_file) + "b.png", 0, false, false, 87, 53);
                        }
                        PuzBut.bits = ds_grid_get(unlockGrid, 0, puz_num);
                        PuzBut.lockPrice = ds_grid_get(unlockGrid, 1, puz_num);
                        var pieces_placed = ds_grid_get(ClickedGrid, 0, puz_num);
                        if (pieces_placed > 0)
                        {
                        }
                        else
                        {
                            pieces_placed = 0;
                        }
                        PuzBut.pieces_placed = pieces_placed;
                        var a_c = "complete_pack_" + string(pack_num) + "_puzzle_" + string(puz_num);
                        PuzBut.puz_beat = steam_get_achievement(a_c);
                        if (puz_num <= 89)
                        {
                            var LockKey = "kioskpuzzles" + string(puz_num);
                            if (!steam_get_achievement(LockKey))
                            {
                                PuzBut.puzzle_is_locked = 1;
                            }
                        }
                        else
                        {
                            var LockKey = "kioskpuzzles" + string(puz_num);
                            var statcheck = steam_get_stat_int(LockKey);
                            if (statcheck != 1)
                            {
                                PuzBut.puzzle_is_locked = 1;
                            }
                        }
                        puz_num--;
                    }
                    ds_grid_destroy(unlockGrid);
                    ds_grid_destroy(ClickedGrid);
                    total_rows = ceil(total_buttons / buttons_per_row);
                    if (total_rows > 7)
                    {
                        ArrowClicksMax = total_rows - 7;
                    }
                }
                else
                {
                    steam_activate_overlay_store(1952658);
                }
            }
        }
    }
    else
    {
        NavHov_5 = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 7, 282, 221, 324))
    {
        if (CurrentPage == 18)
        {
            NavHov_18 = 0;
        }
        else
        {
            NavHov_18 = 1;
            if (mouse_check_button_released(mb_left))
            {
                if (steam_user_owns_dlc(1952658) && steam_user_installed_dlc(1952658))
                {
                    CurrentPage = 18;
                    current_page_alpha = 0;
                    audio_play_sound(s_menu_tabs, 10, false);
                    ArrowClicksMax = 0;
                    ArrowClicks = 0;
                    ScrollAmount = 150;
                    var pack_num = 6000;
                    var total_buttons = 19;
                    var buttons_per_row = 6;
                    var horizontal_spacing = 208;
                    var vertical_spacing = 150;
                    var initial_xpos = 423;
                    var initial_ypos = 110;
                    var puz_num = total_buttons;
                    ini_open("pidsg.ini");
                    var FigGrid = ds_grid_create(0, 20);
                    if (ini_key_exists("fig", "0"))
                    {
                        ds_grid_read(FigGrid, ini_read_string("fig", "0", ""));
                    }
                    ini_close();
                    var savefile = "p" + string(pack_num) + ".ini";
                    ini_open(string(savefile));
                    var ClickedGrid = ds_grid_create(1, 500);
                    if (ini_key_exists("PC", "0"))
                    {
                        ds_grid_read(ClickedGrid, ini_read_string("PC", "0", ""));
                    }
                    ini_close();
                    for (var i = 0; i < total_buttons; i++)
                    {
                        var row = i div buttons_per_row;
                        var col = i % buttons_per_row;
                        var xpos = initial_xpos + (col * horizontal_spacing);
                        var ypos = initial_ypos + (row * vertical_spacing);
                        var PuzBut = instance_create(xpos, ypos, ob_menu_puz_button);
                        PuzBut.puz_num = puz_num;
                        PuzBut.pack_num = pack_num;
                        PuzBut.startY = ypos;
                        PuzBut.lockPrice = 15;
                        var Puz_file = "\\misc\\puzshop\\p" + string(pack_num) + "p" + string(puz_num);
                        if (file_exists(working_directory + string(Puz_file) + "b.png"))
                        {
                            PuzBut.sprite_to_use = sprite_add(working_directory + string(Puz_file) + "b.png", 0, false, false, 87, 53);
                        }
                        PuzBut.bits = ds_grid_get(FigGrid, 0, puz_num);
                        var pieces_placed = ds_grid_get(ClickedGrid, 0, puz_num);
                        if (pieces_placed > 0)
                        {
                        }
                        else
                        {
                            pieces_placed = 0;
                        }
                        PuzBut.pieces_placed = pieces_placed;
                        var a_c = "complete_pack_" + string(pack_num) + "_puzzle_" + string(puz_num);
                        PuzBut.puz_beat = steam_get_achievement(a_c);
                        var LockKey = "kioskfigurals" + string(puz_num);
                        if (!steam_get_achievement(LockKey))
                        {
                            PuzBut.puzzle_is_locked = 1;
                        }
                        puz_num--;
                    }
                    ds_grid_destroy(FigGrid);
                    ds_grid_destroy(ClickedGrid);
                }
                else
                {
                    steam_activate_overlay_store(1952658);
                }
            }
        }
    }
    else
    {
        NavHov_18 = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 7, 370, 221, 412))
    {
        if (CurrentPage == 6)
        {
            NavHov_6 = 0;
        }
        else
        {
            NavHov_6 = 1;
            if (mouse_check_button_released(mb_left))
            {
                CurrentPage = 6;
                current_page_alpha = 0;
                audio_play_sound(s_menu_tabs, 10, false);
                CatFilter = 0;
                CatCheckComplete = 0;
                CatCheckIncomplete = 0;
                CatCheck800 = 0;
                CatCheckFree = 0;
                ArrowClicksMax = 0;
                ArrowClicks = 0;
                ScrollAmount = 198;
                with (ob_catalogue_pack_button)
                {
                    instance_destroy();
                }
                alarm[0] = 1;
            }
        }
    }
    else
    {
        NavHov_6 = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 7, 414, 221, 456))
    {
    }
    else
    {
        NavHov_7 = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 7, 458, 221, 500))
    {
        if (CurrentPage == 17)
        {
            NavHov_17 = 0;
        }
        else
        {
            NavHov_17 = 1;
            if (mouse_check_button_released(mb_left))
            {
                if (steam_initialised())
                {
                    CurrentPage = 17;
                    current_page_alpha = 0;
                    audio_play_sound(s_menu_tabs, 10, false);
                    ArrowClicksMax = 0;
                    ArrowClicks = 0;
                    ScrollAmount = 198;
                    with (ob_catalogue_pack_button)
                    {
                        instance_destroy();
                    }
                    var total_packs = global.TotalPacks;
                    var buttons_per_row = 3;
                    var horizontal_spacing = 380;
                    var vertical_spacing = 198;
                    var initial_xpos = 381;
                    var initial_ypos = 91;
                    var current_pack_index = 0;
                    var packs_on_sale = 0;
                    var total_rows = 0;
                    ini_open("pidsg.ini");
                    var PackGrid = ds_grid_create(6, global.TotalPacks + 1);
                    if (ini_key_exists("pi", "0"))
                    {
                        ds_grid_read(PackGrid, ini_read_string("pi", "0", ""));
                    }
                    ini_close();
                    var pack_numbers = array_create(total_packs);
                    for (var i = 0; i < total_packs; i++)
                    {
                        pack_numbers[i] = i + 1;
                    }
                    for (var i = 0; i < total_packs; i++)
                    {
                        var j = irandom_range(0, total_packs - 1);
                        var temp = pack_numbers[i];
                        pack_numbers[i] = pack_numbers[j];
                        pack_numbers[j] = temp;
                    }
                    for (var i = 0; i < total_packs; i++)
                    {
                        var pack_num = pack_numbers[i];
                        var PacksBatch = ds_grid_get(PackGrid, 5, pack_num);
                        var PacksDiscount = ds_grid_get(PackGrid, 4, pack_num);
                        var PackTitle = ds_grid_get(PackGrid, 1, pack_num);
                        var appID = ds_grid_get(PackGrid, 0, pack_num);
                        var DLCType = ds_grid_get(PackGrid, 3, pack_num);
                        if (((PacksBatch == global.sale_batch && !steam_user_owns_dlc(appID)) && DLCType != 0 && DLCType != 3) || (((global.sale_batch == 100 && PacksDiscount > 0) && !steam_user_owns_dlc(appID)) && DLCType != 1 && DLCType != 3) || (DLCType == 2 && !steam_user_owns_dlc(appID)))
                        {
                            var row = current_pack_index div buttons_per_row;
                            var col = current_pack_index % buttons_per_row;
                            var xpos = initial_xpos + (col * horizontal_spacing);
                            var ypos = initial_ypos + (row * vertical_spacing);
                            var PackBut = instance_create(xpos, ypos, ob_catalogue_pack_button);
                            PackBut.pack_num = pack_num;
                            PackBut.pack_on_sale = 1;
                            PackBut.sale_percent = PacksDiscount;
                            PackBut.appID = appID;
                            PackBut.startY = ypos;
                            PackBut.PackTitle = PackTitle;
                            current_pack_index++;
                            packs_on_sale++;
                        }
                    }
                    ds_grid_destroy(PackGrid);
                    total_rows = ceil(packs_on_sale / buttons_per_row);
                    if (total_rows > 5)
                    {
                        ArrowClicksMax = total_rows - 5;
                    }
                }
            }
        }
    }
    else
    {
        NavHov_17 = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 7, 546, 221, 588))
    {
        if (CurrentPage == 8)
        {
            NavHov_8 = 0;
        }
        else
        {
            NavHov_8 = 1;
            if (mouse_check_button_released(mb_left))
            {
                CurrentPage = 8;
                current_page_alpha = 0;
                ShadHovY = -100;
                audio_play_sound(s_menu_tabs, 10, false);
            }
        }
    }
    else
    {
        NavHov_8 = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 7, 590, 221, 632))
    {
        if (CurrentPage == 13)
        {
            NavHov_9 = 0;
        }
        else
        {
            NavHov_9 = 1;
            if (mouse_check_button_released(mb_left))
            {
                CurrentPage = 13;
                current_page_alpha = 0;
                ShadHovY = -100;
                audio_play_sound(s_menu_tabs, 10, false);
            }
        }
    }
    else
    {
        NavHov_9 = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 7, 634, 221, 676))
    {
        if (CurrentPage == 14)
        {
            NavHov_10 = 0;
        }
        else
        {
            NavHov_10 = 1;
            if (mouse_check_button_released(mb_left))
            {
                CurrentPage = 14;
                current_page_alpha = 0;
                ShadHovY = -100;
                audio_play_sound(s_menu_tabs, 10, false);
            }
        }
    }
    else
    {
        NavHov_10 = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 7, 766, 221, 808))
    {
    }
    else
    {
        NavHov_11 = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 7, 810, 221, 852))
    {
        if (CurrentPage == 10)
        {
            NavHov_12 = 0;
        }
        else
        {
            NavHov_12 = 1;
            if (mouse_check_button_released(mb_left))
            {
                if (EventISOn == 1)
                {
                    CurrentPage = 10;
                    current_page_alpha = 0;
                    audio_play_sound(s_menu_tabs, 10, false);
                    alarm[4] = 1;
                }
            }
        }
    }
    else
    {
        NavHov_12 = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 7, 854, 221, 896))
    {
    }
    else
    {
        NavHov_13 = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 7, 898, 221, 940))
    {
    }
    else
    {
        NavHov_14 = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 7, 942, 221, 984))
    {
        NavHov_15 = 1;
        if (mouse_check_button_released(mb_left))
        {
            steam_activate_overlay(ov_achievements);
            audio_play_sound(s_menu_tabs, 10, false);
        }
    }
    else
    {
        NavHov_15 = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 13, 1037, 73, 1065))
    {
        NavHov_16 = 1;
        if (mouse_check_button_released(mb_left))
        {
            game_end();
        }
    }
    else
    {
        NavHov_16 = 0;
    }
}
else
{
    NavHov_1 = 0;
    NavHov_2 = 0;
    NavHov_3 = 0;
    NavHov_4 = 0;
    NavHov_5 = 0;
    NavHov_6 = 0;
    NavHov_7 = 0;
    NavHov_8 = 0;
    NavHov_9 = 0;
    NavHov_10 = 0;
    NavHov_11 = 0;
    NavHov_12 = 0;
    NavHov_13 = 0;
    NavHov_14 = 0;
    NavHov_15 = 0;
    NavHov_16 = 0;
    NavHov_17 = 0;
    NavHov_18 = 0;
}
if (Goldx3Banner < 7)
{
    Goldx3Banner += 0.1;
}
else
{
    Goldx3Banner = 1;
}
if (can_press_ui_buttons == 1)
{
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1655, 227, 1905, 387))
    {
        CurChalPlayHov = 1;
        if (mouse_check_button_released(mb_left) && can_press_ui_buttons == 1)
        {
            var file_name = "\misc\challenge\p7000p" + string(global.CurChalNum);
            if (file_exists(working_directory + string(file_name) + "p.png"))
            {
                if (CurrentPage == 4 || CurrentPage == 3 || CurrentPage == 5 || CurrentPage == 18)
                {
                    global.MenuReturnPage = CurrentPage;
                }
                else
                {
                    global.MenuReturnPage = 1;
                }
                can_press_ui_buttons = 0;
                global.total_number_of_pieces = ChalCurQnt;
                global.puzzle_number_to_play = global.CurChalNum;
                global.puzzle_max_number_of_pieces = ChalCurQnt;
                global.current_pack_open = 7000;
                global.current_puzzle_ghost_image = ChalPrev;
                var sprW = sprite_get_width(ChalPrev);
                if (sprW == 1400)
                {
                    global.level_type = 2;
                }
                else if (sprW == 1388)
                {
                    global.level_type = 1;
                }
                else if (sprW == 1880)
                {
                    global.level_type = 4;
                }
                else if (sprW == 1040)
                {
                    global.level_type = 3;
                }
                var spx = 0;
                var spy = 0;
                if (ChalCurQnt == 330)
                {
                    spx = 59;
                    spy = 49;
                }
                if (ChalCurQnt == 425)
                {
                    spx = 51;
                    spy = 49;
                }
                if (ChalCurQnt == 640 && global.level_type == 2)
                {
                    spx = 39;
                    spy = 41;
                }
                if (ChalCurQnt == 840)
                {
                    spx = 35;
                    spy = 33;
                }
                if (ChalCurQnt == 1410)
                {
                    spx = 26;
                    spy = 26;
                }
                if (ChalCurQnt == 324)
                {
                    spx = 53;
                    spy = 53;
                }
                if (ChalCurQnt == 400)
                {
                    spx = 48;
                    spy = 48;
                }
                if (ChalCurQnt == 676)
                {
                    spx = 36;
                    spy = 36;
                }
                if (ChalCurQnt == 841)
                {
                    spx = 30;
                    spy = 30;
                }
                if (ChalCurQnt == 455)
                {
                    spx = 49;
                    spy = 51;
                }
                if (ChalCurQnt == 640 && global.level_type == 4)
                {
                    spx = 42;
                    spy = 40;
                }
                if (ChalCurQnt == 810)
                {
                    spx = 37;
                    spy = 35;
                }
                if (ChalCurQnt == 1000)
                {
                    spx = 33;
                    spy = 31;
                }
                if (global.puzzle_sprite_index_to_use != 0)
                {
                    sprite_delete(global.puzzle_sprite_index_to_use);
                }
                global.puzzle_sprite_index_to_use = sprite_add(working_directory + string(file_name) + "p.png", ChalCurQnt, false, false, spx, spy);
                sprite_collision_mask(global.puzzle_sprite_index_to_use, true, 1, 0, 0, 0, 0, 0, 0);
                var challenge_cur = "challenge_" + string(global.CurChalNum) + "_attempts";
                var challenge_attempts = steam_get_stat_int(challenge_cur) + 1;
                steam_upload_score(challenge_cur, challenge_attempts);
                steam_set_stat_int(challenge_cur, challenge_attempts);
                audio_play_sound(s_normal_button_press, 11, false);
                if (FadeToPuz != 1)
                {
                    FadeToPuz = 1;
                }
            }
        }
    }
    else
    {
        CurChalPlayHov = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1655, 402, 1905, 519))
    {
        SalePack_hov = 1;
        if (mouse_check_button_released(mb_left))
        {
            if (SalePackappID != 0 && SalePack > 0)
            {
                steam_activate_overlay_store(SalePackappID);
                audio_play_sound(s_menu_tabs, 11, false);
            }
        }
    }
    else
    {
        SalePack_hov = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1734, 739, 1905, 771))
    {
        social_web_hov = 1;
        if (mouse_check_button_pressed(mb_left))
        {
            if (global.fullscreen_mode == 1)
            {
                steam_activate_overlay_browser("http://pixelpuzzles.co.uk/");
            }
            else
            {
                url_open("http://pixelpuzzles.co.uk/");
            }
            audio_play_sound(s_menu_tabs, 11, false);
        }
    }
    else
    {
        social_web_hov = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1784, 776, 1905, 808))
    {
        social_steam_hov = 1;
        if (mouse_check_button_pressed(mb_left))
        {
            steam_activate_overlay_browser("http://store.steampowered.com/search/?developer=Pixel%20Puzzles");
            audio_play_sound(s_menu_tabs, 11, false);
        }
    }
    else
    {
        social_steam_hov = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1768, 813, 1905, 845))
    {
        social_discord_hov = 1;
        if (mouse_check_button_pressed(mb_left))
        {
            if (global.fullscreen_mode == 1)
            {
                steam_activate_overlay_browser("https://discord.gg/TkV7FzSp8Y");
            }
            else
            {
                url_open("https://discord.gg/TkV7FzSp8Y");
            }
            audio_play_sound(s_menu_tabs, 11, false);
        }
    }
    else
    {
        social_discord_hov = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1747, 850, 1905, 882))
    {
        social_insta_hov = 1;
        if (mouse_check_button_pressed(mb_left))
        {
            if (global.fullscreen_mode == 1)
            {
                steam_activate_overlay_browser("https://www.instagram.com/pixel_puzzles/");
            }
            else
            {
                url_open("https://www.instagram.com/pixel_puzzles/");
            }
            audio_play_sound(s_menu_tabs, 11, false);
        }
    }
    else
    {
        social_insta_hov = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1747, 887, 1905, 919))
    {
        social_twitter_hov = 1;
        if (mouse_check_button_pressed(mb_left))
        {
            if (global.fullscreen_mode == 1)
            {
                steam_activate_overlay_browser("https://twitter.com/Pixel_Puzzles");
            }
            else
            {
                url_open("https://twitter.com/Pixel_Puzzles");
            }
            audio_play_sound(s_menu_tabs, 11, false);
        }
    }
    else
    {
        social_twitter_hov = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1655, 924, 1905, 1065))
    {
        club_but_scale = 1.01;
        if (mouse_check_button_pressed(mb_left))
        {
            steam_activate_overlay_browser("https://steamcommunity.com/groups/ThePuzzleClub");
            audio_play_sound(s_menu_tabs, 11, false);
        }
    }
    else
    {
        club_but_scale = 1;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1655, 531, 1777, 573))
    {
        if (trade_GfH_open == 0)
        {
            trade_GfH_hov = 1;
            if (mouse_check_button_released(mb_left))
            {
                if (hint_quantity >= trade_GfH_cost)
                {
                    trade_GfH_open = 1;
                    trade_alpha = 0;
                    trade_posY = 570;
                    audio_play_sound(s_change_setting, 10, false);
                }
            }
        }
        else
        {
            trade_GfH_hov = 0;
        }
    }
    else
    {
        trade_GfH_hov = 0;
        if (mouse_check_button_released(mb_left))
        {
            if (trade_GfH_open == 1)
            {
                trade_GfH_open = 0;
            }
        }
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1786, 531, 1908, 573))
    {
        if (trade_HfG_open == 0)
        {
            trade_HfG_hov = 1;
            if (mouse_check_button_released(mb_left))
            {
                if (gold_quantity >= trade_HfG_cost)
                {
                    trade_HfG_open = 1;
                    trade_alpha = 0;
                    trade_posY = 570;
                    audio_play_sound(s_change_setting, 10, false);
                }
            }
        }
        else
        {
            trade_HfG_hov = 0;
        }
    }
    else
    {
        trade_HfG_hov = 0;
        if (mouse_check_button_released(mb_left))
        {
            if (trade_HfG_open == 1)
            {
                trade_HfG_open = 0;
            }
        }
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1662, 578, 1769, 595))
    {
        trade_GfH_open_hov = 1;
        if (mouse_check_button_pressed(mb_left) && trade_GfH_open == 1 && hint_quantity >= trade_GfH_cost)
        {
            if (steam_stats_ready())
            {
                var new_earned = steam_get_stat_int("gold_bits_earned") + trade_GfH_get;
                var new_spent = steam_get_stat_int("hints_used") + trade_GfH_cost;
                steam_set_stat_int("gold_bits_earned", new_earned);
                steam_set_stat_int("hints_used", new_spent);
                gold_quantity += trade_GfH_get;
                hint_quantity -= trade_GfH_cost;
                trade_GfH_open = 0;
                audio_play_sound(s_hint_ghost, 10, false);
            }
        }
    }
    else
    {
        trade_GfH_open_hov = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1794, 578, 1901, 595))
    {
        trade_HfG_open_hov = 1;
        if (mouse_check_button_pressed(mb_left) && trade_HfG_open == 1 && gold_quantity >= trade_HfG_cost)
        {
            if (steam_stats_ready())
            {
                var new_earned = steam_get_stat_int("hints_earned") + trade_HfG_get;
                var new_spent = steam_get_stat_int("gold_bits_used") + trade_HfG_cost;
                steam_set_stat_int("hints_earned", new_earned);
                steam_set_stat_int("gold_bits_used", new_spent);
                hint_quantity += trade_HfG_get;
                gold_quantity -= trade_HfG_cost;
                trade_HfG_open = 0;
                audio_play_sound(s_hint_ghost, 10, false);
            }
        }
    }
    else
    {
        trade_HfG_open_hov = 0;
    }
    if (trade_alpha < 1)
    {
        trade_alpha += 0.01;
    }
    if (trade_posY < 587)
    {
        trade_posY += 1;
    }
}
else
{
    social_web_hov = 0;
    social_steam_hov = 0;
    social_discord_hov = 0;
    social_insta_hov = 0;
    social_twitter_hov = 0;
    club_but_scale = 1;
    trade_alpha = 0;
    trade_posY = 570;
}
if (CurrentPage == 1)
{
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 818, CPIpy - 12, 1070, CPIpy + 12))
    {
        CurPlayHov = 1;
    }
    else
    {
        CurPlayHov = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 336, 786, 511, 892))
    {
        QP1Hov = 1;
    }
    else
    {
        QP1Hov = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 544, 786, 719, 892))
    {
        QP2Hov = 1;
    }
    else
    {
        QP2Hov = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 752, 786, 927, 892))
    {
        QP3Hov = 1;
    }
    else
    {
        QP3Hov = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 960, 786, 1135, 892))
    {
        QP4Hov = 1;
    }
    else
    {
        QP4Hov = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1168, 786, 1343, 892))
    {
        QP5Hov = 1;
    }
    else
    {
        QP5Hov = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1376, 786, 1551, 892))
    {
        QP6Hov = 1;
    }
    else
    {
        QP6Hov = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 336, 949, 511, 1055))
    {
        Pin1Hov = 1;
    }
    else
    {
        Pin1Hov = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 544, 949, 719, 1055))
    {
        Pin2Hov = 1;
    }
    else
    {
        Pin2Hov = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 752, 949, 927, 1055))
    {
        Pin3Hov = 1;
    }
    else
    {
        Pin3Hov = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 960, 949, 1135, 1055))
    {
        Pin4Hov = 1;
    }
    else
    {
        Pin4Hov = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1168, 949, 1343, 1055))
    {
        Pin5Hov = 1;
    }
    else
    {
        Pin5Hov = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1376, 949, 1551, 1055))
    {
        Pin6Hov = 1;
    }
    else
    {
        Pin6Hov = 0;
    }
    if (CurPlayHov == 1 || QP1Hov == 1 || QP2Hov == 1 || QP3Hov == 1 || QP4Hov == 1 || QP5Hov == 1 || QP6Hov == 1 || Pin1Hov == 1 || Pin2Hov == 1 || Pin3Hov == 1 || Pin4Hov == 1 || Pin5Hov == 1 || Pin6Hov == 1)
    {
        if (mouse_check_button_pressed(mb_left) && can_press_ui_buttons == 1)
        {
            var bits = 0;
            var pack_num = 0;
            var puz_num = 0;
            if (CurPlayHov == 1)
            {
                bits = QP1_qnt;
                pack_num = Quick1Pack;
                puz_num = Quick1Puz;
            }
            if (QP1Hov == 1)
            {
                bits = QP2_qnt;
                pack_num = Quick2Pack;
                puz_num = Quick2Puz;
            }
            if (QP2Hov == 1)
            {
                bits = QP3_qnt;
                pack_num = Quick3Pack;
                puz_num = Quick3Puz;
            }
            if (QP3Hov == 1)
            {
                bits = QP4_qnt;
                pack_num = Quick4Pack;
                puz_num = Quick4Puz;
            }
            if (QP4Hov == 1)
            {
                bits = QP5_qnt;
                pack_num = Quick5Pack;
                puz_num = Quick5Puz;
            }
            if (QP5Hov == 1)
            {
                bits = QP6_qnt;
                pack_num = Quick6Pack;
                puz_num = Quick6Puz;
            }
            if (QP6Hov == 1)
            {
                bits = QP7_qnt;
                pack_num = Quick7Pack;
                puz_num = Quick7Puz;
            }
            if (Pin1Hov == 1)
            {
                bits = Pin1_qnt;
                pack_num = Pin1Pack;
                puz_num = Pin1Puz;
            }
            if (Pin2Hov == 1)
            {
                bits = Pin2_qnt;
                pack_num = Pin2Pack;
                puz_num = Pin2Puz;
            }
            if (Pin3Hov == 1)
            {
                bits = Pin3_qnt;
                pack_num = Pin3Pack;
                puz_num = Pin3Puz;
            }
            if (Pin4Hov == 1)
            {
                bits = Pin4_qnt;
                pack_num = Pin4Pack;
                puz_num = Pin4Puz;
            }
            if (Pin5Hov == 1)
            {
                bits = Pin5_qnt;
                pack_num = Pin5Pack;
                puz_num = Pin5Puz;
            }
            if (Pin6Hov == 1)
            {
                bits = Pin6_qnt;
                pack_num = Pin6Pack;
                puz_num = Pin6Puz;
            }
            var folder = "";
            var file_name = "";
            if (pack_num == 5000)
            {
                folder = "puzshop";
            }
            else if (pack_num == 7000)
            {
                folder = "challenge";
            }
            if (folder == "puzshop" || folder == "challenge")
            {
                file_name = "\\misc\\" + string(folder) + "\\p" + string(pack_num) + "p" + string(puz_num);
            }
            else
            {
                file_name = "\\misc\\content\\" + string(pack_num) + "\\p" + string(pack_num) + "p" + string(puz_num);
            }
            if (file_exists(working_directory + string(file_name) + ".png"))
            {
                can_press_ui_buttons = 0;
                global.MenuReturnPage = 1;
                global.current_pack_open = pack_num;
                global.puzzle_number_to_play = puz_num;
                global.total_number_of_pieces = bits;
                global.puzzle_max_number_of_pieces = bits;
                global.use_special_puz_controller = 0;
                if (global.current_puzzle_ghost_image == 0)
                {
                }
                else
                {
                    sprite_delete(global.current_puzzle_ghost_image);
                }
                if (CurPlayHov == 1)
                {
                    global.current_puzzle_ghost_image = CurrentPuzImage;
                }
                else
                {
                    global.current_puzzle_ghost_image = sprite_add(working_directory + string(file_name) + ".png", 0, false, false, 0, 0);
                }
                var sprW = sprite_get_width(global.current_puzzle_ghost_image);
                if (sprW == 1400)
                {
                    global.level_type = 2;
                }
                else if (sprW == 1388)
                {
                    global.level_type = 1;
                }
                else if (sprW == 1880)
                {
                    global.level_type = 4;
                }
                else if (sprW == 1040)
                {
                    global.level_type = 3;
                }
                var spx = 0;
                var spy = 0;
                if (bits == 60)
                {
                    spx = 132;
                    spy = 123;
                }
                if (bits == 112)
                {
                    spx = 92;
                    spy = 90;
                }
                if (bits == 153)
                {
                    spx = 75;
                    spy = 80;
                }
                if (bits == 220)
                {
                    spx = 64;
                    spy = 64;
                }
                if (bits == 350)
                {
                    spx = 49;
                    spy = 49;
                }
                if (bits == 96)
                {
                    spx = 112;
                    spy = 108;
                }
                if (bits == 140)
                {
                    spx = 96;
                    spy = 86;
                }
                if (bits == 216)
                {
                    spx = 74;
                    spy = 71;
                }
                if (bits == 330)
                {
                    spx = 59;
                    spy = 49;
                }
                if (bits == 425)
                {
                    spx = 51;
                    spy = 49;
                }
                if (bits == 640 && global.level_type == 2)
                {
                    spx = 39;
                    spy = 41;
                }
                if (bits == 840)
                {
                    spx = 35;
                    spy = 33;
                }
                if (bits == 1410)
                {
                    spx = 26;
                    spy = 26;
                }
                if (bits == 100)
                {
                    spx = 100;
                    spy = 100;
                }
                if (bits == 169)
                {
                    spx = 76;
                    spy = 76;
                }
                if (bits == 324)
                {
                    spx = 53;
                    spy = 53;
                }
                if (bits == 400)
                {
                    spx = 48;
                    spy = 48;
                }
                if (bits == 676)
                {
                    spx = 36;
                    spy = 36;
                }
                if (bits == 841)
                {
                    spx = 30;
                    spy = 30;
                }
                if (bits == 126)
                {
                    spx = 100;
                    spy = 100;
                }
                if (bits == 168)
                {
                    spx = 85;
                    spy = 85;
                }
                if (bits == 250)
                {
                    spx = 71;
                    spy = 67;
                }
                if (bits == 455)
                {
                    spx = 49;
                    spy = 51;
                }
                if (bits == 640 && global.level_type == 4)
                {
                    spx = 42;
                    spy = 40;
                }
                if (bits == 810)
                {
                    spx = 37;
                    spy = 35;
                }
                if (bits == 1000)
                {
                    spx = 33;
                    spy = 31;
                }
                if (global.puzzle_sprite_index_to_use == 0)
                {
                }
                else
                {
                    sprite_delete(global.puzzle_sprite_index_to_use);
                }
                global.puzzle_sprite_index_to_use = sprite_add(working_directory + string(file_name) + "p.png", bits, false, false, spx, spy);
                sprite_collision_mask(global.puzzle_sprite_index_to_use, true, 1, 0, 0, 0, 0, 0, 0);
                if (QP1Hov == 1 || QP2Hov == 1 || QP3Hov == 1 || QP4Hov == 1 || QP5Hov == 1 || QP6Hov == 1)
                {
                    var QPgrid = ds_grid_create(2, 7);
                    ini_open("pidsg.ini");
                    if (ini_key_exists("QPgrid", "0"))
                    {
                        ds_grid_read(QPgrid, ini_read_string("QPgrid", "0", ""));
                    }
                    var current_pack = global.current_pack_open;
                    var current_puz = global.puzzle_number_to_play;
                    var found_index = -1;
                    for (var i = 0; i < 7; i++)
                    {
                        if (ds_grid_get(QPgrid, 0, i) == current_pack && ds_grid_get(QPgrid, 1, i) == current_puz)
                        {
                            found_index = i;
                            break;
                        }
                    }
                    if (found_index == -1)
                    {
                        for (var j = 6; j > 0; j--)
                        {
                            ds_grid_set(QPgrid, 0, j, ds_grid_get(QPgrid, 0, j - 1));
                            ds_grid_set(QPgrid, 1, j, ds_grid_get(QPgrid, 1, j - 1));
                        }
                    }
                    else
                    {
                        for (var k = found_index; k > 0; k--)
                        {
                            ds_grid_set(QPgrid, 0, k, ds_grid_get(QPgrid, 0, k - 1));
                            ds_grid_set(QPgrid, 1, k, ds_grid_get(QPgrid, 1, k - 1));
                        }
                    }
                    ds_grid_set(QPgrid, 0, 0, current_pack);
                    ds_grid_set(QPgrid, 1, 0, current_puz);
                    ini_write_string("QPgrid", "0", ds_grid_write(QPgrid));
                    ds_grid_destroy(QPgrid);
                    ini_close();
                }
                audio_play_sound(s_normal_button_press, 10, false);
                if (FadeToPuz != 1)
                {
                    FadeToPuz = 1;
                }
            }
        }
    }
    if (Pin1Hov == 1 || Pin2Hov == 1 || Pin3Hov == 1 || Pin4Hov == 1 || Pin5Hov == 1 || Pin6Hov == 1)
    {
        if (mouse_check_button_pressed(mb_right) && can_press_ui_buttons == 1)
        {
            var PinChange = 0;
            if (Pin1Hov == 1)
            {
                PinChange = 0;
            }
            else if (Pin2Hov == 1)
            {
                PinChange = 1;
            }
            else if (Pin3Hov == 1)
            {
                PinChange = 2;
            }
            else if (Pin4Hov == 1)
            {
                PinChange = 3;
            }
            else if (Pin5Hov == 1)
            {
                PinChange = 4;
            }
            else if (Pin6Hov == 1)
            {
                PinChange = 5;
            }
            var Pins = ds_grid_create(2, 7);
            ini_open("pidsg.ini");
            if (ini_key_exists("Pins", "0"))
            {
                ds_grid_read(Pins, ini_read_string("Pins", "0", ""));
            }
            ds_grid_set(Pins, 0, PinChange, -1);
            ds_grid_set(Pins, 1, PinChange, -1);
            ini_write_string("Pins", "0", ds_grid_write(Pins));
            ob_menu_3_controller.alarm[1] = 1;
            audio_play_sound(s_hint_rotate, 10, false);
            ds_grid_destroy(Pins);
            ini_close();
        }
    }
}
if (CurrentPage == 19 || CurrentPage == 30)
{
    if (can_press_ui_buttons == 1)
    {
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 252, 82, 308, 135))
        {
            BKArrowHov = 1;
            if (mouse_check_button(mb_left))
            {
                BKArrowHov = 2;
            }
            if (mouse_check_button_pressed(mb_left))
            {
                CurrentPage = 2;
                current_page_alpha = 0;
                audio_play_sound(s_menu_tabs, 10, false);
                ArrowClicksMax = 0;
                ArrowClicks = 0;
                ScrollAmount = 198;
                alarm[0] = 1;
            }
        }
        else
        {
            BKArrowHov = 0;
        }
        if (keyboard_check_pressed(vk_escape) || keyboard_check_pressed(vk_backspace))
        {
            CurrentPage = 2;
            current_page_alpha = 0;
            audio_play_sound(s_ui_x_button, 11, false);
            ArrowClicksMax = 0;
            ArrowClicks = 0;
            ScrollAmount = 198;
            alarm[0] = 1;
        }
    }
}
if (CurrentPage == 4)
{
    if (can_press_ui_buttons == 1)
    {
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 811, 609, 1077, 640))
        {
            CurPlayHov = 1;
            if (mouse_check_button_released(mb_left))
            {
                var file_name = "\misc\challenge\p7000p" + string(global.CurChalNum);
                if (file_exists(working_directory + string(file_name) + "p.png"))
                {
                    global.MenuReturnPage = 4;
                    can_press_ui_buttons = 0;
                    global.total_number_of_pieces = ChalCurQnt;
                    global.puzzle_number_to_play = global.CurChalNum;
                    global.puzzle_max_number_of_pieces = ChalCurQnt;
                    global.current_pack_open = 7000;
                    global.current_puzzle_ghost_image = ChalPrev;
                    var sprW = sprite_get_width(ChalPrev);
                    if (sprW == 1400)
                    {
                        global.level_type = 2;
                    }
                    else if (sprW == 1388)
                    {
                        global.level_type = 1;
                    }
                    else if (sprW == 1880)
                    {
                        global.level_type = 4;
                    }
                    else if (sprW == 1040)
                    {
                        global.level_type = 3;
                    }
                    var spx = 0;
                    var spy = 0;
                    if (ChalCurQnt == 330)
                    {
                        spx = 59;
                        spy = 49;
                    }
                    if (ChalCurQnt == 425)
                    {
                        spx = 51;
                        spy = 49;
                    }
                    if (ChalCurQnt == 640 && global.level_type == 2)
                    {
                        spx = 39;
                        spy = 41;
                    }
                    if (ChalCurQnt == 840)
                    {
                        spx = 35;
                        spy = 33;
                    }
                    if (ChalCurQnt == 1410)
                    {
                        spx = 26;
                        spy = 26;
                    }
                    if (ChalCurQnt == 324)
                    {
                        spx = 53;
                        spy = 53;
                    }
                    if (ChalCurQnt == 400)
                    {
                        spx = 48;
                        spy = 48;
                    }
                    if (ChalCurQnt == 676)
                    {
                        spx = 36;
                        spy = 36;
                    }
                    if (ChalCurQnt == 841)
                    {
                        spx = 30;
                        spy = 30;
                    }
                    if (ChalCurQnt == 455)
                    {
                        spx = 49;
                        spy = 51;
                    }
                    if (ChalCurQnt == 640 && global.level_type == 4)
                    {
                        spx = 42;
                        spy = 40;
                    }
                    if (ChalCurQnt == 810)
                    {
                        spx = 37;
                        spy = 35;
                    }
                    if (ChalCurQnt == 1000)
                    {
                        spx = 33;
                        spy = 31;
                    }
                    if (global.puzzle_sprite_index_to_use != 0)
                    {
                        sprite_delete(global.puzzle_sprite_index_to_use);
                    }
                    global.puzzle_sprite_index_to_use = sprite_add(working_directory + string(file_name) + "p.png", ChalCurQnt, false, false, spx, spy);
                    sprite_collision_mask(global.puzzle_sprite_index_to_use, true, 1, 0, 0, 0, 0, 0, 0);
                    var challenge_cur = "challenge_" + string(global.CurChalNum) + "_attempts";
                    var challenge_attempts = steam_get_stat_int(challenge_cur) + 1;
                    steam_upload_score(challenge_cur, challenge_attempts);
                    steam_set_stat_int(challenge_cur, challenge_attempts);
                    audio_play_sound(s_normal_button_press, 11, false);
                    if (FadeToPuz != 1)
                    {
                        FadeToPuz = 1;
                    }
                }
            }
        }
        else
        {
            CurPlayHov = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 258, 811, 308, 866))
        {
            UpArrowHov = 1;
            if (mouse_check_button(mb_left))
            {
                UpArrowHov = 2;
            }
            if (mouse_check_button_pressed(mb_left))
            {
                if (ArrowClicks > 0)
                {
                    audio_play_sound(s_scroll_arrows, 10, false);
                    ArrowClicks -= 1;
                }
            }
        }
        else
        {
            UpArrowHov = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 258, 961, 308, 1016))
        {
            DnArrowHov = 1;
            if (mouse_check_button(mb_left))
            {
                DnArrowHov = 2;
            }
            if (mouse_check_button_pressed(mb_left))
            {
                if (ArrowClicks < ArrowClicksMax)
                {
                    audio_play_sound(s_scroll_arrows, 10, false);
                    ArrowClicks += 1;
                }
            }
        }
        else
        {
            DnArrowHov = 0;
        }
        if (mouse_y > 750)
        {
            if (mouse_wheel_up())
            {
                if (ArrowClicks > 0)
                {
                    audio_play_sound(s_scroll_arrows, 10, false);
                    ArrowClicks -= 1;
                }
            }
            if (mouse_wheel_down())
            {
                if (ArrowClicks < ArrowClicksMax)
                {
                    audio_play_sound(s_scroll_arrows, 10, false);
                    ArrowClicks += 1;
                }
            }
        }
    }
}
if (CurrentPage == 3)
{
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 258, 82, 308, 137))
    {
        UpArrowHov = 1;
        if (mouse_check_button(mb_left))
        {
            UpArrowHov = 2;
        }
        if (mouse_check_button_pressed(mb_left))
        {
            if (ArrowClicks > 0)
            {
                audio_play_sound(s_scroll_arrows, 10, false);
                ArrowClicks -= 1;
            }
        }
    }
    else
    {
        UpArrowHov = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 258, 232, 308, 287))
    {
        DnArrowHov = 1;
        if (mouse_check_button(mb_left))
        {
            DnArrowHov = 2;
        }
        if (mouse_check_button_pressed(mb_left))
        {
            if (ArrowClicks < ArrowClicksMax)
            {
                audio_play_sound(s_scroll_arrows, 10, false);
                ArrowClicks += 1;
            }
        }
    }
    else
    {
        DnArrowHov = 0;
    }
    if (mouse_wheel_up())
    {
        if (ArrowClicks > 0)
        {
            audio_play_sound(s_scroll_arrows, 10, false);
            ArrowClicks -= 1;
        }
    }
    if (mouse_wheel_down())
    {
        if (ArrowClicks < ArrowClicksMax)
        {
            audio_play_sound(s_scroll_arrows, 10, false);
            ArrowClicks += 1;
        }
    }
}
if (CurrentPage == 5)
{
    if (can_press_ui_buttons == 1)
    {
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 258, 82, 308, 137))
        {
            UpArrowHov = 1;
            if (mouse_check_button(mb_left))
            {
                UpArrowHov = 2;
            }
            if (mouse_check_button_pressed(mb_left))
            {
                if (ArrowClicks > 0)
                {
                    audio_play_sound(s_scroll_arrows, 10, false);
                    ArrowClicks -= 1;
                }
            }
        }
        else
        {
            UpArrowHov = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 258, 232, 308, 287))
        {
            DnArrowHov = 1;
            if (mouse_check_button(mb_left))
            {
                DnArrowHov = 2;
            }
            if (mouse_check_button_pressed(mb_left))
            {
                if (ArrowClicks < ArrowClicksMax)
                {
                    audio_play_sound(s_scroll_arrows, 10, false);
                    ArrowClicks += 1;
                }
            }
        }
        else
        {
            DnArrowHov = 0;
        }
        if (mouse_wheel_up())
        {
            if (ArrowClicks > 0)
            {
                audio_play_sound(s_scroll_arrows, 10, false);
                ArrowClicks -= 1;
            }
        }
        if (mouse_wheel_down())
        {
            if (ArrowClicks < ArrowClicksMax)
            {
                audio_play_sound(s_scroll_arrows, 10, false);
                ArrowClicks += 1;
            }
        }
    }
}
if (CurrentPage == 30)
{
    if (can_press_ui_buttons == 1)
    {
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 336, 29, 371, 64))
        {
            if (CatCheckComplete == 0)
            {
                CatCheckCompleteHov = 1;
            }
            else
            {
                CatCheckCompleteHov = 0;
            }
            if (mouse_check_button_pressed(mb_left))
            {
                if (SbS_C == 0)
                {
                    SbS_C = 1;
                    SbS_I = 0;
                    alarm[2] = 1;
                    with (ob_menu_puz_button)
                    {
                        instance_destroy();
                    }
                    audio_play_sound(s_change_setting, 10, false);
                }
                else
                {
                    SbS_C = 0;
                    alarm[2] = 1;
                    with (ob_menu_puz_button)
                    {
                        instance_destroy();
                    }
                    audio_play_sound(s_change_setting, 10, false);
                }
                ini_open("settings.ini");
                ini_write_real("other", "SbS_C", SbS_C);
                ini_write_real("other", "SbS_I", SbS_I);
                ini_close();
            }
        }
        else
        {
            CatCheckCompleteHov = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 526, 29, 561, 64))
        {
            if (CatCheckIncomplete == 0)
            {
                CatCheckIncompleteHov = 1;
            }
            else
            {
                CatCheckIncompleteHov = 0;
            }
            if (mouse_check_button_pressed(mb_left))
            {
                if (SbS_I == 0)
                {
                    SbS_I = 1;
                    SbS_C = 0;
                    alarm[2] = 1;
                    with (ob_menu_puz_button)
                    {
                        instance_destroy();
                    }
                    audio_play_sound(s_change_setting, 10, false);
                }
                else
                {
                    SbS_I = 0;
                    alarm[2] = 1;
                    with (ob_menu_puz_button)
                    {
                        instance_destroy();
                    }
                    audio_play_sound(s_change_setting, 10, false);
                }
                ini_open("settings.ini");
                ini_write_real("other", "SbS_C", SbS_C);
                ini_write_real("other", "SbS_I", SbS_I);
                ini_close();
            }
        }
        else
        {
            CatCheckIncompleteHov = 0;
        }
        if (ArrowClicksMax > 0)
        {
            if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 258, 182, 308, 261))
            {
                UpArrowHov = 1;
                if (mouse_check_button(mb_left))
                {
                    UpArrowHov = 2;
                }
                if (mouse_check_button_pressed(mb_left))
                {
                    if (ArrowClicks > 0)
                    {
                        audio_play_sound(s_scroll_arrows, 10, false);
                        ArrowClicks -= 1;
                    }
                }
            }
            else
            {
                UpArrowHov = 0;
            }
            if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 258, 332, 308, 411))
            {
                DnArrowHov = 1;
                if (mouse_check_button(mb_left))
                {
                    DnArrowHov = 2;
                }
                if (mouse_check_button_pressed(mb_left))
                {
                    if (ArrowClicks < ArrowClicksMax)
                    {
                        audio_play_sound(s_scroll_arrows, 10, false);
                        ArrowClicks += 1;
                    }
                }
            }
            else
            {
                DnArrowHov = 0;
            }
            if (mouse_wheel_up())
            {
                if (ArrowClicks > 0)
                {
                    audio_play_sound(s_scroll_arrows, 10, false);
                    ArrowClicks -= 1;
                }
            }
            if (mouse_wheel_down())
            {
                if (ArrowClicks < ArrowClicksMax)
                {
                    audio_play_sound(s_scroll_arrows, 10, false);
                    ArrowClicks += 1;
                }
            }
        }
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 435, 72, 506, 105))
    {
        SBSHov = 1;
        if (mouse_check_button_pressed(mb_left))
        {
            if (SbS_60 == 1)
            {
                SbS_60 = 0;
            }
            else
            {
                SbS_60 = 1;
            }
            audio_play_sound(s_change_setting, 10, false);
            alarm[2] = 1;
            ini_open("settings.ini");
            ini_write_real("other", "SbS_60", SbS_60);
            ini_close();
            with (ob_menu_puz_button)
            {
                instance_destroy();
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 72, 580, 105))
    {
        SBSHov = 2;
        if (mouse_check_button_pressed(mb_left))
        {
            if (SbS_112 == 1)
            {
                SbS_112 = 0;
            }
            else
            {
                SbS_112 = 1;
            }
            audio_play_sound(s_change_setting, 10, false);
            alarm[2] = 1;
            ini_open("settings.ini");
            ini_write_real("other", "SbS_112", SbS_112);
            ini_close();
            with (ob_menu_puz_button)
            {
                instance_destroy();
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 583, 72, 654, 105))
    {
        SBSHov = 3;
        if (mouse_check_button_pressed(mb_left))
        {
            if (SbS_153 == 1)
            {
                SbS_153 = 0;
            }
            else
            {
                SbS_153 = 1;
            }
            audio_play_sound(s_change_setting, 10, false);
            alarm[2] = 1;
            ini_open("settings.ini");
            ini_write_real("other", "SbS_153", SbS_153);
            ini_close();
            with (ob_menu_puz_button)
            {
                instance_destroy();
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 657, 72, 728, 105))
    {
        SBSHov = 4;
        if (mouse_check_button_pressed(mb_left))
        {
            if (SbS_220 == 1)
            {
                SbS_220 = 0;
            }
            else
            {
                SbS_220 = 1;
            }
            audio_play_sound(s_change_setting, 10, false);
            alarm[2] = 1;
            ini_open("settings.ini");
            ini_write_real("other", "SbS_220", SbS_220);
            ini_close();
            with (ob_menu_puz_button)
            {
                instance_destroy();
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 731, 72, 802, 105))
    {
        SBSHov = 5;
        if (mouse_check_button_pressed(mb_left))
        {
            if (SbS_350 == 1)
            {
                SbS_350 = 0;
            }
            else
            {
                SbS_350 = 1;
            }
            audio_play_sound(s_change_setting, 10, false);
            alarm[2] = 1;
            ini_open("settings.ini");
            ini_write_real("other", "SbS_350", SbS_350);
            ini_close();
            with (ob_menu_puz_button)
            {
                instance_destroy();
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 961, 72, 1032, 105))
    {
        SBSHov = 6;
        if (mouse_check_button_pressed(mb_left))
        {
            if (SbS_96 == 1)
            {
                SbS_96 = 0;
            }
            else
            {
                SbS_96 = 1;
            }
            audio_play_sound(s_change_setting, 10, false);
            alarm[2] = 1;
            ini_open("settings.ini");
            ini_write_real("other", "SbS_96", SbS_96);
            ini_close();
            with (ob_menu_puz_button)
            {
                instance_destroy();
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1035, 72, 1106, 105))
    {
        SBSHov = 7;
        if (mouse_check_button_pressed(mb_left))
        {
            if (SbS_140 == 1)
            {
                SbS_140 = 0;
            }
            else
            {
                SbS_140 = 1;
            }
            audio_play_sound(s_change_setting, 10, false);
            alarm[2] = 1;
            ini_open("settings.ini");
            ini_write_real("other", "SbS_140", SbS_140);
            ini_close();
            with (ob_menu_puz_button)
            {
                instance_destroy();
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1109, 72, 1180, 105))
    {
        SBSHov = 8;
        if (mouse_check_button_pressed(mb_left))
        {
            if (SbS_216 == 1)
            {
                SbS_216 = 0;
            }
            else
            {
                SbS_216 = 1;
            }
            audio_play_sound(s_change_setting, 10, false);
            alarm[2] = 1;
            ini_open("settings.ini");
            ini_write_real("other", "SbS_216", SbS_216);
            ini_close();
            with (ob_menu_puz_button)
            {
                instance_destroy();
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1183, 72, 1254, 105))
    {
        SBSHov = 9;
        if (mouse_check_button_pressed(mb_left))
        {
            if (SbS_330 == 1)
            {
                SbS_330 = 0;
            }
            else
            {
                SbS_330 = 1;
            }
            audio_play_sound(s_change_setting, 10, false);
            alarm[2] = 1;
            ini_open("settings.ini");
            ini_write_real("other", "SbS_330", SbS_330);
            ini_close();
            with (ob_menu_puz_button)
            {
                instance_destroy();
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1257, 72, 1328, 105))
    {
        SBSHov = 10;
        if (mouse_check_button_pressed(mb_left))
        {
            if (SbS_425 == 1)
            {
                SbS_425 = 0;
            }
            else
            {
                SbS_425 = 1;
            }
            audio_play_sound(s_change_setting, 10, false);
            alarm[2] = 1;
            ini_open("settings.ini");
            ini_write_real("other", "SbS_425", SbS_425);
            ini_close();
            with (ob_menu_puz_button)
            {
                instance_destroy();
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1331, 72, 1402, 105))
    {
        SBSHov = 11;
        if (mouse_check_button_pressed(mb_left))
        {
            if (SbS_640 == 1)
            {
                SbS_640 = 0;
            }
            else
            {
                SbS_640 = 1;
            }
            audio_play_sound(s_change_setting, 10, false);
            alarm[2] = 1;
            ini_open("settings.ini");
            ini_write_real("other", "SbS_640", SbS_640);
            ini_close();
            with (ob_menu_puz_button)
            {
                instance_destroy();
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1405, 72, 1476, 105))
    {
        SBSHov = 12;
        if (mouse_check_button_pressed(mb_left))
        {
            if (SbS_840 == 1)
            {
                SbS_840 = 0;
            }
            else
            {
                SbS_840 = 1;
            }
            audio_play_sound(s_change_setting, 10, false);
            alarm[2] = 1;
            ini_open("settings.ini");
            ini_write_real("other", "SbS_840", SbS_840);
            ini_close();
            with (ob_menu_puz_button)
            {
                instance_destroy();
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1479, 72, 1550, 105))
    {
        SBSHov = 13;
        if (mouse_check_button_pressed(mb_left))
        {
            if (SbS_1410 == 1)
            {
                SbS_1410 = 0;
            }
            else
            {
                SbS_1410 = 1;
            }
            audio_play_sound(s_change_setting, 10, false);
            alarm[2] = 1;
            ini_open("settings.ini");
            ini_write_real("other", "SbS_1410", SbS_1410);
            ini_close();
            with (ob_menu_puz_button)
            {
                instance_destroy();
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 435, 112, 506, 145))
    {
        SBSHov = 14;
        if (mouse_check_button_pressed(mb_left))
        {
            if (SbS_100 == 1)
            {
                SbS_100 = 0;
            }
            else
            {
                SbS_100 = 1;
            }
            audio_play_sound(s_change_setting, 10, false);
            alarm[2] = 1;
            ini_open("settings.ini");
            ini_write_real("other", "SbS_100", SbS_100);
            ini_close();
            with (ob_menu_puz_button)
            {
                instance_destroy();
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 112, 580, 145))
    {
        SBSHov = 15;
        if (mouse_check_button_pressed(mb_left))
        {
            if (SbS_169 == 1)
            {
                SbS_169 = 0;
            }
            else
            {
                SbS_169 = 1;
            }
            audio_play_sound(s_change_setting, 10, false);
            alarm[2] = 1;
            ini_open("settings.ini");
            ini_write_real("other", "SbS_169", SbS_169);
            ini_close();
            with (ob_menu_puz_button)
            {
                instance_destroy();
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 583, 112, 654, 145))
    {
        SBSHov = 16;
        if (mouse_check_button_pressed(mb_left))
        {
            if (SbS_324 == 1)
            {
                SbS_324 = 0;
            }
            else
            {
                SbS_324 = 1;
            }
            audio_play_sound(s_change_setting, 10, false);
            alarm[2] = 1;
            ini_open("settings.ini");
            ini_write_real("other", "SbS_324", SbS_324);
            ini_close();
            with (ob_menu_puz_button)
            {
                instance_destroy();
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 657, 112, 728, 145))
    {
        SBSHov = 17;
        if (mouse_check_button_pressed(mb_left))
        {
            if (SbS_400 == 1)
            {
                SbS_400 = 0;
            }
            else
            {
                SbS_400 = 1;
            }
            audio_play_sound(s_change_setting, 10, false);
            alarm[2] = 1;
            ini_open("settings.ini");
            ini_write_real("other", "SbS_400", SbS_400);
            ini_close();
            with (ob_menu_puz_button)
            {
                instance_destroy();
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 731, 112, 802, 145))
    {
        SBSHov = 18;
        if (mouse_check_button_pressed(mb_left))
        {
            if (SbS_676 == 1)
            {
                SbS_676 = 0;
            }
            else
            {
                SbS_676 = 1;
            }
            audio_play_sound(s_change_setting, 10, false);
            alarm[2] = 1;
            ini_open("settings.ini");
            ini_write_real("other", "SbS_676", SbS_676);
            ini_close();
            with (ob_menu_puz_button)
            {
                instance_destroy();
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 805, 112, 876, 145))
    {
        SBSHov = 19;
        if (mouse_check_button_pressed(mb_left))
        {
            if (SbS_841 == 1)
            {
                SbS_841 = 0;
            }
            else
            {
                SbS_841 = 1;
            }
            audio_play_sound(s_change_setting, 10, false);
            alarm[2] = 1;
            ini_open("settings.ini");
            ini_write_real("other", "SbS_841", SbS_841);
            ini_close();
            with (ob_menu_puz_button)
            {
                instance_destroy();
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1035, 112, 1106, 145))
    {
        SBSHov = 20;
        if (mouse_check_button_pressed(mb_left))
        {
            if (SbS_126 == 1)
            {
                SbS_126 = 0;
            }
            else
            {
                SbS_126 = 1;
            }
            audio_play_sound(s_change_setting, 10, false);
            alarm[2] = 1;
            ini_open("settings.ini");
            ini_write_real("other", "SbS_126", SbS_126);
            ini_close();
            with (ob_menu_puz_button)
            {
                instance_destroy();
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1109, 112, 1180, 145))
    {
        SBSHov = 21;
        if (mouse_check_button_pressed(mb_left))
        {
            if (SbS_168 == 1)
            {
                SbS_168 = 0;
            }
            else
            {
                SbS_168 = 1;
            }
            audio_play_sound(s_change_setting, 10, false);
            alarm[2] = 1;
            ini_open("settings.ini");
            ini_write_real("other", "SbS_168", SbS_168);
            ini_close();
            with (ob_menu_puz_button)
            {
                instance_destroy();
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1183, 112, 1254, 145))
    {
        SBSHov = 22;
        if (mouse_check_button_pressed(mb_left))
        {
            if (SbS_250 == 1)
            {
                SbS_250 = 0;
            }
            else
            {
                SbS_250 = 1;
            }
            audio_play_sound(s_change_setting, 10, false);
            alarm[2] = 1;
            ini_open("settings.ini");
            ini_write_real("other", "SbS_250", SbS_250);
            ini_close();
            with (ob_menu_puz_button)
            {
                instance_destroy();
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1257, 112, 1328, 145))
    {
        SBSHov = 23;
        if (mouse_check_button_pressed(mb_left))
        {
            if (SbS_455 == 1)
            {
                SbS_455 = 0;
            }
            else
            {
                SbS_455 = 1;
            }
            audio_play_sound(s_change_setting, 10, false);
            alarm[2] = 1;
            ini_open("settings.ini");
            ini_write_real("other", "SbS_455", SbS_455);
            ini_close();
            with (ob_menu_puz_button)
            {
                instance_destroy();
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1331, 112, 1402, 145))
    {
        SBSHov = 31;
        if (mouse_check_button_pressed(mb_left))
        {
            if (SbS_640p == 1)
            {
                SbS_640p = 0;
            }
            else
            {
                SbS_640p = 1;
            }
            audio_play_sound(s_change_setting, 10, false);
            alarm[2] = 1;
            ini_open("settings.ini");
            ini_write_real("other", "SbS_640p", SbS_640p);
            ini_close();
            with (ob_menu_puz_button)
            {
                instance_destroy();
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1405, 112, 1476, 145))
    {
        SBSHov = 24;
        if (mouse_check_button_pressed(mb_left))
        {
            if (SbS_810 == 1)
            {
                SbS_810 = 0;
            }
            else
            {
                SbS_810 = 1;
            }
            audio_play_sound(s_change_setting, 10, false);
            alarm[2] = 1;
            ini_open("settings.ini");
            ini_write_real("other", "SbS_810", SbS_810);
            ini_close();
            with (ob_menu_puz_button)
            {
                instance_destroy();
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1479, 112, 1550, 145))
    {
        SBSHov = 25;
        if (mouse_check_button_pressed(mb_left))
        {
            if (SbS_1000 == 1)
            {
                SbS_1000 = 0;
            }
            else
            {
                SbS_1000 = 1;
            }
            audio_play_sound(s_change_setting, 10, false);
            alarm[2] = 1;
            ini_open("settings.ini");
            ini_write_real("other", "SbS_1000", SbS_1000);
            ini_close();
            with (ob_menu_puz_button)
            {
                instance_destroy();
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 332, 75, 422, 102))
    {
        SBSHov = 26;
        if (mouse_check_button_pressed(mb_left))
        {
            audio_play_sound(s_change_setting, 10, false);
            with (ob_menu_puz_button)
            {
                instance_destroy();
            }
            alarm[2] = 1;
            ini_open("settings.ini");
            SbS_60 = 1;
            SbS_112 = 1;
            SbS_153 = 1;
            SbS_220 = 1;
            SbS_350 = 1;
            ini_write_real("other", "SbS_60", 1);
            ini_write_real("other", "SbS_112", 1);
            ini_write_real("other", "SbS_153", 1);
            ini_write_real("other", "SbS_220", 1);
            ini_write_real("other", "SbS_350", 1);
            SbS_96 = 0;
            SbS_140 = 0;
            SbS_216 = 0;
            SbS_330 = 0;
            SbS_425 = 0;
            SbS_640 = 0;
            SbS_840 = 0;
            SbS_1410 = 0;
            ini_write_real("other", "SbS_96", 0);
            ini_write_real("other", "SbS_140", 0);
            ini_write_real("other", "SbS_216", 0);
            ini_write_real("other", "SbS_330", 0);
            ini_write_real("other", "SbS_425", 0);
            ini_write_real("other", "SbS_640", 0);
            ini_write_real("other", "SbS_840", 0);
            ini_write_real("other", "SbS_1410", 0);
            SbS_100 = 0;
            SbS_169 = 0;
            SbS_324 = 0;
            SbS_400 = 0;
            SbS_676 = 0;
            SbS_841 = 0;
            ini_write_real("other", "SbS_100", 0);
            ini_write_real("other", "SbS_169", 0);
            ini_write_real("other", "SbS_324", 0);
            ini_write_real("other", "SbS_400", 0);
            ini_write_real("other", "SbS_676", 0);
            ini_write_real("other", "SbS_841", 0);
            SbS_126 = 0;
            SbS_168 = 0;
            SbS_250 = 0;
            SbS_455 = 0;
            SbS_640p = 0;
            SbS_810 = 0;
            SbS_1000 = 0;
            ini_write_real("other", "SbS_126", 0);
            ini_write_real("other", "SbS_168", 0);
            ini_write_real("other", "SbS_250", 0);
            ini_write_real("other", "SbS_455", 0);
            ini_write_real("other", "SbS_640p", 0);
            ini_write_real("other", "SbS_810", 0);
            ini_write_real("other", "SbS_1000", 0);
            ini_close();
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 819, 75, 952, 102))
    {
        SBSHov = 27;
        if (mouse_check_button_pressed(mb_left))
        {
            audio_play_sound(s_change_setting, 10, false);
            with (ob_menu_puz_button)
            {
                instance_destroy();
            }
            alarm[2] = 1;
            ini_open("settings.ini");
            SbS_60 = 0;
            SbS_112 = 0;
            SbS_153 = 0;
            SbS_220 = 0;
            SbS_350 = 0;
            ini_write_real("other", "SbS_60", 0);
            ini_write_real("other", "SbS_112", 0);
            ini_write_real("other", "SbS_153", 0);
            ini_write_real("other", "SbS_220", 0);
            ini_write_real("other", "SbS_350", 0);
            SbS_96 = 1;
            SbS_140 = 1;
            SbS_216 = 1;
            SbS_330 = 1;
            SbS_425 = 1;
            SbS_640 = 1;
            SbS_840 = 1;
            SbS_1410 = 1;
            ini_write_real("other", "SbS_96", 1);
            ini_write_real("other", "SbS_140", 1);
            ini_write_real("other", "SbS_216", 1);
            ini_write_real("other", "SbS_330", 1);
            ini_write_real("other", "SbS_425", 1);
            ini_write_real("other", "SbS_640", 1);
            ini_write_real("other", "SbS_840", 1);
            ini_write_real("other", "SbS_1410", 1);
            SbS_100 = 0;
            SbS_169 = 0;
            SbS_324 = 0;
            SbS_400 = 0;
            SbS_676 = 0;
            SbS_841 = 0;
            ini_write_real("other", "SbS_100", 0);
            ini_write_real("other", "SbS_169", 0);
            ini_write_real("other", "SbS_324", 0);
            ini_write_real("other", "SbS_400", 0);
            ini_write_real("other", "SbS_676", 0);
            ini_write_real("other", "SbS_841", 0);
            SbS_126 = 0;
            SbS_168 = 0;
            SbS_250 = 0;
            SbS_455 = 0;
            SbS_640p = 0;
            SbS_810 = 0;
            SbS_1000 = 0;
            ini_write_real("other", "SbS_126", 0);
            ini_write_real("other", "SbS_168", 0);
            ini_write_real("other", "SbS_250", 0);
            ini_write_real("other", "SbS_455", 0);
            ini_write_real("other", "SbS_640p", 0);
            ini_write_real("other", "SbS_810", 0);
            ini_write_real("other", "SbS_1000", 0);
            ini_close();
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 332, 116, 422, 143))
    {
        SBSHov = 28;
        if (mouse_check_button_pressed(mb_left))
        {
            audio_play_sound(s_change_setting, 10, false);
            with (ob_menu_puz_button)
            {
                instance_destroy();
            }
            alarm[2] = 1;
            ini_open("settings.ini");
            SbS_60 = 0;
            SbS_112 = 0;
            SbS_153 = 0;
            SbS_220 = 0;
            SbS_350 = 0;
            ini_write_real("other", "SbS_60", 0);
            ini_write_real("other", "SbS_112", 0);
            ini_write_real("other", "SbS_153", 0);
            ini_write_real("other", "SbS_220", 0);
            ini_write_real("other", "SbS_350", 0);
            SbS_96 = 0;
            SbS_140 = 0;
            SbS_216 = 0;
            SbS_330 = 0;
            SbS_425 = 0;
            SbS_640 = 0;
            SbS_840 = 0;
            SbS_1410 = 0;
            ini_write_real("other", "SbS_96", 0);
            ini_write_real("other", "SbS_140", 0);
            ini_write_real("other", "SbS_216", 0);
            ini_write_real("other", "SbS_330", 0);
            ini_write_real("other", "SbS_425", 0);
            ini_write_real("other", "SbS_640", 0);
            ini_write_real("other", "SbS_840", 0);
            ini_write_real("other", "SbS_1410", 0);
            SbS_100 = 1;
            SbS_169 = 1;
            SbS_324 = 1;
            SbS_400 = 1;
            SbS_676 = 1;
            SbS_841 = 1;
            ini_write_real("other", "SbS_100", 1);
            ini_write_real("other", "SbS_169", 1);
            ini_write_real("other", "SbS_324", 1);
            ini_write_real("other", "SbS_400", 1);
            ini_write_real("other", "SbS_676", 1);
            ini_write_real("other", "SbS_841", 1);
            SbS_126 = 0;
            SbS_168 = 0;
            SbS_250 = 0;
            SbS_455 = 0;
            SbS_640p = 0;
            SbS_810 = 0;
            SbS_1000 = 0;
            ini_write_real("other", "SbS_126", 0);
            ini_write_real("other", "SbS_168", 0);
            ini_write_real("other", "SbS_250", 0);
            ini_write_real("other", "SbS_455", 0);
            ini_write_real("other", "SbS_640p", 0);
            ini_write_real("other", "SbS_810", 0);
            ini_write_real("other", "SbS_1000", 0);
            ini_close();
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 888, 116, 1026, 143))
    {
        SBSHov = 29;
        if (mouse_check_button_pressed(mb_left))
        {
            audio_play_sound(s_change_setting, 10, false);
            with (ob_menu_puz_button)
            {
                instance_destroy();
            }
            alarm[2] = 1;
            ini_open("settings.ini");
            SbS_60 = 0;
            SbS_112 = 0;
            SbS_153 = 0;
            SbS_220 = 0;
            SbS_350 = 0;
            ini_write_real("other", "SbS_60", 0);
            ini_write_real("other", "SbS_112", 0);
            ini_write_real("other", "SbS_153", 0);
            ini_write_real("other", "SbS_220", 0);
            ini_write_real("other", "SbS_350", 0);
            SbS_96 = 0;
            SbS_140 = 0;
            SbS_216 = 0;
            SbS_330 = 0;
            SbS_425 = 0;
            SbS_640 = 0;
            SbS_840 = 0;
            SbS_1410 = 0;
            ini_write_real("other", "SbS_96", 0);
            ini_write_real("other", "SbS_140", 0);
            ini_write_real("other", "SbS_216", 0);
            ini_write_real("other", "SbS_330", 0);
            ini_write_real("other", "SbS_425", 0);
            ini_write_real("other", "SbS_640", 0);
            ini_write_real("other", "SbS_840", 0);
            ini_write_real("other", "SbS_1410", 0);
            SbS_100 = 0;
            SbS_169 = 0;
            SbS_324 = 0;
            SbS_400 = 0;
            SbS_676 = 0;
            SbS_841 = 0;
            ini_write_real("other", "SbS_100", 0);
            ini_write_real("other", "SbS_169", 0);
            ini_write_real("other", "SbS_324", 0);
            ini_write_real("other", "SbS_400", 0);
            ini_write_real("other", "SbS_676", 0);
            ini_write_real("other", "SbS_841", 0);
            SbS_126 = 1;
            SbS_168 = 1;
            SbS_250 = 1;
            SbS_455 = 1;
            SbS_640p = 1;
            SbS_810 = 1;
            SbS_1000 = 1;
            ini_write_real("other", "SbS_126", 1);
            ini_write_real("other", "SbS_168", 1);
            ini_write_real("other", "SbS_250", 1);
            ini_write_real("other", "SbS_455", 1);
            ini_write_real("other", "SbS_640p", 1);
            ini_write_real("other", "SbS_810", 1);
            ini_write_real("other", "SbS_1000", 1);
            ini_close();
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1392, 36, 1545, 58))
    {
        SBSHov = 30;
        if (mouse_check_button_pressed(mb_left))
        {
            audio_play_sound(s_change_setting, 10, false);
            with (ob_menu_puz_button)
            {
                instance_destroy();
            }
            alarm[2] = 1;
            ini_open("settings.ini");
            SbS_60 = 0;
            SbS_112 = 0;
            SbS_153 = 0;
            SbS_220 = 0;
            SbS_350 = 0;
            ini_write_real("other", "SbS_60", 0);
            ini_write_real("other", "SbS_112", 0);
            ini_write_real("other", "SbS_153", 0);
            ini_write_real("other", "SbS_220", 0);
            ini_write_real("other", "SbS_350", 0);
            SbS_96 = 0;
            SbS_140 = 0;
            SbS_216 = 0;
            SbS_330 = 0;
            SbS_425 = 0;
            SbS_640 = 0;
            SbS_840 = 0;
            SbS_1410 = 0;
            ini_write_real("other", "SbS_96", 0);
            ini_write_real("other", "SbS_140", 0);
            ini_write_real("other", "SbS_216", 0);
            ini_write_real("other", "SbS_330", 0);
            ini_write_real("other", "SbS_425", 0);
            ini_write_real("other", "SbS_640", 0);
            ini_write_real("other", "SbS_840", 0);
            ini_write_real("other", "SbS_1410", 0);
            SbS_100 = 0;
            SbS_169 = 0;
            SbS_324 = 0;
            SbS_400 = 0;
            SbS_676 = 0;
            SbS_841 = 0;
            ini_write_real("other", "SbS_100", 0);
            ini_write_real("other", "SbS_169", 0);
            ini_write_real("other", "SbS_324", 0);
            ini_write_real("other", "SbS_400", 0);
            ini_write_real("other", "SbS_676", 0);
            ini_write_real("other", "SbS_841", 0);
            SbS_126 = 0;
            SbS_168 = 0;
            SbS_250 = 0;
            SbS_455 = 0;
            SbS_640p = 0;
            SbS_810 = 0;
            SbS_1000 = 0;
            ini_write_real("other", "SbS_126", 0);
            ini_write_real("other", "SbS_168", 0);
            ini_write_real("other", "SbS_250", 0);
            ini_write_real("other", "SbS_455", 0);
            ini_write_real("other", "SbS_640p", 0);
            ini_write_real("other", "SbS_810", 0);
            ini_write_real("other", "SbS_1000", 0);
            ini_close();
        }
    }
    else
    {
        SBSHov = 0;
    }
}
if (CurrentPage == 2)
{
    if (can_press_ui_buttons == 1)
    {
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 1447, 36, 1618, 58))
        {
            LibSBSHov = 1;
            if (mouse_check_button_pressed(mb_left))
            {
                audio_play_sound(s_change_tray, 10, false);
                CurrentPage = 30;
                global.MenuReturnPage = 30;
                alarm[2] = 1;
            }
        }
        else
        {
            LibSBSHov = 0;
        }
    }
}
if (CurrentPage == 2 || CurrentPage == 6)
{
    if (can_press_ui_buttons == 1)
    {
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 258, 25, 308, 80))
        {
            UpArrowHov = 1;
            if (mouse_check_button(mb_left))
            {
                UpArrowHov = 2;
            }
            if (mouse_check_button_pressed(mb_left))
            {
                if (ArrowClicks > 0)
                {
                    audio_play_sound(s_scroll_arrows, 10, false);
                    ArrowClicks -= 1;
                }
            }
        }
        else
        {
            UpArrowHov = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 258, 110, 308, 165))
        {
            DnArrowHov = 1;
            if (mouse_check_button(mb_left))
            {
                DnArrowHov = 2;
            }
            if (mouse_check_button_pressed(mb_left))
            {
                if (ArrowClicks < ArrowClicksMax)
                {
                    ArrowClicks += 1;
                    audio_play_sound(s_scroll_arrows, 10, false);
                }
            }
        }
        else
        {
            DnArrowHov = 0;
        }
        if (mouse_wheel_up())
        {
            if (ArrowClicks > 0)
            {
                ArrowClicks -= 1;
                audio_play_sound(s_scroll_arrows, 10, false);
            }
        }
        if (mouse_wheel_down())
        {
            if (ArrowClicks < ArrowClicksMax)
            {
                ArrowClicks += 1;
                audio_play_sound(s_scroll_arrows, 10, false);
            }
        }
        if (CurrentPage == 2)
        {
            if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 491, 29, 526, 64))
            {
                if (CatCheckComplete == 0)
                {
                    CatCheckCompleteHov = 1;
                }
                else
                {
                    CatCheckCompleteHov = 0;
                }
                if (mouse_check_button_pressed(mb_left))
                {
                    if (CatCheckComplete == 0)
                    {
                        CatCheckComplete = 1;
                        CatCheckIncomplete = 0;
                        CatCheckInProgress = 0;
                        with (ob_catalogue_pack_button)
                        {
                            instance_destroy();
                        }
                        alarm[0] = 1;
                        audio_play_sound(s_change_setting, 10, false);
                    }
                    else
                    {
                        CatCheckComplete = 0;
                        with (ob_catalogue_pack_button)
                        {
                            instance_destroy();
                        }
                        alarm[0] = 1;
                        audio_play_sound(s_change_setting, 10, false);
                    }
                    ini_open("settings.ini");
                    ini_write_real("other", "o923", CatCheckComplete);
                    ini_write_real("other", "o936", CatCheckIncomplete);
                    ini_write_real("other", "o941", CatCheckInProgress);
                    ini_close();
                }
            }
            else
            {
                CatCheckCompleteHov = 0;
            }
        }
        if (CurrentPage == 2)
        {
            if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 681, 29, 716, 64))
            {
                if (CatCheckIncomplete == 0)
                {
                    CatCheckIncompleteHov = 1;
                }
                else
                {
                    CatCheckIncompleteHov = 0;
                }
                if (mouse_check_button_pressed(mb_left))
                {
                    if (CatCheckIncomplete == 0)
                    {
                        CatCheckIncomplete = 1;
                        CatCheckComplete = 0;
                        with (ob_catalogue_pack_button)
                        {
                            instance_destroy();
                        }
                        alarm[0] = 1;
                        audio_play_sound(s_change_setting, 10, false);
                    }
                    else
                    {
                        CatCheckIncomplete = 0;
                        with (ob_catalogue_pack_button)
                        {
                            instance_destroy();
                        }
                        alarm[0] = 1;
                        audio_play_sound(s_change_setting, 10, false);
                    }
                    ini_open("settings.ini");
                    ini_write_real("other", "o923", CatCheckComplete);
                    ini_write_real("other", "o936", CatCheckIncomplete);
                    ini_close();
                }
            }
            else
            {
                CatCheckIncompleteHov = 0;
            }
        }
        if (CurrentPage == 6)
        {
            if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 491, 29, 526, 64))
            {
                if (CatCheck800 == 0)
                {
                    CatCheck800Hov = 1;
                }
                else
                {
                    CatCheck800Hov = 0;
                }
                if (mouse_check_button_pressed(mb_left))
                {
                    if (CurrentPage == 6)
                    {
                        if (CatCheck800 == 0)
                        {
                            CatCheck800 = 1;
                            with (ob_catalogue_pack_button)
                            {
                                instance_destroy();
                            }
                            alarm[0] = 1;
                            audio_play_sound(s_change_setting, 10, false);
                        }
                        else
                        {
                            CatCheck800 = 0;
                            with (ob_catalogue_pack_button)
                            {
                                instance_destroy();
                            }
                            alarm[0] = 1;
                            audio_play_sound(s_change_setting, 10, false);
                        }
                    }
                }
            }
            else
            {
                CatCheck800Hov = 0;
            }
        }
        if (CurrentPage == 6)
        {
            if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 681, 29, 716, 64))
            {
                if (CatCheckFree == 0)
                {
                    CatCheckFreeHov = 1;
                }
                else
                {
                    CatCheckFreeHov = 0;
                }
                if (mouse_check_button_pressed(mb_left))
                {
                    if (CatCheckFree == 0)
                    {
                        CatCheckFree = 1;
                        with (ob_catalogue_pack_button)
                        {
                            instance_destroy();
                        }
                        alarm[0] = 1;
                        audio_play_sound(s_change_setting, 10, false);
                    }
                    else
                    {
                        CatCheckFree = 0;
                        with (ob_catalogue_pack_button)
                        {
                            instance_destroy();
                        }
                        alarm[0] = 1;
                        audio_play_sound(s_change_setting, 10, false);
                    }
                }
            }
            else
            {
                CatCheckFreeHov = 0;
            }
        }
        if (CurrentPage == 2)
        {
            if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 871, 29, 906, 64))
            {
                if (CatCheckInProgress == 0)
                {
                    CatCheckInProgressHov = 1;
                }
                else
                {
                    CatCheckInProgressHov = 0;
                }
                if (mouse_check_button_pressed(mb_left))
                {
                    if (CatCheckInProgress == 0)
                    {
                        CatCheckInProgress = 1;
                        CatCheckComplete = 0;
                        with (ob_catalogue_pack_button)
                        {
                            instance_destroy();
                        }
                        alarm[0] = 1;
                        audio_play_sound(s_change_setting, 10, false);
                    }
                    else
                    {
                        CatCheckInProgress = 0;
                        with (ob_catalogue_pack_button)
                        {
                            instance_destroy();
                        }
                        alarm[0] = 1;
                        audio_play_sound(s_change_setting, 10, false);
                    }
                    ini_open("settings.ini");
                    ini_write_real("other", "o941", CatCheckInProgress);
                    ini_write_real("other", "o923", CatCheckComplete);
                    ini_close();
                }
            }
            else
            {
                CatCheckInProgressHov = 0;
            }
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 241, 190, 451, 227))
        {
            if (CatFilter != 0)
            {
                CatF1hov = 1;
            }
            else
            {
                CatF1hov = 0;
            }
            if (mouse_check_button_pressed(mb_left))
            {
                if (CatFilter != 0)
                {
                    CatFilter = 0;
                    with (ob_catalogue_pack_button)
                    {
                        instance_destroy();
                    }
                    alarm[0] = 1;
                    audio_play_sound(s_menu_tabs, 10, false);
                }
                ini_open("settings.ini");
                ini_write_real("other", "o921", CatFilter);
                ini_close();
            }
        }
        else
        {
            CatF1hov = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 241, 233, 451, 270))
        {
            if (CatFilter != 1)
            {
                CatF2hov = 1;
            }
            else
            {
                CatF2hov = 0;
            }
            if (mouse_check_button_pressed(mb_left))
            {
                if (CatFilter != 1)
                {
                    CatFilter = 1;
                    with (ob_catalogue_pack_button)
                    {
                        instance_destroy();
                    }
                    alarm[0] = 1;
                    audio_play_sound(s_menu_tabs, 10, false);
                }
                ini_open("settings.ini");
                ini_write_real("other", "o921", CatFilter);
                ini_close();
            }
        }
        else
        {
            CatF2hov = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 241, 276, 451, 313))
        {
            if (CatFilter != 2)
            {
                CatF3hov = 1;
            }
            else
            {
                CatF3hov = 0;
            }
            if (mouse_check_button_pressed(mb_left))
            {
                if (CatFilter != 2)
                {
                    CatFilter = 2;
                    with (ob_catalogue_pack_button)
                    {
                        instance_destroy();
                    }
                    alarm[0] = 1;
                    audio_play_sound(s_menu_tabs, 10, false);
                }
                ini_open("settings.ini");
                ini_write_real("other", "o921", CatFilter);
                ini_close();
            }
        }
        else
        {
            CatF3hov = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 241, 319, 451, 356))
        {
            if (CatFilter != 3)
            {
                CatF4hov = 1;
            }
            else
            {
                CatF4hov = 0;
            }
            if (mouse_check_button_pressed(mb_left))
            {
                if (CatFilter != 3)
                {
                    CatFilter = 3;
                    with (ob_catalogue_pack_button)
                    {
                        instance_destroy();
                    }
                    alarm[0] = 1;
                    audio_play_sound(s_menu_tabs, 10, false);
                }
                ini_open("settings.ini");
                ini_write_real("other", "o921", CatFilter);
                ini_close();
            }
        }
        else
        {
            CatF4hov = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 241, 362, 451, 399))
        {
            if (CatFilter != 4)
            {
                CatF5hov = 1;
            }
            else
            {
                CatF5hov = 0;
            }
            if (mouse_check_button_pressed(mb_left))
            {
                if (CatFilter != 4)
                {
                    CatFilter = 4;
                    with (ob_catalogue_pack_button)
                    {
                        instance_destroy();
                    }
                    alarm[0] = 1;
                    audio_play_sound(s_menu_tabs, 10, false);
                }
                ini_open("settings.ini");
                ini_write_real("other", "o921", CatFilter);
                ini_close();
            }
        }
        else
        {
            CatF5hov = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 241, 405, 451, 442))
        {
            if (CatFilter != 5)
            {
                CatF6hov = 1;
            }
            else
            {
                CatF6hov = 0;
            }
            if (mouse_check_button_pressed(mb_left))
            {
                if (CatFilter != 5)
                {
                    CatFilter = 5;
                    with (ob_catalogue_pack_button)
                    {
                        instance_destroy();
                    }
                    alarm[0] = 1;
                    audio_play_sound(s_menu_tabs, 10, false);
                }
                ini_open("settings.ini");
                ini_write_real("other", "o921", CatFilter);
                ini_close();
            }
        }
        else
        {
            CatF6hov = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 241, 448, 451, 485))
        {
            if (CatFilter != 6)
            {
                CatF7hov = 1;
            }
            else
            {
                CatF7hov = 0;
            }
            if (mouse_check_button_pressed(mb_left))
            {
                if (CatFilter != 6)
                {
                    CatFilter = 6;
                    with (ob_catalogue_pack_button)
                    {
                        instance_destroy();
                    }
                    alarm[0] = 1;
                    audio_play_sound(s_menu_tabs, 10, false);
                }
                ini_open("settings.ini");
                ini_write_real("other", "o921", CatFilter);
                ini_close();
            }
        }
        else
        {
            CatF7hov = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 241, 491, 451, 528))
        {
            if (CatFilter != 7)
            {
                CatF8hov = 1;
            }
            else
            {
                CatF8hov = 0;
            }
            if (mouse_check_button_pressed(mb_left))
            {
                if (CatFilter != 7)
                {
                    CatFilter = 7;
                    with (ob_catalogue_pack_button)
                    {
                        instance_destroy();
                    }
                    alarm[0] = 1;
                    audio_play_sound(s_menu_tabs, 10, false);
                }
                ini_open("settings.ini");
                ini_write_real("other", "o921", CatFilter);
                ini_close();
            }
        }
        else
        {
            CatF8hov = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 241, 534, 451, 571))
        {
            if (CatFilter != 8)
            {
                CatF9hov = 1;
            }
            else
            {
                CatF9hov = 0;
            }
            if (mouse_check_button_pressed(mb_left))
            {
                if (CatFilter != 8)
                {
                    CatFilter = 8;
                    with (ob_catalogue_pack_button)
                    {
                        instance_destroy();
                    }
                    alarm[0] = 1;
                    audio_play_sound(s_menu_tabs, 10, false);
                }
                ini_open("settings.ini");
                ini_write_real("other", "o921", CatFilter);
                ini_close();
            }
        }
        else
        {
            CatF9hov = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 241, 577, 451, 614))
        {
            if (CatFilter != 9)
            {
                CatF10hov = 1;
            }
            else
            {
                CatF10hov = 0;
            }
            if (mouse_check_button_pressed(mb_left))
            {
                if (CatFilter != 9)
                {
                    CatFilter = 9;
                    with (ob_catalogue_pack_button)
                    {
                        instance_destroy();
                    }
                    alarm[0] = 1;
                    audio_play_sound(s_menu_tabs, 10, false);
                }
                ini_open("settings.ini");
                ini_write_real("other", "o921", CatFilter);
                ini_close();
            }
        }
        else
        {
            CatF10hov = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 241, 620, 451, 657))
        {
            if (CatFilter != 10)
            {
                CatF11hov = 1;
            }
            else
            {
                CatF11hov = 0;
            }
            if (mouse_check_button_pressed(mb_left))
            {
                if (CatFilter != 10)
                {
                    CatFilter = 10;
                    with (ob_catalogue_pack_button)
                    {
                        instance_destroy();
                    }
                    alarm[0] = 1;
                    audio_play_sound(s_menu_tabs, 10, false);
                }
                ini_open("settings.ini");
                ini_write_real("other", "o921", CatFilter);
                ini_close();
            }
        }
        else
        {
            CatF11hov = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 241, 663, 451, 700))
        {
            if (CatFilter != 11)
            {
                CatF12hov = 1;
            }
            else
            {
                CatF12hov = 0;
            }
            if (mouse_check_button_pressed(mb_left))
            {
                if (CatFilter != 11)
                {
                    CatFilter = 11;
                    with (ob_catalogue_pack_button)
                    {
                        instance_destroy();
                    }
                    alarm[0] = 1;
                    audio_play_sound(s_menu_tabs, 10, false);
                }
                ini_open("settings.ini");
                ini_write_real("other", "o921", CatFilter);
                ini_close();
            }
        }
        else
        {
            CatF12hov = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 241, 706, 451, 743))
        {
            if (CatFilter != 12)
            {
                CatF13hov = 1;
            }
            else
            {
                CatF13hov = 0;
            }
            if (mouse_check_button_pressed(mb_left))
            {
                if (CatFilter != 12)
                {
                    CatFilter = 12;
                    with (ob_catalogue_pack_button)
                    {
                        instance_destroy();
                    }
                    alarm[0] = 1;
                    audio_play_sound(s_menu_tabs, 10, false);
                }
                ini_open("settings.ini");
                ini_write_real("other", "o921", CatFilter);
                ini_close();
            }
        }
        else
        {
            CatF13hov = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 241, 749, 451, 786))
        {
            if (CatFilter != 13)
            {
                CatF14hov = 1;
            }
            else
            {
                CatF14hov = 0;
            }
            if (mouse_check_button_pressed(mb_left))
            {
                if (CatFilter != 13)
                {
                    CatFilter = 13;
                    with (ob_catalogue_pack_button)
                    {
                        instance_destroy();
                    }
                    alarm[0] = 1;
                    audio_play_sound(s_menu_tabs, 10, false);
                }
                ini_open("settings.ini");
                ini_write_real("other", "o921", CatFilter);
                ini_close();
            }
        }
        else
        {
            CatF14hov = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 241, 792, 451, 829))
        {
            if (CatFilter != 14)
            {
                CatF15hov = 1;
            }
            else
            {
                CatF15hov = 0;
            }
            if (mouse_check_button_pressed(mb_left))
            {
                if (CatFilter != 14)
                {
                    CatFilter = 14;
                    with (ob_catalogue_pack_button)
                    {
                        instance_destroy();
                    }
                    alarm[0] = 1;
                    audio_play_sound(s_menu_tabs, 10, false);
                }
                ini_open("settings.ini");
                ini_write_real("other", "o921", CatFilter);
                ini_close();
            }
        }
        else
        {
            CatF15hov = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 241, 835, 451, 872))
        {
            if (CatFilter != 15)
            {
                CatF16hov = 1;
            }
            else
            {
                CatF16hov = 0;
            }
            if (mouse_check_button_pressed(mb_left))
            {
                if (CatFilter != 15)
                {
                    CatFilter = 15;
                    with (ob_catalogue_pack_button)
                    {
                        instance_destroy();
                    }
                    alarm[0] = 1;
                    audio_play_sound(s_menu_tabs, 10, false);
                }
                ini_open("settings.ini");
                ini_write_real("other", "o921", CatFilter);
                ini_close();
            }
        }
        else
        {
            CatF16hov = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 241, 878, 451, 915))
        {
            if (CatFilter != 16)
            {
                CatF17hov = 1;
            }
            else
            {
                CatF17hov = 0;
            }
            if (mouse_check_button_pressed(mb_left))
            {
                if (CatFilter != 16)
                {
                    CatFilter = 16;
                    with (ob_catalogue_pack_button)
                    {
                        instance_destroy();
                    }
                    alarm[0] = 1;
                    audio_play_sound(s_menu_tabs, 10, false);
                }
                ini_open("settings.ini");
                ini_write_real("other", "o921", CatFilter);
                ini_close();
            }
        }
        else
        {
            CatF17hov = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 241, 921, 451, 958))
        {
            if (CatFilter != 17)
            {
                CatF18hov = 1;
            }
            else
            {
                CatF18hov = 0;
            }
            if (mouse_check_button_pressed(mb_left))
            {
                if (CatFilter != 17)
                {
                    CatFilter = 17;
                    with (ob_catalogue_pack_button)
                    {
                        instance_destroy();
                    }
                    alarm[0] = 1;
                    audio_play_sound(s_menu_tabs, 10, false);
                }
                ini_open("settings.ini");
                ini_write_real("other", "o921", CatFilter);
                ini_close();
            }
        }
        else
        {
            CatF18hov = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 241, 964, 451, 1001))
        {
            if (CatFilter != 18)
            {
                CatF19hov = 1;
            }
            else
            {
                CatF19hov = 0;
            }
            if (mouse_check_button_pressed(mb_left))
            {
                if (CatFilter != 18)
                {
                    CatFilter = 18;
                    with (ob_catalogue_pack_button)
                    {
                        instance_destroy();
                    }
                    alarm[0] = 1;
                    audio_play_sound(s_menu_tabs, 10, false);
                }
                ini_open("settings.ini");
                ini_write_real("other", "o921", CatFilter);
                ini_close();
            }
        }
        else
        {
            CatF19hov = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 241, 1007, 451, 1044))
        {
            if (CatFilter != 19)
            {
                CatF20hov = 1;
            }
            else
            {
                CatF20hov = 0;
            }
            if (mouse_check_button_pressed(mb_left))
            {
                if (CatFilter != 19)
                {
                    CatFilter = 19;
                    with (ob_catalogue_pack_button)
                    {
                        instance_destroy();
                    }
                    alarm[0] = 1;
                    audio_play_sound(s_menu_tabs, 10, false);
                }
                ini_open("settings.ini");
                ini_write_real("other", "o921", CatFilter);
                ini_close();
            }
        }
        else
        {
            CatF20hov = 0;
        }
    }
}
if (CurrentPage == 17)
{
    if (can_press_ui_buttons == 1)
    {
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 258, 90, 308, 145))
        {
            UpArrowHov = 1;
            if (mouse_check_button(mb_left))
            {
                UpArrowHov = 2;
            }
            if (mouse_check_button_pressed(mb_left))
            {
                if (ArrowClicks > 0)
                {
                    audio_play_sound(s_scroll_arrows, 10, false);
                    ArrowClicks -= 1;
                }
            }
        }
        else
        {
            UpArrowHov = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 258, 232, 308, 287))
        {
            DnArrowHov = 1;
            if (mouse_check_button(mb_left))
            {
                DnArrowHov = 2;
            }
            if (mouse_check_button_pressed(mb_left))
            {
                if (ArrowClicks < ArrowClicksMax)
                {
                    audio_play_sound(s_scroll_arrows, 10, false);
                    ArrowClicks += 1;
                }
            }
        }
        else
        {
            DnArrowHov = 0;
        }
        if (mouse_wheel_up())
        {
            if (ArrowClicks > 0)
            {
                audio_play_sound(s_scroll_arrows, 10, false);
                ArrowClicks -= 1;
            }
        }
        if (mouse_wheel_down())
        {
            if (ArrowClicks < ArrowClicksMax)
            {
                audio_play_sound(s_scroll_arrows, 10, false);
                ArrowClicks += 1;
            }
        }
    }
}
if (CurrentPage == 8)
{
    if (can_press_ui_buttons == 1)
    {
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 84, 1411, 115))
        {
            ShadHovY = 84;
            SetHov1 = 1;
            if (mouse_check_button_released(mb_left))
            {
                if (steam_user_owns_dlc(1952658) && steam_user_installed_dlc(1952658))
                {
                    CurrentPage = 20;
                    audio_play_sound(s_menu_tabs, 10, false);
                    current_page_alpha = 0;
                    ArrowClicksMax = 0;
                    ArrowClicks = 0;
                    ScrollAmount = 220;
                    var total_buttons = 10;
                    var buttons_per_row = 3;
                    var horizontal_spacing = 350;
                    var vertical_spacing = 220;
                    var initial_xpos = 468;
                    var initial_ypos = 86;
                    var item_num = 0;
                    var max_packs = 10;
                    var created_buttons = 0;
                    while (item_num < max_packs && created_buttons < total_buttons)
                    {
                        var can_make_button = 1;
                        if (can_make_button)
                        {
                            var row = created_buttons div buttons_per_row;
                            var col = created_buttons % buttons_per_row;
                            var xpos = initial_xpos + (col * horizontal_spacing);
                            var ypos = initial_ypos + (row * vertical_spacing);
                            var ThemeBut = instance_create(xpos, ypos, ob_item_buttons);
                            ThemeBut.item_num = item_num;
                            ThemeBut.item_type = 1;
                            ThemeBut.startY = ypos;
                            ThemeBut.mask_index = sp_theme_chooser;
                            ThemeBut.sprite_to_use = 81;
                            created_buttons++;
                        }
                        item_num++;
                    }
                }
                else
                {
                    steam_activate_overlay_store(1952658);
                }
            }
        }
        else
        {
            SetHov1 = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 164, 1411, 195))
        {
            ShadHovY = 164;
            SetHov2 = 1;
            if (mouse_check_button_released(mb_left))
            {
                if (steam_user_owns_dlc(1952658) && steam_user_installed_dlc(1952658))
                {
                    CurrentPage = 21;
                    audio_play_sound(s_menu_tabs, 10, false);
                    current_page_alpha = 0;
                    ArrowClicksMax = 0;
                    ArrowClicks = 0;
                    ScrollAmount = 150;
                    var total_buttons = 24;
                    var buttons_per_row = 6;
                    var horizontal_spacing = 208;
                    var vertical_spacing = 150;
                    var initial_xpos = 423;
                    var initial_ypos = 110;
                    for (var item_num = 0; item_num < (total_buttons + 1); item_num++)
                    {
                        var row = item_num div buttons_per_row;
                        var col = item_num % buttons_per_row;
                        var xpos = initial_xpos + (col * horizontal_spacing);
                        var ypos = initial_ypos + (row * vertical_spacing);
                        var KioskBut = instance_create(xpos, ypos, ob_item_buttons);
                        KioskBut.item_num = item_num;
                        KioskBut.item_type = 2;
                        KioskBut.startY = ypos;
                        KioskBut.lockPrice = 10;
                        KioskBut.sprite_to_use = 1;
                        KioskBut.mask_index = sp_puz_but_blank;
                        if (item_num != 0)
                        {
                            if (item_num >= 1 && item_num <= 24)
                            {
                                var LockKey = "kioskcursor" + string(item_num);
                                if (!steam_get_achievement(LockKey))
                                {
                                    KioskBut.item_is_locked = 1;
                                }
                            }
                            else
                            {
                                var LockKey = "kioskcursor" + string(item_num);
                                var statcheck = steam_get_stat_int(LockKey);
                                if (statcheck != 1)
                                {
                                    KioskBut.item_is_locked = 1;
                                }
                            }
                        }
                    }
                    var total_rows = ceil(total_buttons / buttons_per_row);
                    if (total_rows > 5)
                    {
                        ArrowClicksMax = total_rows - 5;
                    }
                }
                else
                {
                    steam_activate_overlay_store(1952658);
                }
            }
        }
        else
        {
            SetHov2 = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 244, 1411, 275))
        {
            ShadHovY = 244;
            SetHov3 = 1;
            if (mouse_check_button_released(mb_left))
            {
                if (steam_user_owns_dlc(1952658) && steam_user_installed_dlc(1952658))
                {
                    ShadHovY = 84;
                    CurrentPage = 22;
                    audio_play_sound(s_menu_tabs, 10, false);
                }
                else
                {
                    steam_activate_overlay_store(1952658);
                }
            }
        }
        else
        {
            SetHov3 = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 324, 1411, 355))
        {
            ShadHovY = 324;
            SetHov4 = 1;
            if (mouse_check_button_released(mb_left))
            {
                if (steam_user_owns_dlc(1952658) && steam_user_installed_dlc(1952658))
                {
                    CurrentPage = 23;
                    audio_play_sound(s_menu_tabs, 10, false);
                    current_page_alpha = 0;
                    ArrowClicksMax = 0;
                    ArrowClicks = 0;
                    ScrollAmount = 150;
                    var total_buttons = 28;
                    var buttons_per_row = 6;
                    var horizontal_spacing = 208;
                    var vertical_spacing = 150;
                    var initial_xpos = 423;
                    var initial_ypos = 110;
                    for (var item_num = 0; item_num < (total_buttons + 1); item_num++)
                    {
                        var row = item_num div buttons_per_row;
                        var col = item_num % buttons_per_row;
                        var xpos = initial_xpos + (col * horizontal_spacing);
                        var ypos = initial_ypos + (row * vertical_spacing);
                        var KioskBut = instance_create(xpos, ypos, ob_item_buttons);
                        KioskBut.item_num = item_num;
                        KioskBut.item_type = 3;
                        KioskBut.startY = ypos;
                        KioskBut.lockPrice = 15;
                        KioskBut.mask_index = sp_puz_but_blank;
                        if (item_num != 0)
                        {
                            if (item_num >= 1 && item_num <= 28)
                            {
                                var LockKey = "kiosktoolbar" + string(item_num);
                                if (!steam_get_achievement(LockKey))
                                {
                                    KioskBut.item_is_locked = 1;
                                }
                            }
                            else
                            {
                                var LockKey = "kiosktoolbar" + string(item_num);
                                var statcheck = steam_get_stat_int(LockKey);
                                if (statcheck != 1)
                                {
                                    KioskBut.item_is_locked = 1;
                                }
                            }
                        }
                        var item_file = "\\misc\\kiosk\\mbg" + string(item_num);
                        if (file_exists(working_directory + string(item_file) + ".png"))
                        {
                            KioskBut.sprite_to_use = sprite_add(working_directory + string(item_file) + ".png", 0, false, false, 87, 53);
                        }
                    }
                    var total_rows = ceil(total_buttons / buttons_per_row);
                    if (total_rows > 5)
                    {
                        ArrowClicksMax = total_rows - 5;
                    }
                }
                else
                {
                    steam_activate_overlay_store(1952658);
                }
            }
        }
        else
        {
            SetHov4 = 0;
        }
    }
}
if (CurrentPage == 22)
{
    if (can_press_ui_buttons == 1)
    {
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 84, 1411, 115))
        {
            ShadHovY = 84;
            SetHov1 = 1;
        }
        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 124, 1411, 155))
        {
            ShadHovY = 124;
            SetHov1 = 2;
        }
        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 164, 1411, 195))
        {
            ShadHovY = 164;
            SetHov1 = 3;
        }
        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 204, 1411, 235))
        {
            ShadHovY = 204;
            SetHov1 = 4;
        }
        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 244, 1411, 275))
        {
            ShadHovY = 244;
            SetHov1 = 5;
        }
        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 284, 1411, 315))
        {
            ShadHovY = 284;
            SetHov1 = 6;
        }
        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 324, 1411, 355))
        {
            ShadHovY = 324;
            SetHov1 = 7;
        }
        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 364, 1411, 395))
        {
            ShadHovY = 364;
            SetHov1 = 8;
        }
        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 404, 1411, 435))
        {
            ShadHovY = 404;
            SetHov1 = 9;
        }
        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 444, 1411, 475))
        {
            ShadHovY = 444;
            SetHov1 = 10;
        }
        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 484, 1411, 515))
        {
            ShadHovY = 484;
            SetHov1 = 11;
        }
        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 524, 1411, 555))
        {
            ShadHovY = 524;
            SetHov1 = 12;
        }
        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 564, 1411, 595))
        {
            ShadHovY = 564;
            SetHov1 = 13;
        }
        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 604, 1411, 635))
        {
            ShadHovY = 604;
            SetHov1 = 14;
        }
        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 644, 1411, 675))
        {
            ShadHovY = 644;
            SetHov1 = 15;
        }
        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 684, 1411, 715))
        {
            ShadHovY = 684;
            SetHov1 = 16;
        }
        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 724, 1411, 755))
        {
            ShadHovY = 724;
            SetHov1 = 17;
        }
        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 764, 1411, 795))
        {
            ShadHovY = 764;
            SetHov1 = 18;
        }
        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 804, 1411, 835))
        {
            ShadHovY = 804;
            SetHov1 = 19;
        }
        else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 844, 1411, 875))
        {
            ShadHovY = 844;
            SetHov1 = 20;
        }
        else
        {
            SetHov1 = 0;
        }
        if (mouse_check_button_pressed(mb_left) && SetHov1 > 0)
        {
            var TRACKNUMBER = SetHov1;
            audio_play_sound(s_change_setting, 10, false);
            audio_destroy_stream(ob_game_controller.LoadedMusic);
            var trackTITLE = "audio\Track_" + string(TRACKNUMBER) + ".ogg";
            ob_game_controller.LoadedMusic = audio_create_stream(trackTITLE);
            ob_game_controller.alarm[2] = 1;
            ob_game_controller.c6223 = TRACKNUMBER;
            ini_open("settings.ini");
            ini_write_real("customize", "c6223", ob_game_controller.c6223);
            ini_close();
        }
    }
}
if (CurrentPage == 20 || CurrentPage == 21 || CurrentPage == 22 || CurrentPage == 23 || CurrentPage == 24 || CurrentPage == 25)
{
    if (can_press_ui_buttons == 1)
    {
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 252, 82, 308, 135))
        {
            BKArrowHov = 1;
            if (mouse_check_button(mb_left))
            {
                BKArrowHov = 2;
            }
            if (mouse_check_button_pressed(mb_left))
            {
                CurrentPage = 8;
                current_page_alpha = 0;
                audio_play_sound(s_menu_tabs, 10, false);
                ShadHovY = -100;
            }
        }
        else
        {
            BKArrowHov = 0;
        }
        if (keyboard_check_pressed(vk_escape) || keyboard_check_pressed(vk_backspace))
        {
            CurrentPage = 8;
            current_page_alpha = 0;
            audio_play_sound(s_ui_x_button, 11, false);
            ShadHovY = -100;
        }
    }
}
if (CurrentPage == 13)
{
    if (can_press_ui_buttons == 1)
    {
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 84, 1376, 115))
        {
            ShadHovY = 84;
            if (mouse_check_button_pressed(mb_left))
            {
                audio_play_sound(s_change_setting, 10, false);
                if (global.piece_rotation == 0)
                {
                    global.piece_rotation = 1;
                }
                else
                {
                    global.piece_rotation = 0;
                }
                ini_open("settings.ini");
                ini_write_real("preferences", "piece_rotation", global.piece_rotation);
                ini_close();
            }
            if (ob_menu_cursor.x < 942)
            {
                SetHov1 = 1;
            }
            else
            {
                SetHov1 = 2;
            }
        }
        else
        {
            SetHov1 = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 124, 1376, 155))
        {
            ShadHovY = 124;
            if (ob_menu_cursor.x < 942)
            {
                SetHov2 = 1;
                if (mouse_check_button_pressed(mb_left))
                {
                    audio_play_sound(s_change_setting, 10, false);
                    if (global.piece_snap > 15)
                    {
                        global.piece_snap -= 5;
                    }
                    else
                    {
                        global.piece_snap = 50;
                    }
                    ini_open("settings.ini");
                    ini_write_real("preferences", "piece_snap", global.piece_snap);
                    ini_close();
                }
            }
            else
            {
                SetHov2 = 2;
                if (mouse_check_button_pressed(mb_left))
                {
                    audio_play_sound(s_change_setting, 10, false);
                    if (global.piece_snap < 50)
                    {
                        global.piece_snap += 5;
                    }
                    else
                    {
                        global.piece_snap = 15;
                    }
                    ini_open("settings.ini");
                    ini_write_real("preferences", "piece_snap", global.piece_snap);
                    ini_close();
                }
            }
        }
        else
        {
            SetHov2 = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 244, 1376, 275))
        {
            ShadHovY = 244;
            if (ob_menu_cursor.x < 942)
            {
                SetHov4 = 1;
                if (mouse_check_button_pressed(mb_left))
                {
                    audio_play_sound(s_change_setting, 10, false);
                    if (global.piece_floating > 0)
                    {
                        global.piece_floating -= 0.05;
                    }
                    else
                    {
                        global.piece_floating = 1.5;
                    }
                    ini_open("settings.ini");
                    ini_write_real("preferences", "piece_floating", global.piece_floating);
                    ini_close();
                }
            }
            else
            {
                SetHov4 = 2;
                if (mouse_check_button_pressed(mb_left))
                {
                    audio_play_sound(s_change_setting, 10, false);
                    if (global.piece_floating < 1.5)
                    {
                        global.piece_floating += 0.05;
                    }
                    else
                    {
                        global.piece_floating = 0;
                    }
                    ini_open("settings.ini");
                    ini_write_real("preferences", "piece_floating", global.piece_floating);
                    ini_close();
                }
            }
        }
        else
        {
            SetHov4 = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 284, 1376, 315))
        {
            ShadHovY = 284;
            if (ob_menu_cursor.x < 942)
            {
                SetHov5 = 1;
                if (mouse_check_button_pressed(mb_left))
                {
                    audio_play_sound(s_change_setting, 10, false);
                    if (global.float_rot > 0)
                    {
                        global.float_rot -= 0.1;
                    }
                    else
                    {
                        global.float_rot = 2;
                    }
                    ini_open("settings.ini");
                    ini_write_real("preferences", "float_rot", global.float_rot);
                    ini_close();
                }
            }
            else
            {
                SetHov5 = 2;
                if (mouse_check_button_pressed(mb_left))
                {
                    audio_play_sound(s_change_setting, 10, false);
                    if (global.float_rot < 2)
                    {
                        global.float_rot += 0.1;
                    }
                    else
                    {
                        global.float_rot = 0;
                    }
                    ini_open("settings.ini");
                    ini_write_real("preferences", "float_rot", global.float_rot);
                    ini_close();
                }
            }
        }
        else
        {
            SetHov5 = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 404, 1376, 435))
        {
            ShadHovY = 404;
            if (ob_menu_cursor.x < 942)
            {
                SetHov9 = 1;
                if (mouse_check_button_pressed(mb_left))
                {
                    audio_play_sound(s_change_setting, 10, false);
                    if (global.highlight_col > 0)
                    {
                        global.highlight_col -= 1;
                    }
                    else
                    {
                        global.highlight_col = 4;
                    }
                    ini_open("settings.ini");
                    ini_write_real("preferences", "highlight_col", global.highlight_col);
                    ini_close();
                    if (global.highlight_col == 0)
                    {
                        global.highlight_color = 65280;
                    }
                    if (global.highlight_col == 1)
                    {
                        global.highlight_color = 255;
                    }
                    if (global.highlight_col == 2)
                    {
                        global.highlight_color = 16776960;
                    }
                    if (global.highlight_col == 3)
                    {
                        global.highlight_color = 65535;
                    }
                    if (global.highlight_col == 4)
                    {
                        global.highlight_color = 16711935;
                    }
                }
            }
            else
            {
                SetHov9 = 2;
                if (mouse_check_button_pressed(mb_left))
                {
                    audio_play_sound(s_change_setting, 10, false);
                    if (global.highlight_col < 4)
                    {
                        global.highlight_col += 1;
                    }
                    else
                    {
                        global.highlight_col = 0;
                    }
                    ini_open("settings.ini");
                    ini_write_real("preferences", "highlight_col", global.highlight_col);
                    ini_close();
                    if (global.highlight_col == 0)
                    {
                        global.highlight_color = 65280;
                    }
                    if (global.highlight_col == 1)
                    {
                        global.highlight_color = 255;
                    }
                    if (global.highlight_col == 2)
                    {
                        global.highlight_color = 16776960;
                    }
                    if (global.highlight_col == 3)
                    {
                        global.highlight_color = 65535;
                    }
                    if (global.highlight_col == 4)
                    {
                        global.highlight_color = 16711935;
                    }
                }
            }
        }
        else
        {
            SetHov9 = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 444, 1376, 475))
        {
            ShadHovY = 444;
            if (mouse_check_button_pressed(mb_left))
            {
                audio_play_sound(s_change_setting, 10, false);
                if (global.highlight_style == 0)
                {
                    global.highlight_style = 1;
                }
                else
                {
                    global.highlight_style = 0;
                }
                ini_open("settings.ini");
                ini_write_real("preferences", "highlight_style", global.highlight_style);
                ini_close();
            }
            if (ob_menu_cursor.x < 942)
            {
                SetHov10 = 1;
            }
            else
            {
                SetHov10 = 2;
            }
        }
        else
        {
            SetHov10 = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 604, 1376, 635))
        {
            ShadHovY = 604;
            if (ob_menu_cursor.x < 942)
            {
                SetHov13 = 1;
                if (mouse_check_button_pressed(mb_left))
                {
                    audio_play_sound(s_change_setting, 10, false);
                    if (global.image_guide > 0)
                    {
                        global.image_guide -= 0.05;
                    }
                    else
                    {
                        global.image_guide = 0.3;
                    }
                    ini_open("settings.ini");
                    ini_write_real("preferences", "image_guide", global.image_guide);
                    ini_close();
                }
            }
            else
            {
                SetHov13 = 2;
                if (mouse_check_button_pressed(mb_left))
                {
                    audio_play_sound(s_change_setting, 10, false);
                    if (global.image_guide < 0.3)
                    {
                        global.image_guide += 0.05;
                    }
                    else
                    {
                        global.image_guide = 0;
                    }
                    ini_open("settings.ini");
                    ini_write_real("preferences", "image_guide", global.image_guide);
                    ini_close();
                }
            }
        }
        else
        {
            SetHov13 = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 684, 1376, 715))
        {
            ShadHovY = 684;
            if (ob_menu_cursor.x < 942)
            {
                SetHov16 = 1;
                if (mouse_check_button_pressed(mb_left))
                {
                    audio_play_sound(s_change_setting, 10, false);
                    if (global.fin_outline > 0)
                    {
                        global.fin_outline -= 0.1;
                    }
                    else
                    {
                        global.fin_outline = 1;
                    }
                    ini_open("settings.ini");
                    ini_write_real("preferences", "fin_outline", global.fin_outline);
                    ini_close();
                }
            }
            else
            {
                SetHov16 = 2;
                if (mouse_check_button_pressed(mb_left))
                {
                    audio_play_sound(s_change_setting, 10, false);
                    if (global.fin_outline < 1)
                    {
                        global.fin_outline += 0.1;
                    }
                    else
                    {
                        global.fin_outline = 0;
                    }
                    ini_open("settings.ini");
                    ini_write_real("preferences", "fin_outline", global.fin_outline);
                    ini_close();
                }
            }
        }
        else
        {
            SetHov16 = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 764, 1376, 795))
        {
            ShadHovY = 764;
            if (ob_menu_cursor.x < 942)
            {
                SetHov15 = 1;
                if (mouse_check_button_pressed(mb_left))
                {
                    audio_play_sound(s_change_setting, 10, false);
                    if (global.TrayOpacity > 0.7)
                    {
                        global.TrayOpacity -= 0.02;
                    }
                    else
                    {
                        global.TrayOpacity = 1;
                    }
                    ini_open("settings.ini");
                    ini_write_real("preferences", "TrayOpacity", global.TrayOpacity);
                    ini_close();
                }
            }
            else
            {
                SetHov15 = 2;
                if (mouse_check_button_pressed(mb_left))
                {
                    audio_play_sound(s_change_setting, 10, false);
                    if (global.TrayOpacity < 1)
                    {
                        global.TrayOpacity += 0.02;
                    }
                    else
                    {
                        global.TrayOpacity = 0.7;
                    }
                    ini_open("settings.ini");
                    ini_write_real("preferences", "TrayOpacity", global.TrayOpacity);
                    ini_close();
                }
            }
        }
        else
        {
            SetHov15 = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 804, 1376, 835))
        {
            ShadHovY = 804;
            if (mouse_check_button_pressed(mb_left))
            {
                audio_play_sound(s_change_setting, 10, false);
                if (global.UseHints_PopUP == 0)
                {
                    global.UseHints_PopUP = 1;
                }
                else
                {
                    global.UseHints_PopUP = 0;
                }
                ini_open("settings.ini");
                ini_write_real("preferences", "UseHints_PopUP", global.UseHints_PopUP);
                ini_close();
            }
            if (ob_menu_cursor.x < 942)
            {
                SetHov17 = 1;
            }
            else
            {
                SetHov17 = 2;
            }
        }
        else
        {
            SetHov17 = 0;
        }
    }
}
if (CurrentPage == 14)
{
    if (can_press_ui_buttons == 1)
    {
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 84, 1376, 115))
        {
            ShadHovY = 84;
            if (mouse_check_button_pressed(mb_left))
            {
                audio_play_sound(s_change_setting, 10, false);
                if (global.fullscreen_mode == 0)
                {
                    global.fullscreen_mode = 1;
                    window_set_fullscreen(true);
                }
                else
                {
                    global.fullscreen_mode = 0;
                    window_set_fullscreen(false);
                }
                ini_open("settings.ini");
                ini_write_real("settings", "fullscreen_mode", global.fullscreen_mode);
                ini_close();
            }
            if (ob_menu_cursor.x < 942)
            {
                SetHov1 = 1;
            }
            else
            {
                SetHov1 = 2;
            }
        }
        else
        {
            SetHov1 = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 124, 1376, 155))
        {
            ShadHovY = 124;
            if (ob_menu_cursor.x < 942)
            {
                SetHov2 = 1;
                if (mouse_check_button_pressed(mb_left))
                {
                    audio_play_sound(s_change_setting, 10, false);
                    if (global.resolution > 0)
                    {
                        global.resolution -= 1;
                    }
                    else
                    {
                        global.resolution = 10;
                    }
                    ini_open("settings.ini");
                    ini_write_real("settings", "resolution", global.resolution);
                    ini_close();
                    if (global.resolution == 1)
                    {
                        window_set_size(1024, 768);
                    }
                    else if (global.resolution == 2)
                    {
                        window_set_size(1280, 720);
                    }
                    else if (global.resolution == 3)
                    {
                        window_set_size(1280, 800);
                    }
                    else if (global.resolution == 4)
                    {
                        window_set_size(1280, 1024);
                    }
                    else if (global.resolution == 5)
                    {
                        window_set_size(1360, 768);
                    }
                    else if (global.resolution == 6)
                    {
                        window_set_size(1366, 768);
                    }
                    else if (global.resolution == 7)
                    {
                        window_set_size(1440, 900);
                    }
                    else if (global.resolution == 8)
                    {
                        window_set_size(1536, 864);
                    }
                    else if (global.resolution == 9)
                    {
                        window_set_size(1600, 900);
                    }
                    else if (global.resolution == 10)
                    {
                        window_set_size(1680, 1050);
                    }
                    else
                    {
                        window_set_size(1920, 1080);
                    }
                    window_center();
                }
            }
            else
            {
                SetHov2 = 2;
                if (mouse_check_button_pressed(mb_left))
                {
                    audio_play_sound(s_change_setting, 10, false);
                    if (global.resolution < 10)
                    {
                        global.resolution += 1;
                    }
                    else
                    {
                        global.resolution = 0;
                    }
                    ini_open("settings.ini");
                    ini_write_real("settings", "resolution", global.resolution);
                    ini_close();
                    if (global.resolution == 1)
                    {
                        window_set_size(1024, 768);
                    }
                    else if (global.resolution == 2)
                    {
                        window_set_size(1280, 720);
                    }
                    else if (global.resolution == 3)
                    {
                        window_set_size(1280, 800);
                    }
                    else if (global.resolution == 4)
                    {
                        window_set_size(1280, 1024);
                    }
                    else if (global.resolution == 5)
                    {
                        window_set_size(1360, 768);
                    }
                    else if (global.resolution == 6)
                    {
                        window_set_size(1366, 768);
                    }
                    else if (global.resolution == 7)
                    {
                        window_set_size(1440, 900);
                    }
                    else if (global.resolution == 8)
                    {
                        window_set_size(1536, 864);
                    }
                    else if (global.resolution == 9)
                    {
                        window_set_size(1600, 900);
                    }
                    else if (global.resolution == 10)
                    {
                        window_set_size(1680, 1050);
                    }
                    else
                    {
                        window_set_size(1920, 1080);
                    }
                    window_center();
                }
            }
        }
        else
        {
            SetHov2 = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 204, 1376, 235))
        {
            ShadHovY = 204;
            if (ob_menu_cursor.x < 942)
            {
                SetHov3 = 1;
                if (mouse_check_button_pressed(mb_left))
                {
                    audio_play_sound(s_change_setting, 10, false);
                    if (global.master_vol > 0)
                    {
                        global.master_vol -= 0.1;
                    }
                    else
                    {
                        global.master_vol = 1;
                    }
                    ini_open("settings.ini");
                    ini_write_real("settings", "master_vol", global.master_vol);
                    ini_close();
                    ob_game_controller.alarm[5] = 1;
                }
            }
            else
            {
                SetHov3 = 2;
                if (mouse_check_button_pressed(mb_left))
                {
                    audio_play_sound(s_change_setting, 10, false);
                    if (global.master_vol < 1)
                    {
                        global.master_vol += 0.1;
                    }
                    else
                    {
                        global.master_vol = 0;
                    }
                    ini_open("settings.ini");
                    ini_write_real("settings", "master_vol", global.master_vol);
                    ini_close();
                    ob_game_controller.alarm[5] = 1;
                }
            }
        }
        else
        {
            SetHov3 = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 244, 1376, 275))
        {
            ShadHovY = 244;
            if (ob_menu_cursor.x < 942)
            {
                SetHov4 = 1;
                if (mouse_check_button_pressed(mb_left))
                {
                    audio_play_sound(s_change_setting, 10, false);
                    if (global.effect_vol > 0)
                    {
                        global.effect_vol -= 0.1;
                    }
                    else
                    {
                        global.effect_vol = 1;
                    }
                    ini_open("settings.ini");
                    ini_write_real("settings", "effect_vol", global.effect_vol);
                    ini_close();
                    ob_game_controller.alarm[5] = 1;
                }
            }
            else
            {
                SetHov4 = 2;
                if (mouse_check_button_pressed(mb_left))
                {
                    audio_play_sound(s_change_setting, 10, false);
                    if (global.effect_vol < 1)
                    {
                        global.effect_vol += 0.1;
                    }
                    else
                    {
                        global.effect_vol = 0;
                    }
                    ini_open("settings.ini");
                    ini_write_real("settings", "effect_vol", global.effect_vol);
                    ini_close();
                    ob_game_controller.alarm[5] = 1;
                }
            }
        }
        else
        {
            SetHov4 = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 284, 1376, 315))
        {
            ShadHovY = 284;
            if (ob_menu_cursor.x < 942)
            {
                SetHov5 = 1;
                if (mouse_check_button_pressed(mb_left))
                {
                    audio_play_sound(s_change_setting, 10, false);
                    if (global.music_vol > 0)
                    {
                        global.music_vol -= 0.1;
                    }
                    else
                    {
                        global.music_vol = 1;
                    }
                    ini_open("settings.ini");
                    ini_write_real("settings", "music_vol", global.music_vol);
                    ini_close();
                    ob_game_controller.alarm[5] = 1;
                }
            }
            else
            {
                SetHov5 = 2;
                if (mouse_check_button_pressed(mb_left))
                {
                    audio_play_sound(s_change_setting, 10, false);
                    if (global.music_vol < 1)
                    {
                        global.music_vol += 0.1;
                    }
                    else
                    {
                        global.music_vol = 0;
                    }
                    ini_open("settings.ini");
                    ini_write_real("settings", "music_vol", global.music_vol);
                    ini_close();
                    ob_game_controller.alarm[5] = 1;
                }
            }
        }
        else
        {
            SetHov5 = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 324, 1376, 355))
        {
            ShadHovY = 324;
            if (ob_menu_cursor.x < 942)
            {
                SetHov6 = 1;
                if (mouse_check_button_pressed(mb_left))
                {
                    audio_play_sound(s_change_setting, 10, false);
                    if (global.ambiance_vol > 0)
                    {
                        global.ambiance_vol -= 0.1;
                    }
                    else
                    {
                        global.ambiance_vol = 1;
                    }
                    ini_open("settings.ini");
                    ini_write_real("settings", "ambiance_vol", global.ambiance_vol);
                    ini_close();
                    ob_game_controller.alarm[5] = 1;
                }
            }
            else
            {
                SetHov6 = 2;
                if (mouse_check_button_pressed(mb_left))
                {
                    audio_play_sound(s_change_setting, 10, false);
                    if (global.ambiance_vol < 1)
                    {
                        global.ambiance_vol += 0.1;
                    }
                    else
                    {
                        global.ambiance_vol = 0;
                    }
                    ini_open("settings.ini");
                    ini_write_real("settings", "ambiance_vol", global.ambiance_vol);
                    ini_close();
                    ob_game_controller.alarm[5] = 1;
                }
            }
        }
        else
        {
            SetHov6 = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 484, 1376, 515))
        {
            ShadHovY = 484;
            if (ob_menu_cursor.x < 942)
            {
                SetHov8 = 1;
                if (mouse_check_button_pressed(mb_left))
                {
                    audio_play_sound(s_change_setting, 10, false);
                    if (global.zoom_pan_speed > 5)
                    {
                        global.zoom_pan_speed -= 1;
                    }
                    else
                    {
                        global.zoom_pan_speed = 15;
                    }
                    ini_open("settings.ini");
                    ini_write_real("settings", "zoom_pan_speed", global.zoom_pan_speed);
                    ini_close();
                }
            }
            else
            {
                SetHov8 = 2;
                if (mouse_check_button_pressed(mb_left))
                {
                    audio_play_sound(s_change_setting, 10, false);
                    if (global.zoom_pan_speed < 15)
                    {
                        global.zoom_pan_speed += 1;
                    }
                    else
                    {
                        global.zoom_pan_speed = 5;
                    }
                    ini_open("settings.ini");
                    ini_write_real("settings", "zoom_pan_speed", global.zoom_pan_speed);
                    ini_close();
                }
            }
        }
        else
        {
            SetHov8 = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 524, 1376, 555))
        {
            ShadHovY = 524;
            if (mouse_check_button_pressed(mb_left))
            {
                audio_play_sound(s_change_setting, 10, false);
                if (global.hide_zoom_text == 0)
                {
                    global.hide_zoom_text = 1;
                }
                else
                {
                    global.hide_zoom_text = 0;
                }
                ini_open("settings.ini");
                ini_write_real("settings", "hide_zoom_text", global.hide_zoom_text);
                ini_close();
            }
            if (ob_menu_cursor.x < 942)
            {
                SetHov9 = 1;
            }
            else
            {
                SetHov9 = 2;
            }
        }
        else
        {
            SetHov9 = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 604, 1376, 635))
        {
            ShadHovY = 604;
            if (ob_menu_cursor.x < 942)
            {
                SetHov10 = 1;
                if (mouse_check_button_pressed(mb_left))
                {
                    audio_play_sound(s_change_setting, 10, false);
                    if (global.cursor_speed > 5)
                    {
                        global.cursor_speed -= 5;
                    }
                    else
                    {
                        global.cursor_speed = 25;
                    }
                    ini_open("settings.ini");
                    ini_write_real("settings", "cursor_speed", global.cursor_speed);
                    ini_close();
                }
            }
            else
            {
                SetHov10 = 2;
                if (mouse_check_button_pressed(mb_left))
                {
                    audio_play_sound(s_change_setting, 10, false);
                    if (global.cursor_speed < 25)
                    {
                        global.cursor_speed += 5;
                    }
                    else
                    {
                        global.cursor_speed = 5;
                    }
                    ini_open("settings.ini");
                    ini_write_real("settings", "cursor_speed", global.cursor_speed);
                    ini_close();
                }
            }
        }
        else
        {
            SetHov10 = 0;
        }
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 509, 724, 1376, 755))
        {
            ShadHovY = 724;
            if (ob_menu_cursor.x < 942)
            {
                SetHov12 = 1;
                if (mouse_check_button_pressed(mb_left))
                {
                    audio_play_sound(s_change_setting, 10, false);
                    if (MenuBackingAlpha > 0.1)
                    {
                        MenuBackingAlpha -= 0.01;
                    }
                    else
                    {
                        MenuBackingAlpha = 0.25;
                    }
                    ini_open("settings.ini");
                    ini_write_real("settings", "MenuBackingAlpha", MenuBackingAlpha);
                    ini_close();
                }
            }
            else
            {
                SetHov12 = 2;
                if (mouse_check_button_pressed(mb_left))
                {
                    audio_play_sound(s_change_setting, 10, false);
                    if (MenuBackingAlpha < 0.25)
                    {
                        MenuBackingAlpha += 0.01;
                    }
                    else
                    {
                        MenuBackingAlpha = 0.1;
                    }
                    ini_open("settings.ini");
                    ini_write_real("settings", "MenuBackingAlpha", MenuBackingAlpha);
                    ini_close();
                }
            }
        }
        else
        {
            SetHov12 = 0;
        }
    }
}
