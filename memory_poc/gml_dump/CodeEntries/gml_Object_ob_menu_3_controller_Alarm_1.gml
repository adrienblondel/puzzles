ini_open("pidsg.ini");
var PuzGrid = ds_grid_create(global.PackGridX, global.TotalPacks + 1);
var ChalGrid = ds_grid_create(1, global.CurChalNum + 1);
var UnlocksGrid = ds_grid_create(1, global.TotalUnlockables + 1);
var FreeGrid = ds_grid_create(1, global.FreePuzQuantity + 1);
var Pins = ds_grid_create(2, 6);
if (ini_key_exists("pi", "0"))
{
    ds_grid_read(PuzGrid, ini_read_string("pi", "0", ""));
}
if (ini_key_exists("chal", "0"))
{
    ds_grid_read(ChalGrid, ini_read_string("chal", "0", ""));
}
if (ini_key_exists("ul", "0"))
{
    ds_grid_read(UnlocksGrid, ini_read_string("ul", "0", ""));
}
if (ini_key_exists("fp", "0"))
{
    ds_grid_read(FreeGrid, ini_read_string("fp", "0", ""));
}
if (ini_key_exists("Pins", "0"))
{
    ds_grid_read(Pins, ini_read_string("Pins", "0", ""));
}
ini_close();
FavPuzIm1 = 54;
Pin1Pack = ds_grid_get(Pins, 0, 0);
Pin1Puz = ds_grid_get(Pins, 1, 0);
var folder = 0;
if (Pin1Pack == 5000)
{
    folder = "puzshop";
}
else if (Pin1Pack == 7000)
{
    folder = "challenge";
}
if (Pin1Pack == 5000)
{
    Pin1_qnt = ds_grid_get(UnlocksGrid, 0, Pin1Puz);
}
else if (Pin1Pack == 7000)
{
    Pin1_qnt = ds_grid_get(ChalGrid, 0, Pin1Puz);
}
else if (Pin1Pack == 126)
{
    Pin1_qnt = ds_grid_get(FreeGrid, 0, Pin1Puz);
}
else
{
    Pin1_qnt = ds_grid_get(PuzGrid, Pin1Puz + 10, Pin1Pack);
}
Pin1_pr = 0;
if (Pin1Pack > 0)
{
    var Pin1_file = "";
    if (folder == "puzshop" || folder == "challenge")
    {
        Pin1_file = "\misc\" + string(folder) + "\p" + string(Pin1Pack) + "p" + string(Pin1Puz);
    }
    else
    {
        Pin1_file = "\\misc\\content\\" + string(Pin1Pack) + "\\p" + string(Pin1Pack) + "p" + string(Pin1Puz);
    }
    if (file_exists(working_directory + string(Pin1_file) + "b.png"))
    {
        FavPuzIm1 = sprite_add(working_directory + string(Pin1_file) + "b.png", 0, false, false, 87, 53);
    }
    var savefile = "p" + string(Pin1Pack) + ".ini";
    ini_open(string(savefile));
    var ClickedGrid = ds_grid_create(1, Pin1Puz + 1);
    if (ini_key_exists("PC", "0"))
    {
        ds_grid_read(ClickedGrid, ini_read_string("PC", "0", ""));
    }
    Pin1_pr = ds_grid_get(ClickedGrid, 0, Pin1Puz);
    if (Pin1_pr > 0)
    {
    }
    else
    {
        Pin1_pr = 0;
    }
    ds_grid_destroy(ClickedGrid);
    ini_close();
}
var a_c = "complete_pack_" + string(Pin1Pack) + "_puzzle_" + string(Pin1Puz);
Pin1win = steam_get_achievement(a_c);
FavPuzIm2 = 54;
Pin2Pack = ds_grid_get(Pins, 0, 1);
Pin2Puz = ds_grid_get(Pins, 1, 1);
folder = 0;
if (Pin2Pack == 5000)
{
    folder = "puzshop";
}
else if (Pin2Pack == 7000)
{
    folder = "challenge";
}
if (Pin2Pack == 5000)
{
    Pin2_qnt = ds_grid_get(UnlocksGrid, 0, Pin2Puz);
}
else if (Pin2Pack == 7000)
{
    Pin2_qnt = ds_grid_get(ChalGrid, 0, Pin2Puz);
}
else if (Pin2Pack == 126)
{
    Pin2_qnt = ds_grid_get(FreeGrid, 0, Pin2Puz);
}
else
{
    Pin2_qnt = ds_grid_get(PuzGrid, Pin2Puz + 10, Pin2Pack);
}
Pin2_pr = 0;
if (Pin2Pack > 0)
{
    var Pin2_file = "";
    if (folder == "puzshop" || folder == "challenge")
    {
        Pin2_file = "\misc\" + string(folder) + "\p" + string(Pin2Pack) + "p" + string(Pin2Puz);
    }
    else
    {
        Pin2_file = "\\misc\\content\\" + string(Pin2Pack) + "\\p" + string(Pin2Pack) + "p" + string(Pin2Puz);
    }
    if (file_exists(working_directory + string(Pin2_file) + "b.png"))
    {
        FavPuzIm2 = sprite_add(working_directory + string(Pin2_file) + "b.png", 0, false, false, 87, 53);
    }
    var savefile = "p" + string(Pin2Pack) + ".ini";
    ini_open(string(savefile));
    var ClickedGrid = ds_grid_create(1, Pin2Puz + 1);
    if (ini_key_exists("PC", "0"))
    {
        ds_grid_read(ClickedGrid, ini_read_string("PC", "0", ""));
    }
    Pin2_pr = ds_grid_get(ClickedGrid, 0, Pin2Puz);
    if (Pin2_pr > 0)
    {
    }
    else
    {
        Pin2_pr = 0;
    }
    ds_grid_destroy(ClickedGrid);
    ini_close();
}
a_c = "complete_pack_" + string(Pin2Pack) + "_puzzle_" + string(Pin2Puz);
Pin2win = steam_get_achievement(a_c);
FavPuzIm3 = 54;
Pin3Pack = ds_grid_get(Pins, 0, 2);
Pin3Puz = ds_grid_get(Pins, 1, 2);
folder = 0;
if (Pin3Pack == 5000)
{
    folder = "puzshop";
}
else if (Pin3Pack == 7000)
{
    folder = "challenge";
}
if (Pin3Pack == 5000)
{
    Pin3_qnt = ds_grid_get(UnlocksGrid, 0, Pin3Puz);
}
else if (Pin3Pack == 7000)
{
    Pin3_qnt = ds_grid_get(ChalGrid, 0, Pin3Puz);
}
else if (Pin3Pack == 126)
{
    Pin3_qnt = ds_grid_get(FreeGrid, 0, Pin3Puz);
}
else
{
    Pin3_qnt = ds_grid_get(PuzGrid, Pin3Puz + 10, Pin3Pack);
}
Pin3_pr = 0;
if (Pin3Pack > 0)
{
    var Pin3_file = "";
    if (folder == "puzshop" || folder == "challenge")
    {
        Pin3_file = "\misc\" + string(folder) + "\p" + string(Pin3Pack) + "p" + string(Pin3Puz);
    }
    else
    {
        Pin3_file = "\\misc\\content\\" + string(Pin3Pack) + "\\p" + string(Pin3Pack) + "p" + string(Pin3Puz);
    }
    if (file_exists(working_directory + string(Pin3_file) + "b.png"))
    {
        FavPuzIm3 = sprite_add(working_directory + string(Pin3_file) + "b.png", 0, false, false, 87, 53);
    }
    var savefile = "p" + string(Pin3Pack) + ".ini";
    ini_open(string(savefile));
    var ClickedGrid = ds_grid_create(1, Pin3Puz + 1);
    if (ini_key_exists("PC", "0"))
    {
        ds_grid_read(ClickedGrid, ini_read_string("PC", "0", ""));
    }
    Pin3_pr = ds_grid_get(ClickedGrid, 0, Pin3Puz);
    if (Pin3_pr > 0)
    {
    }
    else
    {
        Pin3_pr = 0;
    }
    ds_grid_destroy(ClickedGrid);
    ini_close();
}
a_c = "complete_pack_" + string(Pin3Pack) + "_puzzle_" + string(Pin3Puz);
Pin3win = steam_get_achievement(a_c);
FavPuzIm4 = 54;
Pin4Pack = ds_grid_get(Pins, 0, 3);
Pin4Puz = ds_grid_get(Pins, 1, 3);
folder = 0;
if (Pin4Pack == 5000)
{
    folder = "puzshop";
}
else if (Pin4Pack == 7000)
{
    folder = "challenge";
}
if (Pin4Pack == 5000)
{
    Pin4_qnt = ds_grid_get(UnlocksGrid, 0, Pin4Puz);
}
else if (Pin4Pack == 7000)
{
    Pin4_qnt = ds_grid_get(ChalGrid, 0, Pin4Puz);
}
else if (Pin4Pack == 126)
{
    Pin4_qnt = ds_grid_get(FreeGrid, 0, Pin4Puz);
}
else
{
    Pin4_qnt = ds_grid_get(PuzGrid, Pin4Puz + 10, Pin4Pack);
}
Pin4_pr = 0;
if (Pin4Pack > 0)
{
    var Pin4_file = "";
    if (folder == "puzshop" || folder == "challenge")
    {
        Pin4_file = "\misc\" + string(folder) + "\p" + string(Pin4Pack) + "p" + string(Pin4Puz);
    }
    else
    {
        Pin4_file = "\\misc\\content\\" + string(Pin4Pack) + "\\p" + string(Pin4Pack) + "p" + string(Pin4Puz);
    }
    if (file_exists(working_directory + string(Pin4_file) + "b.png"))
    {
        FavPuzIm4 = sprite_add(working_directory + string(Pin4_file) + "b.png", 0, false, false, 87, 53);
    }
    var savefile = "p" + string(Pin4Pack) + ".ini";
    ini_open(string(savefile));
    var ClickedGrid = ds_grid_create(1, Pin4Puz + 1);
    if (ini_key_exists("PC", "0"))
    {
        ds_grid_read(ClickedGrid, ini_read_string("PC", "0", ""));
    }
    Pin4_pr = ds_grid_get(ClickedGrid, 0, Pin4Puz);
    if (Pin4_pr > 0)
    {
    }
    else
    {
        Pin4_pr = 0;
    }
    ds_grid_destroy(ClickedGrid);
    ini_close();
}
a_c = "complete_pack_" + string(Pin4Pack) + "_puzzle_" + string(Pin4Puz);
Pin4win = steam_get_achievement(a_c);
FavPuzIm5 = 54;
Pin5Pack = ds_grid_get(Pins, 0, 4);
Pin5Puz = ds_grid_get(Pins, 1, 4);
folder = 0;
if (Pin5Pack == 5000)
{
    folder = "puzshop";
}
else if (Pin5Pack == 7000)
{
    folder = "challenge";
}
if (Pin5Pack == 5000)
{
    Pin5_qnt = ds_grid_get(UnlocksGrid, 0, Pin5Puz);
}
else if (Pin5Pack == 7000)
{
    Pin5_qnt = ds_grid_get(ChalGrid, 0, Pin5Puz);
}
else if (Pin5Pack == 126)
{
    Pin5_qnt = ds_grid_get(FreeGrid, 0, Pin5Puz);
}
else
{
    Pin5_qnt = ds_grid_get(PuzGrid, Pin5Puz + 10, Pin5Pack);
}
Pin5_pr = 0;
if (Pin5Pack > 0)
{
    var Pin5_file = "";
    if (folder == "puzshop" || folder == "challenge")
    {
        Pin5_file = "\misc\" + string(folder) + "\p" + string(Pin5Pack) + "p" + string(Pin5Puz);
    }
    else
    {
        Pin5_file = "\\misc\\content\\" + string(Pin5Pack) + "\\p" + string(Pin5Pack) + "p" + string(Pin5Puz);
    }
    if (file_exists(working_directory + string(Pin5_file) + "b.png"))
    {
        FavPuzIm5 = sprite_add(working_directory + string(Pin5_file) + "b.png", 0, false, false, 87, 53);
    }
    var savefile = "p" + string(Pin5Pack) + ".ini";
    ini_open(string(savefile));
    var ClickedGrid = ds_grid_create(1, Pin5Puz + 1);
    if (ini_key_exists("PC", "0"))
    {
        ds_grid_read(ClickedGrid, ini_read_string("PC", "0", ""));
    }
    Pin5_pr = ds_grid_get(ClickedGrid, 0, Pin5Puz);
    if (Pin5_pr > 0)
    {
    }
    else
    {
        Pin5_pr = 0;
    }
    ds_grid_destroy(ClickedGrid);
    ini_close();
}
a_c = "complete_pack_" + string(Pin5Pack) + "_puzzle_" + string(Pin5Puz);
Pin5win = steam_get_achievement(a_c);
FavPuzIm6 = 54;
Pin6Pack = ds_grid_get(Pins, 0, 5);
Pin6Puz = ds_grid_get(Pins, 1, 5);
folder = 0;
if (Pin6Pack == 5000)
{
    folder = "puzshop";
}
else if (Pin6Pack == 7000)
{
    folder = "challenge";
}
if (Pin6Pack == 5000)
{
    Pin6_qnt = ds_grid_get(UnlocksGrid, 0, Pin6Puz);
}
else if (Pin6Pack == 7000)
{
    Pin6_qnt = ds_grid_get(ChalGrid, 0, Pin6Puz);
}
else if (Pin6Pack == 126)
{
    Pin6_qnt = ds_grid_get(FreeGrid, 0, Pin6Puz);
}
else
{
    Pin6_qnt = ds_grid_get(PuzGrid, Pin6Puz + 10, Pin6Pack);
}
Pin6_pr = 0;
if (Pin6Pack > 0)
{
    var Pin6_file = "";
    if (folder == "puzshop" || folder == "challenge")
    {
        Pin6_file = "\misc\" + string(folder) + "\p" + string(Pin6Pack) + "p" + string(Pin6Puz);
    }
    else
    {
        Pin6_file = "\\misc\\content\\" + string(Pin6Pack) + "\\p" + string(Pin6Pack) + "p" + string(Pin6Puz);
    }
    if (file_exists(working_directory + string(Pin6_file) + "b.png"))
    {
        FavPuzIm6 = sprite_add(working_directory + string(Pin6_file) + "b.png", 0, false, false, 87, 53);
    }
    var savefile = "p" + string(Pin6Pack) + ".ini";
    ini_open(string(savefile));
    var ClickedGrid = ds_grid_create(1, Pin6Puz + 1);
    if (ini_key_exists("PC", "0"))
    {
        ds_grid_read(ClickedGrid, ini_read_string("PC", "0", ""));
    }
    Pin6_pr = ds_grid_get(ClickedGrid, 0, Pin6Puz);
    if (Pin6_pr > 0)
    {
    }
    else
    {
        Pin6_pr = 0;
    }
    ds_grid_destroy(ClickedGrid);
    ini_close();
}
a_c = "complete_pack_" + string(Pin6Pack) + "_puzzle_" + string(Pin6Puz);
Pin6win = steam_get_achievement(a_c);
ds_grid_destroy(Pins);
ds_grid_destroy(PuzGrid);
ds_grid_destroy(ChalGrid);
ds_grid_destroy(UnlocksGrid);
ds_grid_destroy(FreeGrid);
ini_close();
