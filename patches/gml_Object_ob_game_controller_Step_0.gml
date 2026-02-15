if (room == r_intro)
{
    if (intro_part == 0 || intro_part == 1)
    {
        if (keyboard_check_released(vk_space) || mouse_check_button_released(mb_left))
        {
            logo_alpha = 0;
            intro_part = 2;
            alarm[0] = 1;
        }
    }
    else if (intro_part == 2)
    {
        if (keyboard_check_pressed(vk_space) || mouse_check_button_released(mb_left))
        {
            sentence_complete = 1;
            hello_alpha = 0;
            alarm[1] = 1;
        }
    }
    else if (intro_part == 4)
    {
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 718, 1018, 1202, 1058))
        {
            if (mouse_check_button_pressed(mb_left))
            {
                SaveConversionInfo = 2;
                alarm[3] = 1;
            }
        }
    }
    else if (intro_part == 5)
    {
        if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 718, 1018, 1202, 1058))
        {
            if (mouse_check_button_released(mb_left))
            {
                SaveConversionInfo = 2;
                alarm[3] = 1;
            }
        }
    }
}
if (steam_is_screenshot_requested())
{
    var screenshot_file = "Pixel_Puzzles_Ultimate_" + string(screenshot_num) + ".png";
    screen_save(screenshot_file);
    steam_send_screenshot(screenshot_file, window_get_width(), window_get_height());
    screenshot_num += 1;
}

// === AUTO-SOLVE PACK (F10) ===
// States: 0=off, 1=active, 2=paused
// Phases: 0=on pack page waiting, 1=in puzzle solving, 2=puzzle done waiting, 3=exiting

