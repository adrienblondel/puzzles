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

// === AUTO-SOLVE ALL (F10) ===
// States: 0=off, 1=active, 2=paused

if (keyboard_check_pressed(vk_f10))
{
    if (global.as_state == 0)
    {
        // Load config from autosolve.ini (with defaults)
        ini_open("autosolve.ini");
        global.as_cfg_initial_min = ini_read_real("timing", "initial_delay_min", 5);
        global.as_cfg_min_delay = ini_read_real("timing", "min_delay_min", 30);
        global.as_cfg_max_delay = ini_read_real("timing", "max_delay_min", 60);
        global.as_cfg_variation = ini_read_real("timing", "variation_min", 5);
        global.as_cfg_overlay_x = ini_read_real("overlay", "x", 200);
        global.as_cfg_overlay_opacity = ini_read_real("overlay", "opacity", 0.7);
        global.as_cfg_overlay_show = ini_read_real("overlay", "show", 1);
        global.as_cfg_skip_packs = ini_read_string("solve", "skip_packs", "");
        ini_close();

        show_debug_message("Auto-solve config: initial=" + string(global.as_cfg_initial_min) + "min, delay=" + string(global.as_cfg_min_delay) + "-" + string(global.as_cfg_max_delay) + "min, variation=+/-" + string(global.as_cfg_variation) + "min");

        // Start: load PI_G from pidsg.ini and count puzzles to solve
        ini_open("pidsg.ini");
        var pi_data = ini_read_string("pi", "0", "");
        ini_close();
        if (pi_data != "")
        {
            global.as_pi_grid = ds_grid_create(global.PackGridX, global.TotalPacks + 1);
            ds_grid_read(global.as_pi_grid, pi_data);

            // Count total puzzles to solve (skip already completed + unowned DLC)
            global.as_total = 0;
            global.as_total_already = 0;
            var skip_str = "," + global.as_cfg_skip_packs + ",";
            for (var p = 1; p <= global.TotalPacks; p++)
            {
                // Skip packs in the skip list
                if (global.as_cfg_skip_packs != "" && string_pos("," + string(p) + ",", skip_str) > 0)
                {
                    continue;
                }

                // Check pack ownership via Steam DLC API
                var dlc_appid = ds_grid_get(global.as_pi_grid, 0, p);
                if (!steam_user_owns_dlc(dlc_appid))
                {
                    continue; // Skip unowned packs
                }

                var np = ds_grid_get(global.as_pi_grid, 2, p);
                for (var q = 1; q <= np; q++)
                {
                    var pc = ds_grid_get(global.as_pi_grid, 10 + q, p);
                    if (pc > 0)
                    {
                        var ach = "complete_pack_" + string(p) + "_puzzle_" + string(q);
                        if (steam_get_achievement(ach))
                        {
                            global.as_total_already += 1;
                        }
                        else
                        {
                            global.as_total += 1;
                        }
                    }
                }
            }

            if (global.as_total > 0)
            {
                global.as_state = 1;
                global.as_pack = 1;
                global.as_puzzle = 1;
                global.as_count = 0;
                global.as_timer = round(global.as_cfg_initial_min * 60 * 60); // initial delay from config
                global.as_cur_pack_name = "";
                global.as_cur_pieces = 0;
                global.as_last_pack_name = "";
                global.as_last_pieces = 0;
                global.as_pack_done = 0;
                global.as_pack_total = 0;
                show_debug_message("Auto-solve started: " + string(global.as_total) + " puzzles to solve (" + string(global.as_total_already) + " already done)");
            }
            else
            {
                ds_grid_destroy(global.as_pi_grid);
                global.as_pi_grid = -1;
                show_debug_message("Auto-solve: nothing to solve, all puzzles complete!");
            }
        }
    }
    else if (global.as_state == 1)
    {
        // Pause
        global.as_state = 2;
        show_debug_message("Auto-solve paused");
    }
    else if (global.as_state == 2)
    {
        // Resume
        global.as_state = 1;
        show_debug_message("Auto-solve resumed");
    }
}

// F11: stop auto-solve completely
if (keyboard_check_pressed(vk_f11) && global.as_state > 0)
{
    show_debug_message("Auto-solve STOPPED by user. Solved " + string(global.as_count) + "/" + string(global.as_total) + " puzzles.");
    global.as_state = 0;
    if (global.as_pi_grid != -1)
    {
        ds_grid_destroy(global.as_pi_grid);
        global.as_pi_grid = -1;
    }
}

