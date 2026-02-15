if (room == r_intro)
{
    if (file_exists("ppu.ini"))
    {
        audio_play_sound(s_puzzle_complete, 1, false);
        file_copy("ppu.ini", "ppu_OldSaveBackup.ini");
        ini_open("ppu.ini");
        var copyQP = 0;
        var copyPins = 0;
        var QPgrid;
        if (ini_section_exists("QPgrid"))
        {
            copyQP = 1;
            QPgrid = ds_grid_create(2, 7);
            var QP_data = ini_read_string("QPgrid", "0", "");
            if (QP_data != "")
            {
                ds_grid_read(QPgrid, QP_data);
            }
            ini_section_delete("QPgrid");
        }
        var Pinsgrid;
        if (ini_section_exists("Pins"))
        {
            copyPins = 1;
            Pinsgrid = ds_grid_create(2, 7);
            var Pins_data = ini_read_string("Pins", "0", "");
            if (Pins_data != "")
            {
                ds_grid_read(Pinsgrid, Pins_data);
            }
            ini_section_delete("Pins");
        }
        ini_close();
        ini_open("pidsg.ini");
        if (copyQP == 1)
        {
            ini_write_string("QPgrid", "0", ds_grid_write(QPgrid));
            ds_grid_destroy(QPgrid);
        }
        if (copyPins == 1)
        {
            ini_write_string("Pins", "0", ds_grid_write(Pinsgrid));
            ds_grid_destroy(Pinsgrid);
        }
        var PI_G = ds_grid_create(36, 170);
        if (ini_key_exists("pi", "0"))
        {
            ds_grid_read(PI_G, ini_read_string("pi", "0", ""));
        }
        var CHAL_G = ds_grid_create(1, 88);
        if (ini_key_exists("chal", "0"))
        {
            ds_grid_read(CHAL_G, ini_read_string("chal", "0", ""));
        }
        var UL_G = ds_grid_create(1, 90);
        if (ini_key_exists("ul", "0"))
        {
            ds_grid_read(UL_G, ini_read_string("ul", "0", ""));
        }
        var FP_G = ds_grid_create(1, 37);
        if (ini_key_exists("fp", "0"))
        {
            ds_grid_read(FP_G, ini_read_string("fp", "0", ""));
        }
        var FIG_G = ds_grid_create(1, 20);
        if (ini_key_exists("fig", "0"))
        {
            ds_grid_read(FIG_G, ini_read_string("fig", "0", ""));
        }
        ini_close();
        var StartPackNum = 1;
        var MaxPackNum = 169;
        var MaxPuzNum = 25;
        for (var i = StartPackNum; i <= MaxPackNum; i++)
        {
            var PackNum = i;
            if (PackNum == 75)
            {
                PackNum += 1;
            }
            if (PackNum == 126)
            {
                PackNum += 1;
            }
            for (var j = 1; j <= MaxPuzNum; j++)
            {
                var PuzNum = j;
                ini_open("ppu.ini");
                var MaxPieceNum = ds_grid_get(PI_G, PuzNum + 10, PackNum);
                var PuzGrid = ds_grid_create(4, MaxPieceNum + 1);
                var OldSection = "p" + string(PackNum) + "x" + string(PuzNum);
                var NewSection = "P" + string(PuzNum);
                var NewSaveName = "p" + string(PackNum) + ".ini";
                if (ini_section_exists(OldSection))
                {
                    var PieceNum = 1;
                    var KeyCount = 0;
                    for (var k = 1; k <= MaxPieceNum; k++)
                    {
                        var key = string(PackNum) + "x" + string(PuzNum) + "b" + string(k);
                        if (ini_key_exists(OldSection, "p" + string(key)))
                        {
                            ds_grid_set(PuzGrid, 0, k, 1);
                            KeyCount++;
                        }
                    }
                    ini_open(NewSaveName);
                    var ClickedGrid = ds_grid_create(1, 500);
                    var Clicked_data = ini_read_string("PC", "0", "");
                    if (Clicked_data != "")
                    {
                        ds_grid_read(ClickedGrid, Clicked_data);
                    }
                    ds_grid_set(ClickedGrid, 0, PuzNum, KeyCount);
                    ini_write_string("PC", "0", ds_grid_write(ClickedGrid));
                    ds_grid_destroy(ClickedGrid);
                    ini_close();
                    while (PieceNum <= MaxPieceNum)
                    {
                        if (ds_grid_get(PuzGrid, 0, PieceNum) == undefined)
                        {
                            ds_grid_set(PuzGrid, 0, PieceNum, 0);
                        }
                        PieceNum++;
                    }
                    ini_open(NewSaveName);
                    ini_write_string(NewSection, "0", ds_grid_write(PuzGrid));
                    ini_close();
                }
                ds_grid_destroy(PuzGrid);
                ini_close();
            }
        }
        ds_grid_destroy(PI_G);
        for (var j = 1; j <= 19; j++)
        {
            var PuzNum = j;
            ini_open("ppu.ini");
            var MaxPieceNum = ds_grid_get(FP_G, 0, PuzNum);
            var PuzGrid = ds_grid_create(4, MaxPieceNum + 1);
            var OldSection = "p126x" + string(PuzNum);
            var NewSection = "P" + string(PuzNum);
            var NewSaveName = "p126.ini";
            if (ini_section_exists(OldSection))
            {
                var PieceNum = 1;
                var KeyCount = 0;
                for (var k = 1; k <= MaxPieceNum; k++)
                {
                    var key = "126x" + string(PuzNum) + "b" + string(k);
                    if (ini_key_exists(OldSection, "p" + string(key)))
                    {
                        ds_grid_set(PuzGrid, 0, k, 1);
                        KeyCount++;
                    }
                }
                ini_open(NewSaveName);
                var ClickedGrid = ds_grid_create(1, 500);
                var Clicked_data = ini_read_string("PC", "0", "");
                if (Clicked_data != "")
                {
                    ds_grid_read(ClickedGrid, Clicked_data);
                }
                ds_grid_set(ClickedGrid, 0, PuzNum, KeyCount);
                ini_write_string("PC", "0", ds_grid_write(ClickedGrid));
                ds_grid_destroy(ClickedGrid);
                ini_close();
                while (PieceNum <= MaxPieceNum)
                {
                    if (ds_grid_get(PuzGrid, 0, PieceNum) == undefined)
                    {
                        ds_grid_set(PuzGrid, 0, PieceNum, 0);
                    }
                    PieceNum++;
                }
                ini_open(NewSaveName);
                ini_write_string(NewSection, "0", ds_grid_write(PuzGrid));
                ini_close();
            }
            ds_grid_destroy(PuzGrid);
            ini_close();
        }
        for (var j = 1; j <= 17; j++)
        {
            var PuzNum = j;
            ini_open("ppu.ini");
            var MaxPieceNum = ds_grid_get(FP_G, 0, PuzNum + 19);
            var PuzGrid = ds_grid_create(4, MaxPieceNum + 1);
            var OldSection = "p75x" + string(PuzNum);
            var NewSection = "P" + string(PuzNum + 19);
            var NewSaveName = "p126.ini";
            if (ini_section_exists(OldSection))
            {
                var PieceNum = 1;
                var KeyCount = 0;
                for (var k = 1; k <= MaxPieceNum; k++)
                {
                    var key = "75x" + string(PuzNum) + "b" + string(k);
                    if (ini_key_exists(OldSection, "p" + string(key)))
                    {
                        ds_grid_set(PuzGrid, 0, k, 1);
                        KeyCount++;
                    }
                }
                ini_open(NewSaveName);
                var ClickedGrid = ds_grid_create(1, 500);
                var Clicked_data = ini_read_string("PC", "0", "");
                if (Clicked_data != "")
                {
                    ds_grid_read(ClickedGrid, Clicked_data);
                }
                ds_grid_set(ClickedGrid, 0, PuzNum + 19, KeyCount);
                ini_write_string("PC", "0", ds_grid_write(ClickedGrid));
                ds_grid_destroy(ClickedGrid);
                ini_close();
                while (PieceNum <= MaxPieceNum)
                {
                    if (ds_grid_get(PuzGrid, 0, PieceNum) == undefined)
                    {
                        ds_grid_set(PuzGrid, 0, PieceNum, 0);
                    }
                    PieceNum++;
                }
                ini_open(NewSaveName);
                ini_write_string(NewSection, "0", ds_grid_write(PuzGrid));
                ini_close();
            }
            ds_grid_destroy(PuzGrid);
            ini_close();
        }
        ds_grid_destroy(FP_G);
        for (var j = 1; j <= 87; j++)
        {
            var PuzNum = j;
            ini_open("ppu.ini");
            var MaxPieceNum = ds_grid_get(CHAL_G, 0, PuzNum);
            var PuzGrid = ds_grid_create(1, MaxPieceNum + 1);
            var OldSection = "p5000x" + string(PuzNum);
            var NewSection = "P" + string(PuzNum);
            var NewSaveName = "p7000.ini";
            if (ini_section_exists(OldSection))
            {
                var PieceNum = 1;
                var KeyCount = 0;
                for (var k = 1; k <= MaxPieceNum; k++)
                {
                    var key = "5000x" + string(PuzNum) + "b" + string(k);
                    if (ini_key_exists(OldSection, "p" + string(key)))
                    {
                        ds_grid_set(PuzGrid, 0, k, 1);
                        KeyCount++;
                    }
                }
                ini_open(NewSaveName);
                var ClickedGrid = ds_grid_create(1, 500);
                var Clicked_data = ini_read_string("PC", "0", "");
                if (Clicked_data != "")
                {
                    ds_grid_read(ClickedGrid, Clicked_data);
                }
                ds_grid_set(ClickedGrid, 0, PuzNum, KeyCount);
                ini_write_string("PC", "0", ds_grid_write(ClickedGrid));
                ds_grid_destroy(ClickedGrid);
                ini_close();
                while (PieceNum <= MaxPieceNum)
                {
                    if (ds_grid_get(PuzGrid, 0, PieceNum) == undefined)
                    {
                        ds_grid_set(PuzGrid, 0, PieceNum, 0);
                    }
                    PieceNum++;
                }
                ini_open(NewSaveName);
                ini_write_string(NewSection, "0", ds_grid_write(PuzGrid));
                ini_close();
            }
            ds_grid_destroy(PuzGrid);
            ini_close();
        }
        for (var j = 1; j <= 70; j++)
        {
            var PuzNum = j;
            ini_open("ppu.ini");
            var MaxPieceNum = ds_grid_get(CHAL_G, 0, PuzNum);
            var PuzGrid = ds_grid_create(1, MaxPieceNum + 1);
            var OldSection = "p10000x" + string(PuzNum);
            var OldSection2 = "p5000x" + string(PuzNum);
            var NewSection = "P" + string(PuzNum);
            var NewSaveName = "p7000.ini";
            if (ini_section_exists(OldSection) && !ini_section_exists(OldSection2))
            {
                var PieceNum = 1;
                var KeyCount = 0;
                for (var k = 1; k <= MaxPieceNum; k++)
                {
                    var key = "10000x" + string(PuzNum) + "b" + string(k);
                    if (ini_key_exists(OldSection, "p" + string(key)))
                    {
                        ds_grid_set(PuzGrid, 0, k, 1);
                        KeyCount++;
                    }
                }
                ini_open(NewSaveName);
                var ClickedGrid = ds_grid_create(1, 500);
                var Clicked_data = ini_read_string("PC", "0", "");
                if (Clicked_data != "")
                {
                    ds_grid_read(ClickedGrid, Clicked_data);
                }
                ds_grid_set(ClickedGrid, 0, PuzNum, KeyCount);
                ini_write_string("PC", "0", ds_grid_write(ClickedGrid));
                ds_grid_destroy(ClickedGrid);
                ini_close();
                while (PieceNum <= MaxPieceNum)
                {
                    if (ds_grid_get(PuzGrid, 0, PieceNum) == undefined)
                    {
                        ds_grid_set(PuzGrid, 0, PieceNum, 0);
                    }
                    PieceNum++;
                }
                ini_open(NewSaveName);
                ini_write_string(NewSection, "0", ds_grid_write(PuzGrid));
                ini_close();
            }
            ds_grid_destroy(PuzGrid);
            ini_close();
        }
        ds_grid_destroy(CHAL_G);
        for (var j = 1; j <= 19; j++)
        {
            var PuzNum = j;
            ini_open("ppu.ini");
            var MaxPieceNum = ds_grid_get(FIG_G, 0, PuzNum);
            var PuzGrid = ds_grid_create(1, MaxPieceNum + 1);
            var OldSection = "p6000x" + string(PuzNum);
            var NewSection = "P" + string(PuzNum);
            var NewSaveName = "p6000.ini";
            if (ini_section_exists(OldSection))
            {
                var PieceNum = 1;
                var KeyCount = 0;
                for (var k = 1; k <= MaxPieceNum; k++)
                {
                    var key = "6000x" + string(PuzNum) + "b" + string(k);
                    if (ini_key_exists(OldSection, "p" + string(key)))
                    {
                        ds_grid_set(PuzGrid, 0, k, 1);
                        KeyCount++;
                    }
                }
                ini_open(NewSaveName);
                var ClickedGrid = ds_grid_create(1, 500);
                var Clicked_data = ini_read_string("PC", "0", "");
                if (Clicked_data != "")
                {
                    ds_grid_read(ClickedGrid, Clicked_data);
                }
                ds_grid_set(ClickedGrid, 0, PuzNum, KeyCount);
                ini_write_string("PC", "0", ds_grid_write(ClickedGrid));
                ds_grid_destroy(ClickedGrid);
                ini_close();
                while (PieceNum <= MaxPieceNum)
                {
                    if (ds_grid_get(PuzGrid, 0, PieceNum) == undefined)
                    {
                        ds_grid_set(PuzGrid, 0, PieceNum, 0);
                    }
                    PieceNum++;
                }
                ini_open(NewSaveName);
                ini_write_string(NewSection, "0", ds_grid_write(PuzGrid));
                ini_close();
            }
            ds_grid_destroy(PuzGrid);
            ini_close();
        }
        ds_grid_destroy(FIG_G);
        for (var j = 5001; j <= 5089; j++)
        {
            var PuzNum = j;
            ini_open("ppu.ini");
            var MaxPieceNum = ds_grid_get(UL_G, 0, PuzNum - 5000);
            var PuzGrid = ds_grid_create(4, MaxPieceNum + 1);
            var OldSection = "p5000x" + string(PuzNum);
            var NewSection = "P" + string(PuzNum - 5000);
            var NewSaveName = "p5000.ini";
            if (ini_section_exists(OldSection))
            {
                var PieceNum = 1;
                var KeyCount = 0;
                for (var k = 1; k <= MaxPieceNum; k++)
                {
                    var key = "5000x" + string(PuzNum) + "b" + string(k);
                    if (ini_key_exists(OldSection, "p" + string(key)))
                    {
                        ds_grid_set(PuzGrid, 0, k, 1);
                        KeyCount++;
                    }
                }
                ini_open(NewSaveName);
                var ClickedGrid = ds_grid_create(1, 500);
                var Clicked_data = ini_read_string("PC", "0", "");
                if (Clicked_data != "")
                {
                    ds_grid_read(ClickedGrid, Clicked_data);
                }
                ds_grid_set(ClickedGrid, 0, PuzNum - 5000, KeyCount);
                ini_write_string("PC", "0", ds_grid_write(ClickedGrid));
                ds_grid_destroy(ClickedGrid);
                ini_close();
                while (PieceNum <= MaxPieceNum)
                {
                    if (ds_grid_get(PuzGrid, 0, PieceNum) == undefined)
                    {
                        ds_grid_set(PuzGrid, 0, PieceNum, 0);
                    }
                    PieceNum++;
                }
                ini_open(NewSaveName);
                ini_write_string(NewSection, "0", ds_grid_write(PuzGrid));
                ini_close();
            }
            ds_grid_destroy(PuzGrid);
            ini_close();
        }
        for (var j = 1001; j <= 1014; j++)
        {
            var PuzNum = j;
            if (PuzNum == 1003)
            {
                PuzNum += 1;
            }
            if (PuzNum == 1004)
            {
                PuzNum += 1;
            }
            if (PuzNum == 1008)
            {
                PuzNum += 1;
            }
            ini_open("ppu.ini");
            var MaxPieceNum;
            if (PuzNum >= 1001 && PuzNum <= 1002)
            {
                MaxPieceNum = ds_grid_get(UL_G, 0, (PuzNum - 1000) + 78);
            }
            if (PuzNum >= 1005 && PuzNum <= 1007)
            {
                MaxPieceNum = ds_grid_get(UL_G, 0, (PuzNum - 1004) + 80);
            }
            if (PuzNum >= 1009 && PuzNum <= 1014)
            {
                MaxPieceNum = ds_grid_get(UL_G, 0, (PuzNum - 1008) + 83);
            }
            var PuzGrid = ds_grid_create(4, MaxPieceNum + 1);
            var OldSection = "p5000x" + string(PuzNum);
            var NewSection;
            if (PuzNum >= 1001 && PuzNum <= 1002)
            {
                NewSection = "P" + string((PuzNum - 1000) + 78);
            }
            if (PuzNum >= 1005 && PuzNum <= 1007)
            {
                NewSection = "P" + string((PuzNum - 1004) + 80);
            }
            if (PuzNum >= 1009 && PuzNum <= 1014)
            {
                NewSection = "P" + string((PuzNum - 1008) + 83);
            }
            var NewSaveName = "p5000.ini";
            if (ini_section_exists(OldSection))
            {
                var PieceNum = 1;
                var KeyCount = 0;
                for (var k = 1; k <= MaxPieceNum; k++)
                {
                    var key = "5000x" + string(PuzNum) + "b" + string(k);
                    if (ini_key_exists(OldSection, "p" + string(key)))
                    {
                        ds_grid_set(PuzGrid, 0, k, 1);
                        KeyCount++;
                    }
                }
                ini_open(NewSaveName);
                var ClickedGrid = ds_grid_create(1, 500);
                var Clicked_data = ini_read_string("PC", "0", "");
                if (Clicked_data != "")
                {
                    ds_grid_read(ClickedGrid, Clicked_data);
                }
                if (PuzNum >= 1001 && PuzNum <= 1002)
                {
                    ds_grid_set(ClickedGrid, 0, (PuzNum - 1000) + 78, KeyCount);
                }
                if (PuzNum >= 1005 && PuzNum <= 1007)
                {
                    ds_grid_set(ClickedGrid, 0, (PuzNum - 1004) + 80, KeyCount);
                }
                if (PuzNum >= 1009 && PuzNum <= 1014)
                {
                    ds_grid_set(ClickedGrid, 0, (PuzNum - 1008) + 83, KeyCount);
                }
                ini_write_string("PC", "0", ds_grid_write(ClickedGrid));
                ds_grid_destroy(ClickedGrid);
                ini_close();
                while (PieceNum <= MaxPieceNum)
                {
                    if (ds_grid_get(PuzGrid, 0, PieceNum) == undefined)
                    {
                        ds_grid_set(PuzGrid, 0, PieceNum, 0);
                    }
                    PieceNum++;
                }
                ini_open(NewSaveName);
                ini_write_string(NewSection, "0", ds_grid_write(PuzGrid));
                ini_close();
            }
            ds_grid_destroy(PuzGrid);
            ini_close();
        }
        ds_grid_destroy(UL_G);
        file_delete("PPU.ini");
        game_restart();
    }
}