if (keyboard_check_pressed(vk_f10))
{
    // === EXHAUSTIVE LOGGING ===
    show_debug_message("=== F10 PRESSED ===");
    show_debug_message("  room=" + room_get_name(room) + " (" + string(room) + ")");
    show_debug_message("  as_state=" + string(global.as_state));
    show_debug_message("  current_pack_open=" + string(global.current_pack_open));
    show_debug_message("  PackReturnPage=" + string(global.PackReturnPage));
    show_debug_message("  puz_ctrl_exists=" + string(instance_exists(ob_puzzles_generic_room_controller)));

    // Log new menu controller state
    var nm_obj = asset_get_index("ob_new_menu_controller");
    show_debug_message("  nm_obj asset_id=" + string(nm_obj));
    show_debug_message("  nm_obj exists=" + string(nm_obj >= 0 && instance_exists(nm_obj)));
    if (nm_obj >= 0 && instance_exists(nm_obj))
    {
        var nm_inst = instance_find(nm_obj, 0);
        show_debug_message("  nm_inst=" + string(nm_inst));
        show_debug_message("  nm_inst.pack_to_open=" + string(nm_inst.pack_to_open));
        if (variable_instance_exists(nm_inst, "current_menu_page"))
            show_debug_message("  nm_inst.current_menu_page=" + string(nm_inst.current_menu_page));
        if (variable_instance_exists(nm_inst, "open_pack_name_to_display"))
            show_debug_message("  nm_inst.open_pack_name_to_display=" + string(nm_inst.open_pack_name_to_display));
        if (variable_instance_exists(nm_inst, "pack_open_total_puzzles"))
            show_debug_message("  nm_inst.pack_open_total_puzzles=" + string(nm_inst.pack_open_total_puzzles));
    }

    // Log menu_return_to globals
    show_debug_message("  menu_return_to=" + string(global.menu_return_to));
    if (variable_global_exists("menu_return_to___pack_to_open"))
        show_debug_message("  menu_return_to___pack_to_open=" + string(global.menu_return_to___pack_to_open));
    else
        show_debug_message("  menu_return_to___pack_to_open=NOT SET");

    // Detect current pack from multiple sources
    var detected_pack = 0;

    // Source 1: global.current_pack_open (set when playing a puzzle)
    if (global.current_pack_open > 0 && global.current_pack_open < 7000)
    {
        detected_pack = global.current_pack_open;
        show_debug_message("  -> detected from current_pack_open: " + string(detected_pack));
    }

    // Source 2: new menu controller pack_to_open (viewing pack in new menu)
    if (detected_pack == 0 && nm_obj >= 0 && instance_exists(nm_obj))
    {
        var nm_inst = instance_find(nm_obj, 0);
        if (nm_inst.pack_to_open > 0)
        {
            detected_pack = nm_inst.pack_to_open;
            show_debug_message("  -> detected from nm pack_to_open: " + string(detected_pack));
        }
    }

    // Source 3: menu_return_to___pack_to_open
    if (detected_pack == 0 && variable_global_exists("menu_return_to___pack_to_open"))
    {
        if (global.menu_return_to___pack_to_open > 0)
        {
            detected_pack = global.menu_return_to___pack_to_open;
            show_debug_message("  -> detected from menu_return_to___pack_to_open: " + string(detected_pack));
        }
    }

    // Source 4: PackReturnPage (old menu system)
    if (detected_pack == 0 && global.PackReturnPage > 0)
    {
        detected_pack = global.PackReturnPage;
        show_debug_message("  -> detected from PackReturnPage: " + string(detected_pack));
    }

    // Source 5: Read pack_num from any puzzle button on the pack page
    if (detected_pack == 0)
    {
        var mpb_obj = asset_get_index("ob_menu_puz_button");
        if (mpb_obj >= 0 && instance_exists(mpb_obj))
        {
            var mpb_inst = instance_find(mpb_obj, 0);
            if (variable_instance_exists(mpb_inst, "pack_num") && mpb_inst.pack_num > 0)
            {
                detected_pack = mpb_inst.pack_num;
                show_debug_message("  -> detected from ob_menu_puz_button.pack_num: " + string(detected_pack));
            }
        }
    }

    // Source 6: Read pack_to_open from ob_puz_pac_but (new menu pack buttons)
    if (detected_pack == 0)
    {
        var ppb_obj = asset_get_index("ob_puz_pac_but");
        if (ppb_obj >= 0 && instance_exists(ppb_obj))
        {
            var ppb_inst = instance_find(ppb_obj, 0);
            if (variable_instance_exists(ppb_inst, "pack_num") && ppb_inst.pack_num > 0)
            {
                detected_pack = ppb_inst.pack_num;
                show_debug_message("  -> detected from ob_puz_pac_but.pack_num: " + string(detected_pack));
            }
        }
    }

    show_debug_message("  FINAL detected_pack=" + string(detected_pack));

    if (global.as_state == 0)
    {
        // Load common config
        ini_open("autosolve.ini");
        global.as_cfg_overlay_opacity = ini_read_real("overlay", "opacity", 0.7);
        global.as_cfg_overlay_show = ini_read_real("overlay", "show", 1);
        global.as_cfg_exit_delay = ini_read_real("pack_solve", "exit_delay_sec", 3);
        global.as_cfg_between_delay = ini_read_real("pack_solve", "between_puzzles_sec", 2);
        global.dev_autoresolve_delay = ini_read_real("dev", "step_delay", 1);
        global.as_cfg_debug_overlay = ini_read_real("dev", "debug_overlay", 0);
        ini_close();
        show_debug_message("Auto-solve: config loaded. step_delay=" + string(global.dev_autoresolve_delay));

        // In puzzle room: single puzzle auto-solve
        if (instance_exists(ob_puzzles_generic_room_controller))
        {
            global.dev_autoresolve_active = 1;
            global.dev_autoresolve_timer = 0;
            global.as_state = 1;
            global.as_phase = 1;
            global.as_pack = 0;
            global.as_cur_puzzle_num = global.puzzle_number_to_play;
            show_debug_message("F10: single puzzle auto-solve ON");
        }
        else if (detected_pack > 0)
        {
            // Load PI_G to get pack info
            var pack_id = detected_pack;
            ini_open("pidsg.ini");
            var pi_data = ini_read_string("pi", "0", "");
            ini_close();
            show_debug_message("Auto-solve: pi_data length=" + string(string_length(pi_data)) + " pack_id=" + string(pack_id));

            if (pi_data != "")
            {
                global.as_pi_grid = ds_grid_create(global.PackGridX, global.TotalPacks + 1);
                ds_grid_read(global.as_pi_grid, pi_data);

                var num_puzzles = ds_grid_get(global.as_pi_grid, 2, pack_id);
                var pack_name = ds_grid_get(global.as_pi_grid, 1, pack_id);
                show_debug_message("Auto-solve: pack_name=" + string(pack_name) + " num_puzzles=" + string(num_puzzles));

                // Load PC grid (piece counts) from save file
                var pc_grid = ds_grid_create(1, 500);
                var savefile = "p" + string(pack_id) + ".ini";
                ini_open(string(savefile));
                var pc_data = ini_read_string("PC", "0", "");
                if (pc_data != "") { ds_grid_read(pc_grid, pc_data); }
                ini_close();

                // Count incomplete puzzles using piece counts from save
                global.as_total = 0;
                global.as_total_already = 0;
                for (var q = 1; q <= num_puzzles; q++)
                {
                    var total_pieces = ds_grid_get(global.as_pi_grid, 10 + q, pack_id);
                    var placed_pieces = ds_grid_get(pc_grid, 0, q);
                    if (placed_pieces >= total_pieces && total_pieces > 0)
                    {
                        global.as_total_already += 1;
                    }
                    else
                    {
                        global.as_total += 1;
                    }
                }
                ds_grid_destroy(pc_grid);
                show_debug_message("Auto-solve: total_to_do=" + string(global.as_total) + " already_done=" + string(global.as_total_already));

                if (global.as_total > 0)
                {
                    global.as_state = 1;
                    global.as_phase = 0;
                    global.as_pack = pack_id;
                    global.as_pack_room = room;
                    global.as_puzzle = 1;
                    global.as_count = 0;
                    global.as_timer = 0;
                    global.as_cur_pack_name = pack_name;
                    global.as_cur_pieces = 0;
                    global.as_last_puzzle_num = 0;
                    global.as_last_pieces = 0;
                    global.as_pack_total = num_puzzles;
                    global.as_pack_done = global.as_total_already;
                    show_debug_message("Auto-solve STARTED: " + string(pack_name) + " - " + string(global.as_total) + " puzzles to solve. pack_room=" + string(room) + " (" + room_get_name(room) + ")");
                }
                else
                {
                    // Pack already complete - show flash overlay
                    global.as_cur_pack_name = pack_name;
                    global.as_pack_total = num_puzzles;
                    global.as_pack_done = num_puzzles;
                    global.as_complete_flash = 180; // 3 seconds at 60fps
                    ds_grid_destroy(global.as_pi_grid);
                    global.as_pi_grid = -1;
                    show_debug_message("Auto-solve: pack already complete!");
                }
            }
            else
            {
                show_debug_message("Auto-solve: ERROR - pidsg.ini pi data is empty!");
            }
        }
        else
        {
            show_debug_message("Auto-solve: current_pack_open=" + string(global.current_pack_open) + " - not a valid pack page");
        }
    }
    else if (global.as_state == 1)
    {
        if (global.as_phase == 4)
        {
            // Completed state: dismiss overlay
            global.as_state = 0;
            global.as_phase = 0;
            global.dev_autoresolve_active = 0;
            if (global.as_pi_grid != -1)
            {
                ds_grid_destroy(global.as_pi_grid);
                global.as_pi_grid = -1;
            }
            show_debug_message("Auto-solve: dismissed completed overlay");
        }
        else
        {
            global.as_state = 2;
            if (global.dev_autoresolve_active == 1)
            {
                global.dev_autoresolve_active = 0;
            }
            show_debug_message("Auto-solve PAUSED");
        }
    }
    else if (global.as_state == 2)
    {
        global.as_state = 1;
        // For single puzzle: re-enable auto-resolve immediately
        if (global.as_pack == 0 && instance_exists(ob_puzzles_generic_room_controller))
        {
            global.dev_autoresolve_active = 1;
            global.dev_autoresolve_timer = 0;
        }
        show_debug_message("Auto-solve RESUMED");
    }
}

