if (CurrentState == 0)
{
    speed = global.piece_floating;
    image_xscale = global.puzzle_piece_in_pond_scale;
    image_yscale = image_xscale;
    if (global.float_rot != 0)
    {
        if (FloatRotDir == 1)
        {
            image_angle += global.float_rot;
        }
        else
        {
            image_angle -= global.float_rot;
        }
    }
    if (Img_alpha < 1)
    {
        Img_alpha += 0.02;
    }
}
else if (CurrentState == 1)
{
    speed = 0;
    direction = 0;
    image_xscale = 1;
    image_yscale = 1;
    if (Img_alpha < 1)
    {
        Img_alpha += 0.05;
    }
}
else if (CurrentState == 2)
{
    speed = 0;
    direction = 0;
    x = ob_menu_cursor.x;
    y = ob_menu_cursor.y;
    if (image_xscale < 1.05)
    {
        image_xscale += 0.05;
    }
    if (image_xscale > 1.05)
    {
        image_xscale = 1.05;
    }
    image_yscale = image_xscale;
    depth = -900000;
    if (Img_alpha < 1)
    {
        Img_alpha += 0.05;
    }
}
else if (CurrentState == 3)
{
    speed = 0;
    direction = 0;
    image_xscale = 1;
    image_yscale = 1;
    depth = -50;
    image_angle = 0;
    if (ob_puzzles_generic_room_controller.puzzle_is_over == 1)
    {
        if (Img_alpha > global.fin_outline)
        {
            Img_alpha -= 0.02;
        }
    }
    else
    {
        Img_alpha = 1;
    }
}
else if (CurrentState == 4)
{
    speed = 0;
    direction = 0;
    image_xscale = global.puzzle_piece_in_tray_scale;
    image_yscale = global.puzzle_piece_in_tray_scale;
    x = TrayX;
    y = ob_tray.y + TrayY;
    if (TrayNum == ob_tray.TrayNum)
    {
        if (Img_alpha < ob_tray.TrayAlpha)
        {
            Img_alpha += 0.05;
        }
    }
    else
    {
        Img_alpha = 0;
    }
}
else if (CurrentState == 100)
{
    Img_alpha = 1;
    speed = 0;
    direction = 0;
    image_angle = 0;
    image_xscale = 1;
    image_yscale = 1;
    depth = -200;
}
else if (CurrentState == 7)
{
    Img_alpha = 1;
    if (Can_Intro == 1)
    {
        if (image_angle < IntroAngle)
        {
            image_angle += 5;
        }
    }
    if (image_xscale > global.puzzle_piece_in_pond_scale)
    {
        image_xscale -= 0.05;
        image_yscale = image_xscale;
    }
    if (distance_to_point(clearXtarget, clearYtarget) < 2)
    {
        CurrentState = 0;
        direction = irandom(360);
        image_angle = IntroAngle;
        IntroAngle = 0;
        Can_Intro = 0;
        depth = irandom_range(490000, 500000);
    }
}
else if (CurrentState == 8)
{
    image_xscale = 1;
    image_yscale = 1;
}
if (CurrentState == 0)
{
    var x1 = 0;
    var y1 = 0;
    var x2 = 0;
    var y2 = 0;
    if (global.level_type == 1)
    {
        x1 = 246;
        y1 = 0;
        x2 = 1674;
        y2 = 781;
    }
    if (global.level_type == 2)
    {
        x1 = 240;
        y1 = 0;
        x2 = 1680;
        y2 = 920;
    }
    if (global.level_type == 3)
    {
        x1 = 420;
        y1 = 0;
        x2 = 1500;
        y2 = 1080;
    }
    if (global.level_type == 4)
    {
        x1 = 0;
        y1 = 0;
        x2 = 1920;
        y2 = 730;
    }
    if (point_in_rectangle(x, y, x1, y1, x2, y2))
    {
        if (y > (y2 - 10) && y < y2)
        {
            direction = 230 + irandom(80);
        }
        else if (x > x1 && x < (x1 + 10))
        {
            direction = 140 + irandom(80);
        }
        else if (x < x2 && x > (x2 - 10))
        {
            direction = 40 - irandom(80);
        }
    }
    if (can_bounce == 1)
    {
        can_bounce = 0;
        alarm[11] = 10;
        if (x < 10)
        {
            direction = 40 - irandom(80);
        }
        else if (x > 1910)
        {
            direction = 140 + irandom(80);
        }
        else if (y < 10)
        {
            direction = 230 + irandom(80);
        }
        else if (y > 1070)
        {
            direction = 50 + irandom(80);
        }
    }
}
if (CurrentState != 4)
{
    if (x > 1920)
    {
        x = 1920;
    }
    if (x < 0)
    {
        x = 0;
    }
    if (y > 1080)
    {
        y = 1080;
    }
    if (y < 0)
    {
        y = 0;
    }
}
if (place_meeting(x, y, ob_menu_cursor))
{
    if (mouse_check_button_pressed(mb_left) || gamepad_button_check_pressed(0, gp_shoulderrb))
    {
        var can_be_blocked = 0;
        if (global.mouse_over_ref == 1)
        {
            can_be_blocked = 1;
        }
        if (global.can_pick_a_bit_up == 1 && global.MouseOnUI == 0)
        {
            if (can_be_blocked == 0)
            {
                if (CurrentState == 4 && TrayNum == ob_tray.TrayNum && ob_tray.y < 1081)
                {
                    if (global.piece_rotation == 0)
                    {
                        image_angle = 0;
                    }
                    global.can_pick_a_bit_up = 0;
                    CurrentState = 2;
                    audio_play_sound(s_piece_pick_up, 10, false);
                    if (ob_tray.TrayNum == 1)
                    {
                        ob_tray.TrayQnt1 -= 1;
                    }
                    if (ob_tray.TrayNum == 2)
                    {
                        ob_tray.TrayQnt2 -= 1;
                    }
                    if (ob_tray.TrayNum == 3)
                    {
                        ob_tray.TrayQnt3 -= 1;
                    }
                    if (ob_tray.TrayNum == 4)
                    {
                        ob_tray.TrayQnt4 -= 1;
                    }
                    if (ob_tray.TrayNum == 5)
                    {
                        ob_tray.TrayQnt5 -= 1;
                    }
                    if (ob_tray.TrayNum == 6)
                    {
                        ob_tray.TrayQnt6 -= 1;
                    }
                    if (ob_tray.TrayNum == 7)
                    {
                        ob_tray.TrayQnt7 -= 1;
                    }
                    if (ob_tray.TrayNum == 8)
                    {
                        ob_tray.TrayQnt8 -= 1;
                    }
                    if (ob_tray.TrayNum == 9)
                    {
                        ob_tray.TrayQnt9 -= 1;
                    }
                    if (ob_tray.TrayNum == 10)
                    {
                        ob_tray.TrayQnt10 -= 1;
                    }
                    if (ob_tray.TrayNum == 11)
                    {
                        ob_tray.TrayQnt11 -= 1;
                    }
                    if (ob_tray.TrayNum == 12)
                    {
                        ob_tray.TrayQnt12 -= 1;
                    }
                    if (ob_tray.TrayNum == 13)
                    {
                        ob_tray.TrayQnt13 -= 1;
                    }
                    if (ob_tray.TrayNum == 14)
                    {
                        ob_tray.TrayQnt14 -= 1;
                    }
                    if (ob_tray.TrayNum == 15)
                    {
                        ob_tray.TrayQnt15 -= 1;
                    }
                    if (ob_tray.TrayNum == 16)
                    {
                        ob_tray.TrayQnt16 -= 1;
                    }
                    if (ob_tray.TrayNum == 17)
                    {
                        ob_tray.TrayQnt17 -= 1;
                    }
                    if (ob_tray.TrayNum == 18)
                    {
                        ob_tray.TrayQnt18 -= 1;
                    }
                    if (ob_tray.TrayNum == 19)
                    {
                        ob_tray.TrayQnt19 -= 1;
                    }
                    if (ob_tray.TrayNum == 20)
                    {
                        ob_tray.TrayQnt20 -= 1;
                    }
                    TrayX = 0;
                    TrayY = 0;
                    TrayNum = 0;
                    var PuzGrid = ds_grid_create(4, global.puzzle_max_number_of_pieces + 1);
                    var savefile = "p" + string(global.current_pack_open) + ".ini";
                    var section = "P" + string(global.puzzle_number_to_play);
                    ini_open(string(savefile));
                    var grid_data = ini_read_string(section, "0", "");
                    if (grid_data != "")
                    {
                        ds_grid_read(PuzGrid, grid_data);
                    }
                    ds_grid_set(PuzGrid, 0, puzzle_piece_number, 0);
                    ds_grid_set(PuzGrid, 1, puzzle_piece_number, 0);
                    ds_grid_set(PuzGrid, 2, puzzle_piece_number, 0);
                    ds_grid_set(PuzGrid, 3, puzzle_piece_number, 0);
                    ini_write_string(string(section), "0", ds_grid_write(PuzGrid));
                    ds_grid_destroy(PuzGrid);
                    ini_close();
                }
                else
                {
                    var top_instance = -4;
                    var top_depth = 500001;
                    with (ob_puzzle_pieces_actual)
                    {
                        if (position_meeting(ob_menu_cursor.x, ob_menu_cursor.y, id))
                        {
                            if (other.CurrentState == CurrentState)
                            {
                                if (depth < top_depth || (depth == top_depth && id > top_instance))
                                {
                                    top_instance = id;
                                    top_depth = depth;
                                }
                            }
                        }
                    }
                    if (top_instance == id)
                    {
                        if (CurrentState == 0 && ob_menu_cursor.y < ob_tray.y)
                        {
                            audio_play_sound(s_piece_pick_up, 10, false);
                            global.can_pick_a_bit_up = 0;
                            CurrentState = 2;
                            if (global.float_rot != 0 && global.piece_rotation == 1)
                            {
                                image_angle = choose(0, 90, 180, 270);
                            }
                            else if (global.piece_rotation != 1)
                            {
                                image_angle = 0;
                            }
                        }
                        else if (CurrentState == 1 && ob_menu_cursor.y < ob_tray.y)
                        {
                            global.can_pick_a_bit_up = 0;
                            CurrentState = 2;
                            audio_play_sound(s_piece_pick_up, 10, false);
                        }
                    }
                }
            }
        }
    }
}
if (CurrentState == 2)
{
    if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_shoulderrb))
    {
        if (image_angle == 0 && y < ob_tray.y && point_in_rectangle(x, y, socket_x_location - global.piece_snap, socket_y_location - global.piece_snap, socket_x_location + global.piece_snap, socket_y_location + global.piece_snap))
        {
            global.can_pick_a_bit_up = 1;
            CurrentState = 3;
            x = socket_x_location;
            y = socket_y_location;
            global.total_number_of_pieces -= 1;
            with (ob_level_hint_location_beacon)
            {
                instance_destroy();
            }
            audio_play_sound(s_piece_click_in, 1, false);
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
            ds_grid_set(PuzGrid, 0, puzzle_piece_number, 1);
            ds_grid_set(PuzGrid, 1, puzzle_piece_number, 0);
            ini_write_string(string(section), "0", ds_grid_write(PuzGrid));
            var Clicked_data = ini_read_string("PC", "0", "");
            if (Clicked_data != "")
            {
                ds_grid_read(ClickedGrid, Clicked_data);
            }
            var PiecesClicked = ds_grid_get(ClickedGrid, 0, global.puzzle_number_to_play) + 1;
            ds_grid_set(ClickedGrid, 0, global.puzzle_number_to_play, PiecesClicked);
            ini_write_string("PC", "0", ds_grid_write(ClickedGrid));
            ds_grid_destroy(PuzGrid);
            ds_grid_destroy(ClickedGrid);
            ini_close();
            if (steam_stats_ready())
            {
                var new_pieces_placed = steam_get_stat_int("pieces_placed") + 1;
                steam_set_stat_int("pieces_placed", new_pieces_placed);
                steam_upload_score("pieces_placed_in", new_pieces_placed);
                if (global.total_number_of_pieces > 1)
                {
                    if (irandom(global.hint_drop_rate - 1) == 0)
                    {
                        if (steam_stats_ready())
                        {
                            audio_play_sound(s_click_hint_token, 1, false);
                            var new_hints_earned = steam_get_stat_int("hints_earned") + 1;
                            steam_set_stat_int("hints_earned", new_hints_earned);
                            ob_menu_cursor.HintUseQnt = 1;
                            ob_menu_cursor.HUQx = mouse_x;
                            ob_menu_cursor.HUQy = mouse_y;
                            ob_menu_cursor.HUQalpha = 2;
                            ob_menu_cursor.HUQsymbol = 1;
                        }
                    }
                }
            }
        }
        else if (y < ob_tray.y)
        {
            if ((global.level_type == 1 && point_in_rectangle(x, y, 246, 0, 1674, 781)) || (global.level_type == 2 && point_in_rectangle(x, y, 240, 0, 1680, 920)) || (global.level_type == 3 && point_in_rectangle(x, y, 420, 0, 1500, 1080)) || (global.level_type == 4 && point_in_rectangle(x, y, 0, 0, 1920, 730)))
            {
                global.can_pick_a_bit_up = 1;
                CurrentState = 1;
                audio_play_sound(s_theme_simple_grab_from_board, 10, false);
                ob_puzzles_generic_room_controller.HPD_board -= 1;
                depth = ob_puzzles_generic_room_controller.HPD_board;
            }
            else
            {
                global.can_pick_a_bit_up = 1;
                CurrentState = 0;
                direction = random(360);
                ob_puzzles_generic_room_controller.HPD_pool -= 1;
                depth = ob_puzzles_generic_room_controller.HPD_pool;
                if (global.theme_to_use == 0)
                {
                    instance_create(x, y, ob_theme_zen_fish_splash);
                    audio_play_sound(s_drop_piece_water, 10, false);
                }
                else
                {
                    audio_play_sound(s_theme_simple_grab_from_board, 10, false);
                }
            }
        }
        else
        {
            CurrentState = 4;
            TrayX = x;
            TrayY = y - ob_tray.y;
            TrayNum = ob_tray.TrayNum;
            global.can_pick_a_bit_up = 1;
            ob_puzzles_generic_room_controller.HPD_tray -= 1;
            depth = ob_puzzles_generic_room_controller.HPD_tray;
            audio_play_sound(s_piece_drop_in_tray, 10, false);
            if (ob_tray.TrayNum == 1)
            {
                ob_tray.TrayQnt1 += 1;
            }
            if (ob_tray.TrayNum == 2)
            {
                ob_tray.TrayQnt2 += 1;
            }
            if (ob_tray.TrayNum == 3)
            {
                ob_tray.TrayQnt3 += 1;
            }
            if (ob_tray.TrayNum == 4)
            {
                ob_tray.TrayQnt4 += 1;
            }
            if (ob_tray.TrayNum == 5)
            {
                ob_tray.TrayQnt5 += 1;
            }
            if (ob_tray.TrayNum == 6)
            {
                ob_tray.TrayQnt6 += 1;
            }
            if (ob_tray.TrayNum == 7)
            {
                ob_tray.TrayQnt7 += 1;
            }
            if (ob_tray.TrayNum == 8)
            {
                ob_tray.TrayQnt8 += 1;
            }
            if (ob_tray.TrayNum == 9)
            {
                ob_tray.TrayQnt9 += 1;
            }
            if (ob_tray.TrayNum == 10)
            {
                ob_tray.TrayQnt10 += 1;
            }
            if (ob_tray.TrayNum == 11)
            {
                ob_tray.TrayQnt11 += 1;
            }
            if (ob_tray.TrayNum == 12)
            {
                ob_tray.TrayQnt12 += 1;
            }
            if (ob_tray.TrayNum == 13)
            {
                ob_tray.TrayQnt13 += 1;
            }
            if (ob_tray.TrayNum == 14)
            {
                ob_tray.TrayQnt14 += 1;
            }
            if (ob_tray.TrayNum == 15)
            {
                ob_tray.TrayQnt15 += 1;
            }
            if (ob_tray.TrayNum == 16)
            {
                ob_tray.TrayQnt16 += 1;
            }
            if (ob_tray.TrayNum == 17)
            {
                ob_tray.TrayQnt17 += 1;
            }
            if (ob_tray.TrayNum == 18)
            {
                ob_tray.TrayQnt18 += 1;
            }
            if (ob_tray.TrayNum == 19)
            {
                ob_tray.TrayQnt19 += 1;
            }
            if (ob_tray.TrayNum == 20)
            {
                ob_tray.TrayQnt20 += 1;
            }
            var PuzGrid = ds_grid_create(4, global.puzzle_max_number_of_pieces + 1);
            var savefile = "p" + string(global.current_pack_open) + ".ini";
            var section = "P" + string(global.puzzle_number_to_play);
            ini_open(string(savefile));
            var grid_data = ini_read_string(section, "0", "");
            if (grid_data != "")
            {
                ds_grid_read(PuzGrid, grid_data);
            }
            ds_grid_set(PuzGrid, 0, puzzle_piece_number, ob_tray.TrayNum + 10);
            ds_grid_set(PuzGrid, 1, puzzle_piece_number, image_angle);
            ds_grid_set(PuzGrid, 2, puzzle_piece_number, TrayX);
            ds_grid_set(PuzGrid, 3, puzzle_piece_number, TrayY);
            ini_write_string(string(section), "0", ds_grid_write(PuzGrid));
            ds_grid_destroy(PuzGrid);
            ini_close();
        }
    }
}
if (CurrentState == 2)
{
    if ((global.using_a_gamepad == 1 && gamepad_button_check_pressed(0, gp_shoulderlb)) || mouse_check_button_pressed(mb_right) || keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_rshift))
    {
        if (global.piece_rotation == 1)
        {
            image_xscale = 0.7;
            image_yscale = image_xscale;
            if (image_angle == 0)
            {
                image_angle = 270;
            }
            else if (image_angle == 270)
            {
                image_angle = 180;
            }
            else if (image_angle == 180)
            {
                image_angle = 90;
            }
            else if (image_angle == 90)
            {
                image_angle = 0;
            }
            audio_play_sound(s_theme_glass_pick_up, 10, false);
        }
    }
}
if (keyboard_check_pressed(ord("L")))
{
    if (CurrentState == 2)
    {
        if (steam_stats_ready())
        {
            var HintCost = 3;
            var hints_earned = steam_get_stat_int("hints_earned");
            var hints_spent = steam_get_stat_int("hints_used");
            var location_hints_used = steam_get_stat_int("location_hints_used");
            var current_hint_amount = hints_earned - hints_spent;
            if (current_hint_amount >= HintCost)
            {
                hints_spent += HintCost;
                location_hints_used += 1;
                steam_set_stat_int("hints_used", hints_spent);
                steam_set_stat_int("location_hints_used", location_hints_used);
                instance_create(socket_x_location, socket_y_location, ob_level_hint_location_beacon);
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
if (keyboard_check_pressed(ord("A")))
{
    if (CurrentState == 2)
    {
        if (steam_stats_ready())
        {
            var HintCost = 1;
            var hints_earned = steam_get_stat_int("hints_earned");
            var hints_spent = steam_get_stat_int("hints_used");
            var location_hints_used = steam_get_stat_int("angle_hints_used");
            var current_hint_amount = hints_earned - hints_spent;
            if (current_hint_amount >= HintCost)
            {
                hints_spent += HintCost;
                location_hints_used += 1;
                steam_set_stat_int("hints_used", hints_spent);
                steam_set_stat_int("angle_hints_used", location_hints_used);
                image_angle = 0;
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
if (global.dev_tools_are_active == 1 && keyboard_check_pressed(ord("9")))
{
    global.can_pick_a_bit_up = 1;
    CurrentState = 3;
    x = socket_x_location;
    y = socket_y_location;
    image_angle = 0;
    piece_is_clicked_in = 1;
    global.total_number_of_pieces -= 1;
}
if (global.dev_tools_are_active == 1)
{
    if (place_meeting(x, y, ob_menu_cursor))
    {
        if (CurrentState != 3)
        {
            if (mouse_check_button(mb_left) && keyboard_check(ord("0")))
            {
                if (CurrentState == 0)
                {
                    x = socket_x_location;
                    y = socket_y_location;
                    image_angle = 0;
                    global.can_pick_a_bit_up = 1;
                    CurrentState = 3;
                    piece_is_clicked_in = 1;
                    global.total_number_of_pieces -= 1;
                }
            }
        }
    }
}
