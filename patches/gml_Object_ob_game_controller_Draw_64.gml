if (global.dev_tools_are_active == 1)
{
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_font(f_main_20);
    draw_set_colour(c_black);
    draw_text(8, 30, "FPS=" + string(fps));
    draw_set_colour(c_white);
    draw_text(10, 32, "FPS=" + string(fps));
}

// === AUTO-SOLVE PACK OVERLAY ===
if (global.as_state > 0 && global.as_cfg_overlay_show == 1)
{
    var gui_w = display_get_gui_width();
    var gui_h = display_get_gui_height();
    var sc = gui_h / 1080; // scale factor relative to 1080p

    var pad = round(16 * sc);
    var line_h = round(24 * sc);
    var bar_w = round(240 * sc);
    var bar_h = round(14 * sc);
    var bar_gap = round(8 * sc);
    var section_gap = round(14 * sc);
    var ow = round(420 * sc);

    // Calculate dynamic height
    var oh = pad * 2;
    oh += line_h + section_gap; // title
    oh += line_h; // pack name
    oh += bar_gap;
    oh += bar_h + section_gap; // pack bar
    if (global.as_phase == 1 && room == asset_get_index("r_puzzle_room"))
    {
        oh += line_h; // puzzle label
        oh += bar_gap;
        oh += bar_h + section_gap; // piece bar
    }
    if (global.as_last_puzzle_num > 0 && global.as_count > 0) { oh += line_h + bar_gap; }
    if (global.as_state == 1 && global.as_phase == 0 && global.as_timer > 0) { oh += line_h + bar_gap; }
    if (global.as_state == 1 && global.as_phase == 2) { oh += line_h + bar_gap; }
    if (global.as_state == 2) { oh += line_h + bar_gap; }
    oh += line_h; // hints

    var ox = round(10 * sc);
    var oy = gui_h - oh - round(10 * sc);

    // Background
    draw_set_alpha(global.as_cfg_overlay_opacity);
    draw_set_colour(c_black);
    draw_roundrect(ox, oy, ox + ow, oy + oh, false);
    draw_set_alpha(1);

    // Border
    draw_set_colour(make_colour_rgb(235, 188, 73));
    draw_roundrect(ox, oy, ox + ow, oy + oh, true);

    draw_set_font(f_main_20);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    var tx = ox + pad;
    var ty = oy + pad;

    // Title
    if (global.as_state == 2)
    {
        draw_set_colour(make_colour_rgb(255, 200, 50));
        draw_text_transformed(tx, ty, "AUTO-SOLVE PAUSED", sc, sc, 0);
    }
    else
    {
        draw_set_colour(make_colour_rgb(100, 255, 100));
        draw_text_transformed(tx, ty, "AUTO-SOLVE PACK", sc, sc, 0);
    }
    ty += line_h + section_gap;

    // Pack name
    draw_set_colour(make_colour_rgb(200, 200, 255));
    draw_text_transformed(tx, ty, string(global.as_cur_pack_name), sc, sc, 0);
    ty += line_h + bar_gap;

    // Pack progress bar
    var pack_pct = 0;
    if (global.as_pack_total > 0) { pack_pct = (global.as_pack_done / global.as_pack_total) * 100; }
    var pack_fill = 0;
    if (global.as_pack_total > 0) { pack_fill = (global.as_pack_done / global.as_pack_total) * bar_w; }

    draw_set_colour(make_colour_rgb(60, 60, 60));
    draw_rectangle(tx, ty, tx + bar_w, ty + bar_h, false);
    if (pack_fill > 1)
    {
        draw_set_colour(make_colour_rgb(80, 200, 80));
        draw_rectangle(tx, ty, tx + pack_fill, ty + bar_h, false);
    }
    draw_set_colour(c_white);
    draw_text_transformed(tx + bar_w + round(10 * sc), ty, string(global.as_pack_done) + "/" + string(global.as_pack_total) + " (" + string(round(pack_pct)) + "%)", sc, sc, 0);
    ty += bar_h + section_gap;

    // Piece progress bar (only when in puzzle room)
    if (global.as_phase == 1 && room == asset_get_index("r_puzzle_room"))
    {
        var placed = global.puzzle_max_number_of_pieces - global.total_number_of_pieces;
        var total_pc = global.puzzle_max_number_of_pieces;
        var pc_pct = 0;
        if (total_pc > 0) { pc_pct = (placed / total_pc) * 100; }
        var pc_fill = 0;
        if (total_pc > 0) { pc_fill = (placed / total_pc) * bar_w; }

        draw_set_colour(make_colour_rgb(200, 200, 255));
        draw_text_transformed(tx, ty, "Puzzle #" + string(global.as_cur_puzzle_num), sc, sc, 0);
        ty += line_h + bar_gap;

        draw_set_colour(make_colour_rgb(60, 60, 60));
        draw_rectangle(tx, ty, tx + bar_w, ty + bar_h, false);
        if (pc_fill > 1)
        {
            draw_set_colour(make_colour_rgb(100, 160, 255));
            draw_rectangle(tx, ty, tx + pc_fill, ty + bar_h, false);
        }
        draw_set_colour(c_white);
        draw_text_transformed(tx + bar_w + round(10 * sc), ty, string(placed) + "/" + string(total_pc) + " (" + string(round(pc_pct)) + "%)", sc, sc, 0);
        ty += bar_h + section_gap;
    }

    // Last solved info
    if (global.as_last_puzzle_num > 0 && global.as_count > 0)
    {
        draw_set_colour(make_colour_rgb(150, 255, 150));
        draw_text_transformed(tx, ty, "Last: #" + string(global.as_last_puzzle_num) + " (" + string(global.as_last_pieces) + "pc)", sc, sc, 0);
        ty += line_h + bar_gap;
    }

    // Timer display (waiting on pack page)
    if (global.as_state == 1 && global.as_phase == 0 && global.as_timer > 0)
    {
        var secs_left = global.as_timer / 60;
        draw_set_colour(make_colour_rgb(200, 200, 200));
        draw_text_transformed(tx, ty, "Next puzzle in: " + string(ceil(secs_left)) + "s", sc, sc, 0);
        ty += line_h + bar_gap;
    }

    // Exit timer (puzzle done, waiting before exit)
    if (global.as_state == 1 && global.as_phase == 2)
    {
        var exit_secs = global.as_exit_timer / 60;
        draw_set_colour(make_colour_rgb(200, 200, 200));
        draw_text_transformed(tx, ty, "Returning in: " + string(ceil(exit_secs)) + "s", sc, sc, 0);
        ty += line_h + bar_gap;
    }

    // Pause text
    if (global.as_state == 2)
    {
        draw_set_colour(make_colour_rgb(255, 200, 50));
        draw_text_transformed(tx, ty, "Press F10 to resume", sc, sc, 0);
        ty += line_h + bar_gap;
    }

    // Hints
    draw_set_colour(make_colour_rgb(120, 120, 120));
    var hint_text = "F10: pause  |  F8: stop";
    if (global.as_state == 2) { hint_text = "F10: resume  |  F8: stop"; }
    draw_text_transformed(tx, ty, hint_text, sc * 0.85, sc * 0.85, 0);

    // Reset draw state
    draw_set_colour(c_white);
    draw_set_alpha(1);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}

