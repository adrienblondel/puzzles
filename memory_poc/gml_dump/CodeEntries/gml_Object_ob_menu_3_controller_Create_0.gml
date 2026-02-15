VerNumber = "Ver: 4.0.63.772";
EventTYPE = 0;
EventISOn = 0;
if (EventTYPE != 0)
{
    EventISOn = 1;
}
adventMUTEvol = 0;
if (EventTYPE == 2 || EventTYPE == 4)
{
    nyCOL1 = 16777215;
    nyCOL2 = 16777215;
    nyCOL3 = 16777215;
    nyCOL4 = 16777215;
    nyCOL_counter = 10;
    nyCOl_index = 0;
}
draw_texture_flush();
audio_group_stop_all(1);
general_ui_alpha = 1;
current_page_alpha = 1;
can_press_ui_buttons = 1;
UpArrowHov = 0;
DnArrowHov = 0;
BKArrowHov = 0;
ArrowClicks = 0;
ArrowClicksMax = 0;
ScrollAmount = 0;
FadeToPuz = 0;
FadeOut = 0;
DropFadeCoins = 1;
FadeIn = 0;
CatFilter = 0;
CatCheckComplete = 0;
CatCheckIncomplete = 0;
CatCheckInProgress = 0;
alarm[3] = 1;
HolDecals = 0;
if (ob_game_controller.GameLaunched == 1)
{
    if (EventISOn == 1)
    {
        CurrentPage = 10;
        alarm[4] = 1;
    }
    else
    {
        CurrentPage = 1;
    }
    ob_game_controller.GameLaunched = 0;
    var P1id = 0;
    P1id = 0;
    var P2id = 0;
    var P3id = 0;
    var P4id = 0;
    var P5id = 0;
    var P6id = 0;
    var P7id = 0;
    var P8id = 0;
    var P9id = 0;
    var P10id = 0;
    var P11id = 0;
    var P12id = 0;
    var P13id = 0;
    var P14id = 0;
    var P15id = 0;
    P1id = instance_create(176, 224, ob_intro_puzzle_piece);
    P1id.bn = 1;
    P1id.speed = 10;
    P1id.direction = random(360);
    P2id = instance_create(560, 232, ob_intro_puzzle_piece);
    P2id.bn = 2;
    P2id.speed = 10;
    P2id.direction = random(360);
    P3id = instance_create(956, 225, ob_intro_puzzle_piece);
    P3id.bn = 3;
    P3id.speed = 10;
    P3id.direction = random(360);
    P4id = instance_create(1360, 218, ob_intro_puzzle_piece);
    P4id.bn = 4;
    P4id.speed = 10;
    P4id.direction = random(360);
    P5id = instance_create(1747, 233, ob_intro_puzzle_piece);
    P5id.bn = 5;
    P5id.speed = 10;
    P5id.direction = random(360);
    P6id = instance_create(187, 541, ob_intro_puzzle_piece);
    P6id.bn = 6;
    P6id.speed = 10;
    P6id.direction = random(360);
    P7id = instance_create(559, 523, ob_intro_puzzle_piece);
    P7id.bn = 7;
    P7id.speed = 10;
    P7id.direction = random(360);
    P8id = instance_create(991, 509, ob_intro_puzzle_piece);
    P8id.bn = 8;
    P8id.speed = 10;
    P8id.direction = random(360);
    P9id = instance_create(1358, 530, ob_intro_puzzle_piece);
    P9id.bn = 9;
    P9id.speed = 10;
    P9id.direction = random(360);
    P10id = instance_create(1728, 546, ob_intro_puzzle_piece);
    P10id.bn = 10;
    P10id.speed = 10;
    P10id.direction = random(360);
    P11id = instance_create(191, 885, ob_intro_puzzle_piece);
    P11id.bn = 11;
    P11id.speed = 10;
    P11id.direction = random(360);
    P12id = instance_create(567, 877, ob_intro_puzzle_piece);
    P12id.bn = 12;
    P12id.speed = 10;
    P12id.direction = random(360);
    P13id = instance_create(959, 890, ob_intro_puzzle_piece);
    P13id.bn = 13;
    P13id.speed = 10;
    P13id.direction = random(360);
    P14id = instance_create(1367, 895, ob_intro_puzzle_piece);
    P14id.bn = 14;
    P14id.speed = 10;
    P14id.direction = random(360);
    P15id = instance_create(1737, 875, ob_intro_puzzle_piece);
    P15id.bn = 15;
    P15id.speed = 10;
    P15id.direction = random(360);
    steam_set_stat_int("kioskpuzzles98", 1);
    steam_set_stat_int("kioskpuzzles99", 1);
    steam_set_stat_int("kioskpuzzles100", 1);
    steam_set_stat_int("kioskpuzzles101", 1);
    steam_set_stat_int("kioskpuzzles102", 1);
    steam_set_stat_int("kioskpuzzles103", 1);
    steam_set_stat_int("kioskpuzzles104", 1);
}
else
{
    FadeIn = 1;
    CurrentPage = global.MenuReturnPage;
    if (global.MenuReturnPage == 10)
    {
        alarm[4] = 1;
    }
    if (global.MenuReturnPage == 30)
    {
        alarm[2] = 1;
    }
    if (global.MenuReturnPage == 19)
    {
        ArrowClicksMax = 0;
        ArrowClicks = 0;
        ScrollAmount = 150;
        ini_open("settings.ini");
        CatCheckComplete = ini_read_real("other", "o923", 0);
        CatCheckIncomplete = ini_read_real("other", "o936", 0);
        CatCheckInProgress = ini_read_real("other", "o941", 0);
        CatFilter = ini_read_real("other", "o921", 0);
        ini_close();
        var pack_num = global.PackReturnPage;
        CatFilter = global.CatTabReturnPage;
        ini_open("pidsg.ini");
        var PackGrid = ds_grid_create(10, pack_num + 1);
        if (ini_key_exists("pi", "0"))
        {
            ds_grid_read(PackGrid, ini_read_string("pi", "0", ""));
        }
        ini_close();
        var total_buttons = ds_grid_get(PackGrid, 2, pack_num);
        var buttons_per_row = 6;
        var horizontal_spacing = 208;
        var vertical_spacing = 150;
        var initial_xpos = 423;
        var initial_ypos = 110;
        var puz_num = total_buttons;
        savefile = "p" + string(pack_num) + ".ini";
        ini_open(string(savefile));
        ClickedGrid = ds_grid_create(1, 500);
        if (ini_key_exists("PC", "0"))
        {
            ds_grid_read(ClickedGrid, ini_read_string("PC", "0", ""));
        }
        ini_close();
        for (var i = 0; i < total_buttons; i++)
        {
            var row = i div buttons_per_row;
            var col = i % buttons_per_row;
            var xpos = initial_xpos + (col * horizontal_spacing);
            var ypos = initial_ypos + (row * vertical_spacing);
            var PuzBut = instance_create(xpos, ypos, ob_menu_puz_button);
            PuzBut.puz_num = puz_num;
            PuzBut.pack_num = pack_num;
            PuzBut.bits = ds_grid_get(PackGrid, puz_num + 10, pack_num);
            PuzBut.startY = ypos;
            var Puz_file = "\\misc\\content\\" + string(pack_num) + "\\p" + string(pack_num) + "p" + string(puz_num);
            if (file_exists(working_directory + string(Puz_file) + "b.png"))
            {
                PuzBut.sprite_to_use = sprite_add(working_directory + string(Puz_file) + "b.png", 0, false, false, 87, 53);
            }
            var pieces_placed = ds_grid_get(ClickedGrid, 0, puz_num);
            if (pieces_placed > 0)
            {
            }
            else
            {
                pieces_placed = 0;
            }
            PuzBut.pieces_placed = pieces_placed;
            a_c = "complete_pack_" + string(pack_num) + "_puzzle_" + string(puz_num);
            PuzBut.puz_beat = steam_get_achievement(a_c);
            puz_num--;
        }
        ds_grid_destroy(PackGrid);
        ds_grid_destroy(ClickedGrid);
    }
    if (global.MenuReturnPage == 4)
    {
        ArrowClicksMax = 0;
        ArrowClicks = 0;
        ScrollAmount = 150;
        var pack_num = 7000;
        var total_buttons = global.CurChalNum - 1;
        var buttons_per_row = 6;
        var horizontal_spacing = 208;
        var vertical_spacing = 150;
        var initial_xpos = 423;
        var initial_ypos = 839;
        var total_rows = 0;
        var puz_num = total_buttons;
        ini_open("pidsg.ini");
        chalGrid = ds_grid_create(1, global.CurChalNum + 1);
        if (ini_key_exists("chal", "0"))
        {
            ds_grid_read(chalGrid, ini_read_string("chal", "0", ""));
        }
        ini_close();
        savefile = "p" + string(pack_num) + ".ini";
        ini_open(string(savefile));
        ClickedGrid = ds_grid_create(1, 500);
        if (ini_key_exists("PC", "0"))
        {
            ds_grid_read(ClickedGrid, ini_read_string("PC", "0", ""));
        }
        ini_close();
        for (var i = 0; i < total_buttons; i++)
        {
            var row = i div buttons_per_row;
            var col = i % buttons_per_row;
            var xpos = initial_xpos + (col * horizontal_spacing);
            var ypos = initial_ypos + (row * vertical_spacing);
            var PuzBut = instance_create(xpos, ypos, ob_menu_puz_button);
            PuzBut.puz_num = puz_num;
            PuzBut.pack_num = pack_num;
            PuzBut.startY = ypos;
            PuzBut.lockPrice = 50;
            var Puz_file = "\\misc\\challenge\\p" + string(pack_num) + "p" + string(puz_num);
            if (file_exists(working_directory + string(Puz_file) + "b.png"))
            {
                PuzBut.sprite_to_use = sprite_add(working_directory + string(Puz_file) + "b.png", 0, false, false, 87, 53);
            }
            PuzBut.bits = ds_grid_get(chalGrid, 0, puz_num);
            var pieces_placed = ds_grid_get(ClickedGrid, 0, puz_num);
            if (pieces_placed > 0)
            {
            }
            else
            {
                pieces_placed = 0;
            }
            PuzBut.pieces_placed = pieces_placed;
            a_c = "complete_pack_" + string(pack_num) + "_puzzle_" + string(puz_num);
            PuzBut.puz_beat = steam_get_achievement(a_c);
            if (puz_num <= 87)
            {
                var LockKey = "kioskchallenges" + string(puz_num);
                if (!steam_get_achievement(LockKey))
                {
                    PuzBut.puzzle_is_locked = 1;
                }
            }
            else
            {
                var LockKey = "kioskchallenges" + string(puz_num);
                var statcheck = steam_get_stat_int(LockKey);
                if (statcheck != 1)
                {
                    PuzBut.puzzle_is_locked = 1;
                }
            }
            puz_num--;
        }
        ds_grid_destroy(chalGrid);
        ds_grid_destroy(ClickedGrid);
        total_rows = ceil(total_buttons / buttons_per_row);
        if (total_rows > 2)
        {
            ArrowClicksMax = total_rows - 2;
        }
    }
    if (global.MenuReturnPage == 3)
    {
        ArrowClicksMax = 0;
        ArrowClicks = 0;
        ScrollAmount = 150;
        var pack_num = 126;
        var total_buttons = global.FreePuzQuantity;
        var buttons_per_row = 6;
        var horizontal_spacing = 208;
        var vertical_spacing = 150;
        var initial_xpos = 423;
        var initial_ypos = 110;
        var total_rows = 0;
        var puz_num = total_buttons;
        ini_open("pidsg.ini");
        var FpGrid = ds_grid_create(1, global.FreePuzQuantity + 1);
        if (ini_key_exists("fp", "0"))
        {
            ds_grid_read(FpGrid, ini_read_string("fp", "0", ""));
        }
        ini_close();
        savefile = "p" + string(pack_num) + ".ini";
        ini_open(string(savefile));
        ClickedGrid = ds_grid_create(1, 500);
        if (ini_key_exists("PC", "0"))
        {
            ds_grid_read(ClickedGrid, ini_read_string("PC", "0", ""));
        }
        ini_close();
        for (var i = 0; i < total_buttons; i++)
        {
            var row = i div buttons_per_row;
            var col = i % buttons_per_row;
            var xpos = initial_xpos + (col * horizontal_spacing);
            var ypos = initial_ypos + (row * vertical_spacing);
            var PuzBut = instance_create(xpos, ypos, ob_menu_puz_button);
            PuzBut.puz_num = puz_num;
            PuzBut.pack_num = pack_num;
            PuzBut.startY = ypos;
            var Puz_file = "\\misc\\content\\126\\p" + string(pack_num) + "p" + string(puz_num);
            if (file_exists(working_directory + string(Puz_file) + "b.png"))
            {
                PuzBut.sprite_to_use = sprite_add(working_directory + string(Puz_file) + "b.png", 0, false, false, 87, 53);
            }
            PuzBut.bits = ds_grid_get(FpGrid, 0, puz_num);
            var pieces_placed = ds_grid_get(ClickedGrid, 0, puz_num);
            if (pieces_placed > 0)
            {
            }
            else
            {
                pieces_placed = 0;
            }
            PuzBut.pieces_placed = pieces_placed;
            a_c = "complete_pack_" + string(pack_num) + "_puzzle_" + string(puz_num);
            PuzBut.puz_beat = steam_get_achievement(a_c);
            puz_num--;
        }
        ds_grid_destroy(FpGrid);
        ds_grid_destroy(ClickedGrid);
        total_rows = ceil(total_buttons / buttons_per_row);
        if (total_rows > 7)
        {
            ArrowClicksMax = total_rows - 7;
        }
    }
    if (global.MenuReturnPage == 5)
    {
        ArrowClicksMax = 0;
        ArrowClicks = 0;
        ScrollAmount = 150;
        var pack_num = 5000;
        var total_buttons = global.TotalUnlockables;
        var buttons_per_row = 6;
        var horizontal_spacing = 208;
        var vertical_spacing = 150;
        var initial_xpos = 423;
        var initial_ypos = 110;
        var total_rows = 0;
        var puz_num = total_buttons;
        ini_open("pidsg.ini");
        var unlockGrid = ds_grid_create(2, global.TotalUnlockables + 1);
        if (ini_key_exists("ul", "0"))
        {
            ds_grid_read(unlockGrid, ini_read_string("ul", "0", ""));
        }
        ini_close();
        savefile = "p" + string(pack_num) + ".ini";
        ini_open(string(savefile));
        ClickedGrid = ds_grid_create(1, 500);
        if (ini_key_exists("PC", "0"))
        {
            ds_grid_read(ClickedGrid, ini_read_string("PC", "0", ""));
        }
        ini_close();
        for (var i = 0; i < total_buttons; i++)
        {
            var row = i div buttons_per_row;
            var col = i % buttons_per_row;
            var xpos = initial_xpos + (col * horizontal_spacing);
            var ypos = initial_ypos + (row * vertical_spacing);
            var PuzBut = instance_create(xpos, ypos, ob_menu_puz_button);
            PuzBut.puz_num = puz_num;
            PuzBut.pack_num = pack_num;
            PuzBut.startY = ypos;
            var Puz_file = "\\misc\\puzshop\\p" + string(pack_num) + "p" + string(puz_num);
            if (file_exists(working_directory + string(Puz_file) + "b.png"))
            {
                PuzBut.sprite_to_use = sprite_add(working_directory + string(Puz_file) + "b.png", 0, false, false, 87, 53);
            }
            PuzBut.bits = ds_grid_get(unlockGrid, 0, puz_num);
            PuzBut.lockPrice = ds_grid_get(unlockGrid, 1, puz_num);
            var pieces_placed = ds_grid_get(ClickedGrid, 0, puz_num);
            if (pieces_placed > 0)
            {
            }
            else
            {
                pieces_placed = 0;
            }
            PuzBut.pieces_placed = pieces_placed;
            a_c = "complete_pack_" + string(pack_num) + "_puzzle_" + string(puz_num);
            PuzBut.puz_beat = steam_get_achievement(a_c);
            if (puz_num <= 89)
            {
                var LockKey = "kioskpuzzles" + string(puz_num);
                if (!steam_get_achievement(LockKey))
                {
                    PuzBut.puzzle_is_locked = 1;
                }
            }
            else
            {
                var LockKey = "kioskpuzzles" + string(puz_num);
                var statcheck = steam_get_stat_int(LockKey);
                if (statcheck != 1)
                {
                    PuzBut.puzzle_is_locked = 1;
                }
            }
            puz_num--;
        }
        ds_grid_destroy(unlockGrid);
        ds_grid_destroy(ClickedGrid);
        total_rows = ceil(total_buttons / buttons_per_row);
        if (total_rows > 7)
        {
            ArrowClicksMax = total_rows - 7;
        }
    }
    if (global.MenuReturnPage == 18)
    {
        ArrowClicksMax = 0;
        ArrowClicks = 0;
        ScrollAmount = 150;
        var pack_num = 6000;
        var total_buttons = 19;
        var buttons_per_row = 6;
        var horizontal_spacing = 208;
        var vertical_spacing = 150;
        var initial_xpos = 423;
        var initial_ypos = 110;
        var puz_num = total_buttons;
        ini_open("pidsg.ini");
        var FigGrid = ds_grid_create(0, 20);
        if (ini_key_exists("fig", "0"))
        {
            ds_grid_read(FigGrid, ini_read_string("fig", "0", ""));
        }
        ini_close();
        savefile = "p" + string(pack_num) + ".ini";
        ini_open(string(savefile));
        ClickedGrid = ds_grid_create(1, 500);
        if (ini_key_exists("PC", "0"))
        {
            ds_grid_read(ClickedGrid, ini_read_string("PC", "0", ""));
        }
        ini_close();
        for (var i = 0; i < total_buttons; i++)
        {
            var row = i div buttons_per_row;
            var col = i % buttons_per_row;
            var xpos = initial_xpos + (col * horizontal_spacing);
            var ypos = initial_ypos + (row * vertical_spacing);
            var PuzBut = instance_create(xpos, ypos, ob_menu_puz_button);
            PuzBut.puz_num = puz_num;
            PuzBut.pack_num = pack_num;
            PuzBut.startY = ypos;
            PuzBut.lockPrice = 15;
            var Puz_file = "\\misc\\puzshop\\p" + string(pack_num) + "p" + string(puz_num);
            if (file_exists(working_directory + string(Puz_file) + "b.png"))
            {
                PuzBut.sprite_to_use = sprite_add(working_directory + string(Puz_file) + "b.png", 0, false, false, 87, 53);
            }
            PuzBut.bits = ds_grid_get(FigGrid, 0, puz_num);
            var pieces_placed = ds_grid_get(ClickedGrid, 0, puz_num);
            if (pieces_placed > 0)
            {
            }
            else
            {
                pieces_placed = 0;
            }
            PuzBut.pieces_placed = pieces_placed;
            a_c = "complete_pack_" + string(pack_num) + "_puzzle_" + string(puz_num);
            PuzBut.puz_beat = steam_get_achievement(a_c);
            var LockKey = "kioskfigurals" + string(puz_num);
            if (!steam_get_achievement(LockKey))
            {
                PuzBut.puzzle_is_locked = 1;
            }
            puz_num--;
        }
        ds_grid_destroy(FigGrid);
        ds_grid_destroy(ClickedGrid);
    }
}
ChalCurrMonth = 0;
if (current_month == 1)
{
    ChalCurrMonth = ob_lan.M_RSB_10;
}
else if (current_month == 2)
{
    ChalCurrMonth = ob_lan.M_RSB_11;
}
else if (current_month == 3)
{
    ChalCurrMonth = ob_lan.M_RSB_12;
}
else if (current_month == 4)
{
    ChalCurrMonth = ob_lan.M_RSB_13;
}
else if (current_month == 5)
{
    ChalCurrMonth = ob_lan.M_RSB_14;
}
else if (current_month == 6)
{
    ChalCurrMonth = ob_lan.M_RSB_15;
}
else if (current_month == 7)
{
    ChalCurrMonth = ob_lan.M_RSB_16;
}
else if (current_month == 8)
{
    ChalCurrMonth = ob_lan.M_RSB_17;
}
else if (current_month == 9)
{
    ChalCurrMonth = ob_lan.M_RSB_18;
}
else if (current_month == 10)
{
    ChalCurrMonth = ob_lan.M_RSB_19;
}
else if (current_month == 11)
{
    ChalCurrMonth = ob_lan.M_RSB_20;
}
else if (current_month == 12)
{
    ChalCurrMonth = ob_lan.M_RSB_21;
}
ChalCurQnt = 0;
ini_open("pidsg.ini");
var chalGrid = ds_grid_create(1, global.CurChalNum + 1);
if (ini_key_exists("chal", "0"))
{
    ds_grid_read(chalGrid, ini_read_string("chal", "0", ""));
}
ini_close();
ChalCurQnt = ds_grid_get(chalGrid, 0, global.CurChalNum);
ds_grid_destroy(chalGrid);
ChalPrev = 0;
CurChalPlayHov = 0;
challenge_is_beat = 0;
var achive_use = "complete_pack_7000_puzzle_" + string(global.CurChalNum);
if (steam_get_achievement(string(achive_use)))
{
    challenge_is_beat = 1;
}
challenge_pieces_placed = 0;
var savefile = "p7000.ini";
ini_open(string(savefile));
var ClickedGrid = ds_grid_create(1, 500);
if (ini_key_exists("PC", "0"))
{
    ds_grid_read(ClickedGrid, ini_read_string("PC", "0", ""));
}
ini_close();
challenge_pieces_placed = ds_grid_get(ClickedGrid, 0, global.CurChalNum);
if (challenge_pieces_placed > 0)
{
}
else
{
    challenge_pieces_placed = 0;
}
ds_grid_destroy(ClickedGrid);
if (challenge_pieces_placed > 0)
{
    ChalPlayText = ob_lan.M_H_3;
}
else
{
    ChalPlayText = ob_lan.M_RSB_8;
}
var imag_name = "\misc\challenge\p7000p" + string(global.CurChalNum) + ".png";
if (file_exists(working_directory + string(imag_name)))
{
    var sprite_to_use = sprite_add(working_directory + string(imag_name), 0, false, false, 0, 0);
    ChalPrev = sprite_to_use;
}
NavHov_1 = 0;
NavHov_2 = 0;
NavHov_3 = 0;
NavHov_4 = 0;
NavHov_5 = 0;
NavHov_6 = 0;
NavHov_7 = 0;
NavHov_8 = 0;
NavHov_9 = 0;
NavHov_10 = 0;
NavHov_11 = 0;
NavHov_12 = 0;
NavHov_13 = 0;
NavHov_14 = 0;
NavHov_15 = 0;
NavHov_16 = 0;
NavHov_17 = 0;
NavHov_18 = 0;
Goldx3Banner = 0;
SalePack = 0;
SalePackPercent = 0;
SalePackappID = 0;
RightSalePackTitle = "";
var Batch_check = 0;
if (global.sale_batch == 100)
{
    Batch_check = choose(1, 2, 3, 4, 5, 6);
}
else
{
    Batch_check = global.sale_batch;
}
ini_open("pidsg.ini");
var SalePackGrid = ds_grid_create(6, global.TotalPacks + 1);
if (ini_key_exists("pi", "0"))
{
    ds_grid_read(SalePackGrid, ini_read_string("pi", "0", ""));
}
var chosen_y = -1;
var found_match = 0;
var matching_y_count = 0;
for (var grid_Y = 0; grid_Y < (global.TotalPacks + 1); grid_Y++)
{
    if (ds_grid_get(SalePackGrid, 5, grid_Y) == Batch_check)
    {
        matching_y_count++;
    }
}
if (matching_y_count > 0)
{
    var random_index = irandom_range(0, matching_y_count - 1);
    var count = 0;
    for (var grid_Y = 0; grid_Y < (global.TotalPacks + 1); grid_Y++)
    {
        if (ds_grid_get(SalePackGrid, 5, grid_Y) == Batch_check)
        {
            if (count == random_index)
            {
                chosen_y = grid_Y;
                found_match = 1;
                break;
            }
            count++;
        }
    }
}
if (found_match)
{
    SalePackPercent = ds_grid_get(SalePackGrid, 4, chosen_y);
    SalePackappID = ds_grid_get(SalePackGrid, 0, chosen_y);
    RightSalePackTitle = ds_grid_get(SalePackGrid, 1, chosen_y);
    SalePack = chosen_y;
}
ds_grid_destroy(SalePackGrid);
ini_close();
SalePack_hov = 0;
StatPlaced = steam_get_stat_int("pieces_placed");
StatPakComp = steam_get_stat_int("total_packs_complete");
StatHintUsed = steam_get_stat_int("hints_used");
var pb742245 = steam_get_stat_int("comps_won");
var pb746345 = steam_get_stat_int("total_normal_puzzles_beat");
var pb746346 = steam_get_stat_int("total_uniques_beat");
var pb746347 = steam_get_stat_int("ultimate_puzzles_complete");
StatPuzComp = pb746345 + pb746346 + pb746347 + pb742245;
var hqnt65345 = steam_get_stat_int("hints_earned");
var hqnt65346 = steam_get_stat_int("hints_used");
hint_quantity = hqnt65345 - hqnt65346;
var gqnt345 = steam_get_stat_int("gold_bits_earned");
var gqnt346 = steam_get_stat_int("gold_bits_used");
gqnt349 = gqnt345 - gqnt346;
gold_quantity = gqnt349;
var dqnt677 = steam_get_stat_int("ultimate_pieces_earned");
var dqnt678 = steam_get_stat_int("ultimate_pieces_used");
var dqnt679 = dqnt677 - dqnt678;
diamond_quantity = dqnt679;
social_web_hov = 0;
social_steam_hov = 0;
social_discord_hov = 0;
social_insta_hov = 0;
social_twitter_hov = 0;
club_but_scale = 1;
trade_GfH_hov = 0;
trade_HfG_hov = 0;
trade_GfH_open = 0;
trade_HfG_open = 0;
trade_GfH_open_hov = 0;
trade_HfG_open_hov = 0;
trade_GfH_cost = 25;
trade_HfG_cost = 1;
trade_GfH_get = 1;
trade_HfG_get = 15;
trade_alpha = 0;
trade_posY = 570;
CurrentPuzImage = 54;
CurPlayScale = 1;
CurPlayHov = 0;
QP1Hov = 0;
QP2Hov = 0;
QP3Hov = 0;
QP4Hov = 0;
QP5Hov = 0;
QP6Hov = 0;
QP1win = 0;
QP2win = 0;
QP3win = 0;
QP4win = 0;
QP5win = 0;
QP6win = 0;
Pin1win = 0;
Pin2win = 0;
Pin3win = 0;
Pin4win = 0;
Pin5win = 0;
Pin6win = 0;
Pin1Hov = 0;
Pin2Hov = 0;
Pin3Hov = 0;
Pin4Hov = 0;
Pin5Hov = 0;
Pin6Hov = 0;
CPIx = 558;
CPIy = 107;
CPIpy = 625;
CPIpkX = 658;
CPIpkY = 555;
CPIprX = 771;
CPIscale = 0.55;
QuickPuzIm2 = 54;
QuickPuzIm3 = 54;
QuickPuzIm4 = 54;
QuickPuzIm5 = 54;
QuickPuzIm6 = 54;
QuickPuzIm7 = 54;
FavPuzIm1 = 54;
FavPuzIm2 = 54;
FavPuzIm3 = 54;
FavPuzIm4 = 54;
FavPuzIm5 = 54;
FavPuzIm6 = 54;
ini_open("pidsg.ini");
var PuzzleGrid = ds_grid_create(global.PackGridX, global.TotalPacks + 1);
var ChalGrid = ds_grid_create(1, global.CurChalNum + 1);
var UnlocksGrid = ds_grid_create(1, global.TotalUnlockables + 1);
var FreeGrid = ds_grid_create(1, global.FreePuzQuantity + 1);
var QPgrid = ds_grid_create(2, 7);
var Pins = ds_grid_create(2, 6);
if (ini_key_exists("pi", "0"))
{
    ds_grid_read(PuzzleGrid, ini_read_string("pi", "0", ""));
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
if (ini_key_exists("QPgrid", "0"))
{
    ds_grid_read(QPgrid, ini_read_string("QPgrid", "0", ""));
}
if (ini_key_exists("Pins", "0"))
{
    ds_grid_read(Pins, ini_read_string("Pins", "0", ""));
}
ini_close();
Quick1Pack = ds_grid_get(QPgrid, 0, 0);
Quick1Puz = ds_grid_get(QPgrid, 1, 0);
var folder = 0;
if (Quick1Pack == 5000)
{
    folder = "puzshop";
}
else if (Quick1Pack == 7000)
{
    folder = "challenge";
}
if (Quick1Pack == 5000)
{
    QP1_qnt = ds_grid_get(UnlocksGrid, 0, Quick1Puz);
}
else if (Quick1Pack == 7000)
{
    QP1_qnt = ds_grid_get(ChalGrid, 0, Quick1Puz);
}
else if (Quick1Pack == 126)
{
    QP1_qnt = ds_grid_get(FreeGrid, 0, Quick1Puz);
}
else
{
    QP1_qnt = ds_grid_get(PuzzleGrid, Quick1Puz + 10, Quick1Pack);
}
QP1_pr = 0;
if (Quick1Pack > 0)
{
    var QP1_file = "";
    if (folder == "puzshop" || folder == "challenge")
    {
        QP1_file = "\misc\" + string(folder) + "\p" + string(Quick1Pack) + "p" + string(Quick1Puz);
    }
    else
    {
        QP1_file = "\\misc\\content\\" + string(Quick1Pack) + "\\p" + string(Quick1Pack) + "p" + string(Quick1Puz);
    }
    if (file_exists(working_directory + string(QP1_file) + ".png"))
    {
        CurrentPuzImage = sprite_add(working_directory + string(QP1_file) + ".png", 0, false, false, 0, 0);
    }
    savefile = "p" + string(Quick1Pack) + ".ini";
    ini_open(string(savefile));
    ClickedGrid = ds_grid_create(1, Quick1Puz + 1);
    if (ini_key_exists("PC", "0"))
    {
        ds_grid_read(ClickedGrid, ini_read_string("PC", "0", ""));
    }
    QP1_pr = ds_grid_get(ClickedGrid, 0, Quick1Puz);
    if (QP1_pr > 0)
    {
    }
    else
    {
        QP1_pr = 0;
    }
    ds_grid_destroy(ClickedGrid);
    ini_close();
    CPpackNum = Quick1Pack;
    var CpI_W = sprite_get_width(CurrentPuzImage);
    if (CpI_W == 1400)
    {
        CPIx = 558;
        CPIy = 107;
    }
    else if (CpI_W == 1040)
    {
        CPIx = 657;
        CPIy = 107;
    }
    else if (CpI_W == 1880)
    {
        CPIx = 426;
        CPIy = 150;
    }
    else if (CpI_W == 1388)
    {
        CPIx = 498;
        CPIy = 107;
    }
    else
    {
        CPIx = 0;
        CPIy = 0;
    }
}
CurPuzPackImg = 54;
var CPPImg_file = "\\misc\\catalogue\\" + string(Quick1Pack) + ".png";
CurPuzPackImg = sprite_add(working_directory + string(CPPImg_file), 0, false, false, 230, 107);
if (CPIx == 558)
{
    CPIpy = 625;
    CPIpkX = 591;
    CPIpkY = 555;
    CPIprX = 771;
    CPIscale = 0.55;
}
if (CPIx == 657)
{
    CPIpy = 702;
    CPIpkX = 690;
    CPIpkY = 632;
    CPIprX = 573;
    CPIscale = 0.55;
}
if (CPIx == 426)
{
    CPIpy = 563;
    CPIpkX = 459;
    CPIpkY = 493;
    CPIprX = 1035;
    CPIscale = 0.55;
}
if (CPIx == 498)
{
    CPIpy = 618;
    CPIpkX = 531;
    CPIpkY = 548;
    CPIprX = 891;
    CPIscale = 0.641;
}
Quick2Pack = ds_grid_get(QPgrid, 0, 1);
Quick2Puz = ds_grid_get(QPgrid, 1, 1);
folder = 0;
if (Quick2Pack == 5000)
{
    folder = "puzshop";
}
else if (Quick2Pack == 7000)
{
    folder = "challenge";
}
if (Quick2Pack == 5000)
{
    QP2_qnt = ds_grid_get(UnlocksGrid, 0, Quick2Puz);
}
else if (Quick2Pack == 7000)
{
    QP2_qnt = ds_grid_get(ChalGrid, 0, Quick2Puz);
}
else if (Quick2Pack == 126)
{
    QP2_qnt = ds_grid_get(FreeGrid, 0, Quick2Puz);
}
else
{
    QP2_qnt = ds_grid_get(PuzzleGrid, Quick2Puz + 10, Quick2Pack);
}
QP2_pr = 0;
if (Quick2Pack > 0)
{
    var QP2_file = "";
    if (folder == "puzshop" || folder == "challenge")
    {
        QP2_file = "\misc\" + string(folder) + "\p" + string(Quick2Pack) + "p" + string(Quick2Puz);
    }
    else
    {
        QP2_file = "\\misc\\content\\" + string(Quick2Pack) + "\\p" + string(Quick2Pack) + "p" + string(Quick2Puz);
    }
    if (file_exists(working_directory + string(QP2_file) + "b.png"))
    {
        QuickPuzIm2 = sprite_add(working_directory + string(QP2_file) + "b.png", 0, false, false, 87, 53);
    }
    savefile = "p" + string(Quick2Pack) + ".ini";
    ini_open(string(savefile));
    ClickedGrid = ds_grid_create(1, Quick2Puz + 1);
    if (ini_key_exists("PC", "0"))
    {
        ds_grid_read(ClickedGrid, ini_read_string("PC", "0", ""));
    }
    QP2_pr = ds_grid_get(ClickedGrid, 0, Quick2Puz);
    if (QP2_pr > 0)
    {
    }
    else
    {
        QP2_pr = 0;
    }
    ds_grid_destroy(ClickedGrid);
    ini_close();
}
var a_c = "complete_pack_" + string(Quick2Pack) + "_puzzle_" + string(Quick2Puz);
QP1win = steam_get_achievement(a_c);
Quick3Pack = ds_grid_get(QPgrid, 0, 2);
Quick3Puz = ds_grid_get(QPgrid, 1, 2);
folder = 0;
if (Quick3Pack == 5000)
{
    folder = "puzshop";
}
else if (Quick3Pack == 7000)
{
    folder = "challenge";
}
if (Quick3Pack == 5000)
{
    QP3_qnt = ds_grid_get(UnlocksGrid, 0, Quick3Puz);
}
else if (Quick3Pack == 7000)
{
    QP3_qnt = ds_grid_get(ChalGrid, 0, Quick3Puz);
}
else if (Quick3Pack == 126)
{
    QP3_qnt = ds_grid_get(FreeGrid, 0, Quick3Puz);
}
else
{
    QP3_qnt = ds_grid_get(PuzzleGrid, Quick3Puz + 10, Quick3Pack);
}
QP3_pr = 0;
if (Quick3Pack > 0)
{
    var QP3_file = "";
    if (folder == "puzshop" || folder == "challenge")
    {
        QP3_file = "\misc\" + string(folder) + "\p" + string(Quick3Pack) + "p" + string(Quick3Puz);
    }
    else
    {
        QP3_file = "\\misc\\content\\" + string(Quick3Pack) + "\\p" + string(Quick3Pack) + "p" + string(Quick3Puz);
    }
    if (file_exists(working_directory + string(QP3_file) + "b.png"))
    {
        QuickPuzIm3 = sprite_add(working_directory + string(QP3_file) + "b.png", 0, false, false, 87, 53);
    }
    savefile = "p" + string(Quick3Pack) + ".ini";
    ini_open(string(savefile));
    ClickedGrid = ds_grid_create(1, Quick3Puz + 1);
    if (ini_key_exists("PC", "0"))
    {
        ds_grid_read(ClickedGrid, ini_read_string("PC", "0", ""));
    }
    QP3_pr = ds_grid_get(ClickedGrid, 0, Quick3Puz);
    if (QP3_pr > 0)
    {
    }
    else
    {
        QP3_pr = 0;
    }
    ds_grid_destroy(ClickedGrid);
    ini_close();
}
a_c = "complete_pack_" + string(Quick3Pack) + "_puzzle_" + string(Quick3Puz);
QP2win = steam_get_achievement(a_c);
Quick4Pack = ds_grid_get(QPgrid, 0, 3);
Quick4Puz = ds_grid_get(QPgrid, 1, 3);
folder = 0;
if (Quick4Pack == 5000)
{
    folder = "puzshop";
}
else if (Quick4Pack == 7000)
{
    folder = "challenge";
}
if (Quick4Pack == 5000)
{
    QP4_qnt = ds_grid_get(UnlocksGrid, 0, Quick4Puz);
}
else if (Quick4Pack == 7000)
{
    QP4_qnt = ds_grid_get(ChalGrid, 0, Quick4Puz);
}
else if (Quick4Pack == 126)
{
    QP4_qnt = ds_grid_get(FreeGrid, 0, Quick4Puz);
}
else
{
    QP4_qnt = ds_grid_get(PuzzleGrid, Quick4Puz + 10, Quick4Pack);
}
QP4_pr = 0;
if (Quick4Pack > 0)
{
    var QP4_file = "";
    if (folder == "puzshop" || folder == "challenge")
    {
        QP4_file = "\misc\" + string(folder) + "\p" + string(Quick4Pack) + "p" + string(Quick4Puz);
    }
    else
    {
        QP4_file = "\\misc\\content\\" + string(Quick4Pack) + "\\p" + string(Quick4Pack) + "p" + string(Quick4Puz);
    }
    if (file_exists(working_directory + string(QP4_file) + "b.png"))
    {
        QuickPuzIm4 = sprite_add(working_directory + string(QP4_file) + "b.png", 0, false, false, 87, 53);
    }
    savefile = "p" + string(Quick4Pack) + ".ini";
    ini_open(string(savefile));
    ClickedGrid = ds_grid_create(1, Quick4Puz + 1);
    if (ini_key_exists("PC", "0"))
    {
        ds_grid_read(ClickedGrid, ini_read_string("PC", "0", ""));
    }
    QP4_pr = ds_grid_get(ClickedGrid, 0, Quick4Puz);
    if (QP4_pr > 0)
    {
    }
    else
    {
        QP4_pr = 0;
    }
    ds_grid_destroy(ClickedGrid);
    ini_close();
}
a_c = "complete_pack_" + string(Quick4Pack) + "_puzzle_" + string(Quick4Puz);
QP3win = steam_get_achievement(a_c);
Quick5Pack = ds_grid_get(QPgrid, 0, 4);
Quick5Puz = ds_grid_get(QPgrid, 1, 4);
folder = 0;
if (Quick5Pack == 5000)
{
    folder = "puzshop";
}
else if (Quick5Pack == 7000)
{
    folder = "challenge";
}
if (Quick5Pack == 5000)
{
    QP5_qnt = ds_grid_get(UnlocksGrid, 0, Quick5Puz);
}
else if (Quick5Pack == 7000)
{
    QP5_qnt = ds_grid_get(ChalGrid, 0, Quick5Puz);
}
else if (Quick5Pack == 126)
{
    QP5_qnt = ds_grid_get(FreeGrid, 0, Quick5Puz);
}
else
{
    QP5_qnt = ds_grid_get(PuzzleGrid, Quick5Puz + 10, Quick5Pack);
}
QP5_pr = 0;
if (Quick5Pack > 0)
{
    var QP5_file = "";
    if (folder == "puzshop" || folder == "challenge")
    {
        QP5_file = "\misc\" + string(folder) + "\p" + string(Quick5Pack) + "p" + string(Quick5Puz);
    }
    else
    {
        QP5_file = "\\misc\\content\\" + string(Quick5Pack) + "\\p" + string(Quick5Pack) + "p" + string(Quick5Puz);
    }
    if (file_exists(working_directory + string(QP5_file) + "b.png"))
    {
        QuickPuzIm5 = sprite_add(working_directory + string(QP5_file) + "b.png", 0, false, false, 87, 53);
    }
    savefile = "p" + string(Quick5Pack) + ".ini";
    ini_open(string(savefile));
    ClickedGrid = ds_grid_create(1, Quick5Puz + 1);
    if (ini_key_exists("PC", "0"))
    {
        ds_grid_read(ClickedGrid, ini_read_string("PC", "0", ""));
    }
    QP5_pr = ds_grid_get(ClickedGrid, 0, Quick5Puz);
    if (QP5_pr > 0)
    {
    }
    else
    {
        QP5_pr = 0;
    }
    ds_grid_destroy(ClickedGrid);
    ini_close();
}
a_c = "complete_pack_" + string(Quick5Pack) + "_puzzle_" + string(Quick5Puz);
QP4win = steam_get_achievement(a_c);
Quick6Pack = ds_grid_get(QPgrid, 0, 5);
Quick6Puz = ds_grid_get(QPgrid, 1, 5);
folder = 0;
if (Quick6Pack == 5000)
{
    folder = "puzshop";
}
else if (Quick6Pack == 7000)
{
    folder = "challenge";
}
if (Quick6Pack == 5000)
{
    QP6_qnt = ds_grid_get(UnlocksGrid, 0, Quick6Puz);
}
else if (Quick6Pack == 7000)
{
    QP6_qnt = ds_grid_get(ChalGrid, 0, Quick6Puz);
}
else if (Quick6Pack == 126)
{
    QP6_qnt = ds_grid_get(FreeGrid, 0, Quick6Puz);
}
else
{
    QP6_qnt = ds_grid_get(PuzzleGrid, Quick6Puz + 10, Quick6Pack);
}
QP6_pr = 0;
if (Quick6Pack > 0)
{
    var QP6_file = "";
    if (folder == "puzshop" || folder == "challenge")
    {
        QP6_file = "\misc\" + string(folder) + "\p" + string(Quick6Pack) + "p" + string(Quick6Puz);
    }
    else
    {
        QP6_file = "\\misc\\content\\" + string(Quick6Pack) + "\\p" + string(Quick6Pack) + "p" + string(Quick6Puz);
    }
    if (file_exists(working_directory + string(QP6_file) + "b.png"))
    {
        QuickPuzIm6 = sprite_add(working_directory + string(QP6_file) + "b.png", 0, false, false, 87, 53);
    }
    savefile = "p" + string(Quick6Pack) + ".ini";
    ini_open(string(savefile));
    ClickedGrid = ds_grid_create(1, Quick6Puz + 1);
    if (ini_key_exists("PC", "0"))
    {
        ds_grid_read(ClickedGrid, ini_read_string("PC", "0", ""));
    }
    QP6_pr = ds_grid_get(ClickedGrid, 0, Quick6Puz);
    if (QP6_pr > 0)
    {
    }
    else
    {
        QP6_pr = 0;
    }
    ds_grid_destroy(ClickedGrid);
    ini_close();
}
a_c = "complete_pack_" + string(Quick6Pack) + "_puzzle_" + string(Quick6Puz);
QP5win = steam_get_achievement(a_c);
Quick7Pack = ds_grid_get(QPgrid, 0, 6);
Quick7Puz = ds_grid_get(QPgrid, 1, 6);
folder = 0;
if (Quick7Pack == 5000)
{
    folder = "puzshop";
}
else if (Quick7Pack == 7000)
{
    folder = "challenge";
}
if (Quick7Pack == 5000)
{
    QP7_qnt = ds_grid_get(UnlocksGrid, 0, Quick7Puz);
}
else if (Quick7Pack == 7000)
{
    QP7_qnt = ds_grid_get(ChalGrid, 0, Quick7Puz);
}
else if (Quick7Pack == 126)
{
    QP7_qnt = ds_grid_get(FreeGrid, 0, Quick7Puz);
}
else
{
    QP7_qnt = ds_grid_get(PuzzleGrid, Quick7Puz + 10, Quick7Pack);
}
QP7_pr = 0;
if (Quick7Pack > 0)
{
    var QP7_file = "";
    if (folder == "puzshop" || folder == "challenge")
    {
        QP7_file = "\misc\" + string(folder) + "\p" + string(Quick7Pack) + "p" + string(Quick7Puz);
    }
    else
    {
        QP7_file = "\\misc\\content\\" + string(Quick7Pack) + "\\p" + string(Quick7Pack) + "p" + string(Quick7Puz);
    }
    if (file_exists(working_directory + string(QP7_file) + "b.png"))
    {
        QuickPuzIm7 = sprite_add(working_directory + string(QP7_file) + "b.png", 0, false, false, 87, 53);
    }
    savefile = "p" + string(Quick7Pack) + ".ini";
    ini_open(string(savefile));
    ClickedGrid = ds_grid_create(1, Quick7Puz + 1);
    if (ini_key_exists("PC", "0"))
    {
        ds_grid_read(ClickedGrid, ini_read_string("PC", "0", ""));
    }
    QP7_pr = ds_grid_get(ClickedGrid, 0, Quick7Puz);
    if (QP7_pr > 0)
    {
    }
    else
    {
        QP7_pr = 0;
    }
    ds_grid_destroy(ClickedGrid);
    ini_close();
}
a_c = "complete_pack_" + string(Quick7Pack) + "_puzzle_" + string(Quick7Puz);
QP6win = steam_get_achievement(a_c);
Pin1Pack = ds_grid_get(Pins, 0, 0);
Pin1Puz = ds_grid_get(Pins, 1, 0);
folder = 0;
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
    Pin1_qnt = ds_grid_get(PuzzleGrid, Pin1Puz + 10, Pin1Pack);
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
    savefile = "p" + string(Pin1Pack) + ".ini";
    ini_open(string(savefile));
    ClickedGrid = ds_grid_create(1, Pin1Puz + 1);
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
a_c = "complete_pack_" + string(Pin1Pack) + "_puzzle_" + string(Pin1Puz);
Pin1win = steam_get_achievement(a_c);
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
    Pin2_qnt = ds_grid_get(PuzzleGrid, Pin2Puz + 10, Pin2Pack);
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
    savefile = "p" + string(Pin2Pack) + ".ini";
    ini_open(string(savefile));
    ClickedGrid = ds_grid_create(1, Pin2Puz + 1);
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
    Pin3_qnt = ds_grid_get(PuzzleGrid, Pin3Puz + 10, Pin3Pack);
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
    savefile = "p" + string(Pin3Pack) + ".ini";
    ini_open(string(savefile));
    ClickedGrid = ds_grid_create(1, Pin3Puz + 1);
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
    Pin4_qnt = ds_grid_get(PuzzleGrid, Pin4Puz + 10, Pin4Pack);
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
    savefile = "p" + string(Pin4Pack) + ".ini";
    ini_open(string(savefile));
    ClickedGrid = ds_grid_create(1, Pin4Puz + 1);
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
    Pin5_qnt = ds_grid_get(PuzzleGrid, Pin5Puz + 10, Pin5Pack);
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
    savefile = "p" + string(Pin5Pack) + ".ini";
    ini_open(string(savefile));
    ClickedGrid = ds_grid_create(1, Pin5Puz + 1);
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
    Pin6_qnt = ds_grid_get(PuzzleGrid, Pin6Puz + 10, Pin6Pack);
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
    savefile = "p" + string(Pin6Pack) + ".ini";
    ini_open(string(savefile));
    ClickedGrid = ds_grid_create(1, Pin6Puz + 1);
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
ds_grid_destroy(QPgrid);
ds_grid_destroy(Pins);
ds_grid_destroy(PuzzleGrid);
ds_grid_destroy(ChalGrid);
ds_grid_destroy(UnlocksGrid);
ds_grid_destroy(FreeGrid);
CatCheckCompleteHov = 0;
CatCheckIncompleteHov = 0;
CatCheck800 = 0;
CatCheck800Hov = 0;
CatCheckFree = 0;
CatCheckFreeHov = 0;
CatCheckInProgressHov = 0;
CatF1hov = 0;
CatF2hov = 0;
CatF3hov = 0;
CatF4hov = 0;
CatF5hov = 0;
CatF6hov = 0;
CatF7hov = 0;
CatF8hov = 0;
CatF9hov = 0;
CatF10hov = 0;
CatF11hov = 0;
CatF12hov = 0;
CatF13hov = 0;
CatF14hov = 0;
CatF15hov = 0;
CatF16hov = 0;
CatF17hov = 0;
CatF18hov = 0;
CatF19hov = 0;
CatF20hov = 0;
LibSBSHov = 0;
SBSHov = 0;
ini_open("settings.ini");
SbS_C = ini_read_real("other", "SbS_C", 0);
SbS_I = ini_read_real("other", "SbS_I", 0);
SbS_60 = ini_read_real("other", "SbS_60", 0);
SbS_112 = ini_read_real("other", "SbS_112", 0);
SbS_153 = ini_read_real("other", "SbS_153", 0);
SbS_220 = ini_read_real("other", "SbS_220", 0);
SbS_350 = ini_read_real("other", "SbS_350", 0);
SbS_96 = ini_read_real("other", "SbS_96", 0);
SbS_140 = ini_read_real("other", "SbS_140", 0);
SbS_216 = ini_read_real("other", "SbS_216", 0);
SbS_330 = ini_read_real("other", "SbS_330", 0);
SbS_425 = ini_read_real("other", "SbS_425", 0);
SbS_640 = ini_read_real("other", "SbS_640", 0);
SbS_840 = ini_read_real("other", "SbS_840", 0);
SbS_1410 = ini_read_real("other", "SbS_1410", 0);
SbS_100 = ini_read_real("other", "SbS_100", 0);
SbS_169 = ini_read_real("other", "SbS_169", 0);
SbS_324 = ini_read_real("other", "SbS_324", 0);
SbS_400 = ini_read_real("other", "SbS_400", 0);
SbS_676 = ini_read_real("other", "SbS_676", 0);
SbS_841 = ini_read_real("other", "SbS_841", 0);
SbS_126 = ini_read_real("other", "SbS_126", 0);
SbS_168 = ini_read_real("other", "SbS_168", 0);
SbS_250 = ini_read_real("other", "SbS_250", 0);
SbS_455 = ini_read_real("other", "SbS_455", 0);
SbS_640p = ini_read_real("other", "SbS_640p", 0);
SbS_810 = ini_read_real("other", "SbS_810", 0);
SbS_1000 = ini_read_real("other", "SbS_1000", 0);
ini_close();
background_colour[0] = global.col_pal_1;
ini_open("settings.ini");
MenuBackingAlpha = ini_read_real("settings", "MenuBackingAlpha", 0.1);
ini_close();
ShadHovY = 84;
SetHov1 = 0;
SetHov2 = 0;
SetHov3 = 0;
SetHov4 = 0;
SetHov5 = 0;
SetHov6 = 0;
SetHov7 = 0;
SetHov8 = 0;
SetHov9 = 0;
SetHov10 = 0;
SetHov11 = 0;
SetHov12 = 0;
SetHov13 = 0;
SetHov14 = 0;
SetHov15 = 0;
SetHov16 = 0;
SetHov17 = 0;
SetHov18 = 0;
SetHov19 = 0;
