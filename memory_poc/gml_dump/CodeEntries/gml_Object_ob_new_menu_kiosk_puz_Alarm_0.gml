if (puz_type == 1)
{
    mask_index = sprite_index;
    item_price = 50;
    if (puz_num > 0)
    {
        var imag_name = "\misc\challenge\p5000p" + string(puz_num) + "b.png";
        if (file_exists(working_directory + string(imag_name)))
        {
            var sprite_to_use = sprite_add(working_directory + string(imag_name), 0, false, false, 87, 53);
            sprite_index = sprite_to_use;
            mask_index = sprite_index;
            image_index = 0;
            var a_c = "challenge_" + string(puz_num);
            if (steam_get_achievement(a_c))
            {
                puz_beat = 1;
            }
            var k_u = "kioskchallenges" + string(puz_num);
            if (steam_get_achievement(k_u))
            {
                button_locked = 0;
            }
        }
        else
        {
            sprite_index = sp_new_menu_puzzle_button_blank;
        }
    }
    else
    {
        sprite_index = sp_new_menu_puzzle_button_blank;
    }
    if (puz_num == 84)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 330;
        chal_lb_num = 13304054;
    }
    else if (puz_num == 83)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 330;
        chal_lb_num = 13058949;
    }
    else if (puz_num == 82)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 330;
        chal_lb_num = 12833668;
    }
    else if (puz_num == 81)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 330;
        chal_lb_num = 12590390;
    }
    else if (puz_num == 80)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 330;
        chal_lb_num = 12352642;
    }
    else if (puz_num == 79)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 330;
        chal_lb_num = 12136188;
    }
    else if (puz_num == 78)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 330;
        chal_lb_num = 11893599;
    }
    else if (puz_num == 77)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 330;
        chal_lb_num = 11609567;
    }
    else if (puz_num == 76)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 330;
        chal_lb_num = 11401067;
    }
    else if (puz_num == 75)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 330;
        chal_lb_num = 11162056;
    }
    else if (puz_num == 74)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 330;
        chal_lb_num = 10925247;
    }
    else if (puz_num == 73)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 425;
        chal_lb_num = 10705489;
    }
    else if (puz_num == 72)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 330;
        chal_lb_num = 10472928;
    }
    else if (puz_num == 71)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 330;
        chal_lb_num = 9862476;
    }
    else if (puz_num == 70)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 330;
        chal_lb_num = 9655062;
    }
    else if (puz_num == 69)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 330;
        chal_lb_num = 9472940;
    }
    else if (puz_num == 68)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 425;
        chal_lb_num = 8817772;
    }
    else if (puz_num == 67)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 330;
        chal_lb_num = 8690835;
    }
    else if (puz_num == 66)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 330;
        chal_lb_num = 8512180;
    }
    else if (puz_num == 65)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 330;
        chal_lb_num = 8300115;
    }
    else if (puz_num == 64)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 330;
        chal_lb_num = 8133194;
    }
    else if (puz_num == 63)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 330;
        chal_lb_num = 7972461;
    }
    else if (puz_num == 62)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 425;
        chal_lb_num = 7841312;
    }
    else if (puz_num == 61)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 330;
        chal_lb_num = 7685319;
    }
    else if (puz_num == 60)
    {
        puzzle_level_type = 3;
        puzzle_number_of_pieces = 324;
        chal_lb_num = 7519223;
    }
    else if (puz_num == 59)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 330;
        chal_lb_num = 7401046;
    }
    else if (puz_num == 58)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 425;
        chal_lb_num = 7266241;
    }
    else if (puz_num == 57)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 425;
        chal_lb_num = 7086452;
    }
    else if (puz_num == 56)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 640;
        chal_lb_num = 6937973;
    }
    else if (puz_num == 55)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 640;
        chal_lb_num = 6785397;
    }
    else if (puz_num == 54)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 425;
        chal_lb_num = 6672403;
    }
    else if (puz_num == 53)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 425;
        chal_lb_num = 6522745;
    }
    else if (puz_num == 52)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 640;
        chal_lb_num = 6363522;
    }
    else if (puz_num == 51)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 425;
        chal_lb_num = 6242001;
    }
    else if (puz_num == 50)
    {
        puzzle_level_type = 4;
        puzzle_number_of_pieces = 640;
        chal_lb_num = 6139642;
    }
    else if (puz_num == 49)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 425;
        chal_lb_num = 5970831;
    }
    else if (puz_num == 48)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 425;
        chal_lb_num = 5853923;
    }
    else if (puz_num == 47)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 840;
        chal_lb_num = 5602183;
    }
    else if (puz_num == 46)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 425;
        chal_lb_num = 5360718;
    }
    else if (puz_num == 45)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 330;
        chal_lb_num = 5251956;
    }
    else if (puz_num == 44)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 425;
        chal_lb_num = 4971307;
    }
    else if (puz_num == 43)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 425;
        chal_lb_num = 4736399;
    }
    else if (puz_num == 42)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 425;
        chal_lb_num = 4510150;
    }
    else if (puz_num == 41)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 425;
        chal_lb_num = 4316891;
    }
    else if (puz_num == 40)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 330;
        chal_lb_num = 4207411;
    }
    else if (puz_num == 39)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 330;
        chal_lb_num = 4121900;
    }
    else if (puz_num == 38)
    {
        puzzle_level_type = 3;
        puzzle_number_of_pieces = 324;
        chal_lb_num = 4022045;
    }
    else if (puz_num == 37)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 330;
        chal_lb_num = 3951118;
    }
    else if (puz_num == 36)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 425;
        chal_lb_num = 3878624;
    }
    else if (puz_num == 35)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 330;
        chal_lb_num = 3813891;
    }
    else if (puz_num == 34)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 425;
        chal_lb_num = 3747936;
    }
    else if (puz_num == 33)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 425;
        chal_lb_num = 3637880;
    }
    else if (puz_num == 32)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 425;
        chal_lb_num = 3573095;
    }
    else if (puz_num == 31)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 425;
        chal_lb_num = 3489127;
    }
    else if (puz_num == 30)
    {
        puzzle_level_type = 4;
        puzzle_number_of_pieces = 455;
        chal_lb_num = 3413053;
    }
    else if (puz_num == 29)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 425;
        chal_lb_num = 3353509;
    }
    else if (puz_num == 28)
    {
        puzzle_level_type = 3;
        puzzle_number_of_pieces = 676;
        chal_lb_num = 3289637;
    }
    else if (puz_num == 27)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 640;
        chal_lb_num = 3229838;
    }
    else if (puz_num == 26)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 425;
        chal_lb_num = 3169640;
    }
    else if (puz_num == 25)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 640;
        chal_lb_num = 3113630;
    }
    else if (puz_num == 24)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 640;
        chal_lb_num = 3062057;
    }
    else if (puz_num == 23)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 640;
        chal_lb_num = 2993443;
    }
    else if (puz_num == 22)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 640;
        chal_lb_num = 2927628;
    }
    else if (puz_num == 21)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 640;
        chal_lb_num = 2867136;
    }
    else if (puz_num == 20)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 640;
        chal_lb_num = 2799892;
    }
    else if (puz_num == 19)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 1410;
        chal_lb_num = 2731755;
    }
    else if (puz_num == 18)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 640;
        chal_lb_num = 2648482;
    }
    else if (puz_num == 17)
    {
        puzzle_level_type = 4;
        puzzle_number_of_pieces = 640;
        chal_lb_num = 2584659;
    }
    else if (puz_num == 16)
    {
        puzzle_level_type = 3;
        puzzle_number_of_pieces = 676;
        chal_lb_num = 2522911;
    }
    else if (puz_num == 15)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 640;
        chal_lb_num = 2449720;
    }
    else if (puz_num == 14)
    {
        puzzle_level_type = 4;
        puzzle_number_of_pieces = 640;
        chal_lb_num = 2387463;
    }
    else if (puz_num == 13)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 425;
        chal_lb_num = 2315239;
    }
    else if (puz_num == 12)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 425;
        chal_lb_num = 2263049;
    }
    else if (puz_num == 11)
    {
        puzzle_level_type = 3;
        puzzle_number_of_pieces = 400;
        chal_lb_num = 2214321;
    }
    else if (puz_num == 10)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 840;
        chal_lb_num = 2132073;
    }
    else if (puz_num == 9)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 840;
        chal_lb_num = 2083545;
    }
    else if (puz_num == 8)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 640;
        chal_lb_num = 2021624;
    }
    else if (puz_num == 7)
    {
        puzzle_level_type = 4;
        puzzle_number_of_pieces = 810;
        chal_lb_num = 1976145;
    }
    else if (puz_num == 6)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 640;
        chal_lb_num = 1890965;
    }
    else if (puz_num == 5)
    {
        puzzle_level_type = 3;
        puzzle_number_of_pieces = 841;
        chal_lb_num = 1825687;
    }
    else if (puz_num == 4)
    {
        puzzle_level_type = 3;
        puzzle_number_of_pieces = 841;
        chal_lb_num = 1776517;
    }
    else if (puz_num == 3)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 840;
        chal_lb_num = 1738635;
    }
    else if (puz_num == 2)
    {
        puzzle_level_type = 4;
        puzzle_number_of_pieces = 810;
        chal_lb_num = 1631811;
    }
    else if (puz_num == 1)
    {
        puzzle_level_type = 3;
        puzzle_number_of_pieces = 676;
        chal_lb_num = 1530288;
    }
    else if (puz_num == 0)
    {
    }
    chal_lb = "https://steamcommunity.com//stats/351030/leaderboards/" + string(chal_lb_num);
}
if (puz_type == 2)
{
    if (puz_num > 0)
    {
        var imag_name = 0;
        if (puz_num < 10)
        {
            imag_name = "\misc\puzshop\p5000p500" + string(puz_num) + "b.png";
        }
        else
        {
            imag_name = "\misc\puzshop\p5000p50" + string(puz_num) + "b.png";
        }
        if (file_exists(working_directory + string(imag_name)))
        {
            var sprite_to_use = sprite_add(working_directory + string(imag_name), 0, false, false, 87, 53);
            sprite_index = sprite_to_use;
            mask_index = sprite_index;
            image_index = 0;
            var a_c = 0;
            if (puz_num < 10)
            {
                a_c = "uniques_500" + string(puz_num);
            }
            else
            {
                a_c = "uniques_50" + string(puz_num);
            }
            if (steam_get_achievement(a_c))
            {
                puz_beat = 1;
            }
            var k_u = "kioskpuzzles" + string(puz_num);
            if (steam_get_achievement(k_u))
            {
                button_locked = 0;
            }
        }
        else
        {
            sprite_index = sp_new_menu_puzzle_button_blank;
        }
    }
    else
    {
        sprite_index = sp_new_menu_puzzle_button_blank;
    }
    if (puz_num == 78)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 96;
        item_price = 20;
    }
    else if (puz_num == 77)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 140;
        item_price = 30;
    }
    else if (puz_num == 76)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 96;
        item_price = 20;
    }
    else if (puz_num == 75)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 140;
        item_price = 30;
    }
    else if (puz_num == 74)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 140;
        item_price = 30;
    }
    else if (puz_num == 73)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 140;
        item_price = 30;
    }
    else if (puz_num == 72)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 330;
        item_price = 50;
    }
    else if (puz_num == 71)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 330;
        item_price = 50;
    }
    else if (puz_num == 70)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 96;
        item_price = 20;
    }
    else if (puz_num == 69)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 96;
        item_price = 20;
    }
    else if (puz_num == 68)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 140;
        item_price = 30;
    }
    else if (puz_num == 67)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 96;
        item_price = 20;
    }
    else if (puz_num == 66)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 140;
        item_price = 30;
    }
    else if (puz_num == 65)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 330;
        item_price = 50;
    }
    else if (puz_num == 64)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 216;
        item_price = 40;
    }
    else if (puz_num == 63)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 96;
        item_price = 20;
    }
    else if (puz_num == 62)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 140;
        item_price = 30;
    }
    else if (puz_num == 61)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 96;
        item_price = 20;
    }
    else if (puz_num == 60)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 216;
        item_price = 40;
    }
    else if (puz_num == 59)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 216;
        item_price = 40;
    }
    else if (puz_num == 58)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 96;
        item_price = 20;
    }
    else if (puz_num == 57)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 216;
        item_price = 40;
    }
    else if (puz_num == 56)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 96;
        item_price = 20;
    }
    else if (puz_num == 55)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 216;
        item_price = 40;
    }
    else if (puz_num == 54)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 96;
        item_price = 20;
    }
    else if (puz_num == 53)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 140;
        item_price = 30;
    }
    else if (puz_num == 52)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 216;
        item_price = 40;
    }
    else if (puz_num == 51)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 140;
        item_price = 30;
    }
    else if (puz_num == 50)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 140;
        item_price = 30;
    }
    else if (puz_num == 49)
    {
        puzzle_level_type = 3;
        puzzle_number_of_pieces = 169;
        item_price = 30;
    }
    else if (puz_num == 48)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 216;
        item_price = 40;
    }
    else if (puz_num == 47)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 140;
        item_price = 30;
    }
    else if (puz_num == 46)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 216;
        item_price = 40;
    }
    else if (puz_num == 45)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 216;
        item_price = 40;
    }
    else if (puz_num == 44)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 140;
        item_price = 50;
    }
    else if (puz_num == 43)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 96;
        item_price = 30;
    }
    else if (puz_num == 42)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 140;
        item_price = 30;
    }
    else if (puz_num == 41)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 216;
        item_price = 40;
    }
    else if (puz_num == 40)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 96;
        item_price = 30;
    }
    else if (puz_num == 39)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 96;
        item_price = 20;
    }
    else if (puz_num == 38)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 140;
        item_price = 30;
    }
    else if (puz_num == 37)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 216;
        item_price = 40;
    }
    else if (puz_num == 36)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 140;
        item_price = 30;
    }
    else if (puz_num == 35)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 330;
        item_price = 50;
    }
    else if (puz_num == 34)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 216;
        item_price = 40;
    }
    else if (puz_num == 33)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 140;
        item_price = 30;
    }
    else if (puz_num == 32)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 96;
        item_price = 20;
    }
    else if (puz_num == 31)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 96;
        item_price = 20;
    }
    else if (puz_num == 30)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 140;
        item_price = 30;
    }
    else if (puz_num == 29)
    {
        puzzle_level_type = 4;
        puzzle_number_of_pieces = 126;
        item_price = 30;
    }
    else if (puz_num == 28)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 140;
        item_price = 30;
    }
    else if (puz_num == 27)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 140;
        item_price = 30;
    }
    else if (puz_num == 26)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 216;
        item_price = 40;
    }
    else if (puz_num == 25)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 96;
        item_price = 20;
    }
    else if (puz_num == 24)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 330;
        item_price = 40;
    }
    else if (puz_num == 23)
    {
        puzzle_level_type = 3;
        puzzle_number_of_pieces = 169;
        item_price = 30;
    }
    else if (puz_num == 22)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 330;
        item_price = 40;
    }
    else if (puz_num == 21)
    {
        puzzle_level_type = 4;
        puzzle_number_of_pieces = 250;
        item_price = 30;
    }
    else if (puz_num == 20)
    {
        puzzle_level_type = 3;
        puzzle_number_of_pieces = 324;
        item_price = 50;
    }
    else if (puz_num == 19)
    {
        puzzle_level_type = 3;
        puzzle_number_of_pieces = 676;
        item_price = 150;
    }
    else if (puz_num == 18)
    {
        puzzle_level_type = 4;
        puzzle_number_of_pieces = 455;
        item_price = 75;
    }
    else if (puz_num == 17)
    {
        puzzle_level_type = 3;
        puzzle_number_of_pieces = 100;
        item_price = 30;
    }
    else if (puz_num == 16)
    {
        puzzle_level_type = 4;
        puzzle_number_of_pieces = 168;
        item_price = 30;
    }
    else if (puz_num == 15)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 216;
        item_price = 40;
    }
    else if (puz_num == 14)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 140;
        item_price = 30;
    }
    else if (puz_num == 13)
    {
        puzzle_level_type = 4;
        puzzle_number_of_pieces = 810;
        item_price = 100;
    }
    else if (puz_num == 12)
    {
        puzzle_level_type = 4;
        puzzle_number_of_pieces = 168;
        item_price = 30;
    }
    else if (puz_num == 11)
    {
        puzzle_level_type = 4;
        puzzle_number_of_pieces = 126;
        item_price = 30;
    }
    else if (puz_num == 10)
    {
        puzzle_level_type = 4;
        puzzle_number_of_pieces = 455;
        item_price = 75;
    }
    else if (puz_num == 9)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 140;
        item_price = 30;
    }
    else if (puz_num == 8)
    {
        puzzle_level_type = 4;
        puzzle_number_of_pieces = 640;
        item_price = 100;
    }
    else if (puz_num == 7)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 425;
        item_price = 75;
    }
    else if (puz_num == 6)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 330;
        item_price = 50;
    }
    else if (puz_num == 5)
    {
        puzzle_level_type = 3;
        puzzle_number_of_pieces = 169;
        item_price = 30;
    }
    else if (puz_num == 4)
    {
        puzzle_level_type = 4;
        puzzle_number_of_pieces = 168;
        item_price = 30;
    }
    else if (puz_num == 3)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 425;
        item_price = 75;
    }
    else if (puz_num == 2)
    {
        puzzle_level_type = 4;
        puzzle_number_of_pieces = 250;
        item_price = 50;
    }
    else if (puz_num == 1)
    {
        puzzle_level_type = 4;
        puzzle_number_of_pieces = 455;
        item_price = 75;
    }
    else if (puz_num == 0)
    {
    }
}
else if (puz_type == 3)
{
    if (puz_num > 0)
    {
        var imag_name = 0;
        if (puz_num < 10)
        {
            imag_name = "\misc\puzshop\p5000p700" + string(puz_num) + "b.png";
        }
        else
        {
            imag_name = "\misc\puzshop\p5000p70" + string(puz_num) + "b.png";
        }
        if (file_exists(working_directory + string(imag_name)))
        {
            var sprite_to_use = sprite_add(working_directory + string(imag_name), 0, false, false, 87, 53);
            sprite_index = sprite_to_use;
            mask_index = sprite_index;
            image_index = 0;
            var a_c = 0;
            if (puz_num < 10)
            {
                a_c = "uniques_700" + string(puz_num);
            }
            else
            {
                a_c = "uniques_70" + string(puz_num);
            }
            if (steam_get_achievement(a_c))
            {
                puz_beat = 1;
            }
            var k_u = "kioskxxl" + string(puz_num);
            if (steam_get_achievement(k_u))
            {
                button_locked = 0;
            }
        }
        else
        {
            sprite_index = sp_new_menu_puzzle_button_blank;
        }
    }
    else
    {
        sprite_index = sp_new_menu_puzzle_button_blank;
    }
    if (puz_num == 1)
    {
        puzzle_level_type = 0;
        puzzle_number_of_pieces = 0;
        item_price = 0;
    }
    else if (puz_num == 0)
    {
    }
}
else if (puz_type == 4)
{
    if (puz_num > 0)
    {
        var imag_name = 0;
        if (puz_num < 10)
        {
            imag_name = "\misc\puzshop\p5000p10" + string(puz_num) + "b.png";
        }
        else
        {
            imag_name = "\misc\puzshop\p5000p1" + string(puz_num) + "b.png";
        }
        if (file_exists(working_directory + string(imag_name)))
        {
            var sprite_to_use = sprite_add(working_directory + string(imag_name), 0, false, false, 87, 53);
            sprite_index = sprite_to_use;
            mask_index = sprite_index;
            image_index = 0;
            var a_c = 0;
            if (puz_num < 10)
            {
                a_c = "uniques_10" + string(puz_num);
            }
            else
            {
                a_c = "uniques_1" + string(puz_num);
            }
            if (steam_get_achievement(a_c))
            {
                puz_beat = 1;
            }
            var k_u = "kioskfigurals" + string(puz_num);
            if (steam_get_achievement(k_u))
            {
                button_locked = 0;
            }
        }
        else
        {
            sprite_index = sp_new_menu_puzzle_button_blank;
        }
    }
    else
    {
        sprite_index = sp_new_menu_puzzle_button_blank;
    }
    if (puz_num == 19)
    {
        puzzle_level_type = 5;
        puzzle_number_of_pieces = 36;
        item_price = 15;
    }
    else if (puz_num == 18)
    {
        puzzle_level_type = 5;
        puzzle_number_of_pieces = 57;
        item_price = 15;
    }
    else if (puz_num == 17)
    {
        puzzle_level_type = 5;
        puzzle_number_of_pieces = 36;
        item_price = 15;
    }
    else if (puz_num == 16)
    {
        puzzle_level_type = 5;
        puzzle_number_of_pieces = 32;
        item_price = 15;
    }
    else if (puz_num == 15)
    {
        puzzle_level_type = 5;
        puzzle_number_of_pieces = 28;
        item_price = 15;
    }
    else if (puz_num == 14)
    {
        puzzle_level_type = 5;
        puzzle_number_of_pieces = 38;
        item_price = 15;
    }
    else if (puz_num == 13)
    {
        puzzle_level_type = 5;
        puzzle_number_of_pieces = 33;
        item_price = 15;
    }
    else if (puz_num == 12)
    {
        puzzle_level_type = 5;
        puzzle_number_of_pieces = 47;
        item_price = 15;
    }
    else if (puz_num == 11)
    {
        puzzle_level_type = 5;
        puzzle_number_of_pieces = 71;
        item_price = 15;
    }
    else if (puz_num == 10)
    {
        puzzle_level_type = 5;
        puzzle_number_of_pieces = 54;
        item_price = 15;
    }
    else if (puz_num == 9)
    {
        puzzle_level_type = 5;
        puzzle_number_of_pieces = 30;
        item_price = 15;
    }
    else if (puz_num == 8)
    {
        puzzle_level_type = 5;
        puzzle_number_of_pieces = 59;
        item_price = 15;
    }
    else if (puz_num == 7)
    {
        puzzle_level_type = 5;
        puzzle_number_of_pieces = 60;
        item_price = 15;
    }
    else if (puz_num == 6)
    {
        puzzle_level_type = 5;
        puzzle_number_of_pieces = 48;
        item_price = 15;
    }
    else if (puz_num == 5)
    {
        puzzle_level_type = 5;
        puzzle_number_of_pieces = 37;
        item_price = 15;
    }
    else if (puz_num == 4)
    {
        puzzle_level_type = 5;
        puzzle_number_of_pieces = 46;
        item_price = 15;
    }
    else if (puz_num == 3)
    {
        puzzle_level_type = 5;
        puzzle_number_of_pieces = 29;
        item_price = 15;
    }
    else if (puz_num == 2)
    {
        puzzle_level_type = 5;
        puzzle_number_of_pieces = 29;
        item_price = 15;
    }
    else if (puz_num == 1)
    {
        puzzle_level_type = 5;
        puzzle_number_of_pieces = 21;
        item_price = 15;
    }
    else if (puz_num == 0)
    {
    }
}
else if (puz_type == 5)
{
    if (puz_num > 0)
    {
        var imag_name = 0;
        if (puz_num < 10)
        {
            imag_name = "\misc\puzshop\p5000p100" + string(puz_num) + "b.png";
        }
        else
        {
            imag_name = "\misc\puzshop\p5000p10" + string(puz_num) + "b.png";
        }
        if (file_exists(working_directory + string(imag_name)))
        {
            var sprite_to_use = sprite_add(working_directory + string(imag_name), 0, false, false, 87, 53);
            sprite_index = sprite_to_use;
            mask_index = sprite_index;
            image_index = 0;
            var a_c = 0;
            if (puz_num < 10)
            {
                a_c = "uniques_100" + string(puz_num);
            }
            else
            {
                a_c = "uniques_10" + string(puz_num);
            }
            if (steam_get_achievement(a_c))
            {
                puz_beat = 1;
            }
            var k_u = "kioskexperimentals" + string(puz_num);
            if (steam_get_achievement(k_u))
            {
                button_locked = 0;
            }
        }
        else
        {
            sprite_index = sp_new_menu_puzzle_button_blank;
        }
    }
    else
    {
        sprite_index = sp_new_menu_puzzle_button_blank;
    }
    if (puz_num == 14)
    {
        puzzle_level_type = 3;
        puzzle_number_of_pieces = 400;
        item_price = 100;
    }
    else if (puz_num == 13)
    {
        puzzle_level_type = 4;
        puzzle_number_of_pieces = 1000;
        item_price = 200;
    }
    else if (puz_num == 12)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 840;
        item_price = 200;
    }
    else if (puz_num == 11)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 840;
        item_price = 200;
    }
    else if (puz_num == 10)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 1410;
        item_price = 250;
    }
    else if (puz_num == 9)
    {
        puzzle_level_type = 3;
        puzzle_number_of_pieces = 841;
        item_price = 200;
    }
    else if (puz_num == 7)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 1410;
        item_price = 250;
    }
    else if (puz_num == 6)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 1410;
        item_price = 250;
    }
    else if (puz_num == 5)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 425;
        item_price = 200;
    }
    else if (puz_num == 2)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 840;
        item_price = 200;
    }
    else if (puz_num == 1)
    {
        puzzle_level_type = 2;
        puzzle_number_of_pieces = 1410;
        item_price = 250;
    }
    else if (puz_num == 0)
    {
    }
}
if (puz_type == 6)
{
    if (puz_num > 0)
    {
        var imag_name = "\misc\kiosk\kc" + string(puz_num) + ".png";
        if (file_exists(working_directory + string(imag_name)))
        {
            var sprite_to_use = sprite_add(working_directory + string(imag_name), 0, false, false, 87, 53);
            sprite_index = sprite_to_use;
            mask_index = sprite_index;
            image_index = 0;
            var k_u = "kioskcursor" + string(puz_num);
            if (steam_get_achievement(k_u))
            {
                button_locked = 0;
            }
            if (puz_num == 1)
            {
                button_locked = 0;
            }
        }
        else
        {
            sprite_index = sp_new_menu_puzzle_button_blank;
        }
    }
    else
    {
        sprite_index = sp_new_menu_puzzle_button_blank;
    }
    if (puz_num == 25)
    {
        item_price = 5;
    }
    else if (puz_num == 24)
    {
        item_price = 5;
    }
    else if (puz_num == 23)
    {
        item_price = 5;
    }
    else if (puz_num == 22)
    {
        item_price = 5;
    }
    else if (puz_num == 21)
    {
        item_price = 10;
    }
    else if (puz_num == 20)
    {
        item_price = 10;
    }
    else if (puz_num == 19)
    {
        item_price = 10;
    }
    else if (puz_num == 18)
    {
        item_price = 10;
    }
    else if (puz_num == 17)
    {
        item_price = 10;
    }
    else if (puz_num == 16)
    {
        item_price = 5;
    }
    else if (puz_num == 15)
    {
        item_price = 5;
    }
    else if (puz_num == 14)
    {
        item_price = 5;
    }
    else if (puz_num == 13)
    {
        item_price = 5;
    }
    else if (puz_num == 12)
    {
        item_price = 5;
    }
    else if (puz_num == 11)
    {
        item_price = 5;
    }
    else if (puz_num == 10)
    {
        item_price = 5;
    }
    else if (puz_num == 9)
    {
        item_price = 5;
    }
    else if (puz_num == 8)
    {
        item_price = 5;
    }
    else if (puz_num == 7)
    {
        item_price = 5;
    }
    else if (puz_num == 6)
    {
        item_price = 10;
    }
    else if (puz_num == 5)
    {
        item_price = 5;
    }
    else if (puz_num == 4)
    {
        item_price = 5;
    }
    else if (puz_num == 3)
    {
        item_price = 10;
    }
    else if (puz_num == 2)
    {
        item_price = 10;
    }
    else if (puz_num == 1)
    {
        item_price = 0;
    }
    else if (puz_num == 0)
    {
    }
}
else if (puz_type == 7)
{
    if (puz_num > 0)
    {
        var imag_name = "\misc\kiosk\theme" + string(puz_num) + ".png";
        if (file_exists(working_directory + string(imag_name)))
        {
            var sprite_to_use = sprite_add(working_directory + string(imag_name), 0, false, false, 87, 53);
            sprite_index = sprite_to_use;
            mask_index = sprite_index;
            image_index = 0;
            var k_u = "kiosktheme" + string(puz_num);
            if (steam_get_achievement(k_u))
            {
                button_locked = 0;
            }
        }
        else
        {
            sprite_index = sp_new_menu_puzzle_button_blank;
        }
    }
    else
    {
        sprite_index = sp_new_menu_puzzle_button_blank;
    }
    if (puz_num == 5)
    {
        item_price = 50;
    }
    else if (puz_num == 4)
    {
        item_price = 25;
    }
    else if (puz_num == 3)
    {
        item_price = 25;
    }
    else if (puz_num == 2)
    {
        item_price = 40;
    }
    else if (puz_num == 1)
    {
        item_price = 25;
    }
    else if (puz_num == 0)
    {
    }
}
else if (puz_type == 8)
{
    if (puz_num > 0)
    {
        var imag_name = "\misc\kiosk\mbg" + string(puz_num) + ".png";
        if (file_exists(working_directory + string(imag_name)))
        {
            var sprite_to_use = sprite_add(working_directory + string(imag_name), 0, false, false, 87, 53);
            sprite_index = sprite_to_use;
            mask_index = sprite_index;
            image_index = 0;
            var k_u = "kiosktoolbar" + string(puz_num);
            if (steam_get_achievement(k_u))
            {
                button_locked = 0;
            }
            if (puz_num == 1)
            {
                button_locked = 0;
            }
        }
        else
        {
            sprite_index = sp_new_menu_puzzle_button_blank;
        }
    }
    else
    {
        sprite_index = sp_new_menu_puzzle_button_blank;
    }
    if (puz_num == 28)
    {
        item_price = 15;
    }
    else if (puz_num == 27)
    {
        item_price = 15;
    }
    else if (puz_num == 26)
    {
        item_price = 15;
    }
    else if (puz_num == 25)
    {
        item_price = 15;
    }
    else if (puz_num == 24)
    {
        item_price = 15;
    }
    else if (puz_num == 23)
    {
        item_price = 15;
    }
    else if (puz_num == 22)
    {
        item_price = 15;
    }
    else if (puz_num == 21)
    {
        item_price = 15;
    }
    else if (puz_num == 20)
    {
        item_price = 15;
    }
    else if (puz_num == 19)
    {
        item_price = 15;
    }
    else if (puz_num == 18)
    {
        item_price = 15;
    }
    else if (puz_num == 17)
    {
        item_price = 15;
    }
    else if (puz_num == 16)
    {
        item_price = 15;
    }
    else if (puz_num == 15)
    {
        item_price = 15;
    }
    else if (puz_num == 14)
    {
        item_price = 15;
    }
    else if (puz_num == 13)
    {
        item_price = 15;
    }
    else if (puz_num == 12)
    {
        item_price = 15;
    }
    else if (puz_num == 11)
    {
        item_price = 15;
    }
    else if (puz_num == 10)
    {
        item_price = 15;
    }
    else if (puz_num == 9)
    {
        item_price = 15;
    }
    else if (puz_num == 8)
    {
        item_price = 15;
    }
    else if (puz_num == 7)
    {
        item_price = 15;
    }
    else if (puz_num == 6)
    {
        item_price = 15;
    }
    else if (puz_num == 5)
    {
        item_price = 15;
    }
    else if (puz_num == 4)
    {
        item_price = 15;
    }
    else if (puz_num == 3)
    {
        item_price = 15;
    }
    else if (puz_num == 2)
    {
        item_price = 15;
    }
    else if (puz_num == 1)
    {
        item_price = 0;
    }
    else if (puz_num == 0)
    {
    }
}
else if (puz_type == 9)
{
    if (puz_num > 0)
    {
        var imag_name = "\misc\kiosk\music1.png";
        if (file_exists(working_directory + string(imag_name)))
        {
            var sprite_to_use = sprite_add(working_directory + string(imag_name), 0, false, false, 87, 53);
            sprite_index = sprite_to_use;
            mask_index = sprite_index;
            image_index = 0;
            var k_u = "kioskmusic" + string(puz_num);
            if (steam_get_achievement(k_u))
            {
                button_locked = 0;
            }
        }
        else
        {
            sprite_index = sp_new_menu_puzzle_button_blank;
        }
    }
    else
    {
        sprite_index = sp_new_menu_puzzle_button_blank;
    }
    if (puz_num == 9)
    {
        item_price = 20;
    }
    else if (puz_num == 8)
    {
        item_price = 20;
    }
    else if (puz_num == 7)
    {
        item_price = 20;
    }
    else if (puz_num == 6)
    {
        item_price = 20;
    }
    else if (puz_num == 5)
    {
        item_price = 20;
    }
    else if (puz_num == 4)
    {
        item_price = 20;
    }
    else if (puz_num == 3)
    {
        item_price = 20;
    }
    else if (puz_num == 2)
    {
        item_price = 20;
    }
    else if (puz_num == 1)
    {
        item_price = 20;
    }
    else if (puz_num == 0)
    {
    }
}