// === PACK COMPLETE FLASH OVERLAY ===
if (global.as_complete_flash > 0 && global.as_state == 0)
{
    var gui_w = display_get_gui_width();
    var gui_h = display_get_gui_height();
    var sc = gui_h / 1080;

    var pad = round(16 * sc);
    var line_h = round(24 * sc);
    var bar_w = round(240 * sc);
    var bar_h = round(14 * sc);
    var bar_gap = round(8 * sc);
    var section_gap = round(14 * sc);
    var ow = round(420 * sc);
    var oh = pad * 2 + line_h + section_gap + line_h + bar_gap + bar_h + section_gap + line_h;

    var ox = round(10 * sc);
    var oy = gui_h - oh - round(10 * sc);

    // Fade out in last second
    var flash_alpha = 1;
    if (global.as_complete_flash < 60) { flash_alpha = global.as_complete_flash / 60; }

    draw_set_alpha(0.7 * flash_alpha);
    draw_set_colour(c_black);
    draw_roundrect(ox, oy, ox + ow, oy + oh, false);
    draw_set_alpha(flash_alpha);

    draw_set_colour(make_colour_rgb(100, 255, 100));
    draw_roundrect(ox, oy, ox + ow, oy + oh, true);

    draw_set_font(f_main_20);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    var tx = ox + pad;
    var ty = oy + pad;

    draw_set_colour(make_colour_rgb(100, 255, 100));
    draw_text_transformed(tx, ty, "PACK COMPLETE", sc, sc, 0);
    ty += line_h + section_gap;

    draw_set_colour(make_colour_rgb(200, 200, 255));
    draw_text_transformed(tx, ty, string(global.as_cur_pack_name), sc, sc, 0);
    ty += line_h + bar_gap;

    // Full progress bar
    draw_set_colour(make_colour_rgb(80, 200, 80));
    draw_rectangle(tx, ty, tx + bar_w, ty + bar_h, false);
    draw_set_colour(c_white);
    draw_text_transformed(tx + bar_w + round(10 * sc), ty, string(global.as_pack_total) + "/" + string(global.as_pack_total) + " (100%)", sc, sc, 0);
    ty += bar_h + section_gap;

    draw_set_colour(make_colour_rgb(120, 120, 120));
    draw_text_transformed(tx, ty, "All puzzles already completed", sc * 0.85, sc * 0.85, 0);

    draw_set_colour(c_white);
    draw_set_alpha(1);
}

