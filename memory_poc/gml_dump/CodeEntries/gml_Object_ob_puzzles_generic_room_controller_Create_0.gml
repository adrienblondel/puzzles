ENDbOXy = -45;
ENDbOXGOLD = 0;
ENDbOXxHOV = 0;
ENDboxSHOW = 0;
IntroBlack = 1;
draw_texture_flush();
alarm[5] = 100;
puzzle_is_over = 0;
preview_hint = 0;
ExitPuzzle = 0;
ExitPuzzleFade = 0;
DropFadeCoins = 1;
FixFigBoardX = 1;
if (global.level_type == 5)
{
    alarm[3] = 2;
}
else
{
    alarm[0] = 2;
}
HPD_pool = 489999;
HPD_board = -201;
HPD_tray = -303000;
global.can_pick_a_bit_up = 1;
global.MouseOnUI = 0;
global.camera_is_zoomed_in = 0;
global.can_use_ui_and_buttons_in_puzzle = 0;
if (global.theme_to_use == 0)
{
    audio_play_sound(s_theme_zen_water_ambiance, 1, true);
}
if (global.theme_to_use == 4)
{
    audio_play_sound(s_theme_megacityone_ambiance, 1, true);
}
TotalBits = global.puzzle_max_number_of_pieces;
if (global.level_type == 1)
{
    PuzImageX = 266;
    PuzImageY = 0;
    if (TotalBits == 60)
    {
        Xstart = 317;
        Ystart = 45;
        Plus_x = 143;
        Plus_y = 134;
        global.puzzle_piece_in_pond_scale = 0.5;
        global.puzzle_piece_in_tray_scale = 0.6;
    }
    if (TotalBits == 112)
    {
        Xstart = 297;
        Ystart = 33;
        Plus_x = 102;
        Plus_y = 99;
        global.puzzle_piece_in_pond_scale = 0.5;
        global.puzzle_piece_in_tray_scale = 0.7;
    }
    if (TotalBits == 153)
    {
        Xstart = 288;
        Ystart = 23;
        Plus_x = 84;
        Plus_y = 89;
        global.puzzle_piece_in_pond_scale = 0.5;
        global.puzzle_piece_in_tray_scale = 0.7;
    }
    if (TotalBits == 220)
    {
        Xstart = 286;
        Ystart = 19;
        Plus_x = 71;
        Plus_y = 72;
        global.puzzle_piece_in_pond_scale = 0.6;
        global.puzzle_piece_in_tray_scale = 0.75;
    }
    if (TotalBits == 350)
    {
        Xstart = 287;
        Ystart = 23;
        Plus_x = 56;
        Plus_y = 55;
        global.puzzle_piece_in_pond_scale = 0.7;
        global.puzzle_piece_in_tray_scale = 0.85;
    }
}
else if (global.level_type == 2)
{
    PuzImageX = 260;
    PuzImageY = 0;
    if (TotalBits == 96)
    {
        Xstart = 317;
        Ystart = 55;
        Plus_x = 117;
        Plus_y = 113;
        global.puzzle_piece_in_pond_scale = 0.6;
        global.puzzle_piece_in_tray_scale = 0.7;
    }
    if (TotalBits == 140)
    {
        Xstart = 304;
        Ystart = 41;
        Plus_x = 101;
        Plus_y = 91;
        global.puzzle_piece_in_pond_scale = 0.6;
        global.puzzle_piece_in_tray_scale = 0.7;
    }
    if (TotalBits == 216)
    {
        Xstart = 289;
        Ystart = 32;
        Plus_x = 79;
        Plus_y = 76;
        global.puzzle_piece_in_pond_scale = 0.6;
        global.puzzle_piece_in_tray_scale = 0.7;
    }
    if (TotalBits == 330)
    {
        Xstart = 288;
        Ystart = 15;
        Plus_x = 64;
        Plus_y = 61;
        global.puzzle_piece_in_pond_scale = 0.65;
        global.puzzle_piece_in_tray_scale = 0.8;
    }
    if (TotalBits == 425)
    {
        Xstart = 287;
        Ystart = 26;
        Plus_x = 56;
        Plus_y = 53;
        global.puzzle_piece_in_pond_scale = 0.7;
        global.puzzle_piece_in_tray_scale = 0.8;
    }
    if (TotalBits == 640)
    {
        Xstart = 278;
        Ystart = 13;
        Plus_x = 44;
        Plus_y = 46;
        global.puzzle_piece_in_pond_scale = 0.8;
        global.puzzle_piece_in_tray_scale = 0.9;
    }
    if (TotalBits == 840)
    {
        Xstart = 280;
        Ystart = 13;
        Plus_x = 40;
        Plus_y = 38;
        global.puzzle_piece_in_pond_scale = 0.8;
        global.puzzle_piece_in_tray_scale = 0.9;
    }
    if (TotalBits == 1410)
    {
        Xstart = 270;
        Ystart = 16;
        Plus_x = 30;
        Plus_y = 30;
        global.puzzle_piece_in_pond_scale = 0.85;
        global.puzzle_piece_in_tray_scale = 0.95;
    }
}
else if (global.level_type == 3)
{
    PuzImageX = 440;
    PuzImageY = 0;
    if (TotalBits == 100)
    {
        Xstart = 488;
        Ystart = 48;
        Plus_x = 105;
        Plus_y = 105;
        global.puzzle_piece_in_pond_scale = 0.65;
        global.puzzle_piece_in_tray_scale = 0.75;
    }
    if (TotalBits == 169)
    {
        Xstart = 474;
        Ystart = 34;
        Plus_x = 81;
        Plus_y = 81;
        global.puzzle_piece_in_pond_scale = 0.65;
        global.puzzle_piece_in_tray_scale = 0.75;
    }
    if (TotalBits == 324)
    {
        Xstart = 459;
        Ystart = 19;
        Plus_x = 59;
        Plus_y = 59;
        global.puzzle_piece_in_pond_scale = 0.7;
        global.puzzle_piece_in_tray_scale = 0.85;
    }
    if (TotalBits == 400)
    {
        Xstart = 457;
        Ystart = 17;
        Plus_x = 53;
        Plus_y = 53;
        global.puzzle_piece_in_pond_scale = 0.7;
        global.puzzle_piece_in_tray_scale = 0.85;
    }
    if (TotalBits == 676)
    {
        Xstart = 448;
        Ystart = 8;
        Plus_x = 41;
        Plus_y = 41;
        global.puzzle_piece_in_pond_scale = 0.9;
        global.puzzle_piece_in_tray_scale = 0.9;
    }
    if (TotalBits == 841)
    {
        Xstart = 456;
        Ystart = 16;
        Plus_x = 36;
        Plus_y = 36;
        global.puzzle_piece_in_pond_scale = 0.9;
        global.puzzle_piece_in_tray_scale = 0.95;
    }
}
else if (global.level_type == 4)
{
    PuzImageX = 20;
    PuzImageY = 0;
    if (TotalBits == 126)
    {
        Xstart = 68;
        Ystart = 40;
        Plus_x = 105;
        Plus_y = 105;
        global.puzzle_piece_in_pond_scale = 0.5;
        global.puzzle_piece_in_tray_scale = 0.7;
    }
    if (TotalBits == 168)
    {
        Xstart = 60;
        Ystart = 44;
        Plus_x = 90;
        Plus_y = 89;
        global.puzzle_piece_in_pond_scale = 0.6;
        global.puzzle_piece_in_tray_scale = 0.75;
    }
    if (TotalBits == 250)
    {
        Xstart = 49;
        Ystart = 30;
        Plus_x = 76;
        Plus_y = 72;
        global.puzzle_piece_in_pond_scale = 0.6;
        global.puzzle_piece_in_tray_scale = 0.75;
    }
    if (TotalBits == 455)
    {
        Xstart = 43;
        Ystart = 19;
        Plus_x = 54;
        Plus_y = 56;
        global.puzzle_piece_in_pond_scale = 0.75;
        global.puzzle_piece_in_tray_scale = 0.8;
    }
    if (TotalBits == 640)
    {
        Xstart = 45;
        Ystart = 18;
        Plus_x = 47;
        Plus_y = 45;
        global.puzzle_piece_in_pond_scale = 0.8;
        global.puzzle_piece_in_tray_scale = 0.9;
    }
    if (TotalBits == 810)
    {
        Xstart = 37;
        Ystart = 15;
        Plus_x = 42;
        Plus_y = 40;
        global.puzzle_piece_in_pond_scale = 0.8;
        global.puzzle_piece_in_tray_scale = 0.9;
    }
    if (TotalBits == 1000)
    {
        Xstart = 29;
        Ystart = 13;
        Plus_x = 38;
        Plus_y = 36;
        global.puzzle_piece_in_pond_scale = 0.9;
        global.puzzle_piece_in_tray_scale = 0.95;
    }
}
else if (global.level_type == 5)
{
    PuzImageX = 1;
    PuzImageY = 2;
    global.puzzle_piece_in_pond_scale = 0.6;
    global.puzzle_piece_in_tray_scale = 0.65;
}
menu_overlay = 0;
TrayOpen = 0;
HL_hidetray = 0;
reset_rebuildHOV = 0;
MenuOverlay = 0;
SetStickChangeh = 0;
SetStickChangeV = 0;
ui_buttons_visible = 0;
HL_hideMenu = 0;
Menu_end_alpha = 1;
HL_UI_Title = "";
HL_UI_Pos = 0;
CanFillEdges = 1;
instance_create(0, 0, ob_theme_frame);
alarm[4] = 1;
alarm[2] = 3;
ColToChange = 3;
T_BoardColor = -1;
T_BoardTop = -1;
T_BoardTopColor = -1;
T_PuzBoard = -1;
T_BoardOpacity = 1;
T_Background = -1;
T_FrameColor = -1;
T_Frame2Color = -1;
T_BackTop1 = -1;
T_BackTop2 = -1;
T_BackTop3 = -1;
ZenWaterMove = 0;
ZenFish = 0;
ZenGrabFish = 0;
ZenLotus = 0;
ArcadeAliens = 0;
ArcadeScansVis = 0;
ArcadeScanMove = 0;
ShowAircraft = 0;
ShowDistAircraft = 0;
ADScanslies = 0;
ShowVlines = 0;
ShowHlines = 0;
LineOpacity = 0;
LinesMove = 0;
LinesV1IMG = -1;
LinesV2IMG = -1;
LinesV3IMG = -1;
LineCol1 = -1;
LineCol2 = -1;
LineCol3 = -1;
RainSpots = 0;
rain_direction = 0;
