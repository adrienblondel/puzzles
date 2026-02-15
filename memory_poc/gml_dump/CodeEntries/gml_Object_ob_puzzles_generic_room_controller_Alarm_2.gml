ini_open("settings.ini");
if (global.theme_to_use == 0)
{
    var BoardCol = ini_read_real("theme", "ZenBoardColor", 0);
    if (BoardCol == 0)
    {
        T_BoardColor = make_colour_rgb(255, 255, 179);
    }
    else if (BoardCol == 1)
    {
        T_BoardColor = make_colour_rgb(251, 167, 74);
    }
    else if (BoardCol == 2)
    {
        T_BoardColor = make_colour_rgb(223, 130, 102);
    }
    else if (BoardCol == 3)
    {
        T_BoardColor = make_colour_rgb(241, 139, 198);
    }
    else if (BoardCol == 4)
    {
        T_BoardColor = make_colour_rgb(230, 106, 150);
    }
    else if (BoardCol == 5)
    {
        T_BoardColor = make_colour_rgb(218, 135, 245);
    }
    else if (BoardCol == 6)
    {
        T_BoardColor = make_colour_rgb(117, 145, 240);
    }
    else if (BoardCol == 7)
    {
        T_BoardColor = make_colour_rgb(133, 227, 248);
    }
    else if (BoardCol == 8)
    {
        T_BoardColor = make_colour_rgb(134, 247, 179);
    }
    else if (BoardCol == 9)
    {
        T_BoardColor = make_colour_rgb(187, 245, 135);
    }
    var Backcol = ini_read_real("theme", "ZenBackingColor", 0);
    if (Backcol == 0)
    {
        background_blend[0] = 16777215;
    }
    else if (Backcol == 1)
    {
        background_blend[0] = make_colour_rgb(200, 200, 200);
    }
    else if (Backcol == 2)
    {
        background_blend[0] = make_colour_rgb(150, 150, 150);
    }
    else if (Backcol == 3)
    {
        background_blend[0] = make_colour_rgb(100, 100, 100);
    }
    else if (Backcol == 4)
    {
        background_blend[0] = make_colour_rgb(50, 50, 50);
    }
}
else if (global.theme_to_use == 1)
{
    var BoardCol = ini_read_real("theme", "SimpleBoardColor", 0);
    if (BoardCol == 0)
    {
        T_BoardColor = 16777215;
    }
    else if (BoardCol == 1)
    {
        T_BoardColor = make_colour_rgb(213, 134, 134);
    }
    else if (BoardCol == 2)
    {
        T_BoardColor = make_colour_rgb(190, 213, 134);
    }
    else if (BoardCol == 3)
    {
        T_BoardColor = make_colour_rgb(134, 213, 186);
    }
    else if (BoardCol == 4)
    {
        T_BoardColor = make_colour_rgb(134, 195, 213);
    }
    else if (BoardCol == 5)
    {
        T_BoardColor = make_colour_rgb(165, 134, 213);
    }
    else if (BoardCol == 6)
    {
        T_BoardColor = make_colour_rgb(217, 197, 130);
    }
    else if (BoardCol == 7)
    {
        T_BoardColor = make_colour_rgb(131, 135, 164);
    }
    else if (BoardCol == 8)
    {
        T_BoardColor = make_colour_rgb(237, 223, 203);
    }
    else if (BoardCol == 11)
    {
        T_BoardColor = make_colour_rgb(180, 180, 180);
    }
    else if (BoardCol == 12)
    {
        T_BoardColor = make_colour_rgb(100, 100, 100);
    }
    else if (BoardCol == 13)
    {
        T_BoardColor = make_colour_rgb(35, 35, 35);
    }
    var BackCol = ini_read_real("theme", "SimpleBackingColor", 0);
    if (BackCol == 0)
    {
        background_blend[0] = make_colour_rgb(131, 117, 134);
    }
    else if (BackCol == 1)
    {
        background_blend[0] = make_colour_rgb(103, 108, 132);
    }
    else if (BackCol == 2)
    {
        background_blend[0] = make_colour_rgb(59, 119, 132);
    }
    else if (BackCol == 3)
    {
        background_blend[0] = make_colour_rgb(80, 132, 123);
    }
    else if (BackCol == 4)
    {
        background_blend[0] = make_colour_rgb(88, 132, 102);
    }
    else if (BackCol == 5)
    {
        background_blend[0] = make_colour_rgb(118, 130, 92);
    }
    else if (BackCol == 6)
    {
        background_blend[0] = make_colour_rgb(130, 116, 89);
    }
    else if (BackCol == 7)
    {
        background_blend[0] = make_colour_rgb(130, 124, 63);
    }
    else if (BackCol == 8)
    {
        background_blend[0] = make_colour_rgb(130, 98, 92);
    }
    else if (BackCol == 9)
    {
        background_blend[0] = make_colour_rgb(127, 82, 59);
    }
    else if (BackCol == 10)
    {
        background_blend[0] = make_colour_rgb(150, 150, 150);
    }
    else if (BackCol == 11)
    {
        background_blend[0] = make_colour_rgb(64, 64, 64);
    }
    else if (BackCol == 12)
    {
        background_blend[0] = make_colour_rgb(25, 25, 25);
    }
}
else if (global.theme_to_use == 2)
{
    var BoardCol = ini_read_real("theme", "ArcadeBoardColor", 0);
    if (BoardCol == 0)
    {
        T_BoardColor = make_colour_rgb(255, 0, 0);
    }
    else if (BoardCol == 1)
    {
        T_BoardColor = make_colour_rgb(0, 194, 220);
    }
    else if (BoardCol == 2)
    {
        T_BoardColor = make_colour_rgb(0, 219, 136);
    }
    else if (BoardCol == 3)
    {
        T_BoardColor = make_colour_rgb(13, 219, 0);
    }
    else if (BoardCol == 4)
    {
        T_BoardColor = make_colour_rgb(219, 219, 0);
    }
    else if (BoardCol == 5)
    {
        T_BoardColor = make_colour_rgb(216, 143, 0);
    }
    else if (BoardCol == 6)
    {
        T_BoardColor = make_colour_rgb(174, 24, 255);
    }
}
else if (global.theme_to_use == 3)
{
    var BoardCol = ini_read_real("theme", "WindowBoardColor", 0);
    if (BoardCol == 0)
    {
        T_BoardColor = make_colour_rgb(163, 163, 163);
    }
    else if (BoardCol == 1)
    {
        T_BoardColor = make_colour_rgb(121, 147, 150);
    }
    else if (BoardCol == 2)
    {
        T_BoardColor = make_colour_rgb(142, 150, 121);
    }
    else if (BoardCol == 3)
    {
        T_BoardColor = make_colour_rgb(150, 121, 132);
    }
    else if (BoardCol == 4)
    {
        T_BoardColor = make_colour_rgb(108, 108, 108);
    }
}
else if (global.theme_to_use == 4)
{
    var BoardCol = ini_read_real("theme", "MegaBoardColor", 0);
    if (BoardCol == 0)
    {
        T_BoardColor = 16777215;
    }
    else if (BoardCol == 1)
    {
        T_BoardColor = make_colour_rgb(200, 39, 40);
    }
    else if (BoardCol == 2)
    {
        T_BoardColor = make_colour_rgb(200, 248, 56);
    }
    else if (BoardCol == 3)
    {
        T_BoardColor = make_colour_rgb(58, 193, 255);
    }
    else if (BoardCol == 4)
    {
        T_BoardColor = make_colour_rgb(190, 227, 230);
    }
    else if (BoardCol == 5)
    {
        T_BoardColor = make_colour_rgb(229, 62, 184);
    }
    else if (BoardCol == 6)
    {
        T_BoardColor = make_colour_rgb(224, 152, 61);
    }
    var Backcol = ini_read_real("theme", "MegaBackingColor", 0);
    if (Backcol == 0)
    {
        background_blend[0] = 16777215;
    }
    else if (Backcol == 1)
    {
        background_blend[0] = make_colour_rgb(200, 200, 200);
    }
    else if (Backcol == 2)
    {
        background_blend[0] = make_colour_rgb(150, 150, 150);
    }
    else if (Backcol == 3)
    {
        background_blend[0] = make_colour_rgb(100, 100, 100);
    }
    else if (Backcol == 4)
    {
        background_blend[0] = make_colour_rgb(50, 50, 50);
    }
}
else if (global.theme_to_use == 5)
{
    var BoardCol = ini_read_real("theme", "LinesBoardColor", 0);
    if (BoardCol == 0)
    {
        T_BoardColor = make_colour_rgb(255, 12, 137);
    }
    else if (BoardCol == 1)
    {
        T_BoardColor = make_colour_rgb(90, 230, 126);
    }
    else if (BoardCol == 2)
    {
        T_BoardColor = make_colour_rgb(255, 231, 95);
    }
    else if (BoardCol == 3)
    {
        T_BoardColor = make_colour_rgb(255, 49, 12);
    }
    else if (BoardCol == 4)
    {
        T_BoardColor = make_colour_rgb(90, 230, 219);
    }
    else if (BoardCol == 5)
    {
        T_BoardColor = make_colour_rgb(172, 255, 95);
    }
    else if (BoardCol == 6)
    {
        T_BoardColor = make_colour_rgb(210, 12, 255);
    }
    else if (BoardCol == 7)
    {
        T_BoardColor = make_colour_rgb(147, 230, 90);
    }
    else if (BoardCol == 8)
    {
        T_BoardColor = make_colour_rgb(255, 124, 95);
    }
    else if (BoardCol == 9)
    {
        T_BoardColor = make_colour_rgb(130, 38, 55);
    }
    else if (BoardCol == 10)
    {
        T_BoardColor = make_colour_rgb(73, 127, 105);
    }
    else if (BoardCol == 11)
    {
        T_BoardColor = make_colour_rgb(129, 140, 80);
    }
    else if (BoardCol == 12)
    {
        T_BoardColor = make_colour_rgb(233, 130, 217);
    }
    else if (BoardCol == 13)
    {
        T_BoardColor = make_colour_rgb(172, 227, 168);
    }
    else if (BoardCol == 14)
    {
        T_BoardColor = make_colour_rgb(240, 207, 173);
    }
}
else if (global.theme_to_use == 6)
{
    var BoardCol = ini_read_real("theme", "ChristmasBoardColor", 0);
    if (BoardCol == 0)
    {
        T_BoardColor = make_colour_rgb(218, 39, 39);
    }
    else if (BoardCol == 1)
    {
        T_BoardColor = make_colour_rgb(199, 44, 66);
    }
    else if (BoardCol == 2)
    {
        T_BoardColor = make_colour_rgb(101, 126, 56);
    }
    else if (BoardCol == 3)
    {
        T_BoardColor = make_colour_rgb(127, 137, 62);
    }
    else if (BoardCol == 4)
    {
        T_BoardColor = make_colour_rgb(177, 189, 203);
    }
    else if (BoardCol == 5)
    {
        T_BoardColor = make_colour_rgb(198, 159, 102);
    }
    var Backcol = ini_read_real("theme", "ChristmasBackingColor", 0);
    if (Backcol == 0)
    {
        background_blend[0] = make_colour_rgb(198, 159, 102);
    }
    else if (Backcol == 1)
    {
        background_blend[0] = make_colour_rgb(218, 39, 39);
    }
    else if (Backcol == 2)
    {
        background_blend[0] = make_colour_rgb(199, 44, 66);
    }
    else if (Backcol == 3)
    {
        background_blend[0] = make_colour_rgb(101, 126, 56);
    }
    else if (Backcol == 4)
    {
        background_blend[0] = make_colour_rgb(127, 137, 62);
    }
    else if (Backcol == 5)
    {
        background_blend[0] = make_colour_rgb(177, 189, 203);
    }
}
else if (global.theme_to_use == 7)
{
    var bTopCol = ini_read_real("theme", "RustBoardColor", 0);
    if (bTopCol == 0)
    {
        T_BoardTopColor = make_colour_rgb(50, 50, 50);
    }
    else if (bTopCol == 1)
    {
        T_BoardTopColor = make_colour_rgb(50, 100, 50);
    }
    else if (bTopCol == 2)
    {
        T_BoardTopColor = make_colour_rgb(50, 100, 100);
    }
    else if (bTopCol == 3)
    {
        T_BoardTopColor = make_colour_rgb(100, 50, 100);
    }
    else if (bTopCol == 4)
    {
        T_BoardTopColor = make_colour_rgb(183, 91, 182);
    }
    else if (bTopCol == 5)
    {
        T_BoardTopColor = make_colour_rgb(69, 90, 183);
    }
    else if (bTopCol == 6)
    {
        T_BoardTopColor = make_colour_rgb(143, 170, 183);
    }
    else if (bTopCol == 7)
    {
        T_BoardTopColor = make_colour_rgb(75, 183, 105);
    }
    else if (bTopCol == 8)
    {
        T_BoardTopColor = make_colour_rgb(144, 89, 183);
    }
    else if (bTopCol == 9)
    {
        T_BoardTopColor = make_colour_rgb(183, 15, 0);
    }
    else if (bTopCol == 10)
    {
        T_BoardTopColor = make_colour_rgb(107, 56, 18);
    }
    else if (bTopCol == 11)
    {
        T_BoardTopColor = make_colour_rgb(96, 107, 0);
    }
    var Backcol = ini_read_real("theme", "RustBackingColor", 0);
    if (Backcol == 0)
    {
        background_blend[0] = 16777215;
    }
    else if (Backcol == 1)
    {
        background_blend[0] = make_colour_rgb(200, 200, 200);
    }
    else if (Backcol == 2)
    {
        background_blend[0] = make_colour_rgb(150, 150, 150);
    }
    else if (Backcol == 3)
    {
        background_blend[0] = make_colour_rgb(100, 100, 100);
    }
    else if (Backcol == 4)
    {
        background_blend[0] = make_colour_rgb(50, 50, 50);
    }
}
else if (global.theme_to_use == 8)
{
    var BoardCol = ini_read_real("theme", "TableBoardColor", 0);
    if (BoardCol == 0)
    {
        T_BoardColor = make_colour_rgb(186, 159, 128);
    }
    else if (BoardCol == 1)
    {
        T_BoardColor = make_colour_rgb(196, 255, 201);
    }
    else if (BoardCol == 2)
    {
        T_BoardColor = make_colour_rgb(146, 255, 127);
    }
    else if (BoardCol == 3)
    {
        T_BoardColor = make_colour_rgb(240, 255, 158);
    }
    else if (BoardCol == 4)
    {
        T_BoardColor = make_colour_rgb(255, 234, 99);
    }
    else if (BoardCol == 5)
    {
        T_BoardColor = make_colour_rgb(255, 194, 109);
    }
    else if (BoardCol == 6)
    {
        T_BoardColor = make_colour_rgb(255, 125, 96);
    }
    else if (BoardCol == 7)
    {
        T_BoardColor = make_colour_rgb(255, 170, 182);
    }
    else if (BoardCol == 8)
    {
        T_BoardColor = make_colour_rgb(255, 142, 219);
    }
    else if (BoardCol == 9)
    {
        T_BoardColor = make_colour_rgb(185, 147, 255);
    }
    else if (BoardCol == 10)
    {
        T_BoardColor = make_colour_rgb(104, 122, 255);
    }
    else if (BoardCol == 11)
    {
        T_BoardColor = make_colour_rgb(155, 213, 255);
    }
    else if (BoardCol == 12)
    {
        T_BoardColor = make_colour_rgb(109, 245, 255);
    }
    else if (BoardCol == 13)
    {
        T_BoardColor = make_colour_rgb(204, 255, 252);
    }
    else if (BoardCol == 14)
    {
        T_BoardColor = make_colour_rgb(200, 200, 200);
    }
    else if (BoardCol == 15)
    {
        T_BoardColor = make_colour_rgb(100, 100, 100);
    }
    else if (BoardCol == 16)
    {
        T_BoardColor = make_colour_rgb(50, 50, 50);
    }
    var Backcol = ini_read_real("theme", "TableBackingColor", 0);
    if (Backcol == 0)
    {
        background_blend[0] = 16777215;
    }
    else if (Backcol == 1)
    {
        background_blend[0] = make_colour_rgb(200, 200, 200);
    }
    else if (Backcol == 2)
    {
        background_blend[0] = make_colour_rgb(150, 150, 150);
    }
    else if (Backcol == 3)
    {
        background_blend[0] = make_colour_rgb(100, 100, 100);
    }
    else if (Backcol == 4)
    {
        background_blend[0] = make_colour_rgb(50, 50, 50);
    }
}
else if (global.theme_to_use == 9)
{
    var BoardCol = ini_read_real("theme", "RuinsBoardColor", 0);
    if (BoardCol == 0)
    {
        T_BoardColor = 16777215;
    }
    else if (BoardCol == 1)
    {
        T_BoardColor = make_colour_rgb(200, 200, 200);
    }
    else if (BoardCol == 2)
    {
        T_BoardColor = make_colour_rgb(150, 150, 150);
    }
    else if (BoardCol == 3)
    {
        T_BoardColor = make_colour_rgb(100, 100, 100);
    }
    else if (BoardCol == 4)
    {
        T_BoardColor = make_colour_rgb(50, 50, 50);
    }
    var Backcol = ini_read_real("theme", "RuinsBackingColor", 0);
    if (Backcol == 0)
    {
        background_blend[0] = 16777215;
    }
    else if (Backcol == 1)
    {
        background_blend[0] = make_colour_rgb(200, 200, 200);
    }
    else if (Backcol == 2)
    {
        background_blend[0] = make_colour_rgb(150, 150, 150);
    }
    else if (Backcol == 3)
    {
        background_blend[0] = make_colour_rgb(100, 100, 100);
    }
    else if (Backcol == 4)
    {
        background_blend[0] = make_colour_rgb(50, 50, 50);
    }
}
else if (global.theme_to_use == 10)
{
    var BoardCol = ini_read_real("theme", "RainBoardColor", 0);
    if (BoardCol == 0)
    {
        T_BoardColor = make_colour_rgb(163, 163, 163);
    }
    else if (BoardCol == 1)
    {
        T_BoardColor = make_colour_rgb(121, 147, 150);
    }
    else if (BoardCol == 2)
    {
        T_BoardColor = make_colour_rgb(142, 150, 121);
    }
    else if (BoardCol == 3)
    {
        T_BoardColor = make_colour_rgb(150, 121, 132);
    }
    else if (BoardCol == 4)
    {
        T_BoardColor = make_colour_rgb(108, 108, 108);
    }
}
ini_close();