// === DEBUG OVERLAY (always visible, top-right) ===
{
    var dg_w = display_get_gui_width();
    var dg_sc = display_get_gui_height() / 1080;
    var dg_lh = round(20 * dg_sc);
    var dg_pad = round(10 * dg_sc);
    var dg_box_w = round(420 * dg_sc);
    var dg_lines = 5;

    draw_set_font(f_main_20);
    draw_set_halign(fa_right);
    draw_set_valign(fa_top);
    draw_set_alpha(0.7);
    draw_set_colour(c_black);
    draw_rectangle(dg_w - dg_box_w, 0, dg_w, dg_pad * 2 + dg_lh * dg_lines, false);
    draw_set_alpha(1);
    draw_set_colour(make_colour_rgb(255, 255, 100));
    var dbg_y = dg_pad;
    var dbg_x = dg_w - dg_pad;
    draw_text_transformed(dbg_x, dbg_y, "room=" + room_get_name(room), dg_sc * 0.8, dg_sc * 0.8, 0);
    dbg_y += dg_lh;

    var dbg_mpb = 0;
    var mpb_obj = asset_get_index("ob_menu_puz_button");
    if (mpb_obj >= 0 && instance_exists(mpb_obj))
    {
        var mpb_inst = instance_find(mpb_obj, 0);
        if (variable_instance_exists(mpb_inst, "pack_num"))
            dbg_mpb = mpb_inst.pack_num;
    }
    draw_text_transformed(dbg_x, dbg_y, "st=" + string(global.as_state) + " ph=" + string(global.as_phase) + " pack=" + string(dbg_mpb), dg_sc * 0.8, dg_sc * 0.8, 0);
    dbg_y += dg_lh;
    draw_text_transformed(dbg_x, dbg_y, "lvl=" + string(global.level_type) + " pcs=" + string(global.puzzle_max_number_of_pieces), dg_sc * 0.8, dg_sc * 0.8, 0);
    dbg_y += dg_lh;
    draw_text_transformed(dbg_x, dbg_y, "pack_open=" + string(global.current_pack_open), dg_sc * 0.8, dg_sc * 0.8, 0);
    dbg_y += dg_lh;
    draw_set_colour(make_colour_rgb(180, 180, 180));
    draw_text_transformed(dbg_x, dbg_y, "F10=start/pause  F8=stop", dg_sc * 0.75, dg_sc * 0.75, 0);
    draw_set_halign(fa_left);
    draw_set_colour(c_white);
    draw_set_alpha(1);
}

// === F9 AUTO-RESOLVE OVERLAY (hidden when F10 pack-solve is active) ===
if (variable_global_exists("dev_autoresolve_active") && global.dev_autoresolve_active == 1 && global.as_state == 0)
{
    var f9_sc = display_get_gui_height() / 1080;
    var f9_ox = round(10 * f9_sc);
    var f9_ow = round(300 * f9_sc);
    var f9_oy = round(10 * f9_sc);
    var f9_pad = round(10 * f9_sc);
    var f9_bar_w = round(180 * f9_sc);
    var f9_bar_h = round(12 * f9_sc);
    var f9_lh = round(22 * f9_sc);
    var f9_oh = f9_pad * 2 + f9_lh * 2 + f9_bar_h + round(6 * f9_sc);

    draw_set_alpha(0.6);
    draw_set_colour(c_black);
    draw_roundrect(f9_ox, f9_oy, f9_ox + f9_ow, f9_oy + f9_oh, false);
    draw_set_alpha(1);

    draw_set_colour(make_colour_rgb(100, 200, 255));
    draw_roundrect(f9_ox, f9_oy, f9_ox + f9_ow, f9_oy + f9_oh, true);

    draw_set_font(f_main_20);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    var f9_tx = f9_ox + f9_pad;
    var f9_ty = f9_oy + f9_pad;

    draw_set_colour(make_colour_rgb(100, 200, 255));
    draw_text_transformed(f9_tx, f9_ty, "AUTO-RESOLVE (F9)", f9_sc, f9_sc, 0);
    f9_ty += f9_lh;

    var f9_placed = global.puzzle_max_number_of_pieces - global.total_number_of_pieces;
    var f9_total = global.puzzle_max_number_of_pieces;
    var f9_pct = 0;
    if (f9_total > 0) { f9_pct = (f9_placed / f9_total) * 100; }
    var f9_fill = 0;
    if (f9_total > 0) { f9_fill = (f9_placed / f9_total) * f9_bar_w; }

    draw_set_colour(make_colour_rgb(60, 60, 60));
    draw_rectangle(f9_tx, f9_ty, f9_tx + f9_bar_w, f9_ty + f9_bar_h, false);
    if (f9_fill > 1)
    {
        draw_set_colour(make_colour_rgb(100, 200, 255));
        draw_rectangle(f9_tx, f9_ty, f9_tx + f9_fill, f9_ty + f9_bar_h, false);
    }
    draw_set_colour(c_white);
    draw_text_transformed(f9_tx + f9_bar_w + round(8 * f9_sc), f9_ty, string(f9_placed) + "/" + string(f9_total) + " (" + string(round(f9_pct)) + "%)", f9_sc * 0.85, f9_sc * 0.85, 0);
    f9_ty += f9_bar_h + round(6 * f9_sc);

    draw_set_colour(make_colour_rgb(150, 150, 150));
    draw_text_transformed(f9_tx, f9_ty, "F9: stop", f9_sc * 0.8, f9_sc * 0.8, 0);

    draw_set_colour(c_white);
    draw_set_alpha(1);
}
