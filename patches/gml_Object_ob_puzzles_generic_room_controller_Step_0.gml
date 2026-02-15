if (keyboard_check_pressed(vk_f9))
{
    with (ob_puzzle_pieces_actual)
    {
        if (CurrentState != 3)
        {
            CurrentState = 3;
            x = socket_x_location;
            y = socket_y_location;
            image_angle = 0;
            image_xscale = 1;
            image_yscale = 1;
            depth = -50;
            speed = 0;
            direction = 0;
            Img_alpha = 1;
        }
    }
    var PuzGrid = ds_grid_create(4, global.puzzle_max_number_of_pieces + 1);
    var ClickedGrid = ds_grid_create(1, 500);
    var savefile = "p" + string(global.current_pack_open) + ".ini";
    ini_open(string(savefile));
    var section = "P" + string(global.puzzle_number_to_play);
    var grid_data = ini_read_string(section, "0", "");
    if (grid_data != "")
    {
        ds_grid_read(PuzGrid, grid_data);
    }
    var Clicked_data = ini_read_string("PC", "0", "");
    if (Clicked_data != "")
    {
        ds_grid_read(ClickedGrid, Clicked_data);
    }
    var already_saved = 0;
    for (var i = 1; i <= global.puzzle_max_number_of_pieces; i++)
    {
        if (ds_grid_get(PuzGrid, 0, i) == 1)
        {
            already_saved += 1;
        }
        ds_grid_set(PuzGrid, 0, i, 1);
        ds_grid_set(PuzGrid, 1, i, 0);
    }
    ini_write_string(string(section), "0", ds_grid_write(PuzGrid));
    ds_grid_set(ClickedGrid, 0, global.puzzle_number_to_play, global.puzzle_max_number_of_pieces);
    ini_write_string("PC", "0", ds_grid_write(ClickedGrid));
    ds_grid_destroy(PuzGrid);
    ds_grid_destroy(ClickedGrid);
    ini_close();
    global.total_number_of_pieces = 0;
    var newly_saved = global.puzzle_max_number_of_pieces - already_saved;
    if (steam_stats_ready() && newly_saved > 0)
    {
        var new_pieces_placed = steam_get_stat_int("pieces_placed") + newly_saved;
        steam_set_stat_int("pieces_placed", new_pieces_placed);
        steam_upload_score("pieces_placed_in", new_pieces_placed);
    }
    // Sync with F10 auto-solve overlay if active
    if (global.as_state > 0 && global.as_pi_grid != -1)
    {
        // F9 just solved this puzzle manually — update overlay counters
        // F10 will auto-skip it next tick via steam_get_achievement check
        if (global.as_total > 0)
        {
            global.as_total -= 1;
        }
        global.as_total_already += 1;
        if (global.current_pack_open >= 1 && global.current_pack_open <= global.TotalPacks)
        {
            global.as_last_pack_name = ds_grid_get(global.as_pi_grid, 1, global.current_pack_open);
        }
        global.as_last_pieces = global.puzzle_max_number_of_pieces;
    }
}
if (preview_hint > 0)
{
    preview_hint -= 0.01;
}
if (IntroBlack > 0)
{
    IntroBlack -= 0.005;
}
if (HPD_pool < 99)
{
    HPD_pool = 99;
}
if (HPD_board < -299999)
{
    HPD_board = -299999;
}
if (HPD_tray < -599999)
{
    HPD_tray = -599999;
}
if (puzzle_is_over == 1 && ENDboxSHOW == 1)
{
    if (ENDbOXxHOV != 2)
    {
        if (ENDbOXy < 0)
        {
            ENDbOXy += 1;
        }
        if (ENDbOXy == 0)
        {
            if (device_mouse_x_to_gui(0) > 1132 && device_mouse_x_to_gui(0) < 1153 && device_mouse_y_to_gui(0) > 0 && device_mouse_y_to_gui(0) < 23)
            {
                ENDbOXxHOV = 1;
                if (mouse_check_button_pressed(mb_left))
                {
                    ENDbOXxHOV = 2;
                }
            }
            else
            {
                ENDbOXxHOV = 0;
            }
        }
    }
    else if (ENDbOXy > -45)
    {
        ENDbOXy -= 5;
    }
}
if (global.total_number_of_pieces < 1)
{
    if (puzzle_is_over == 0)
    {
        TrayOpen = 0;
        puzzle_is_over = 1;
        global.camera_is_zoomed_in = 0;
        if (steam_stats_ready())
        {
            var achievement_to_set = "complete_pack_" + string(global.current_pack_open) + "_puzzle_" + string(global.puzzle_number_to_play);
            if (!steam_get_achievement(achievement_to_set))
            {
                steam_set_achievement(achievement_to_set);
                ENDboxSHOW = 1;
                audio_play_sound(s_puzzle_complete, 1, false);
                if (global.current_pack_open == 7000 && global.puzzle_number_to_play == global.CurChalNum)
                {
                    var Chals_beat = steam_get_stat_int("comps_won") + 1;
                    steam_set_stat_int("comps_won", Chals_beat);
                    steam_upload_score("challenge_puzzles_complete", Chals_beat);
                    var ChalBoard = "challenge_" + string(global.puzzle_number_to_play) + "_leaderboard";
                    steam_upload_score(ChalBoard, 1);
                    var diamonds_earned = steam_get_stat_int("ultimate_pieces_earned") + 1;
                    steam_set_stat_int("ultimate_pieces_earned", diamonds_earned);
                    var LockType = 0;
                    var LockName = "kioskchallenges" + string(global.puzzle_number_to_play);
                    if (global.puzzle_number_to_play <= 87)
                    {
                        LockName = "kioskchallenges" + string(global.puzzle_number_to_play);
                        LockType = 0;
                    }
                    else
                    {
                        LockType = 1;
                    }
                    if (LockType == 0)
                    {
                        steam_set_achievement(LockName);
                    }
                    else
                    {
                        steam_set_stat_int(LockName, 1);
                    }
                }
                else
                {
                    var puzzles_beat = steam_get_stat_int("total_normal_puzzles_beat") + 1;
                    steam_set_stat_int("total_normal_puzzles_beat", puzzles_beat);
                    steam_upload_score("number_of_puzzles_completed", puzzles_beat);
                    var Gg = 0;
                    var PBs = global.puzzle_max_number_of_pieces;
                    if (PBs >= 0 && PBs < 200)
                    {
                        Gg = 1;
                    }
                    else if (PBs >= 200 && PBs < 300)
                    {
                        Gg = 2;
                    }
                    else if (PBs >= 300 && PBs < 400)
                    {
                        Gg = 3;
                    }
                    else if (PBs >= 400 && PBs < 500)
                    {
                        Gg = 4;
                    }
                    else if (PBs >= 600 && PBs < 700)
                    {
                        Gg = 6;
                    }
                    else if (PBs >= 700 && PBs < 800)
                    {
                        Gg = 7;
                    }
                    else if (PBs >= 800 && PBs < 900)
                    {
                        Gg = 8;
                    }
                    else if (PBs == 1000)
                    {
                        Gg = 10;
                    }
                    else if (PBs == 1410)
                    {
                        Gg = 14;
                    }
                    var GoldDrop = Gg * global.GoldMultiplier;
                    var GoldE = steam_get_stat_int("gold_bits_earned") + GoldDrop;
                    steam_set_stat_int("gold_bits_earned", GoldE);
                    steam_upload_score("most_gold_earned", GoldE);
                    ENDbOXGOLD = GoldDrop;
                }
            }
        }
    }
}
if (puzzle_is_over == 0)
{
    if (device_mouse_x_to_gui(0) > 1871 && device_mouse_x_to_gui(0) < 1920 && device_mouse_y_to_gui(0) > 0 && device_mouse_y_to_gui(0) < 35)
    {
        HL_hideMenu = 1;
        if (global.can_pick_a_bit_up == 1 && global.can_use_ui_and_buttons_in_puzzle == 1)
        {
            if (mouse_check_button_pressed(mb_left))
            {
                audio_play_sound(s_menu_tabs, 1, false);
                if (ui_buttons_visible == 0)
                {
                    ui_buttons_visible = 1;
                }
                else
                {
                    ui_buttons_visible = 0;
                }
            }
        }
    }
    else
    {
        HL_hideMenu = 0;
    }
    if (ui_buttons_visible == 1)
    {
        if (device_mouse_x_to_gui(0) > 1871 && device_mouse_x_to_gui(0) < 1920 && device_mouse_y_to_gui(0) > 38 && device_mouse_y_to_gui(0) < 73)
        {
            HL_UI_Title = ob_lan.UI_Info;
            HL_UI_Pos = 1;
            HL_UI_Title = "";
            HL_UI_Pos = 0;
            if (global.can_pick_a_bit_up == 1 && global.can_use_ui_and_buttons_in_puzzle == 1)
            {
                if (mouse_check_button_pressed(mb_left))
                {
                    TrayOpen = 0;
                }
            }
        }
        else if (device_mouse_x_to_gui(0) > 1871 && device_mouse_x_to_gui(0) < 1920 && device_mouse_y_to_gui(0) > 76 && device_mouse_y_to_gui(0) < 111)
        {
            HL_UI_Title = ob_lan.UI_ClearTable;
            HL_UI_Pos = 2;
            if (global.can_pick_a_bit_up == 1 && global.can_use_ui_and_buttons_in_puzzle == 1)
            {
                if (mouse_check_button_pressed(mb_left))
                {
                    audio_play_sound(s_change_setting, 1, false);
                    if (instance_exists(ob_puzzle_pieces_actual))
                    {
                        ob_puzzle_pieces_actual.alarm[6] = 1;
                    }
                }
            }
        }
        else if (device_mouse_x_to_gui(0) > 1871 && device_mouse_x_to_gui(0) < 1920 && device_mouse_y_to_gui(0) > 114 && device_mouse_y_to_gui(0) < 149)
        {
            HL_UI_Title = ob_lan.UI_Shuffle;
            HL_UI_Pos = 3;
            if (global.can_pick_a_bit_up == 1 && global.can_use_ui_and_buttons_in_puzzle == 1)
            {
                if (mouse_check_button_pressed(mb_left))
                {
                    audio_play_sound(s_change_setting, 1, false);
                    if (instance_exists(ob_puzzle_pieces_actual))
                    {
                        ob_puzzle_pieces_actual.alarm[0] = 1;
                    }
                }
            }
        }
        else if (device_mouse_x_to_gui(0) > 1871 && device_mouse_x_to_gui(0) < 1920 && device_mouse_y_to_gui(0) > 152 && device_mouse_y_to_gui(0) < 187)
        {
            HL_UI_Title = ob_lan.UI_PoolColor;
            HL_UI_Pos = 4;
            if (global.can_pick_a_bit_up == 1 && global.can_use_ui_and_buttons_in_puzzle == 1)
            {
                if (mouse_check_button_pressed(mb_left))
                {
                    var ThemeToSave = 0;
                    var MaxColours = 0;
                    var BackCol = 0;
                    if (global.theme_to_use == 0)
                    {
                        ThemeToSave = "ZenBackingColor";
                        MaxColours = 4;
                    }
                    if (global.theme_to_use == 1)
                    {
                        ThemeToSave = "SimpleBackingColor";
                        MaxColours = 12;
                    }
                    if (global.theme_to_use == 4)
                    {
                        ThemeToSave = "MegaBackingColor";
                        MaxColours = 4;
                    }
                    if (global.theme_to_use == 6)
                    {
                        ThemeToSave = "ChristmasBackingColor";
                        MaxColours = 5;
                    }
                    if (global.theme_to_use == 7)
                    {
                        ThemeToSave = "RustBackingColor";
                        MaxColours = 4;
                    }
                    if (global.theme_to_use == 8)
                    {
                        ThemeToSave = "TableBackingColor";
                        MaxColours = 4;
                    }
                    if (global.theme_to_use == 9)
                    {
                        ThemeToSave = "RuinsBackingColor";
                        MaxColours = 4;
                    }
                    ini_open("settings.ini");
                    BackCol = ini_read_real("theme", ThemeToSave, 0);
                    if (BackCol < MaxColours)
                    {
                        BackCol += 1;
                    }
                    else
                    {
                        BackCol = 0;
                    }
                    ini_write_real("theme", string(ThemeToSave), BackCol);
                    ini_close();
                    audio_play_sound(s_change_setting, 1, false);
                    alarm[2] = 1;
                    ColToChange = 2;
                }
            }
        }
        else if (device_mouse_x_to_gui(0) > 1871 && device_mouse_x_to_gui(0) < 1920 && device_mouse_y_to_gui(0) > 190 && device_mouse_y_to_gui(0) < 225)
        {
            HL_UI_Title = ob_lan.UI_TableColor;
            HL_UI_Pos = 5;
            if (global.can_pick_a_bit_up == 1 && global.can_use_ui_and_buttons_in_puzzle == 1)
            {
                if (mouse_check_button_pressed(mb_left))
                {
                    var ThemeToSave = 0;
                    var MaxColours = 0;
                    var TableCol = 0;
                    if (global.theme_to_use == 0)
                    {
                        ThemeToSave = "ZenBoardColor";
                        MaxColours = 9;
                    }
                    if (global.theme_to_use == 1)
                    {
                        ThemeToSave = "SimpleBoardColor";
                        MaxColours = 13;
                    }
                    if (global.theme_to_use == 2)
                    {
                        ThemeToSave = "ArcadeBoardColor";
                        MaxColours = 6;
                    }
                    if (global.theme_to_use == 3)
                    {
                        ThemeToSave = "WindowBoardColor";
                        MaxColours = 4;
                    }
                    if (global.theme_to_use == 4)
                    {
                        ThemeToSave = "MegaBoardColor";
                        MaxColours = 6;
                    }
                    if (global.theme_to_use == 5)
                    {
                        ThemeToSave = "LinesBoardColor";
                        MaxColours = 14;
                    }
                    if (global.theme_to_use == 6)
                    {
                        ThemeToSave = "ChristmasBoardColor";
                        MaxColours = 5;
                    }
                    if (global.theme_to_use == 7)
                    {
                        ThemeToSave = "RustBoardColor";
                        MaxColours = 11;
                    }
                    if (global.theme_to_use == 8)
                    {
                        ThemeToSave = "TableBoardColor";
                        MaxColours = 16;
                    }
                    if (global.theme_to_use == 9)
                    {
                        ThemeToSave = "RuinsBoardColor";
                        MaxColours = 4;
                    }
                    if (global.theme_to_use == 10)
                    {
                        ThemeToSave = "RainBoardColor";
                        MaxColours = 4;
                    }
                    ini_open("settings.ini");
                    TableCol = ini_read_real("theme", ThemeToSave, 0);
                    if (TableCol < MaxColours)
                    {
                        TableCol += 1;
                    }
                    else
                    {
                        TableCol = 0;
                    }
                    ini_write_real("theme", string(ThemeToSave), TableCol);
                    ini_close();
                    audio_play_sound(s_change_setting, 1, false);
                    alarm[2] = 1;
                    ColToChange = 1;
                }
            }
        }
        else if (device_mouse_x_to_gui(0) > 1871 && device_mouse_x_to_gui(0) < 1920 && device_mouse_y_to_gui(0) > 228 && device_mouse_y_to_gui(0) < 263)
        {
            HL_UI_Title = ob_lan.UI_Highlight;
            HL_UI_Pos = 6;
            if (global.can_pick_a_bit_up == 1 && global.can_use_ui_and_buttons_in_puzzle == 1)
            {
                if (mouse_check_button_pressed(mb_left))
                {
                    audio_play_sound(s_change_setting, 1, false);
                    if (global.highlight_on == 1)
                    {
                        global.highlight_on = 0;
                    }
                    else
                    {
                        global.highlight_on = 1;
                    }
                }
            }
        }
        else if (device_mouse_x_to_gui(0) > 1871 && device_mouse_x_to_gui(0) < 1920 && device_mouse_y_to_gui(0) > 266 && device_mouse_y_to_gui(0) < 301)
        {
            HL_UI_Title = ob_lan.UI_RefImage;
            HL_UI_Pos = 7;
            if (global.can_pick_a_bit_up == 1 && global.can_use_ui_and_buttons_in_puzzle == 1)
            {
                if (mouse_check_button_pressed(mb_left))
                {
                    if (global.level_type == 1 || global.level_type == 2 || global.level_type == 3 || global.level_type == 4)
                    {
                        audio_play_sound(s_change_setting, 1, false);
                        if (instance_exists(ob_ref_image))
                        {
                            with (ob_ref_image)
                            {
                                instance_destroy();
                            }
                        }
                        else
                        {
                            instance_create(13, 13, ob_ref_image);
                        }
                    }
                }
            }
        }
        else if (device_mouse_x_to_gui(0) > 1871 && device_mouse_x_to_gui(0) < 1920 && device_mouse_y_to_gui(0) > 304 && device_mouse_y_to_gui(0) < 339)
        {
            HL_UI_Title = ob_lan.UI_ViewOutline;
            HL_UI_Pos = 8;
            HL_UI_Title = "";
            HL_UI_Pos = 0;
            if (global.can_pick_a_bit_up == 1 && global.can_use_ui_and_buttons_in_puzzle == 1)
            {
                if (mouse_check_button_pressed(mb_left))
                {
                }
            }
        }
        else if (device_mouse_x_to_gui(0) > 1871 && device_mouse_x_to_gui(0) < 1920 && device_mouse_y_to_gui(0) > 342 && device_mouse_y_to_gui(0) < 377)
        {
            HL_UI_Title = ob_lan.UI_ImageGuide;
            HL_UI_Pos = 9;
            if (global.can_pick_a_bit_up == 1 && global.can_use_ui_and_buttons_in_puzzle == 1)
            {
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
        else if (device_mouse_x_to_gui(0) > 1871 && device_mouse_x_to_gui(0) < 1920 && device_mouse_y_to_gui(0) > 380 && device_mouse_y_to_gui(0) < 415)
        {
            HL_UI_Title = ob_lan.UI_PreviewImage;
            HL_UI_Pos = 10;
            if (global.can_pick_a_bit_up == 1 && global.can_use_ui_and_buttons_in_puzzle == 1)
            {
                if (mouse_check_button_pressed(mb_left))
                {
                    if (steam_stats_ready() && preview_hint == 0)
                    {
                        var HintCost = 5;
                        var hints_earned = steam_get_stat_int("hints_earned");
                        var hints_spent = steam_get_stat_int("hints_used");
                        var ghosts_used = steam_get_stat_int("ghost_hints_used");
                        var current_hint_amount = hints_earned - hints_spent;
                        if (current_hint_amount >= HintCost)
                        {
                            hints_spent += HintCost;
                            ghosts_used += 1;
                            steam_set_stat_int("hints_used", hints_spent);
                            steam_set_stat_int("ghost_hints_used", ghosts_used);
                            preview_hint = 5;
                            audio_play_sound(s_hint_locate, 10, false);
                            if (global.UseHints_PopUP == 1)
                            {
                                ob_menu_cursor.HintUseQnt = HintCost;
                                ob_menu_cursor.HUQx = mouse_x;
                                ob_menu_cursor.HUQy = mouse_y;
                                ob_menu_cursor.HUQalpha = 2;
                                ob_menu_cursor.HUQsymbol = 0;
                            }
                        }
                    }
                }
            }
        }
        else if (device_mouse_x_to_gui(0) > 1871 && device_mouse_x_to_gui(0) < 1920 && device_mouse_y_to_gui(0) > 418 && device_mouse_y_to_gui(0) < 453)
        {
            HL_UI_Title = ob_lan.UI_Add1Random;
            HL_UI_Pos = 11;
            HL_UI_Title = "";
            HL_UI_Pos = 0;
            if (global.can_pick_a_bit_up == 1 && global.can_use_ui_and_buttons_in_puzzle == 1)
            {
                if (mouse_check_button_pressed(mb_left))
                {
                }
            }
        }
        else if (device_mouse_x_to_gui(0) > 1871 && device_mouse_x_to_gui(0) < 1920 && device_mouse_y_to_gui(0) > 456 && device_mouse_y_to_gui(0) < 491)
        {
            HL_UI_Title = ob_lan.UI_FillEdges;
            HL_UI_Pos = 12;
            if (global.can_pick_a_bit_up == 1 && global.can_use_ui_and_buttons_in_puzzle == 1)
            {
                if (mouse_check_button_pressed(mb_left) && CanFillEdges == 1)
                {
                    if (global.level_type == 1 || global.level_type == 2 || global.level_type == 3 || global.level_type == 4)
                    {
                        var HintCost = 10;
                        var hints_earned = steam_get_stat_int("hints_earned");
                        var hints_spent = steam_get_stat_int("hints_used");
                        var current_hint_amount = hints_earned - hints_spent;
                        if (current_hint_amount >= HintCost)
                        {
                            hints_spent += HintCost;
                            steam_set_stat_int("hints_used", hints_spent);
                            audio_play_sound(s_hint_locate, 10, false);
                            alarm[6] = 1;
                            CanFillEdges = 0;
                            if (global.UseHints_PopUP == 1)
                            {
                                ob_menu_cursor.HintUseQnt = HintCost;
                                ob_menu_cursor.HUQx = mouse_x;
                                ob_menu_cursor.HUQy = mouse_y;
                                ob_menu_cursor.HUQalpha = 2;
                                ob_menu_cursor.HUQsymbol = 0;
                            }
                        }
                    }
                }
            }
        }
        else if (device_mouse_x_to_gui(0) > 1871 && device_mouse_x_to_gui(0) < 1920 && device_mouse_y_to_gui(0) > 494 && device_mouse_y_to_gui(0) < 529)
        {
            HL_UI_Title = ob_lan.UI_Zoom;
            HL_UI_Pos = 13;
            if (global.can_pick_a_bit_up == 1 && global.can_use_ui_and_buttons_in_puzzle == 1)
            {
                if (mouse_check_button_pressed(mb_left))
                {
                    audio_play_sound(s_change_setting, 1, false);
                    if (global.camera_is_zoomed_in < 4)
                    {
                        global.camera_is_zoomed_in += 1;
                        TrayOpen = 0;
                    }
                    else
                    {
                        global.camera_is_zoomed_in = 0;
                    }
                }
            }
        }
        else if (device_mouse_x_to_gui(0) > 1871 && device_mouse_x_to_gui(0) < 1920 && device_mouse_y_to_gui(0) > 532 && device_mouse_y_to_gui(0) < 567)
        {
            HL_UI_Title = ob_lan.UI_ThemeOptions;
            HL_UI_Pos = 14;
            if (global.can_pick_a_bit_up == 1 && global.can_use_ui_and_buttons_in_puzzle == 1)
            {
                if (mouse_check_button_pressed(mb_left))
                {
                    TrayOpen = 0;
                }
            }
        }
        else if (device_mouse_x_to_gui(0) > 1871 && device_mouse_x_to_gui(0) < 1920 && device_mouse_y_to_gui(0) > 570 && device_mouse_y_to_gui(0) < 605)
        {
            HL_UI_Title = ob_lan.UI_Preferences;
            HL_UI_Pos = 15;
            HL_UI_Title = "";
            HL_UI_Pos = 0;
            if (global.can_pick_a_bit_up == 1 && global.can_use_ui_and_buttons_in_puzzle == 1)
            {
                if (mouse_check_button_pressed(mb_left))
                {
                }
            }
        }
        else if (device_mouse_x_to_gui(0) > 1871 && device_mouse_x_to_gui(0) < 1920 && device_mouse_y_to_gui(0) > 608 && device_mouse_y_to_gui(0) < 643)
        {
            HL_UI_Title = ob_lan.UI_Display;
            HL_UI_Pos = 16;
            if (global.can_pick_a_bit_up == 1 && global.can_use_ui_and_buttons_in_puzzle == 1)
            {
                if (mouse_check_button_pressed(mb_left))
                {
                    audio_play_sound(s_change_setting, 1, false);
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
            }
        }
        else if (device_mouse_x_to_gui(0) > 1871 && device_mouse_x_to_gui(0) < 1920 && device_mouse_y_to_gui(0) > 646 && device_mouse_y_to_gui(0) < 681)
        {
            HL_UI_Title = ob_lan.UI_ViewControls;
            HL_UI_Pos = 17;
            if (global.can_pick_a_bit_up == 1 && global.can_use_ui_and_buttons_in_puzzle == 1)
            {
                if (mouse_check_button_pressed(mb_left))
                {
                    menu_overlay = 6;
                    global.can_use_ui_and_buttons_in_puzzle = 0;
                    global.can_pick_a_bit_up = 0;
                    TrayOpen = 0;
                    audio_play_sound(s_menu_tabs, 1, false);
                }
            }
        }
        else if (device_mouse_x_to_gui(0) > 1871 && device_mouse_x_to_gui(0) < 1920 && device_mouse_y_to_gui(0) > 684 && device_mouse_y_to_gui(0) < 719)
        {
            HL_UI_Title = ob_lan.UI_AutoBuild;
            HL_UI_Pos = 18;
            if (global.can_pick_a_bit_up == 1 && global.can_use_ui_and_buttons_in_puzzle == 1)
            {
                if (mouse_check_button_pressed(mb_left))
                {
                    if (global.current_pack_open == 7000 && global.puzzle_number_to_play == global.CurChalNum)
                    {
                    }
                    else
                    {
                        var achCheck = "complete_pack_" + string(global.current_pack_open) + "_puzzle_" + string(global.puzzle_number_to_play);
                        if (steam_get_achievement(achCheck))
                        {
                            menu_overlay = 2;
                            global.can_use_ui_and_buttons_in_puzzle = 0;
                            global.can_pick_a_bit_up = 0;
                            TrayOpen = 0;
                            audio_play_sound(s_menu_tabs, 1, false);
                        }
                    }
                }
            }
        }
        else if (device_mouse_x_to_gui(0) > 1871 && device_mouse_x_to_gui(0) < 1920 && device_mouse_y_to_gui(0) > 722 && device_mouse_y_to_gui(0) < 757)
        {
            HL_UI_Title = ob_lan.UI_ResetPuzzle;
            HL_UI_Pos = 19;
            if (global.can_pick_a_bit_up == 1 && global.can_use_ui_and_buttons_in_puzzle == 1)
            {
                if (mouse_check_button_pressed(mb_left))
                {
                    if (global.current_pack_open == 7000 && global.puzzle_number_to_play == global.CurChalNum)
                    {
                    }
                    else
                    {
                        menu_overlay = 1;
                        global.can_use_ui_and_buttons_in_puzzle = 0;
                        global.can_pick_a_bit_up = 0;
                        TrayOpen = 0;
                        audio_play_sound(s_menu_tabs, 1, false);
                    }
                }
            }
        }
        else if (device_mouse_x_to_gui(0) > 1871 && device_mouse_x_to_gui(0) < 1920 && device_mouse_y_to_gui(0) > 760 && device_mouse_y_to_gui(0) < 795)
        {
            HL_UI_Title = ob_lan.UI_Exit;
            HL_UI_Pos = 20;
            if (global.can_pick_a_bit_up == 1 && global.can_use_ui_and_buttons_in_puzzle == 1 && ExitPuzzle != 1)
            {
                if (mouse_check_button_pressed(mb_left))
                {
                    ExitPuzzle = 1;
                    global.can_pick_a_bit_up = 0;
                    global.can_use_ui_and_buttons_in_puzzle = 0;
                    audio_play_sound(s_ui_x_button, 1, false);
                }
            }
        }
        else
        {
            HL_UI_Title = "";
            HL_UI_Pos = 0;
        }
    }
    if (device_mouse_x_to_gui(0) > 0 && device_mouse_x_to_gui(0) < 51 && device_mouse_y_to_gui(0) > 1045 && device_mouse_y_to_gui(0) < 1080)
    {
        HL_hidetray = 1;
        if (global.can_pick_a_bit_up == 1 && global.can_use_ui_and_buttons_in_puzzle == 1)
        {
            if (mouse_check_button_released(mb_left))
            {
                if (TrayOpen == 0)
                {
                    TrayOpen = 1;
                    global.camera_is_zoomed_in = 0;
                    audio_play_sound(s_menu_tabs, 1, false);
                }
            }
        }
    }
    else
    {
        HL_hidetray = 0;
    }
}
if (HL_hideMenu == 1 || (HL_hidetray == 1 && TrayOpen == 0) || HL_UI_Title != "")
{
    global.MouseOnUI = 1;
}
else
{
    global.MouseOnUI = 0;
}
if (puzzle_is_over == 1)
{
    if (device_mouse_x_to_gui(0) > 1871 && device_mouse_x_to_gui(0) < 1920 && device_mouse_y_to_gui(0) > 38 && device_mouse_y_to_gui(0) < 73)
    {
        HL_UI_Title = ob_lan.UI_ResetPuzzle;
        HL_UI_Pos = 1;
        global.MouseOnUI = 1;
        if (mouse_check_button_pressed(mb_left) && ExitPuzzle != 1)
        {
            if (global.current_pack_open == 7000 && global.puzzle_number_to_play == global.CurChalNum)
            {
            }
            else
            {
                menu_overlay = 1;
                global.can_use_ui_and_buttons_in_puzzle = 0;
                global.can_pick_a_bit_up = 0;
                TrayOpen = 0;
                audio_play_sound(s_menu_tabs, 1, false);
            }
        }
    }
    else if (device_mouse_x_to_gui(0) > 1871 && device_mouse_x_to_gui(0) < 1920 && device_mouse_y_to_gui(0) > 76 && device_mouse_y_to_gui(0) < 111)
    {
        HL_UI_Title = ob_lan.UI_Exit;
        HL_UI_Pos = 2;
        global.MouseOnUI = 1;
        if (mouse_check_button_pressed(mb_left) && ExitPuzzle != 1)
        {
            ExitPuzzle = 1;
            audio_play_sound(s_ui_x_button, 1, false);
        }
    }
    else
    {
        HL_UI_Title = "";
        HL_UI_Pos = 0;
        global.MouseOnUI = 0;
    }
}
if (menu_overlay == 1)
{
    if (device_mouse_x_to_gui(0) > 844 && device_mouse_x_to_gui(0) < 926 && device_mouse_y_to_gui(0) > 515 && device_mouse_y_to_gui(0) < 564)
    {
        reset_rebuildHOV = 1;
        if (mouse_check_button_pressed(mb_left))
        {
            menu_overlay = 0;
            global.can_use_ui_and_buttons_in_puzzle = 0;
            global.can_pick_a_bit_up = 1;
            global.highlight_on = 0;
            global.camera_is_zoomed_in = 0;
            alarm[5] = 100;
            var savefile = "p" + string(global.current_pack_open) + ".ini";
            var section = "P" + string(global.puzzle_number_to_play);
            ini_open(string(savefile));
            ini_section_delete(string(section));
            var ClickedGrid = ds_grid_create(1, 500);
            var Clicked_data = ini_read_string("PC", "0", "");
            if (Clicked_data != "")
            {
                ds_grid_read(ClickedGrid, Clicked_data);
            }
            ds_grid_set(ClickedGrid, 0, global.puzzle_number_to_play, 0);
            ini_write_string("PC", "0", ds_grid_write(ClickedGrid));
            ds_grid_destroy(ClickedGrid);
            ini_close();
            ob_tray.TrayQnt1 = 0;
            ob_tray.TrayQnt2 = 0;
            ob_tray.TrayQnt3 = 0;
            ob_tray.TrayQnt4 = 0;
            ob_tray.TrayQnt5 = 0;
            ob_tray.TrayQnt6 = 0;
            ob_tray.TrayQnt7 = 0;
            ob_tray.TrayQnt8 = 0;
            ob_tray.TrayQnt9 = 0;
            ob_tray.TrayQnt10 = 0;
            ob_tray.TrayQnt11 = 0;
            ob_tray.TrayQnt12 = 0;
            ob_tray.TrayQnt13 = 0;
            ob_tray.TrayQnt14 = 0;
            ob_tray.TrayQnt15 = 0;
            ob_tray.TrayQnt16 = 0;
            ob_tray.TrayQnt17 = 0;
            ob_tray.TrayQnt18 = 0;
            ob_tray.TrayQnt19 = 0;
            ob_tray.TrayQnt20 = 0;
            with (ob_puzzle_pieces_actual)
            {
                instance_destroy();
            }
            if (global.current_pack_open == 6000)
            {
                alarm[3] = 2;
            }
            else
            {
                alarm[0] = 2;
            }
            puz_bit_num = 1;
            y_row_to_use = 0;
            puzzle_is_over = 0;
            global.total_number_of_pieces = global.puzzle_max_number_of_pieces;
            audio_play_sound(s_reset_puzzle, 1, false);
        }
    }
    else if (device_mouse_x_to_gui(0) > 993 && device_mouse_x_to_gui(0) < 1075 && device_mouse_y_to_gui(0) > 515 && device_mouse_y_to_gui(0) < 564)
    {
        reset_rebuildHOV = 2;
        if (mouse_check_button_pressed(mb_left))
        {
            audio_play_sound(s_ui_x_button, 3, false);
            menu_overlay = 0;
            global.can_use_ui_and_buttons_in_puzzle = 1;
            global.can_pick_a_bit_up = 1;
        }
    }
    else
    {
        reset_rebuildHOV = 0;
    }
    if (keyboard_check_released(vk_escape))
    {
        audio_play_sound(s_ui_x_button, 3, false);
        menu_overlay = 0;
        global.can_use_ui_and_buttons_in_puzzle = 1;
        global.can_pick_a_bit_up = 1;
    }
}
if (menu_overlay == 2)
{
    if (device_mouse_x_to_gui(0) > 844 && device_mouse_x_to_gui(0) < 926 && device_mouse_y_to_gui(0) > 515 && device_mouse_y_to_gui(0) < 564)
    {
        reset_rebuildHOV = 1;
        if (mouse_check_button_pressed(mb_left))
        {
            menu_overlay = 0;
            global.can_use_ui_and_buttons_in_puzzle = 0;
            global.can_pick_a_bit_up = 1;
            global.highlight_on = 0;
            global.camera_is_zoomed_in = 0;
            alarm[5] = 100;
            var PuzGrid = ds_grid_create(4, global.puzzle_max_number_of_pieces + 1);
            var savefile = "p" + string(global.current_pack_open) + ".ini";
            var section = "P" + string(global.puzzle_number_to_play);
            ini_open(string(savefile));
            var ClickedGrid = ds_grid_create(1, 500);
            var Clicked_data = ini_read_string("PC", "0", "");
            if (Clicked_data != "")
            {
                ds_grid_read(ClickedGrid, Clicked_data);
            }
            ds_grid_set(ClickedGrid, 0, global.puzzle_number_to_play, global.puzzle_max_number_of_pieces);
            ini_write_string("PC", "0", ds_grid_write(ClickedGrid));
            var grid_data = ini_read_string(section, "0", "");
            if (grid_data != "")
            {
                ds_grid_read(PuzGrid, grid_data);
            }
            for (var i = 1; i <= global.puzzle_max_number_of_pieces; i++)
            {
                ds_grid_set(PuzGrid, 0, i, 1);
                ds_grid_set(PuzGrid, 1, i, 0);
                ds_grid_set(PuzGrid, 2, i, 0);
                ds_grid_set(PuzGrid, 3, i, 0);
            }
            ini_write_string(string(section), "0", ds_grid_write(PuzGrid));
            ds_grid_destroy(PuzGrid);
            ds_grid_destroy(ClickedGrid);
            ini_close();
            ob_tray.TrayQnt1 = 0;
            ob_tray.TrayQnt2 = 0;
            ob_tray.TrayQnt3 = 0;
            ob_tray.TrayQnt4 = 0;
            ob_tray.TrayQnt5 = 0;
            ob_tray.TrayQnt6 = 0;
            ob_tray.TrayQnt7 = 0;
            ob_tray.TrayQnt8 = 0;
            ob_tray.TrayQnt9 = 0;
            ob_tray.TrayQnt10 = 0;
            ob_tray.TrayQnt11 = 0;
            ob_tray.TrayQnt12 = 0;
            ob_tray.TrayQnt13 = 0;
            ob_tray.TrayQnt14 = 0;
            ob_tray.TrayQnt15 = 0;
            ob_tray.TrayQnt16 = 0;
            ob_tray.TrayQnt17 = 0;
            ob_tray.TrayQnt18 = 0;
            ob_tray.TrayQnt19 = 0;
            ob_tray.TrayQnt20 = 0;
            with (ob_puzzle_pieces_actual)
            {
                instance_destroy();
            }
            if (global.current_pack_open == 6000)
            {
                alarm[3] = 2;
            }
            else
            {
                alarm[0] = 2;
            }
            puz_bit_num = 1;
            y_row_to_use = 0;
            puzzle_is_over = 0;
            global.total_number_of_pieces = global.puzzle_max_number_of_pieces;
        }
    }
    else if (device_mouse_x_to_gui(0) > 993 && device_mouse_x_to_gui(0) < 1075 && device_mouse_y_to_gui(0) > 515 && device_mouse_y_to_gui(0) < 564)
    {
        reset_rebuildHOV = 2;
        if (mouse_check_button_pressed(mb_left))
        {
            audio_play_sound(s_ui_x_button, 3, false);
            menu_overlay = 0;
            global.can_use_ui_and_buttons_in_puzzle = 1;
            global.can_pick_a_bit_up = 1;
        }
    }
    else
    {
        reset_rebuildHOV = 0;
    }
    if (keyboard_check_released(vk_escape))
    {
        audio_play_sound(s_ui_x_button, 3, false);
        menu_overlay = 0;
        global.can_use_ui_and_buttons_in_puzzle = 1;
        global.can_pick_a_bit_up = 1;
    }
}
if (keyboard_check_released(vk_escape) && menu_overlay == 6)
{
    audio_play_sound(s_ui_x_button, 3, false);
    menu_overlay = 0;
    global.can_use_ui_and_buttons_in_puzzle = 1;
    global.can_pick_a_bit_up = 1;
}
if (puzzle_is_over == 0 && menu_overlay == 0 && global.can_use_ui_and_buttons_in_puzzle == 1)
{
    if (keyboard_check_pressed(ord("T")))
    {
        audio_play_sound(s_menu_tabs, 1, false);
        if (TrayOpen == 0)
        {
            TrayOpen = 1;
            global.camera_is_zoomed_in = 0;
            audio_play_sound(s_menu_tabs, 1, false);
        }
        else
        {
            TrayOpen = 0;
            audio_play_sound(s_ui_x_button, 1, false);
        }
    }
    if (keyboard_check_pressed(vk_right) && TrayOpen == 1)
    {
        audio_play_sound(s_menu_tabs, 10, false);
        if (ob_tray.TrayNum < 20)
        {
            ob_tray.TrayNum += 1;
        }
        else
        {
            ob_tray.TrayNum = 1;
        }
    }
    if (keyboard_check_pressed(vk_left) && TrayOpen == 1)
    {
        audio_play_sound(s_menu_tabs, 10, false);
        if (ob_tray.TrayNum > 1)
        {
            ob_tray.TrayNum -= 1;
        }
        else
        {
            ob_tray.TrayNum = 20;
        }
    }
    if (keyboard_check_pressed(ord("S")))
    {
        if (instance_exists(ob_puzzle_pieces_actual))
        {
            ob_puzzle_pieces_actual.alarm[0] = 1;
            audio_play_sound(s_change_setting, 1, false);
        }
    }
    if (keyboard_check_pressed(ord("H")))
    {
        audio_play_sound(s_change_setting, 1, false);
        if (global.highlight_on == 1)
        {
            global.highlight_on = 0;
        }
        else
        {
            global.highlight_on = 1;
        }
    }
    if (keyboard_check_pressed(ord("F")))
    {
        if (instance_exists(ob_puzzle_pieces_actual))
        {
            ob_puzzle_pieces_actual.alarm[6] = 1;
            audio_play_sound(s_change_setting, 1, false);
        }
    }
    if (keyboard_check_pressed(ord("C")))
    {
        var ThemeToSave = 0;
        var MaxColours = 0;
        var TableCol = 0;
        if (global.theme_to_use == 0)
        {
            ThemeToSave = "ZenBoardColor";
            MaxColours = 9;
        }
        if (global.theme_to_use == 1)
        {
            ThemeToSave = "SimpleBoardColor";
            MaxColours = 13;
        }
        if (global.theme_to_use == 2)
        {
            ThemeToSave = "ArcadeBoardColor";
            MaxColours = 6;
        }
        if (global.theme_to_use == 3)
        {
            ThemeToSave = "WindowBoardColor";
            MaxColours = 4;
        }
        if (global.theme_to_use == 4)
        {
            ThemeToSave = "MegaBoardColor";
            MaxColours = 6;
        }
        if (global.theme_to_use == 5)
        {
            ThemeToSave = "LinesBoardColor";
            MaxColours = 14;
        }
        if (global.theme_to_use == 6)
        {
            ThemeToSave = "ChristmasBoardColor";
            MaxColours = 5;
        }
        if (global.theme_to_use == 7)
        {
            ThemeToSave = "RustBoardColor";
            MaxColours = 11;
        }
        if (global.theme_to_use == 8)
        {
            ThemeToSave = "TableBoardColor";
            MaxColours = 16;
        }
        if (global.theme_to_use == 9)
        {
            ThemeToSave = "RuinsBoardColor";
            MaxColours = 4;
        }
        if (global.theme_to_use == 10)
        {
            ThemeToSave = "RainBoardColor";
            MaxColours = 4;
        }
        ini_open("settings.ini");
        TableCol = ini_read_real("theme", ThemeToSave, 0);
        if (TableCol < MaxColours)
        {
            TableCol += 1;
        }
        else
        {
            TableCol = 0;
        }
        ini_write_real("theme", string(ThemeToSave), TableCol);
        ini_close();
        audio_play_sound(s_change_setting, 1, false);
        alarm[2] = 1;
        ColToChange = 1;
    }
    if (keyboard_check_pressed(ord("V")))
    {
        var ThemeToSave = 0;
        var MaxColours = 0;
        var BackCol = 0;
        if (global.theme_to_use == 0)
        {
            ThemeToSave = "ZenBackingColor";
            MaxColours = 4;
        }
        if (global.theme_to_use == 1)
        {
            ThemeToSave = "SimpleBackingColor";
            MaxColours = 12;
        }
        if (global.theme_to_use == 4)
        {
            ThemeToSave = "MegaBackingColor";
            MaxColours = 4;
        }
        if (global.theme_to_use == 6)
        {
            ThemeToSave = "ChristmasBackingColor";
            MaxColours = 5;
        }
        if (global.theme_to_use == 7)
        {
            ThemeToSave = "RustBackingColor";
            MaxColours = 4;
        }
        if (global.theme_to_use == 8)
        {
            ThemeToSave = "TableBackingColor";
            MaxColours = 4;
        }
        if (global.theme_to_use == 9)
        {
            ThemeToSave = "RuinsBackingColor";
            MaxColours = 4;
        }
        ini_open("settings.ini");
        BackCol = ini_read_real("theme", ThemeToSave, 0);
        if (BackCol < MaxColours)
        {
            BackCol += 1;
        }
        else
        {
            BackCol = 0;
        }
        ini_write_real("theme", string(ThemeToSave), BackCol);
        ini_close();
        audio_play_sound(s_change_setting, 1, false);
        alarm[2] = 1;
        ColToChange = 2;
    }
    if (keyboard_check_pressed(ord("R")))
    {
        if (global.level_type == 1 || global.level_type == 2 || global.level_type == 3 || global.level_type == 4)
        {
            if (instance_exists(ob_ref_image))
            {
                with (ob_ref_image)
                {
                    instance_destroy();
                }
                audio_play_sound(s_ui_x_button, 1, false);
            }
            else
            {
                instance_create(13, 13, ob_ref_image);
                audio_play_sound(s_change_setting, 1, false);
            }
        }
    }
    if (keyboard_check_pressed(ord("O")))
    {
    }
    if (keyboard_check_pressed(ord("G")))
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
    if (keyboard_check_pressed(vk_tab))
    {
        audio_play_sound(s_menu_tabs, 1, false);
        if (ui_buttons_visible == 0)
        {
            ui_buttons_visible = 1;
        }
        else
        {
            ui_buttons_visible = 0;
        }
    }
    if (keyboard_check_pressed(ord("P")))
    {
        if (steam_stats_ready() && preview_hint == 0)
        {
            var HintCost = 5;
            var hints_earned = steam_get_stat_int("hints_earned");
            var hints_spent = steam_get_stat_int("hints_used");
            var ghosts_used = steam_get_stat_int("ghost_hints_used");
            var current_hint_amount = hints_earned - hints_spent;
            if (current_hint_amount >= HintCost)
            {
                hints_spent += HintCost;
                ghosts_used += 1;
                steam_set_stat_int("hints_used", hints_spent);
                steam_set_stat_int("ghost_hints_used", ghosts_used);
                preview_hint = 5;
                audio_play_sound(s_hint_locate, 10, false);
                ob_menu_cursor.HintUseQnt = HintCost;
                ob_menu_cursor.HUQx = mouse_x;
                ob_menu_cursor.HUQy = mouse_y;
                ob_menu_cursor.HUQalpha = 2;
            }
        }
    }
    if (keyboard_check_pressed(ord("X")))
    {
    }
    if (keyboard_check_pressed(ord("E")))
    {
    }
}
if (ExitPuzzle == 1)
{
    if (ExitPuzzleFade < 1)
    {
        ExitPuzzleFade += 0.02;
    }
    else
    {
        audio_play_sound(s_menu_nav, 1, false);
        sprite_delete(global.current_puzzle_ghost_image);
        sprite_delete(global.puzzle_sprite_index_to_use);
        if (T_PuzBoard == -1)
        {
        }
        else
        {
            sprite_delete(T_PuzBoard);
        }
        if (T_BoardTop == -1)
        {
        }
        else
        {
            sprite_delete(T_BoardTop);
        }
        if (T_Background == -1)
        {
        }
        else
        {
            background_delete(T_Background);
        }
        if (T_BackTop1 == -1)
        {
        }
        else
        {
            background_delete(T_BackTop1);
        }
        if (T_BackTop2 == -1)
        {
        }
        else
        {
            background_delete(T_BackTop2);
        }
        if (T_BackTop3 == -1)
        {
        }
        else
        {
            background_delete(T_BackTop3);
        }
        if (LinesV1IMG == -1)
        {
        }
        else
        {
            sprite_delete(LinesV1IMG);
        }
        if (LinesV2IMG == -1)
        {
        }
        else
        {
            sprite_delete(LinesV2IMG);
        }
        if (LinesV3IMG == -1)
        {
        }
        else
        {
            sprite_delete(LinesV3IMG);
        }
        if (ob_theme_frame.T_Frame == -1)
        {
        }
        else
        {
            sprite_delete(ob_theme_frame.T_Frame);
        }
        if (ob_theme_frame.GlowLines == -1)
        {
        }
        else
        {
            sprite_delete(ob_theme_frame.GlowLines);
        }
        global.a_menu_overlay_is_showing = 0;
        global.camera_is_zoomed_in = 0;
        room_goto(r_menu_3);
    }
}
