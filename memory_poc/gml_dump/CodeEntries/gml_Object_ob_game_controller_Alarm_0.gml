if (room == r_intro)
{
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
    if (intro_part == 0)
    {
        if (logo_alpha < 1)
        {
            logo_alpha += 0.05;
            alarm[0] = 2;
        }
        else
        {
            intro_part = 1;
            alarm[0] = 60;
        }
    }
    else if (intro_part == 1)
    {
        if (logo_alpha > 0)
        {
            logo_alpha -= 0.05;
            alarm[0] = 2;
        }
        else
        {
            intro_part = 2;
            alarm[0] = 2;
        }
    }
    else if (intro_part == 2)
    {
        alarm[1] = 1;
    }
    else if (intro_part == 3)
    {
        intro_part = 3.5;
        alarm[0] = 150;
        alarm[2] = 1;
        P1id = instance_create(176, 224, ob_intro_puzzle_piece);
        P1id.bn = 1;
        P1id.alarm[0] = irandom_range(1, 60);
        P1id.image_alpha = 0;
        P2id = instance_create(560, 232, ob_intro_puzzle_piece);
        P2id.bn = 2;
        P2id.alarm[0] = irandom_range(1, 60);
        P2id.image_alpha = 0;
        P3id = instance_create(956, 225, ob_intro_puzzle_piece);
        P3id.bn = 3;
        P3id.alarm[0] = irandom_range(1, 60);
        P3id.image_alpha = 0;
        P4id = instance_create(1360, 218, ob_intro_puzzle_piece);
        P4id.bn = 4;
        P4id.alarm[0] = irandom_range(1, 60);
        P4id.image_alpha = 0;
        P5id = instance_create(1747, 233, ob_intro_puzzle_piece);
        P5id.bn = 5;
        P5id.alarm[0] = irandom_range(1, 60);
        P5id.image_alpha = 0;
        P6id = instance_create(187, 541, ob_intro_puzzle_piece);
        P6id.bn = 6;
        P6id.alarm[0] = irandom_range(1, 60);
        P6id.image_alpha = 0;
        P7id = instance_create(559, 523, ob_intro_puzzle_piece);
        P7id.bn = 7;
        P7id.alarm[0] = irandom_range(1, 60);
        P7id.image_alpha = 0;
        P8id = instance_create(991, 509, ob_intro_puzzle_piece);
        P8id.bn = 8;
        P8id.alarm[0] = irandom_range(1, 60);
        P8id.image_alpha = 0;
        P9id = instance_create(1358, 530, ob_intro_puzzle_piece);
        P9id.bn = 9;
        P9id.alarm[0] = irandom_range(1, 60);
        P9id.image_alpha = 0;
        P10id = instance_create(1728, 546, ob_intro_puzzle_piece);
        P10id.bn = 10;
        P10id.alarm[0] = irandom_range(1, 60);
        P10id.image_alpha = 0;
        P11id = instance_create(191, 885, ob_intro_puzzle_piece);
        P11id.bn = 11;
        P11id.alarm[0] = irandom_range(1, 60);
        P11id.image_alpha = 0;
        P12id = instance_create(567, 877, ob_intro_puzzle_piece);
        P12id.bn = 12;
        P12id.alarm[0] = irandom_range(1, 60);
        P12id.image_alpha = 0;
        P13id = instance_create(959, 890, ob_intro_puzzle_piece);
        P13id.bn = 13;
        P13id.alarm[0] = irandom_range(1, 60);
        P13id.image_alpha = 0;
        P14id = instance_create(1367, 895, ob_intro_puzzle_piece);
        P14id.bn = 14;
        P14id.alarm[0] = irandom_range(1, 60);
        P14id.image_alpha = 0;
        P15id = instance_create(1737, 875, ob_intro_puzzle_piece);
        P15id.bn = 15;
        P15id.alarm[0] = irandom_range(1, 60);
        P15id.image_alpha = 0;
    }
    else if (intro_part == 3.5)
    {
        intro_part = 4;
        alarm[0] = 1;
    }
    else if (intro_part == 4)
    {
        if (global.language_using >= 0 && global.language_using <= 27)
        {
            intro_part = 5;
            alarm[0] = 1;
        }
        else
        {
            intro_part = 4.5;
            LanSelector = 1;
            var LanUse = os_get_language();
            if (LanUse == "en")
            {
                global.language_using = 0;
            }
            else if (LanUse == "es")
            {
                global.language_using = 1;
            }
            else if (LanUse == "de")
            {
                global.language_using = 2;
            }
            else if (LanUse == "fr")
            {
                global.language_using = 3;
            }
            else if (LanUse == "pt")
            {
                global.language_using = 4;
            }
            else if (LanUse == "ja")
            {
                global.language_using = 5;
            }
            else if (LanUse == "pl")
            {
                global.language_using = 6;
            }
            else if (LanUse == "da")
            {
                global.language_using = 7;
            }
            else if (LanUse == "zh")
            {
                global.language_using = 8;
            }
            else if (LanUse == "nl")
            {
                global.language_using = 10;
            }
            else if (LanUse == "fi")
            {
                global.language_using = 11;
            }
            else if (LanUse == "ru")
            {
                global.language_using = 12;
            }
            else if (LanUse == "it")
            {
                global.language_using = 13;
            }
            else if (LanUse == "no")
            {
                global.language_using = 14;
            }
            else if (LanUse == "sv")
            {
                global.language_using = 15;
            }
            else if (LanUse == "tr")
            {
                global.language_using = 16;
            }
            else if (LanUse == "uk")
            {
                global.language_using = 17;
            }
            else if (LanUse == "ro")
            {
                global.language_using = 18;
            }
            else if (LanUse == "hu")
            {
                global.language_using = 19;
            }
            else if (LanUse == "bg")
            {
                global.language_using = 20;
            }
            else if (LanUse == "el")
            {
                global.language_using = 21;
            }
            else if (LanUse == "id")
            {
                global.language_using = 22;
            }
            else if (LanUse == "cs")
            {
                global.language_using = 23;
            }
            else if (LanUse == "ko")
            {
                global.language_using = 24;
            }
            else if (LanUse == "vi")
            {
                global.language_using = 25;
            }
            else if (LanUse == "th")
            {
                global.language_using = 26;
            }
            else if (LanUse == "ar")
            {
                global.language_using = 27;
            }
            else
            {
                global.language_using = 0;
            }
        }
    }
    else if (intro_part == 5)
    {
        if (file_exists("ppu.ini"))
        {
            SaveConversionInfo = 1;
            window_set_fullscreen(false);
            window_set_size(1344, 756);
        }
        else
        {
            intro_part = 10;
            alarm[0] = 1;
        }
    }
    else if (intro_part == 10)
    {
        room_goto(r_menu_3);
    }
}