// F8: stop auto-solve completely (or dismiss completed overlay)
if (keyboard_check_pressed(vk_f8) && (global.as_state > 0 || global.as_complete_flash > 0))
{
    show_debug_message("Auto-solve STOPPED by user.");
    global.as_state = 0;
    global.as_phase = 0;
    global.as_complete_flash = 0;
    if (global.dev_autoresolve_active == 1)
    {
        global.dev_autoresolve_active = 0;
    }
    if (global.as_pi_grid != -1)
    {
        ds_grid_destroy(global.as_pi_grid);
        global.as_pi_grid = -1;
    }
}

// Process auto-solve pack
if (global.as_state == 1)
{
    // Phase 0: On pack page, waiting before entering next puzzle
    if (global.as_phase == 0 && room == global.as_pack_room)
    {
        if (global.as_timer > 0)
        {
            global.as_timer -= 1;
        }
        else
        {
            // Find next incomplete puzzle in this pack (check piece counts from save)
            var pack_id = global.as_pack;
            var num_puzzles = ds_grid_get(global.as_pi_grid, 2, pack_id);
            var found = false;

            // Load current piece counts
            var pc_grid = ds_grid_create(1, 500);
            var savefile = "p" + string(pack_id) + ".ini";
            ini_open(string(savefile));
            var pc_data = ini_read_string("PC", "0", "");
            if (pc_data != "") { ds_grid_read(pc_grid, pc_data); }
            ini_close();

            while (!found && global.as_puzzle <= num_puzzles)
            {
                var total_pieces = ds_grid_get(global.as_pi_grid, 10 + global.as_puzzle, pack_id);
                var placed_pieces = ds_grid_get(pc_grid, 0, global.as_puzzle);
                if (placed_pieces >= total_pieces && total_pieces > 0)
                {
                    show_debug_message("Auto-solve: puzzle #" + string(global.as_puzzle) + " already complete (" + string(placed_pieces) + "/" + string(total_pieces) + "), skipping");
                    global.as_puzzle += 1;
                    continue;
                }
                found = true;
            }
            ds_grid_destroy(pc_grid);

            if (found)
            {
                var puz = global.as_puzzle;

                // Read piece count from PI_G grid (col 10+Q)
                var pieces = ds_grid_get(global.as_pi_grid, 10 + puz, pack_id);
                show_debug_message("Auto-solve: puzzle #" + string(puz) + " pieces from PI_G=" + string(pieces));
                global.as_cur_pieces = pieces;

                // Build file path (same logic as ob_menu_puz_button)
                var file_name = "";
                if (pack_id == 6000 || pack_id == 5000)
                {
                    file_name = "\\misc\\puzshop\\p" + string(pack_id) + "p" + string(puz);
                }
                else if (pack_id == 7000)
                {
                    file_name = "\\misc\\challenge\\p" + string(pack_id) + "p" + string(puz);
                }
                else
                {
                    file_name = "\\misc\\content\\" + string(pack_id) + "\\p" + string(pack_id) + "p" + string(puz);
                }

                var full_path = working_directory + string(file_name);
                show_debug_message("Auto-solve: image path=" + full_path + ".png exists=" + string(file_exists(full_path + ".png")));

                if (!file_exists(full_path + ".png"))
                {
                    show_debug_message("Auto-solve: ERROR - puzzle image not found! Skipping puzzle #" + string(puz));
                    global.as_puzzle += 1;
                }
                else
                {
                    // Set basic globals
                    global.current_pack_open = pack_id;
                    global.puzzle_number_to_play = puz;
                    global.total_number_of_pieces = pieces;
                    global.puzzle_max_number_of_pieces = pieces;
                    global.MenuReturnPage = 19;
                    global.PackReturnPage = pack_id;

                    // Load ghost image and determine level_type from sprite width
                    if (global.current_puzzle_ghost_image != 0)
                    {
                        sprite_delete(global.current_puzzle_ghost_image);
                    }
                    global.current_puzzle_ghost_image = sprite_add(full_path + ".png", 0, false, false, 0, 0);
                    var sprW = sprite_get_width(global.current_puzzle_ghost_image);
                    show_debug_message("Auto-solve: sprite width=" + string(sprW));

                    if (sprW == 1400)
                        global.level_type = 2;
                    else if (sprW == 1388)
                        global.level_type = 1;
                    else if (sprW == 1880)
                        global.level_type = 4;
                    else if (sprW == 1040)
                        global.level_type = 3;
                    else if (pack_id == 6000)
                        global.level_type = 5;
                    else
                    {
                        global.level_type = 1;
                        show_debug_message("Auto-solve: WARNING - unknown sprite width " + string(sprW) + ", defaulting level_type=1");
                    }

                    // Calculate piece sprite origins (spx, spy) based on bits
                    var spx = 0;
                    var spy = 0;
                    if (pack_id == 6000)
                    {
                        // Figural puzzles - hardcoded per puzzle number
                        if (puz == 1) { spx = 118; spy = 131; }
                        else if (puz == 2) { spx = 172; spy = 143; }
                        else if (puz == 3) { spx = 140; spy = 174; }
                        else if (puz == 4) { spx = 132; spy = 110; }
                        else if (puz == 5) { spx = 92; spy = 95; }
                        else if (puz == 6) { spx = 64; spy = 64; }
                        else if (puz == 7) { spx = 68; spy = 81; }
                        else if (puz == 8) { spx = 86; spy = 81; }
                        else if (puz == 9) { spx = 110; spy = 130; }
                        else if (puz == 10) { spx = 77; spy = 81; }
                        else if (puz == 11) { spx = 77; spy = 79; }
                        else if (puz == 12) { spx = 83; spy = 81; }
                        else if (puz == 13) { spx = 140; spy = 111; }
                        else if (puz == 14) { spx = 112; spy = 97; }
                        else if (puz == 15) { spx = 120; spy = 121; }
                        else if (puz == 16) { spx = 117; spy = 109; }
                        else if (puz == 17) { spx = 97; spy = 107; }
                        else if (puz == 18) { spx = 83; spy = 83; }
                        else if (puz == 19) { spx = 190; spy = 165; }
                    }
                    else
                    {
                        // Standard puzzles - based on piece count
                        if (pieces == 60) { spx = 132; spy = 123; }
                        else if (pieces == 112) { spx = 92; spy = 90; }
                        else if (pieces == 153) { spx = 75; spy = 80; }
                        else if (pieces == 220) { spx = 64; spy = 64; }
                        else if (pieces == 350) { spx = 49; spy = 49; }
                        else if (pieces == 96) { spx = 112; spy = 108; }
                        else if (pieces == 140) { spx = 96; spy = 86; }
                        else if (pieces == 216) { spx = 74; spy = 71; }
                        else if (pieces == 330) { spx = 59; spy = 49; }
                        else if (pieces == 425) { spx = 51; spy = 49; }
                        else if (pieces == 640 && global.level_type == 2) { spx = 39; spy = 41; }
                        else if (pieces == 840) { spx = 35; spy = 33; }
                        else if (pieces == 1410) { spx = 26; spy = 26; }
                        else if (pieces == 100) { spx = 100; spy = 100; }
                        else if (pieces == 169) { spx = 76; spy = 76; }
                        else if (pieces == 324) { spx = 53; spy = 53; }
                        else if (pieces == 400) { spx = 48; spy = 48; }
                        else if (pieces == 676) { spx = 36; spy = 36; }
                        else if (pieces == 841) { spx = 30; spy = 30; }
                        else if (pieces == 126) { spx = 100; spy = 100; }
                        else if (pieces == 168) { spx = 85; spy = 85; }
                        else if (pieces == 250) { spx = 71; spy = 67; }
                        else if (pieces == 455) { spx = 49; spy = 51; }
                        else if (pieces == 640 && global.level_type == 4) { spx = 42; spy = 40; }
                        else if (pieces == 810) { spx = 37; spy = 35; }
                        else if (pieces == 1000) { spx = 33; spy = 31; }
                    }

                    // Load puzzle pieces sprite
                    if (global.puzzle_sprite_index_to_use != 0)
                    {
                        sprite_delete(global.puzzle_sprite_index_to_use);
                    }
                    global.puzzle_sprite_index_to_use = sprite_add(full_path + "p.png", pieces, false, false, spx, spy);
                    sprite_collision_mask(global.puzzle_sprite_index_to_use, true, 1, 0, 0, 0, 0, 0, 0);

                    show_debug_message("Auto-solve: level_type=" + string(global.level_type) + " spx=" + string(spx) + " spy=" + string(spy));
                    show_debug_message("Auto-solve: ghost_img=" + string(global.current_puzzle_ghost_image) + " pieces_spr=" + string(global.puzzle_sprite_index_to_use));

                    global.as_cur_puzzle_num = puz;
                    show_debug_message("Auto-solve: ENTERING puzzle #" + string(puz) + " (" + string(pieces) + " pieces, level_type=" + string(global.level_type) + ")");
                    global.as_phase = 1;
                    global.as_room_init_wait = 180;
                    room_goto(asset_get_index("r_puzzle_room"));
                }
            }
            else
            {
                // Pack complete! Keep overlay open with phase 4
                global.as_pack_done = global.as_pack_total;
                global.as_phase = 4;
                if (global.as_pi_grid != -1)
                {
                    ds_grid_destroy(global.as_pi_grid);
                    global.as_pi_grid = -1;
                }
                show_debug_message("Auto-solve COMPLETE! Pack " + string(global.as_cur_pack_name) + " done. Solved " + string(global.as_count) + " puzzles.");
            }
        }
    }

    // Phase 1: In puzzle room, solving
    if (global.as_phase == 1 && room == asset_get_index("r_puzzle_room"))
    {
        // Pack mode: wait for room init then activate auto-resolve
        if (global.as_pack > 0 && global.dev_autoresolve_active == 0)
        {
            if (global.as_room_init_wait > 0)
            {
                global.as_room_init_wait -= 1;
            }
            else
            {
                global.dev_autoresolve_active = 1;
                global.dev_autoresolve_timer = 0;
                global.as_room_init_wait = 5;
                show_debug_message("Auto-solve: activated auto-resolve in puzzle room");
            }
        }

        // Check if puzzle completed
        if (instance_exists(ob_puzzles_generic_room_controller))
        {
            if (ob_puzzles_generic_room_controller.puzzle_is_over == 1)
            {
                if (global.as_pack > 0)
                {
                    // Pack mode: wait then exit puzzle
                    global.as_phase = 2;
                    global.as_exit_timer = round(global.as_cfg_exit_delay * 60);
                    show_debug_message("Auto-solve: puzzle #" + string(global.as_puzzle) + " COMPLETED, waiting " + string(global.as_cfg_exit_delay) + "s before exit");
                }
                else
                {
                    // Single puzzle: show completed state
                    global.as_phase = 4;
                    show_debug_message("Auto-solve: single puzzle COMPLETED");
                }
            }
        }
    }

    // Single puzzle: cleanup if user left the puzzle room
    if (global.as_pack == 0 && global.as_phase != 4 && room != asset_get_index("r_puzzle_room"))
    {
        global.as_state = 0;
        global.as_phase = 0;
        global.dev_autoresolve_active = 0;
        show_debug_message("Auto-solve: single puzzle mode cleaned up (left puzzle room)");
    }

    // Phase 2: Puzzle done, wait before triggering exit
    if (global.as_phase == 2)
    {
        if (global.as_exit_timer > 0)
        {
            global.as_exit_timer -= 1;
        }
        else
        {
            // Trigger exit back to pack page
            if (instance_exists(ob_puzzles_generic_room_controller))
            {
                ob_puzzles_generic_room_controller.ExitPuzzle = 1;
                global.can_pick_a_bit_up = 0;
                global.can_use_ui_and_buttons_in_puzzle = 0;
                show_debug_message("Auto-solve: triggered ExitPuzzle, transitioning to phase 3");
            }
            global.as_phase = 3;
        }
    }

    // Phase 3: Exiting, wait for room transition back to pack page
    if (global.as_phase == 3 && room == global.as_pack_room)
    {
        // We're back on the pack page
        global.as_count += 1;
        global.as_pack_done += 1;
        global.as_last_puzzle_num = global.as_cur_puzzle_num;
        global.as_last_pieces = global.as_cur_pieces;
        global.as_puzzle += 1;
        global.as_phase = 0;
        global.as_timer = round(global.as_cfg_between_delay * 60);
        show_debug_message("Auto-solve: back on pack page. " + string(global.as_count) + "/" + string(global.as_total) + " done.");
    }
}

// Decrement complete flash timer
if (global.as_complete_flash > 0)
{
    global.as_complete_flash -= 1;
}