// Process auto-solve tick
if (global.as_state == 1)
{
    if (global.as_timer > 0)
    {
        global.as_timer -= 1;
    }
    else
    {
        // Find next unsolved puzzle starting from current position
        var found = false;
        var skip_str2 = "," + global.as_cfg_skip_packs + ",";
        while (!found && global.as_pack <= global.TotalPacks)
        {
            // Skip packs in the skip list
            if (global.as_cfg_skip_packs != "" && string_pos("," + string(global.as_pack) + ",", skip_str2) > 0)
            {
                global.as_pack += 1;
                global.as_puzzle = 1;
                continue;
            }

            // Check pack ownership via Steam DLC API
            var da = ds_grid_get(global.as_pi_grid, 0, global.as_pack);
            if (!steam_user_owns_dlc(da))
            {
                global.as_pack += 1;
                global.as_puzzle = 1;
                continue;
            }

            var num_puzzles = ds_grid_get(global.as_pi_grid, 2, global.as_pack);
            if (global.as_puzzle > num_puzzles || num_puzzles <= 0)
            {
                // Move to next pack
                global.as_pack += 1;
                global.as_puzzle = 1;
                continue;
            }

            var num_pieces = ds_grid_get(global.as_pi_grid, 10 + global.as_puzzle, global.as_pack);
            if (num_pieces <= 0)
            {
                global.as_puzzle += 1;
                continue;
            }

            var ach_name = "complete_pack_" + string(global.as_pack) + "_puzzle_" + string(global.as_puzzle);
            if (steam_get_achievement(ach_name))
            {
                // Already solved (maybe by F9 manual), skip
                global.as_puzzle += 1;
                continue;
            }

            // Found an unsolved puzzle - solve it!
            found = true;
            var pack_idx = global.as_pack;
            var puz_idx = global.as_puzzle;
            var pack_name = ds_grid_get(global.as_pi_grid, 1, pack_idx);

            // Update current info for overlay
            global.as_cur_pack_name = pack_name;
            global.as_cur_pieces = num_pieces;

            // Compute pack progress for overlay
            global.as_pack_total = num_puzzles;
            global.as_pack_done = 0;
            for (var k = 1; k <= num_puzzles; k++)
            {
                var ka = "complete_pack_" + string(pack_idx) + "_puzzle_" + string(k);
                if (steam_get_achievement(ka))
                {
                    global.as_pack_done += 1;
                }
            }

            // === Write INI save data ===
            var savefile = "p" + string(pack_idx) + ".ini";
            ini_open(savefile);

            // Read existing PuzGrid or create new
            var PuzGrid = ds_grid_create(4, num_pieces + 1);
            var section = "P" + string(puz_idx);
            var grid_data = ini_read_string(section, "0", "");
            if (grid_data != "")
            {
                ds_grid_read(PuzGrid, grid_data);
            }

            // Count already saved pieces
            var already_saved = 0;
            for (var i = 1; i <= num_pieces; i++)
            {
                if (ds_grid_get(PuzGrid, 0, i) == 1)
                {
                    already_saved += 1;
                }
                ds_grid_set(PuzGrid, 0, i, 1); // mark placed
                ds_grid_set(PuzGrid, 1, i, 0); // no rotation
            }
            ini_write_string(section, "0", ds_grid_write(PuzGrid));
            ds_grid_destroy(PuzGrid);

            // Update ClickedGrid (piece count shown on thumbnails)
            var ClickedGrid = ds_grid_create(1, 500);
            var clicked_data = ini_read_string("PC", "0", "");
            if (clicked_data != "")
            {
                ds_grid_read(ClickedGrid, clicked_data);
            }
            ds_grid_set(ClickedGrid, 0, puz_idx, num_pieces);
            ini_write_string("PC", "0", ds_grid_write(ClickedGrid));
            ds_grid_destroy(ClickedGrid);

            ini_close();

            // === Steam achievements & stats ===
            var newly_saved = num_pieces - already_saved;
            if (steam_stats_ready())
            {
                // Set puzzle achievement
                steam_set_achievement(ach_name);

                // Update pieces_placed
                if (newly_saved > 0)
                {
                    var new_pp = steam_get_stat_int("pieces_placed") + newly_saved;
                    steam_set_stat_int("pieces_placed", new_pp);
                    steam_upload_score("pieces_placed_in", new_pp);
                }

                // Update total_normal_puzzles_beat
                var pbeat = steam_get_stat_int("total_normal_puzzles_beat") + 1;
                steam_set_stat_int("total_normal_puzzles_beat", pbeat);
                steam_upload_score("number_of_puzzles_completed", pbeat);

                // Gold bits (based on piece count tiers)
                var Gg = 0;
                if (num_pieces >= 0 && num_pieces < 200) { Gg = 1; }
                else if (num_pieces >= 200 && num_pieces < 300) { Gg = 2; }
                else if (num_pieces >= 300 && num_pieces < 400) { Gg = 3; }
                else if (num_pieces >= 400 && num_pieces < 500) { Gg = 4; }
                else if (num_pieces >= 600 && num_pieces < 700) { Gg = 6; }
                else if (num_pieces >= 700 && num_pieces < 800) { Gg = 7; }
                else if (num_pieces >= 800 && num_pieces < 900) { Gg = 8; }
                else if (num_pieces == 1000) { Gg = 10; }
                else if (num_pieces == 1410) { Gg = 14; }
                var GoldDrop = Gg * global.GoldMultiplier;
                if (GoldDrop > 0)
                {
                    var GoldE = steam_get_stat_int("gold_bits_earned") + GoldDrop;
                    steam_set_stat_int("gold_bits_earned", GoldE);
                    steam_upload_score("most_gold_earned", GoldE);
                }

                // Check if full pack is now complete
                var pack_complete = true;
                for (var j = 1; j <= num_puzzles; j++)
                {
                    var pa = "complete_pack_" + string(pack_idx) + "_puzzle_" + string(j);
                    if (!steam_get_achievement(pa))
                    {
                        pack_complete = false;
                        break;
                    }
                }
                if (pack_complete)
                {
                    var pack_ach = "complete_pack_" + string(pack_idx);
                    if (!steam_get_achievement(pack_ach))
                    {
                        steam_set_achievement(pack_ach);
                        var new_packs = steam_get_stat_int("total_packs_complete") + 1;
                        steam_set_stat_int("total_packs_complete", new_packs);
                        show_debug_message("Auto-solve: Pack " + string(pack_name) + " COMPLETE!");
                    }
                }
            }

            // Update in-memory globals for MY LIBRARY counters
            variable_global_set("puzzle_pack_" + string(pack_idx) + "_puzzle_" + string(puz_idx) + "_complete", 1);

            // Update overlay state
            global.as_count += 1;
            global.as_last_pack_name = pack_name;
            global.as_last_pieces = num_pieces;
            global.as_pack_done += 1;

            show_debug_message("Auto-solve [" + string(global.as_count) + "/" + string(global.as_total) + "]: " + string(pack_name) + " #" + string(puz_idx) + " (" + string(num_pieces) + " pieces)");

            // Advance to next puzzle
            global.as_puzzle += 1;

            // Calculate delay: proportional to piece count + random variation (from config)
            var range = global.as_cfg_max_delay - global.as_cfg_min_delay;
            var base_min = global.as_cfg_min_delay + (num_pieces / 1000) * range;
            if (base_min > global.as_cfg_max_delay) { base_min = global.as_cfg_max_delay; }
            var variation = irandom_range(-global.as_cfg_variation, global.as_cfg_variation);
            var delay_min = base_min + variation;
            if (delay_min < 1) { delay_min = 1; }
            global.as_timer = round(delay_min * 60 * 60); // convert minutes to frames at 60fps

            show_debug_message("Auto-solve: next in " + string(delay_min) + " minutes");
        }

        // Check if we've gone through all packs
        if (!found && global.as_pack > global.TotalPacks)
        {
            show_debug_message("Auto-solve COMPLETE! Solved " + string(global.as_count) + " puzzles.");
            global.as_state = 0;
            if (global.as_pi_grid != -1)
            {
                ds_grid_destroy(global.as_pi_grid);
                global.as_pi_grid = -1;
            }
        }
    }
}
