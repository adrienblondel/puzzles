if (CurrentPage == 6)
{
    var total_packs = global.TotalPacks;
    var buttons_per_row = 3;
    var horizontal_spacing = 380;
    var vertical_spacing = 198;
    var initial_xpos = 493;
    var initial_ypos = 91;
    var current_pack_index = 0;
    var packs_displayed = 0;
    var total_rows = 0;
    ini_open("pidsg.ini");
    var PackGrid = ds_grid_create(10, global.TotalPacks + 1);
    if (ini_key_exists("pi", "0"))
    {
        ds_grid_read(PackGrid, ini_read_string("pi", "0", ""));
    }
    ini_close();
    for (var i = total_packs; i > 0; i--)
    {
        var pack_num = i;
        var PacksBatch = ds_grid_get(PackGrid, 5, pack_num);
        var PacksDiscount = ds_grid_get(PackGrid, 4, pack_num);
        var appID = ds_grid_get(PackGrid, 0, pack_num);
        var PackTitle = ds_grid_get(PackGrid, 1, pack_num);
        var x3 = ds_grid_get(PackGrid, 3, pack_num);
        var x6 = ds_grid_get(PackGrid, 6, pack_num);
        var x7 = ds_grid_get(PackGrid, 7, pack_num);
        var x8 = ds_grid_get(PackGrid, 8, pack_num);
        var x9 = ds_grid_get(PackGrid, 9, pack_num);
        if (!steam_user_owns_dlc(appID) && x3 != 0 && pack_num != 23)
        {
            if (x6 != 0 || x7 != 0 || x8 != 0)
            {
                if (CatFilter == 0 || x6 == CatFilter || x7 == CatFilter || x8 == CatFilter)
                {
                    var add_pack = 1;
                    if (CatCheck800 == 1 && x9 != 1)
                    {
                        add_pack = 0;
                    }
                    if (CatCheckFree == 1 && x3 != 2)
                    {
                        add_pack = 0;
                    }
                    if (pack_num == 51)
                    {
                        add_pack = 0;
                    }
                    if (add_pack)
                    {
                        var row = current_pack_index div buttons_per_row;
                        var col = current_pack_index % buttons_per_row;
                        var xpos = initial_xpos + (col * horizontal_spacing);
                        var ypos = initial_ypos + (row * vertical_spacing);
                        var PackBut = instance_create(xpos, ypos, ob_catalogue_pack_button);
                        PackBut.pack_num = pack_num;
                        if (PacksBatch == global.sale_batch || global.sale_batch == 100 || PacksDiscount == 100)
                        {
                            PackBut.pack_on_sale = 1;
                            PackBut.sale_percent = PacksDiscount;
                        }
                        PackBut.PackTitle = PackTitle;
                        PackBut.appID = appID;
                        PackBut.startY = ypos;
                        current_pack_index++;
                        packs_displayed++;
                    }
                }
            }
        }
    }
    ArrowClicks = 0;
    ArrowClicksMax = 0;
    total_rows = ceil(packs_displayed / buttons_per_row);
    if (total_rows > 5)
    {
        ArrowClicksMax = total_rows - 5;
    }
    ds_grid_destroy(PackGrid);
}
if (CurrentPage == 2)
{
    var total_packs = global.TotalPacks;
    var buttons_per_row = 3;
    var horizontal_spacing = 380;
    var vertical_spacing = 198;
    var initial_xpos = 493;
    var initial_ypos = 91;
    var current_pack_index = 0;
    var packs_displayed = 0;
    var total_rows = 0;
    ini_open("pidsg.ini");
    var PackGrid = ds_grid_create(10, global.TotalPacks + 1);
    if (ini_key_exists("pi", "0"))
    {
        ds_grid_read(PackGrid, ini_read_string("pi", "0", ""));
    }
    ini_close();
    for (var i = total_packs; i > 0; i--)
    {
        var pack_num = i;
        var appID = ds_grid_get(PackGrid, 0, pack_num);
        var PackTitle = ds_grid_get(PackGrid, 1, pack_num);
        var MaxPuzzles = ds_grid_get(PackGrid, 2, pack_num);
        var DLCtype = ds_grid_get(PackGrid, 3, pack_num);
        var x6 = ds_grid_get(PackGrid, 6, pack_num);
        var x7 = ds_grid_get(PackGrid, 7, pack_num);
        var x8 = ds_grid_get(PackGrid, 8, pack_num);
        var x9 = ds_grid_get(PackGrid, 9, pack_num);
        var steamachi = "complete_pack_" + string(pack_num);
        var pack_beat = steam_get_achievement(steamachi);
        if (steam_user_owns_dlc(appID) || DLCtype == 3)
        {
            if (x6 != 0 || x7 != 0 || x8 != 0)
            {
                if (CatFilter == 0 || x6 == CatFilter || x7 == CatFilter || x8 == CatFilter)
                {
                    var add_pack = 1;
                    if (CatCheckComplete == 1 && pack_beat != 1)
                    {
                        add_pack = 0;
                    }
                    if (CatCheckIncomplete == 1 && pack_beat != 0)
                    {
                        add_pack = 0;
                    }
                    var PuzzlesComplete;
                    if (add_pack)
                    {
                        PuzzlesComplete = 0;
                        for (var puz_ACHI_to_check = 1; puz_ACHI_to_check <= MaxPuzzles; puz_ACHI_to_check++)
                        {
                            var PuzAchi = "complete_pack_" + string(pack_num) + "_puzzle_" + string(puz_ACHI_to_check);
                            var PuzzlesIsBeat = steam_get_achievement(PuzAchi);
                            PuzzlesComplete += PuzzlesIsBeat;
                        }
                        if ((CatCheckInProgress == 1 && PuzzlesComplete == 0) || (CatCheckInProgress == 1 && PuzzlesComplete == MaxPuzzles))
                        {
                            add_pack = 0;
                        }
                    }
                    if (add_pack)
                    {
                        var row = current_pack_index div buttons_per_row;
                        var col = current_pack_index % buttons_per_row;
                        var xpos = initial_xpos + (col * horizontal_spacing);
                        var ypos = initial_ypos + (row * vertical_spacing);
                        var PackBut = instance_create(xpos, ypos, ob_catalogue_pack_button);
                        PackBut.PackTitle = PackTitle;
                        PackBut.pack_num = pack_num;
                        PackBut.pack_beat = pack_beat;
                        PackBut.appID = appID;
                        PackBut.startY = ypos;
                        PackBut.MaxPuzzles = MaxPuzzles;
                        PackBut.PuzzlesBeat = PuzzlesComplete;
                        if (pack_beat == 0)
                        {
                            if (PuzzlesComplete == MaxPuzzles)
                            {
                                if (!steam_get_achievement(steamachi))
                                {
                                    steam_set_achievement(steamachi);
                                    var PacksBeatStat = steam_get_stat_int("total_packs_complete") + 1;
                                    steam_set_stat_int("total_packs_complete", PacksBeatStat);
                                }
                            }
                        }
                        current_pack_index++;
                        packs_displayed++;
                    }
                }
            }
        }
    }
    ArrowClicks = 0;
    ArrowClicksMax = 0;
    total_rows = ceil(packs_displayed / buttons_per_row);
    if (total_rows > 5)
    {
        ArrowClicksMax = total_rows - 5;
    }
    ds_grid_destroy(PackGrid);
}
