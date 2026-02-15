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
    ob_theme_frame.T_Frame = -1;
}
if (ob_theme_frame.GlowLines == -1)
{
}
else
{
    sprite_delete(ob_theme_frame.GlowLines);
    ob_theme_frame.GlowLines = -1;
}
background_visible[0] = false;
background_index[0] = b_theme_zen_water_lower;
background_visible[1] = false;
background_index[1] = b_theme_zen_water_lower;
background_xscale[1] = 1;
background_yscale[1] = 1;
background_htiled[1] = 0;
background_vtiled[1] = 0;
background_hspeed[1] = 0;
background_x[1] = 0;
background_y[1] = 0;
background_visible[2] = false;
background_index[2] = b_theme_zen_water_lower;
background_htiled[2] = 0;
background_vtiled[2] = 0;
background_hspeed[2] = 0;
background_vspeed[2] = 0;
background_x[2] = 0;
background_y[2] = 0;
background_visible[3] = false;
background_index[3] = b_theme_zen_water_lower;
if (instance_exists(ob_theme_zen_lilly))
{
    with (ob_theme_zen_lilly)
    {
        instance_destroy();
    }
}
if (instance_exists(ob_theme_zen_fish))
{
    with (ob_theme_zen_fish)
    {
        instance_destroy();
    }
}
if (instance_exists(ob_theme_arcade_ship))
{
    with (ob_theme_arcade_ship)
    {
        instance_destroy();
    }
}
if (instance_exists(ob_theme_arcade_enemy))
{
    with (ob_theme_arcade_enemy)
    {
        instance_destroy();
    }
}
if (instance_exists(ob_theme_arcade_ship_bullet))
{
    with (ob_theme_arcade_ship_bullet)
    {
        instance_destroy();
    }
}
if (instance_exists(ob_theme_challenge_lines_vert_1))
{
    with (ob_theme_challenge_lines_vert_1)
    {
        instance_destroy();
    }
}
if (instance_exists(ob_theme_challenge_lines_vert_2))
{
    with (ob_theme_challenge_lines_vert_2)
    {
        instance_destroy();
    }
}
if (instance_exists(ob_theme_challenge_lines_vert_3))
{
    with (ob_theme_challenge_lines_vert_3)
    {
        instance_destroy();
    }
}
ob_theme_frame.alarm[1] = 1;
ini_open("settings.ini");
T_BoardTop = -1;
T_PuzBoard = -1;
T_BoardOpacity = 1;
var BoardSprite = "\themes\theme" + string(global.theme_to_use) + "board" + string(global.level_type) + ".png";
if (global.theme_to_use != 10)
{
    if (file_exists(working_directory + string(BoardSprite)))
    {
        T_PuzBoard = sprite_add(working_directory + string(BoardSprite), 0, false, false, 0, 0);
    }
}
T_Background = -1;
T_FrameColor = -1;
T_Frame2Color = -1;
T_BackTop1 = -1;
T_BackTop2 = -1;
T_BackTop3 = -1;
var BackingSprite = "\themes\theme" + string(global.theme_to_use) + "backing.png";
if (global.theme_to_use != 3 && global.theme_to_use != 10)
{
    if (file_exists(working_directory + string(BackingSprite)))
    {
        T_Background = background_add(working_directory + string(BackingSprite), 0, 0);
    }
    background_index[0] = T_Background;
}
background_visible[0] = true;
ZenWaterMove = ini_read_real("theme", "ZenWaterMove", 1);
ZenFish = ini_read_real("theme", "ZenFish", 1);
ZenGrabFish = ini_read_real("theme", "ZenGrabFish", 1);
ZenLotus = ini_read_real("theme", "ZenLotus", 1);
if (global.theme_to_use == 0)
{
    T_BoardOpacity = ini_read_real("theme", "ZenBoardOpacity", 1);
    background_xscale[1] = 2;
    background_yscale[1] = 2;
    background_visible[1] = true;
    background_htiled[1] = 1;
    background_vtiled[1] = 1;
    background_hspeed[1] = 0.1;
    background_index[1] = b_theme_zen_water_top;
    background_visible[2] = true;
    background_htiled[2] = 1;
    background_vtiled[2] = 1;
    background_hspeed[2] = 0.15;
    background_vspeed[2] = 0.15;
    background_index[2] = b_theme_zen_water_lower;
    instance_create(x, y, ob_theme_zen_lilly);
    instance_create(x, y, ob_theme_zen_lilly);
    instance_create(x, y, ob_theme_zen_lilly);
    instance_create(x, y, ob_theme_zen_lilly);
    instance_create(x, y, ob_theme_zen_lilly);
    instance_create(x, y, ob_theme_zen_lilly);
    instance_create(x, y, ob_theme_zen_lilly);
    instance_create(0 + random(1920), 0 + random(1080), ob_theme_zen_fish);
    instance_create(0 + random(1920), 0 + random(1080), ob_theme_zen_fish);
    instance_create(0 + random(1920), 0 + random(1080), ob_theme_zen_fish);
    instance_create(0 + random(1920), 0 + random(1080), ob_theme_zen_fish);
    instance_create(0 + random(1920), 0 + random(1080), ob_theme_zen_fish);
    instance_create(0 + random(1920), 0 + random(1080), ob_theme_zen_fish);
    instance_create(0 + random(1920), 0 + random(1080), ob_theme_zen_fish);
    instance_create(0 + random(1920), 0 + random(1080), ob_theme_zen_fish);
    instance_create(0 + random(1920), 0 + random(1080), ob_theme_zen_fish);
    instance_create(0 + random(1920), 0 + random(1080), ob_theme_zen_fish);
    instance_create(0 + random(1920), 0 + random(1080), ob_theme_zen_fish);
    instance_create(0 + random(1920), 0 + random(1080), ob_theme_zen_fish);
    instance_create(0 + random(1920), 0 + random(1080), ob_theme_zen_fish);
    instance_create(0 + random(1920), 0 + random(1080), ob_theme_zen_fish);
    instance_create(0 + random(1920), 0 + random(1080), ob_theme_zen_fish);
    instance_create(0 + random(1920), 0 + random(1080), ob_theme_zen_fish);
}
if (global.theme_to_use == 1)
{
}
ArcadeAliens = ini_read_real("theme", "ArcadeAliens", 1);
ArcadeScansVis = ini_read_real("theme", "ArcadeScansVis", 1);
ArcadeScanMove = ini_read_real("theme", "ArcadeScanMove", 1);
if (global.theme_to_use == 2)
{
    var FrameCol = ini_read_real("theme", "ArcadeFrameColor", 0);
    if (FrameCol == 0)
    {
        T_FrameColor = make_colour_rgb(255, 0, 0);
    }
    else if (FrameCol == 1)
    {
        T_FrameColor = make_colour_rgb(0, 194, 220);
    }
    else if (FrameCol == 2)
    {
        T_FrameColor = make_colour_rgb(0, 219, 136);
    }
    else if (FrameCol == 3)
    {
        T_FrameColor = make_colour_rgb(13, 219, 0);
    }
    else if (FrameCol == 4)
    {
        T_FrameColor = make_colour_rgb(219, 219, 0);
    }
    else if (FrameCol == 5)
    {
        T_FrameColor = make_colour_rgb(216, 143, 0);
    }
    else if (FrameCol == 6)
    {
        T_FrameColor = make_colour_rgb(174, 24, 255);
    }
    var Frame2Col = ini_read_real("theme", "ArcadeLinesColor", 0);
    if (Frame2Col == 0)
    {
        T_Frame2Color = make_colour_rgb(255, 0, 0);
    }
    else if (Frame2Col == 1)
    {
        T_Frame2Color = make_colour_rgb(0, 194, 220);
    }
    else if (Frame2Col == 2)
    {
        T_Frame2Color = make_colour_rgb(0, 219, 136);
    }
    else if (Frame2Col == 3)
    {
        T_Frame2Color = make_colour_rgb(13, 219, 0);
    }
    else if (Frame2Col == 4)
    {
        T_Frame2Color = make_colour_rgb(219, 219, 0);
    }
    else if (Frame2Col == 5)
    {
        T_Frame2Color = make_colour_rgb(216, 143, 0);
    }
    else if (Frame2Col == 6)
    {
        T_Frame2Color = make_colour_rgb(174, 24, 255);
    }
    background_visible[1] = true;
    background_htiled[1] = 1;
    background_vtiled[1] = 1;
    background_vspeed[1] = -0.2;
    background_index[1] = b_theme_arcade_scanlines;
    background_visible[2] = true;
    background_htiled[2] = 1;
    background_vtiled[2] = 1;
    background_vspeed[2] = -0.5;
    background_index[2] = b_theme_arcade_scanlines;
    instance_create(x, y, ob_theme_arcade_ship);
    alarm[1] = 1;
}
if (global.theme_to_use == 3)
{
    var WindowTime = ini_read_real("theme", "WindowTime", 0);
    var BackChoose = choose(1, 2, 3, 4);
    if (WindowTime != 0)
    {
        BackChoose = WindowTime;
    }
    BackingSprite = "\themes\theme" + string(global.theme_to_use) + "backing" + string(BackChoose) + ".png";
    if (file_exists(working_directory + string(BackingSprite)))
    {
        T_Background = background_add(working_directory + string(BackingSprite), 0, 0);
        background_index[0] = T_Background;
    }
    if (file_exists(working_directory + "\themes\theme3backingshadow.png"))
    {
        T_BackTop1 = background_add(working_directory + "\themes\theme3backingshadow.png", 0, 0);
        background_index[1] = T_BackTop1;
        background_visible[1] = true;
    }
    if (file_exists(working_directory + "\themes\theme3backingglass.png"))
    {
        T_BackTop2 = background_add(working_directory + "\themes\theme3backingglass.png", 0, 0);
        background_index[2] = T_BackTop2;
        background_visible[2] = true;
    }
}
ShowAircraft = ini_read_real("theme", "ShowAircraft", 1);
ShowDistAircraft = ini_read_real("theme", "ShowDistAircraft", 1);
ADScanslies = ini_read_real("theme", "ADScanslies", 1);
if (global.theme_to_use == 4)
{
}
ShowVlines = ini_read_real("theme", "ShowVlines", 1);
ShowHlines = ini_write_real("theme", "ShowHlines", 1);
LineOpacity = ini_read_real("theme", "LineOpacity", 1);
LinesMove = ini_read_real("theme", "LinesMove", 1);
LinesV1IMG = -1;
LinesV2IMG = -1;
LinesV3IMG = -1;
if (global.theme_to_use == 5)
{
    if (file_exists(working_directory + "\themes\theme5lines1.png"))
    {
        LinesV1IMG = sprite_add(working_directory + "\themes\theme5lines1.png", 0, false, false, 0, 0);
    }
    if (file_exists(working_directory + "\themes\theme5lines2.png"))
    {
        LinesV2IMG = sprite_add(working_directory + "\themes\theme5lines2.png", 0, false, false, 0, 0);
    }
    if (file_exists(working_directory + "\themes\theme5lines3.png"))
    {
        LinesV3IMG = sprite_add(working_directory + "\themes\theme5lines3.png", 0, false, false, 0, 0);
    }
    instance_create(x, y, ob_theme_challenge_lines_vert_1);
    instance_create(x, y, ob_theme_challenge_lines_vert_2);
    instance_create(x, y, ob_theme_challenge_lines_vert_3);
    var FrameCol = ini_read_real("theme", "LinesFrameColor", 0);
    if (FrameCol == 0)
    {
        T_FrameColor = make_colour_rgb(255, 231, 95);
    }
    else if (FrameCol == 1)
    {
        T_FrameColor = make_colour_rgb(90, 230, 126);
    }
    else if (FrameCol == 2)
    {
        T_FrameColor = make_colour_rgb(255, 12, 137);
    }
    else if (FrameCol == 3)
    {
        T_FrameColor = make_colour_rgb(255, 49, 12);
    }
    else if (FrameCol == 4)
    {
        T_FrameColor = make_colour_rgb(90, 230, 219);
    }
    else if (FrameCol == 5)
    {
        T_FrameColor = make_colour_rgb(172, 255, 95);
    }
    else if (FrameCol == 6)
    {
        T_FrameColor = make_colour_rgb(210, 12, 255);
    }
    else if (FrameCol == 7)
    {
        T_FrameColor = make_colour_rgb(147, 230, 90);
    }
    else if (FrameCol == 8)
    {
        T_FrameColor = make_colour_rgb(255, 124, 95);
    }
    else if (FrameCol == 9)
    {
        T_FrameColor = make_colour_rgb(130, 38, 55);
    }
    else if (FrameCol == 10)
    {
        T_FrameColor = make_colour_rgb(73, 127, 105);
    }
    else if (FrameCol == 11)
    {
        T_FrameColor = make_colour_rgb(129, 140, 80);
    }
    else if (FrameCol == 12)
    {
        T_FrameColor = make_colour_rgb(233, 130, 217);
    }
    else if (FrameCol == 13)
    {
        T_FrameColor = make_colour_rgb(172, 227, 168);
    }
    else if (FrameCol == 14)
    {
        T_FrameColor = make_colour_rgb(240, 207, 173);
    }
    var LineCols = ini_read_real("theme", "LinesColorSet", 0);
    if (LineCols == 0)
    {
        LineCol1 = make_colour_rgb(255, 12, 137);
        LineCol2 = make_colour_rgb(90, 230, 126);
        LineCol3 = make_colour_rgb(255, 231, 95);
    }
    else if (LineCols == 1)
    {
        LineCol1 = make_colour_rgb(255, 49, 12);
        LineCol2 = make_colour_rgb(90, 230, 219);
        LineCol3 = make_colour_rgb(172, 255, 95);
    }
    else if (LineCols == 2)
    {
        LineCol1 = make_colour_rgb(210, 12, 255);
        LineCol2 = make_colour_rgb(147, 230, 90);
        LineCol3 = make_colour_rgb(255, 124, 95);
    }
    else if (LineCols == 3)
    {
        LineCol1 = make_colour_rgb(130, 38, 55);
        LineCol2 = make_colour_rgb(73, 127, 105);
        LineCol3 = make_colour_rgb(129, 140, 80);
    }
    else if (LineCols == 4)
    {
        LineCol1 = make_colour_rgb(233, 130, 217);
        LineCol2 = make_colour_rgb(172, 227, 168);
        LineCol3 = make_colour_rgb(240, 207, 173);
    }
}
if (global.theme_to_use == 6)
{
    if (file_exists(working_directory + "\themes\theme6backingtop1.png"))
    {
        T_BackTop1 = background_add(working_directory + "\themes\theme6backingtop1.png", 0, 0);
        background_index[1] = T_BackTop1;
        background_visible[1] = ini_read_real("theme", "ShowBaubles", 1);
    }
    if (file_exists(working_directory + "\themes\theme6backingtop2.png"))
    {
        T_BackTop2 = background_add(working_directory + "\themes\theme6backingtop2.png", 0, 0);
        background_index[2] = T_BackTop2;
        background_visible[2] = ini_read_real("theme", "ShowPresents", 1);
    }
}
if (global.theme_to_use == 7)
{
    T_BoardOpacity = ini_read_real("theme", "RustBoardOpacity", 1);
    var BoardTopImg = "\themes\theme" + string(global.theme_to_use) + "board" + string(global.level_type) + "top.png";
    if (file_exists(working_directory + string(BoardTopImg)))
    {
        T_BoardTop = sprite_add(working_directory + string(BoardTopImg), 0, false, false, 0, 0);
    }
}
if (global.theme_to_use == 8)
{
    T_BoardOpacity = ini_read_real("theme", "TableBoardOpacity", 1);
}
if (global.theme_to_use == 9)
{
    T_BoardOpacity = ini_read_real("theme", "RuinsBoardOpacity", 1);
}
RainSpots = ini_read_real("theme", "RainSpots", 1);
rain_direction = 266 + random(8);
if (global.theme_to_use == 10)
{
    var RainWindowTime = ini_read_real("theme", "RainWindowTime", 0);
    var BackChoose = choose(1, 2, 3, 4);
    if (RainWindowTime != 0)
    {
        BackChoose = RainWindowTime;
    }
    BackingSprite = "\themes\theme" + string(global.theme_to_use) + "backing" + string(BackChoose) + ".png";
    T_Background = 0;
    if (file_exists(working_directory + string(BackingSprite)))
    {
        T_Background = background_add(working_directory + string(BackingSprite), 0, 0);
        background_index[0] = T_Background;
    }
    BoardSprite = "\themes\theme3board" + string(global.level_type) + ".png";
    T_PuzBoard = 0;
    if (file_exists(working_directory + string(BoardSprite)))
    {
        T_PuzBoard = sprite_add(working_directory + string(BoardSprite), 0, false, false, 0, 0);
    }
    if (file_exists(working_directory + "\themes\theme3backingshadow.png"))
    {
        T_BackTop1 = background_add(working_directory + "\themes\theme3backingshadow.png", 0, 0);
        background_index[1] = T_BackTop1;
        background_visible[1] = true;
    }
    if (file_exists(working_directory + "\themes\theme10backingclouds.png"))
    {
        T_BackTop2 = background_add(working_directory + "\themes\theme10backingclouds.png", 0, 0);
        background_index[2] = T_BackTop2;
        background_visible[2] = true;
    }
    if (file_exists(working_directory + "\themes\theme3backingglass.png.png"))
    {
        T_BackTop3 = background_add(working_directory + "\themes\theme3backingglass.png.png", 0, 0);
        background_index[3] = T_BackTop3;
        background_visible[3] = true;
    }
}
ini_close();
