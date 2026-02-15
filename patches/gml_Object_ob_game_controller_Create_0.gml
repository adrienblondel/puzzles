if (steam_initialised())
{
}
else
{
    game_end();
}
global.dev_tools_are_active = 1;
if (global.dev_tools_are_active == 1)
{
    show_debug_overlay(1);
}
global.dev_autoresolve_active = 0;
global.as_state = 0;
global.as_timer = 0;
global.as_pack = 1;
global.as_puzzle = 1;
global.as_count = 0;
global.as_total = 0;
global.as_total_already = 0;
global.as_pi_grid = -1;
global.as_cur_pack_name = "";
global.as_cur_pieces = 0;
global.as_last_pack_name = "";
global.as_last_pieces = 0;
global.as_pack_done = 0;
global.as_pack_total = 0;
global.as_phase = 0;
global.as_exit_timer = 0;
global.as_cfg_exit_delay = 3;
global.as_cfg_between_delay = 2;
global.as_room_init_wait = 30;
global.as_cur_puzzle_num = 0;
global.as_last_puzzle_num = 0;
global.as_pack_room = -1;
if (global.dev_tools_are_active != 1)
{
    var players = steam_get_stat_int("players") + 1;
    steam_upload_score("a_players", players);
    steam_set_stat_int("players", players);
    var a_players_1_1_26 = steam_get_stat_int("a_players_1_1_26") + 1;
    steam_upload_score("a_players_1_1_26", a_players_1_1_26);
    steam_set_stat_int("a_players_1_1_26", a_players_1_1_26);
}
randomize();
display_set_gui_size(1920, 1080);
audio_group_load(1);
gamepad_set_axis_deadzone(0, 0.1);
screenshot_num = 0;
GameLaunched = 1;
F_Load_Puzzle_Packs();
F_Load_Puzzle_Challenges();
F_Load_Puzzle_Free();
F_Load_Puzzle_Unlockables();
F_Load_Puzzle_Figurals();
alarm[0] = 5;
logo_alpha = 0;
intro_part = 0;
LanSelector = 0;
SaveConversionInfo = 0;
sentence_complete = 2;
hello_alpha = 1;
hello = 0;
letter = 0;
if (!file_exists("pidsg.ini"))
{
    ini_open("pidsg.ini");
    var QPgrid = ds_grid_create(2, 7);
    ds_grid_add(QPgrid, 0, 0, 51);
    ds_grid_add(QPgrid, 1, 0, 1);
    ds_grid_add(QPgrid, 0, 1, 51);
    ds_grid_add(QPgrid, 1, 1, 2);
    ds_grid_add(QPgrid, 0, 2, 51);
    ds_grid_add(QPgrid, 1, 2, 3);
    ds_grid_add(QPgrid, 0, 3, 51);
    ds_grid_add(QPgrid, 1, 3, 4);
    ds_grid_add(QPgrid, 0, 4, 51);
    ds_grid_add(QPgrid, 1, 4, 5);
    ds_grid_add(QPgrid, 0, 5, 51);
    ds_grid_add(QPgrid, 1, 5, 6);
    ds_grid_add(QPgrid, 0, 6, 51);
    ds_grid_add(QPgrid, 1, 6, 7);
    ini_write_string("QPgrid", "0", ds_grid_write(QPgrid));
    ds_grid_destroy(QPgrid);
    ini_close();
}
else
{
    ini_open("pidsg.ini");
    if (!ini_section_exists("QPgrid"))
    {
        var QPgrid = ds_grid_create(2, 7);
        ds_grid_add(QPgrid, 0, 0, 51);
        ds_grid_add(QPgrid, 1, 0, 1);
        ds_grid_add(QPgrid, 0, 1, 51);
        ds_grid_add(QPgrid, 1, 1, 2);
        ds_grid_add(QPgrid, 0, 2, 51);
        ds_grid_add(QPgrid, 1, 2, 3);
        ds_grid_add(QPgrid, 0, 3, 51);
        ds_grid_add(QPgrid, 1, 3, 4);
        ds_grid_add(QPgrid, 0, 4, 51);
        ds_grid_add(QPgrid, 1, 4, 5);
        ds_grid_add(QPgrid, 0, 5, 51);
        ds_grid_add(QPgrid, 1, 5, 6);
        ds_grid_add(QPgrid, 0, 6, 51);
        ds_grid_add(QPgrid, 1, 6, 7);
        ini_write_string("QPgrid", "0", ds_grid_write(QPgrid));
        ds_grid_destroy(QPgrid);
    }
    ini_close();
}
global.GoldMultiplier = 1;
global.hint_drop_rate = 15;
global.mainFont20 = 0;
global.using_a_gamepad = 0;
global.gamepad_x_position = 0;
global.gamepad_y_position = 0;
global.MenuReturnPage = 1;
global.PackReturnPage = 0;
global.CatTabReturnPage = 0;
global.current_pack_open = 0;
global.menu_return_to = 0;
global.menu_seasonal_decor = 2;
global.mouse_over_ref = 0;
global.MouseOnUI = 0;
global.highlight_on = 0;
global.camera_is_zoomed_in = 0;
global.can_use_ui_and_buttons_in_puzzle = 0;
global.current_puzzle_ghost_image = 0;
global.puzzle_max_number_of_pieces = 0;
global.can_pick_a_bit_up = 0;
global.level_type = 0;
global.total_number_of_pieces = 0;
global.puzzle_sprite_index_to_use = 0;
global.puzzle_number_to_play = 0;
ini_open("settings.ini");
global.fullscreen_mode = ini_read_real("settings", "fullscreen_mode", 1);
if (global.fullscreen_mode == 0 || global.fullscreen_mode == 1)
{
}
else
{
    global.fullscreen_mode = 1;
    ini_write_real("settings", "fullscreen_mode", 1);
}
window_set_fullscreen(global.fullscreen_mode);
global.resolution = ini_read_real("settings", "resolution", 0);
if (global.resolution >= 0 && global.resolution <= 10)
{
}
else
{
    global.resolution = 0;
    ini_write_real("settings", "resolution", 0);
}
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
alarm[5] = 1;
global.master_vol = ini_read_real("settings", "master_vol", 1);
if (global.master_vol == 0 || global.master_vol == 0.1 || global.master_vol == 0.2 || global.master_vol == 0.3 || global.master_vol == 0.4 || global.master_vol == 0.5 || global.master_vol == 0.6 || global.master_vol == 0.7 || global.master_vol == 0.8 || global.master_vol == 0.9 || global.master_vol == 1)
{
}
else
{
    global.master_vol = 1;
    ini_write_real("settings", "master_vol", 1);
}
audio_master_gain(global.master_vol);
global.effect_vol = ini_read_real("settings", "effect_vol", 0.7);
if (global.effect_vol == 0 || global.effect_vol == 0.1 || global.effect_vol == 0.2 || global.effect_vol == 0.3 || global.effect_vol == 0.4 || global.effect_vol == 0.5 || global.effect_vol == 0.6 || global.effect_vol == 0.7 || global.effect_vol == 0.8 || global.effect_vol == 0.9 || global.effect_vol == 1)
{
}
else
{
    global.effect_vol = 0.7;
    ini_write_real("settings", "effect_vol", 0.7);
}
global.music_vol = ini_read_real("settings", "music_vol", 0.4);
if (global.music_vol == 0 || global.music_vol == 0.1 || global.music_vol == 0.2 || global.music_vol == 0.3 || global.music_vol == 0.4 || global.music_vol == 0.5 || global.music_vol == 0.6 || global.music_vol == 0.7 || global.music_vol == 0.8 || global.music_vol == 0.9 || global.music_vol == 1)
{
}
else
{
    global.music_vol = 0.4;
    ini_write_real("settings", "music_vol", 0.4);
}
global.ambiance_vol = ini_read_real("settings", "ambiance_vol", 0.5);
if (global.ambiance_vol == 0 || global.ambiance_vol == 0.1 || global.ambiance_vol == 0.2 || global.ambiance_vol == 0.3 || global.ambiance_vol == 0.4 || global.ambiance_vol == 0.5 || global.ambiance_vol == 0.6 || global.ambiance_vol == 0.7 || global.ambiance_vol == 0.8 || global.ambiance_vol == 0.9 || global.ambiance_vol == 1)
{
}
else
{
    global.ambiance_vol = 0.5;
    ini_write_real("settings", "ambiance_vol", 0.5);
}
global.zoom_pan_speed = ini_read_real("settings", "zoom_pan_speed", 5);
if (global.zoom_pan_speed >= 5 && global.zoom_pan_speed <= 15)
{
}
else
{
    global.zoom_pan_speed = 5;
    ini_write_real("settings", "zoom_pan_speed", 5);
}
global.hide_zoom_text = ini_read_real("settings", "hide_zoom_text", 0);
if (global.hide_zoom_text == 0 || global.hide_zoom_text == 1)
{
}
else
{
    global.hide_zoom_text = 0;
    ini_write_real("settings", "hide_zoom_text", 0);
}
global.cursor_speed = ini_read_real("settings", "cursor_speed", 15);
if (global.cursor_speed == 5 || global.cursor_speed == 10 || global.cursor_speed == 15 || global.cursor_speed == 20 || global.cursor_speed == 25)
{
}
else
{
    global.cursor_speed = 15;
    ini_write_real("settings", "cursor_speed", 15);
}
global.thumb_side = ini_read_real("settings", "thumb_side", 0);
if (global.thumb_side == 0 || global.thumb_side == 1)
{
}
else
{
    global.thumb_side = 0;
    ini_write_real("settings", "thumb_side", 0);
}
global.language_using = ini_read_real("settings", "language", 100);
if (global.language_using != 100)
{
    if (global.language_using >= 0 && global.language_using <= 27)
    {
    }
    else
    {
        global.language_using = 100;
        ini_write_real("settings", "language", 100);
    }
}
global.language_using = 0;
instance_create(0, 0, ob_lan);
var MenuBackingAlpha = ini_read_real("settings", "MenuBackingAlpha", 0.1);
if (MenuBackingAlpha >= 0.1 && MenuBackingAlpha <= 0.3)
{
}
else
{
    ini_write_real("settings", "MenuBackingAlpha", 0.1);
}
global.piece_rotation = ini_read_real("preferences", "piece_rotation", 0);
if (global.piece_rotation == 0 || global.piece_rotation == 1)
{
}
else
{
    global.piece_rotation = 0;
    ini_write_real("preferences", "piece_rotation", 0);
}
global.piece_snap = ini_read_real("preferences", "piece_snap", 25);
if (floor(global.piece_snap) >= 15 && floor(global.piece_snap) <= 50)
{
}
else
{
    global.piece_snap = 25;
    ini_write_real("preferences", "piece_snap", 25);
}
global.pieces_stick = ini_read_real("preferences", "pieces_stick", 1);
if (global.pieces_stick == 0 || global.pieces_stick == 1)
{
}
else
{
    global.pieces_stick = 1;
    ini_write_real("preferences", "pieces_stick", 1);
}
global.piece_floating = ini_read_real("preferences", "piece_floating", 0.05);
if (global.piece_floating >= 0 && global.piece_floating <= 1.5)
{
}
else
{
    global.piece_floating = 0.05;
    ini_write_real("preferences", "piece_floating", 0.05);
}
global.float_rot = ini_read_real("preferences", "float_rot", 0);
if (global.float_rot >= 0 || global.float_rot <= 2)
{
}
else
{
    global.float_rot = 0;
    ini_write_real("preferences", "float_rot", 0);
}
global.float_shadow = ini_read_real("preferences", "float_shadow", 1);
if (global.float_shadow == 0 || global.float_shadow == 1)
{
}
else
{
    global.float_shadow = 1;
    ini_write_real("preferences", "float_shadow", 1);
}
global.highlight_col = ini_read_real("preferences", "highlight_col", 0);
if (global.highlight_col == 0 || global.highlight_col == 1 || global.highlight_col == 2 || global.highlight_col == 3 || global.highlight_col == 4)
{
}
else
{
    global.highlight_col = 0;
    ini_write_real("preferences", "highlight_col", 0);
}
global.highlight_color = 65280;
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
global.highlight_style = ini_read_real("preferences", "highlight_style", 0);
if (global.highlight_style == 0 || global.highlight_style == 1)
{
}
else
{
    global.highlight_style = 0;
    ini_write_real("preferences", "highlight_style", 0);
}
global.idle_shadow = ini_read_real("preferences", "idle_shadow", 1);
if (global.idle_shadow == 0 || global.idle_shadow == 1)
{
}
else
{
    global.idle_shadow = 1;
    ini_write_real("preferences", "idle_shadow", 1);
}
global.held_shadow = ini_read_real("preferences", "held_shadow", 1);
if (global.held_shadow == 0 || global.held_shadow == 1)
{
}
else
{
    global.held_shadow = 1;
    ini_write_real("preferences", "held_shadow", 1);
}
global.image_guide = ini_read_real("preferences", "image_guide", 0);
if (global.image_guide >= 0 && global.image_guide <= 0.3)
{
}
else
{
    global.image_guide = 0;
    ini_write_real("preferences", "image_guide", 0);
}
global.puzzle_outline = ini_read_real("preferences", "puzzle_outline", 0);
if (global.puzzle_outline == 0 || global.puzzle_outline == 1)
{
}
else
{
    global.puzzle_outline = 0;
    ini_write_real("preferences", "puzzle_outline", 0);
}
global.fin_outline = ini_read_real("preferences", "fin_outline", 0.1);
if (global.fin_outline >= 0 && global.fin_outline <= 1)
{
}
else
{
    global.fin_outline = 0.1;
    ini_write_real("preferences", "fin_outline", 0.1);
}
global.TrayOpacity = ini_read_real("preferences", "TrayOpacity", 0.9);
if (global.TrayOpacity >= 0.7 && global.TrayOpacity <= 1)
{
}
else
{
    global.TrayOpacity = 0.9;
    ini_write_real("preferences", "TrayOpacity", 0.9);
}
global.UseHints_PopUP = ini_read_real("preferences", "UseHints_PopUP", 1);
if (global.UseHints_PopUP == 0 || global.UseHints_PopUP == 1)
{
}
else
{
    global.UseHints_PopUP = 0;
    ini_write_real("preferences", "UseHints_PopUP", 1);
}
var c7823 = ini_read_real("customize", "c7823", 0);
if (c7823 >= 0 && c7823 <= 9)
{
}
else
{
    c7823 = 0;
    ini_write_real("customize", "c7823", 1);
}
global.theme_to_use = c7823;
var c7898 = ini_read_real("customize", "c7898", 0);
if (c7898 >= 0 && c7898 <= 24)
{
}
else
{
    c7898 = 0;
    ini_write_real("customize", "c7898", 0);
}
global.current_cursor = c7898;
c6223 = ini_read_real("customize", "c6223", 1);
if (c6223 >= 1 && c6223 <= 20)
{
}
else
{
    c6223 = 1;
    ini_write_real("customize", "c6223", 1);
}
var MusicName = "audio\Track_" + string(c6223) + ".ogg";
LoadedMusic = audio_create_stream(string(MusicName));
c6343 = ini_read_real("customize", "c6343", 0);
if (c6343 >= 0 && c6343 <= 28)
{
}
else
{
    c6343 = 1;
    ini_write_real("customize", "c6343", 0);
}
var menu_backing = "\menubg\defaultbacking" + string(c6343) + ".png";
if (file_exists(working_directory + string(menu_backing)))
{
    global.menu_backing = sprite_add(working_directory + string(menu_backing), 0, false, false, 0, 0);
}
else
{
    global.menu_backing = sprite_add(working_directory + "\menubg\defaultbacking0.png.png", 0, false, false, 0, 0);
}
global.col_pal_use = 0;
if (global.col_pal_use == 0)
{
    global.col_pal_1 = make_colour_rgb(39, 54, 59);
    global.col_pal_2 = make_colour_rgb(235, 188, 73);
    global.col_pal_3 = make_colour_rgb(244, 131, 125);
    global.col_pal_4 = make_colour_rgb(253, 206, 170);
    global.col_pal_5 = make_colour_rgb(153, 185, 152);
}
var o921 = ini_read_real("other", "o921", 0);
if (o921 >= 0 && o921 <= 19)
{
}
else
{
    o921 = 0;
    ini_write_real("other", "o921", 0);
}
var o923 = ini_read_real("other", "o923", 0);
if (o923 != 0 && o923 != 1)
{
    o923 = 0;
    ini_write_real("other", "o923", 0);
}
var o936 = ini_read_real("other", "o936", 0);
if (o936 != 0 && o936 != 1)
{
    o936 = 0;
    ini_write_real("other", "o936", 0);
}
var o941 = ini_read_real("other", "o941", 0);
if (o941 != 0 && o941 != 1)
{
    o941 = 0;
    ini_write_real("other", "o941", 0);
}
var SbS_C = ini_read_real("other", "SbS_C", 0);
if (SbS_C != 0 && SbS_C != 1)
{
    ini_write_real("other", "SbS_C", 0);
}
var SbS_I = ini_read_real("other", "SbS_I", 0);
if (SbS_I != 0 && SbS_I != 1)
{
    ini_write_real("other", "SbS_I", 0);
}
var SbS_60 = ini_read_real("other", "SbS_60", 0);
if (SbS_60 != 0 && SbS_60 != 1)
{
    ini_write_real("other", "SbS_60", 0);
}
var SbS_112 = ini_read_real("other", "SbS_112", 0);
if (SbS_112 != 0 && SbS_112 != 1)
{
    ini_write_real("other", "SbS_112", 0);
}
var SbS_153 = ini_read_real("other", "SbS_153", 0);
if (SbS_153 != 0 && SbS_153 != 1)
{
    ini_write_real("other", "SbS_153", 0);
}
var SbS_220 = ini_read_real("other", "SbS_220", 0);
if (SbS_220 != 0 && SbS_220 != 1)
{
    ini_write_real("other", "SbS_220", 0);
}
var SbS_350 = ini_read_real("other", "SbS_350", 0);
if (SbS_350 != 0 && SbS_350 != 1)
{
    ini_write_real("other", "SbS_350", 0);
}
var SbS_96 = ini_read_real("other", "SbS_96", 0);
if (SbS_96 != 0 && SbS_96 != 1)
{
    ini_write_real("other", "SbS_96", 0);
}
var SbS_140 = ini_read_real("other", "SbS_140", 0);
if (SbS_140 != 0 && SbS_140 != 1)
{
    ini_write_real("other", "SbS_140", 0);
}
var SbS_216 = ini_read_real("other", "SbS_216", 0);
if (SbS_216 != 0 && SbS_216 != 1)
{
    ini_write_real("other", "SbS_216", 0);
}
var SbS_330 = ini_read_real("other", "SbS_330", 0);
if (SbS_330 != 0 && SbS_330 != 1)
{
    ini_write_real("other", "SbS_330", 0);
}
var SbS_425 = ini_read_real("other", "SbS_425", 0);
if (SbS_425 != 0 && SbS_425 != 1)
{
    ini_write_real("other", "SbS_425", 0);
}
var SbS_640 = ini_read_real("other", "SbS_640", 0);
if (SbS_640 != 0 && SbS_640 != 1)
{
    ini_write_real("other", "SbS_640", 0);
}
var SbS_840 = ini_read_real("other", "SbS_840", 0);
if (SbS_840 != 0 && SbS_840 != 1)
{
    ini_write_real("other", "SbS_840", 0);
}
var SbS_1440 = ini_read_real("other", "SbS_1440", 0);
if (SbS_1440 != 0 && SbS_1440 != 1)
{
    ini_write_real("other", "SbS_1440", 0);
}
var SbS_100 = ini_read_real("other", "SbS_100", 0);
if (SbS_100 != 0 && SbS_100 != 1)
{
    ini_write_real("other", "SbS_100", 0);
}
var SbS_169 = ini_read_real("other", "SbS_169", 0);
if (SbS_169 != 0 && SbS_169 != 1)
{
    ini_write_real("other", "SbS_169", 0);
}
var SbS_324 = ini_read_real("other", "SbS_324", 0);
if (SbS_324 != 0 && SbS_324 != 1)
{
    ini_write_real("other", "SbS_324", 0);
}
var SbS_400 = ini_read_real("other", "SbS_400", 0);
if (SbS_400 != 0 && SbS_400 != 1)
{
    ini_write_real("other", "SbS_400", 0);
}
var SbS_676 = ini_read_real("other", "SbS_676", 0);
if (SbS_676 != 0 && SbS_676 != 1)
{
    ini_write_real("other", "SbS_676", 0);
}
var SbS_841 = ini_read_real("other", "SbS_841", 0);
if (SbS_841 != 0 && SbS_841 != 1)
{
    ini_write_real("other", "SbS_841", 0);
}
var SbS_126 = ini_read_real("other", "SbS_126", 0);
if (SbS_126 != 0 && SbS_126 != 1)
{
    ini_write_real("other", "SbS_126", 0);
}
var SbS_168 = ini_read_real("other", "SbS_168", 0);
if (SbS_168 != 0 && SbS_168 != 1)
{
    ini_write_real("other", "SbS_168", 0);
}
var SbS_250 = ini_read_real("other", "SbS_250", 0);
if (SbS_250 != 0 && SbS_250 != 1)
{
    ini_write_real("other", "SbS_250", 0);
}
var SbS_455 = ini_read_real("other", "SbS_455", 0);
if (SbS_455 != 0 && SbS_455 != 1)
{
    ini_write_real("other", "SbS_455", 0);
}
var SbS_640p = ini_read_real("other", "SbS_640p", 0);
if (SbS_640p != 0 && SbS_640p != 1)
{
    ini_write_real("other", "SbS_640p", 0);
}
var SbS_810 = ini_read_real("other", "SbS_810", 0);
if (SbS_810 != 0 && SbS_810 != 1)
{
    ini_write_real("other", "SbS_810", 0);
}
var SbS_1000 = ini_read_real("other", "SbS_1000", 0);
if (SbS_1000 != 0 && SbS_1000 != 1)
{
    ini_write_real("other", "SbS_1000", 0);
}
var ZenBoardColor = ini_read_real("theme", "ZenBoardColor", 0);
if (ZenBoardColor >= 0 && ZenBoardColor <= 9)
{
}
else
{
    ZenBoardColor = 0;
    ini_write_real("theme", "ZenBoardColor", 0);
}
var ZenBackingColor = ini_read_real("theme", "ZenBackingColor", 0);
if (ZenBackingColor >= 0 && ZenBackingColor <= 4)
{
}
else
{
    ZenBackingColor = 0;
    ini_write_real("theme", "ZenBackingColor", 0);
}
var ZenBoardOpacity = ini_read_real("theme", "ZenBoardOpacity", 1);
if (ZenBoardOpacity >= 0 && ZenBoardOpacity <= 1)
{
}
else
{
    ZenBoardOpacity = 1;
    ini_write_real("theme", "ZenBoardOpacity", 1);
}
var ZenWaterMove = ini_read_real("theme", "ZenWaterMove", 1);
if (ZenWaterMove != 0 && ZenWaterMove != 1)
{
    ZenWaterMove = 1;
    ini_write_real("theme", "ZenWaterMove", 1);
}
var ZenLotus = ini_read_real("theme", "ZenLotus", 1);
if (ZenLotus != 0 && ZenLotus != 1)
{
    ZenLotus = 1;
    ini_write_real("theme", "ZenLotus", 1);
}
var ZenFish = ini_read_real("theme", "ZenFish", 1);
if (ZenFish != 0 && ZenFish != 1)
{
    ZenFish = 1;
    ini_write_real("theme", "ZenFish", 1);
}
var ZenGrabFish = ini_read_real("theme", "ZenGrabFish", 1);
if (ZenGrabFish != 0 && ZenGrabFish != 1)
{
    ZenGrabFish = 1;
    ini_write_real("theme", "ZenGrabFish", 1);
}
var SimpleBoardColor = ini_read_real("theme", "SimpleBoardColor", 0);
if (SimpleBoardColor >= 0 && SimpleBoardColor <= 13)
{
}
else
{
    SimpleBoardColor = 0;
    ini_write_real("theme", "SimpleBoardColor", 0);
}
var SimpleBackingColor = ini_read_real("theme", "SimpleBackingColor", 0);
if (SimpleBackingColor >= 0 && SimpleBackingColor <= 12)
{
}
else
{
    SimpleBackingColor = 0;
    ini_write_real("theme", "SimpleBackingColor", 0);
}
var ArcadeBoardColor = ini_read_real("theme", "ArcadeBoardColor", 0);
if (ArcadeBoardColor >= 0 && ArcadeBoardColor <= 6)
{
}
else
{
    ArcadeBoardColor = 0;
    ini_write_real("theme", "ArcadeBoardColor", 0);
}
var ArcadeFrameColor = ini_read_real("theme", "ArcadeFrameColor", 0);
if (ArcadeFrameColor >= 0 && ArcadeFrameColor <= 6)
{
}
else
{
    ArcadeFrameColor = 0;
    ini_write_real("theme", "ArcadeFrameColor", 0);
}
var ArcadeLinesColor = ini_read_real("theme", "ArcadeLinesColor", 0);
if (ArcadeLinesColor >= 0 && ArcadeLinesColor <= 6)
{
}
else
{
    ArcadeLinesColor = 0;
    ini_write_real("theme", "ArcadeLinesColor", 0);
}
var ArcadeScansVis = ini_read_real("theme", "ArcadeScansVis", 1);
if (ArcadeScansVis != 0 && ArcadeScansVis != 1)
{
    ArcadeScansVis = 1;
    ini_write_real("theme", "ArcadeScansVis", 1);
}
var ArcadeScanMove = ini_read_real("theme", "ArcadeScanMove", 1);
if (ArcadeScanMove != 0 && ArcadeScanMove != 1)
{
    ArcadeScanMove = 1;
    ini_write_real("theme", "ArcadeScanMove", 1);
}
var ArcadeAliens = ini_read_real("theme", "ArcadeAliens", 1);
if (ArcadeAliens != 0 && ArcadeAliens != 1)
{
    ArcadeAliens = 1;
    ini_write_real("theme", "ArcadeAliens", 1);
}
var WindowBoardColor = ini_read_real("theme", "WindowBoardColor", 0);
if (WindowBoardColor >= 0 && WindowBoardColor <= 4)
{
}
else
{
    WindowBoardColor = 0;
    ini_write_real("theme", "WindowBoardColor", 0);
}
var WindowTime = ini_read_real("theme", "WindowTime", 0);
if (WindowTime >= 0 && WindowTime <= 4)
{
}
else
{
    WindowTime = 0;
    ini_write_real("theme", "WindowTime", 0);
}
var MegaBoardColor = ini_read_real("theme", "MegaBoardColor", 0);
if (MegaBoardColor >= 0 && MegaBoardColor <= 6)
{
}
else
{
    MegaBoardColor = 0;
    ini_write_real("theme", "MegaBoardColor", 0);
}
var MegaBackingColor = ini_read_real("theme", "MegaBackingColor", 0);
if (MegaBackingColor >= 0 && MegaBackingColor <= 4)
{
}
else
{
    MegaBackingColor = 0;
    ini_write_real("theme", "MegaBackingColor", 0);
}
var ADScanslies = ini_read_real("theme", "ADScanslies", 1);
if (ADScanslies != 0 && ADScanslies != 1)
{
    ADScanslies = 1;
    ini_write_real("theme", "ADScanslies", 1);
}
var ShowAircraft = ini_read_real("theme", "ShowAircraft", 1);
if (ShowAircraft != 0 && ShowAircraft != 1)
{
    ShowAircraft = 1;
    ini_write_real("theme", "ShowAircraft", 1);
}
var ShowDistAircraft = ini_read_real("theme", "ShowDistAircraft", 1);
if (ShowDistAircraft != 0 && ShowDistAircraft != 1)
{
    ShowDistAircraft = 1;
    ini_write_real("theme", "ShowDistAircraft", 1);
}
var LinesBoardColor = ini_read_real("theme", "LinesBoardColor", 0);
if (LinesBoardColor >= 0 && LinesBoardColor <= 14)
{
}
else
{
    LinesBoardColor = 0;
    ini_write_real("theme", "LinesBoardColor", 0);
}
var LinesFrameColor = ini_read_real("theme", "LinesFrameColor", 0);
if (LinesFrameColor >= 0 && LinesFrameColor <= 14)
{
}
else
{
    LinesFrameColor = 0;
    ini_write_real("theme", "LinesFrameColor", 0);
}
var LinesColorSet = ini_read_real("theme", "LinesColorSet", 0);
if (LinesColorSet >= 0 && LinesColorSet <= 4)
{
}
else
{
    LinesColorSet = 0;
    ini_write_real("theme", "LinesColorSet", 0);
}
var ShowVlines = ini_read_real("theme", "ShowVlines", 1);
if (ShowVlines != 0 && ShowVlines != 1)
{
    ShowVlines = 1;
    ini_write_real("theme", "ShowVlines", 1);
}
var LineOpacity = ini_read_real("theme", "LineOpacity", 1);
if (LineOpacity >= 0 && LineOpacity <= 1)
{
    LineOpacity = 1;
    ini_write_real("theme", "LineOpacity", 1);
}
var LinesMove = ini_read_real("theme", "LinesMove", 1);
if (LinesMove != 0 && LinesMove != 1)
{
    LinesMove = 1;
    ini_write_real("theme", "LinesMove", 1);
}
var ChristmasBoardColor = ini_read_real("theme", "ChristmasBoardColor", 0);
if (ChristmasBoardColor >= 0 && ChristmasBoardColor <= 5)
{
}
else
{
    ChristmasBoardColor = 0;
    ini_write_real("theme", "ChristmasBoardColor", 0);
}
var ChristmasBackingColor = ini_read_real("theme", "ChristmasBackingColor", 0);
if (ChristmasBackingColor >= 0 && ChristmasBackingColor <= 3)
{
}
else
{
    ChristmasBackingColor = 0;
    ini_write_real("theme", "ChristmasBackingColor", 0);
}
var ShowPresents = ini_read_real("theme", "ShowPresents", 1);
if (ShowPresents != 0 && ShowPresents != 1)
{
    ShowPresents = 1;
    ini_write_real("theme", "ShowPresents", 1);
}
var ShowBaubles = ini_read_real("theme", "ShowBaubles", 1);
if (ShowBaubles != 0 && ShowBaubles != 1)
{
    ShowBaubles = 1;
    ini_write_real("theme", "ShowBaubles", 1);
}
var RustBoardColor = ini_read_real("theme", "RustBoardColor", 0);
if (RustBoardColor >= 0 && RustBoardColor <= 16)
{
}
else
{
    RustBoardColor = 0;
    ini_write_real("theme", "RustBoardColor", 0);
}
var RustBackingColor = ini_read_real("theme", "RustBackingColor", 0);
if (RustBackingColor >= 0 && RustBackingColor <= 4)
{
}
else
{
    RustBackingColor = 0;
    ini_write_real("theme", "RustBackingColor", 0);
}
var RustBoardOpacity = ini_read_real("theme", "RustBoardOpacity", 1);
if (RustBoardOpacity >= 0 && RustBoardOpacity <= 1)
{
}
else
{
    RustBoardOpacity = 1;
    ini_write_real("theme", "RustBoardOpacity", 1);
}
var TableBoardColor = ini_read_real("theme", "TableBoardColor", 0);
if (TableBoardColor >= 0 && TableBoardColor <= 16)
{
}
else
{
    TableBoardColor = 0;
    ini_write_real("theme", "TableBoardColor", 0);
}
var TableBackingColor = ini_read_real("theme", "TableBackingColor", 0);
if (TableBackingColor >= 0 && TableBackingColor <= 4)
{
}
else
{
    TableBackingColor = 0;
    ini_write_real("theme", "TableBackingColor", 0);
}
var TableBoardOpacity = ini_read_real("theme", "TableBoardOpacity", 1);
if (TableBoardOpacity >= 0 && TableBoardOpacity <= 1)
{
}
else
{
    TableBoardOpacity = 1;
    ini_write_real("theme", "TableBoardOpacity", 1);
}
var RuinsBoardColor = ini_read_real("theme", "RuinsBoardColor", 0);
if (RuinsBoardColor >= 0 && RuinsBoardColor <= 4)
{
}
else
{
    RuinsBoardColor = 0;
    ini_write_real("theme", "RuinsBoardColor", 0);
}
var RuinsBackingColor = ini_read_real("theme", "RuinsBackingColor", 0);
if (RuinsBackingColor >= 0 && RuinsBackingColor <= 4)
{
}
else
{
    RuinsBackingColor = 0;
    ini_write_real("theme", "RuinsBackingColor", 0);
}
var RuinsBoardOpacity = ini_read_real("theme", "RuinsBoardOpacity", 1);
if (RuinsBoardOpacity >= 0 && RuinsBoardOpacity <= 1)
{
}
else
{
    RuinsBoardOpacity = 1;
    ini_write_real("theme", "RuinsBoardOpacity", 1);
}
var RainBoardColor = ini_read_real("theme", "RainBoardColor", 0);
if (RainBoardColor >= 0 && RainBoardColor <= 4)
{
}
else
{
    RainBoardColor = 0;
    ini_write_real("theme", "RainBoardColor", 0);
}
var RainWindowTime = ini_read_real("theme", "RainWindowTime", 0);
if (RainWindowTime >= 0 && RainWindowTime <= 4)
{
}
else
{
    RainWindowTime = 0;
    ini_write_real("theme", "RainWindowTime", 0);
}
var RainSpots = ini_read_real("theme", "RainSpots", 1);
if (RainSpots != 0 && RainSpots != 1)
{
    RainSpots = 1;
    ini_write_real("theme", "RainSpots", 1);
}
ini_close();
global.sale_batch = -1;
if (current_month == 11 && (current_day >= 4 && current_day < 11))
{
    global.sale_batch = 5;
}
else if (current_month == 11 && (current_day >= 11 && current_day < 18))
{
    global.sale_batch = 6;
}
else if (current_month == 11 && (current_day >= 18 && current_day < 25))
{
    global.sale_batch = 1;
}
else if ((current_month == 11 && current_day >= 27) || (current_month == 12 && current_day < 4))
{
    global.sale_batch = 100;
}
else if (current_month == 12 && (current_day >= 9 && current_day < 16))
{
    global.sale_batch = 2;
}
else if ((current_month == 12 && current_day >= 19) || (current_month == 1 && current_day < 2))
{
    global.sale_batch = 100;
}
if (current_month == 1 && (current_day >= 6 && current_day < 13))
{
    global.sale_batch = 3;
}
else if (current_month == 1 && (current_day >= 13 && current_day < 20))
{
    global.sale_batch = 4;
}
else if (current_month == 1 && (current_day >= 20 && current_day < 27))
{
    global.sale_batch = 5;
}
else if ((current_month == 1 && current_day >= 27) || (current_month == 2 && current_day < 3))
{
    global.sale_batch = 6;
}
else if (current_month == 2 && (current_day >= 3 && current_day < 10))
{
    global.sale_batch = 1;
}
else if (current_month == 2 && (current_day >= 10 && current_day < 17))
{
    global.sale_batch = 2;
}
else if (current_month == 2 && (current_day >= 17 && current_day < 24))
{
    global.sale_batch = 3;
}
else if ((current_month == 2 && current_day >= 24) || (current_month == 3 && current_day < 3))
{
    global.sale_batch = 4;
}
else if (current_month == 3 && (current_day >= 3 && current_day < 10))
{
    global.sale_batch = 5;
}
else if (current_month == 3 && (current_day >= 13 && current_day < 20))
{
    global.sale_batch = 100;
}
if (current_month == 3 && (current_day >= 24 && current_day < 31))
{
    global.sale_batch = 6;
}
else if ((current_month == 3 && current_day >= 31) || (current_month == 4 && current_day < 7))
{
    global.sale_batch = 1;
}
else if (current_month == 4 && (current_day >= 7 && current_day < 14))
{
    global.sale_batch = 2;
}
else if (current_month == 4 && (current_day >= 14 && current_day < 21))
{
    global.sale_batch = 3;
}
else if (current_month == 4 && (current_day >= 21 && current_day < 28))
{
    global.sale_batch = 4;
}
else if ((current_month == 4 && current_day >= 28) || (current_month == 5 && current_day < 5))
{
    global.sale_batch = 5;
}
else if (current_month == 5 && (current_day >= 5 && current_day < 12))
{
    global.sale_batch = 6;
}
