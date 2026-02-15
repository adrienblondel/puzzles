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

// === AUTO-SOLVE OVERLAY ===
if (global.as_state > 0 && global.as_cfg_overlay_show == 1)
{
    var ox = global.as_cfg_overlay_x;
    var ow = 500;
    var bar_w = 280;
    var bar_h = 16;
    var pad = 14;
    var line_h = 28;
    var bar_gap = 10;

    // Calculate dynamic height based on visible content
    var oh = pad * 2; // top + bottom padding
    oh += line_h + 4; // title
    oh += bar_h + bar_gap; // global progress bar
    if (global.as_cur_pack_name != "" && global.as_pack_total > 0) { oh += 14 + bar_gap; } // pack bar
    if (global.as_last_pack_name != "") { oh += line_h; } // last solved
    oh += line_h; // timer or pause text
    oh += line_h; // cancel hint

    var oy = 1080 - oh - 10; // anchor to bottom of screen with 10px margin

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
        draw_text(tx, ty, "AUTO-SOLVE PAUSED");
    }
    else
    {
        draw_set_colour(make_colour_rgb(100, 255, 100));
        draw_text(tx, ty, "AUTO-SOLVE ACTIVE");
    }
    ty += line_h + 4;

    // Global progress bar
    var total_with_done = global.as_total + global.as_total_already;
    var done_with_done = global.as_count + global.as_total_already;
    var pct = 0;
    if (total_with_done > 0) { pct = (done_with_done / total_with_done) * 100; }
    var fill_w = 0;
    if (total_with_done > 0) { fill_w = (done_with_done / total_with_done) * bar_w; }

    // Bar background (always drawn)
    draw_set_colour(make_colour_rgb(60, 60, 60));
    draw_rectangle(tx, ty, tx + bar_w, ty + bar_h, false);
    // Bar fill (only if > 0)
    if (fill_w > 1)
    {
        draw_set_colour(make_colour_rgb(80, 200, 80));
        draw_rectangle(tx, ty, tx + fill_w, ty + bar_h, false);
    }
    draw_set_colour(c_white);
    draw_text(tx + bar_w + 10, ty - 2, string(done_with_done) + "/" + string(total_with_done) + " (" + string(round(pct)) + "%)");
    ty += bar_h + bar_gap;

    // Pack progress bar (if solving)
    if (global.as_cur_pack_name != "" && global.as_pack_total > 0)
    {
        var pack_fill = (global.as_pack_done / global.as_pack_total) * 200;
        draw_set_colour(make_colour_rgb(60, 60, 60));
        draw_rectangle(tx, ty, tx + 200, ty + 14, false);
        if (pack_fill > 1)
        {
            draw_set_colour(make_colour_rgb(100, 160, 255));
            draw_rectangle(tx, ty, tx + pack_fill, ty + 14, false);
        }
        draw_set_colour(make_colour_rgb(200, 200, 255));
        draw_text(tx + 208, ty - 2, string(global.as_cur_pack_name) + " " + string(global.as_pack_done) + "/" + string(global.as_pack_total));
        ty += 14 + bar_gap;
    }

    // Last solved / current info
    if (global.as_last_pack_name != "")
    {
        draw_set_colour(make_colour_rgb(150, 255, 150));
        draw_text(tx, ty, "Solved: " + string(global.as_last_pack_name) + " (" + string(global.as_last_pieces) + "pc)");
        ty += line_h;
    }

    // Timer display
    if (global.as_state == 1 && global.as_timer > 0)
    {
        var secs_left = global.as_timer / 60;
        var mins = floor(secs_left / 60);
        var secs = floor(secs_left) mod 60;
        var timer_str = "";
        if (global.as_count == 0 && global.as_timer > 3600)
        {
            timer_str = "Starting in: " + string(mins) + ":" + string_format(secs, 2, 0);
        }
        else
        {
            timer_str = "Next in: " + string(mins) + ":" + string_format(secs, 2, 0);
        }
        // Replace space padding from string_format with 0
        timer_str = string_replace_all(timer_str, ": 0:", ":00:");
        draw_set_colour(make_colour_rgb(200, 200, 200));
        draw_text(tx, ty, timer_str);
        ty += line_h;
    }
    else if (global.as_state == 2)
    {
        draw_set_colour(make_colour_rgb(255, 200, 50));
        draw_text(tx, ty, "Press F10 to resume");
        ty += line_h;
    }

    // Hints
    draw_set_colour(make_colour_rgb(150, 150, 150));
    draw_set_font(f_main_20);
    var hint_text = "F10: pause  |  F11: stop";
    if (global.as_state == 2) { hint_text = "F10: resume  |  F11: stop"; }
    draw_text(tx, ty, hint_text);

    // Reset draw state
    draw_set_colour(c_white);
    draw_set_alpha(1);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}
