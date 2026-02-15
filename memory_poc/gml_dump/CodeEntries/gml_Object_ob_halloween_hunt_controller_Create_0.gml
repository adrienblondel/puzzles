if (current_month == 10 && steam_stats_ready())
{
    if (current_day >= 24)
    {
        if (steam_get_stat_int("h2024_24_1") == 0)
        {
            halprizeID = instance_create(1653, 869, ob_hal_prize);
            halprizeID.depth = 0;
            halprizeID.type = 0;
            halprizeID.prize_number = "h2024_24_1";
            halprizeID.hid_alpha = 0.5;
            halprizeID.item_qnt = 1;
            halprizeID.image_xscale = 0.8;
            halprizeID.image_yscale = 0.8;
        }
        if (steam_get_stat_int("h2024_24_2") == 0)
        {
            halprizeID = instance_create(283, 916, ob_hal_prize);
            halprizeID.depth = -10;
            halprizeID.type = 1;
            halprizeID.prize_number = "h2024_24_2";
            halprizeID.hid_alpha = 0.5;
            halprizeID.item_qnt = 3;
            halprizeID.image_xscale = 0.8;
            halprizeID.image_yscale = 0.8;
        }
        if (steam_get_stat_int("h2024_24_3") == 0)
        {
            halprizeID = instance_create(1563, 37, ob_hal_prize);
            halprizeID.depth = 0;
            halprizeID.type = 2;
            halprizeID.prize_number = "h2024_24_3";
            halprizeID.hid_alpha = 0.5;
            halprizeID.item_qnt = 1;
            halprizeID.image_xscale = 0.8;
            halprizeID.image_yscale = 0.8;
        }
        if (steam_get_stat_int("h2024_24_4") == 0)
        {
            halprizeID = instance_create(159, 1043, ob_hal_prize);
            halprizeID.depth = -10;
            halprizeID.type = 0;
            halprizeID.prize_number = "h2024_24_4";
            halprizeID.hid_alpha = 0.5;
            halprizeID.item_qnt = 1;
            halprizeID.image_xscale = 0.8;
            halprizeID.image_yscale = 0.8;
        }
    }
    if (current_day >= 25)
    {
        if (steam_get_stat_int("h2024_25_1") == 0)
        {
            halprizeID = instance_create(286, 100, ob_hal_prize);
            halprizeID.depth = 0;
            halprizeID.type = 1;
            halprizeID.prize_number = "h2024_25_1";
            halprizeID.hid_alpha = 0.5;
            halprizeID.item_qnt = 5;
            halprizeID.image_xscale = 0.8;
            halprizeID.image_yscale = 0.8;
        }
        if (steam_get_stat_int("h2024_25_2") == 0)
        {
            halprizeID = instance_create(180, 79, ob_hal_prize);
            halprizeID.depth = 0;
            halprizeID.type = 0;
            halprizeID.prize_number = "h2024_25_2";
            halprizeID.hid_alpha = 0.5;
            halprizeID.item_qnt = 1;
            halprizeID.image_xscale = 0.8;
            halprizeID.image_yscale = 0.8;
        }
        if (steam_get_stat_int("h2024_25_3") == 0)
        {
            halprizeID = instance_create(1892, 542, ob_hal_prize);
            halprizeID.depth = 0;
            halprizeID.type = 1;
            halprizeID.prize_number = "h2024_25_3";
            halprizeID.hid_alpha = 0.5;
            halprizeID.item_qnt = 5;
            halprizeID.image_xscale = 0.8;
            halprizeID.image_yscale = 0.8;
        }
        if (steam_get_stat_int("h2024_25_4") == 0)
        {
            halprizeID = instance_create(1000, 1080, ob_hal_prize);
            halprizeID.depth = 0;
            halprizeID.type = 0;
            halprizeID.prize_number = "h2024_25_4";
            halprizeID.hid_alpha = 0.5;
            halprizeID.item_qnt = 1;
            halprizeID.image_xscale = 0.8;
            halprizeID.image_yscale = 0.8;
        }
    }
    if (current_day >= 26)
    {
        if (steam_get_stat_int("h2024_26_1") == 0)
        {
            halprizeID = instance_create(17, 723, ob_hal_prize);
            halprizeID.depth = 0;
            halprizeID.type = 2;
            halprizeID.prize_number = "h2024_26_1";
            halprizeID.hid_alpha = 0.5;
            halprizeID.item_qnt = 1;
            halprizeID.image_xscale = 0.8;
            halprizeID.image_yscale = 0.8;
        }
        if (steam_get_stat_int("h2024_26_2") == 0)
        {
            halprizeID = instance_create(1625, 1061, ob_hal_prize);
            halprizeID.depth = 0;
            halprizeID.type = 0;
            halprizeID.prize_number = "h2024_26_2";
            halprizeID.hid_alpha = 0.5;
            halprizeID.item_qnt = 2;
            halprizeID.image_xscale = 0.8;
            halprizeID.image_yscale = 0.8;
        }
        if (steam_get_stat_int("h2024_26_3") == 0)
        {
            halprizeID = instance_create(1613, 183, ob_hal_prize);
            halprizeID.depth = 0;
            halprizeID.type = 0;
            halprizeID.prize_number = "h2024_26_3";
            halprizeID.hid_alpha = 0.5;
            halprizeID.item_qnt = 1;
            halprizeID.image_xscale = 0.8;
            halprizeID.image_yscale = 0.8;
        }
        if (steam_get_stat_int("h2024_26_4") == 0)
        {
            halprizeID = instance_create(509, 20, ob_hal_prize);
            halprizeID.depth = 0;
            halprizeID.type = 1;
            halprizeID.prize_number = "h2024_26_4";
            halprizeID.hid_alpha = 0.5;
            halprizeID.item_qnt = 10;
            halprizeID.image_xscale = 0.8;
            halprizeID.image_yscale = 0.8;
        }
    }
    if (current_day >= 27)
    {
        if (steam_get_stat_int("h2024_27_1") == 0)
        {
            halprizeID = instance_create(1872, 187, ob_hal_prize);
            halprizeID.depth = 0;
            halprizeID.type = 2;
            halprizeID.prize_number = "h2024_27_1";
            halprizeID.hid_alpha = 0.5;
            halprizeID.item_qnt = 1;
            halprizeID.image_xscale = 0.8;
            halprizeID.image_yscale = 0.8;
        }
        if (steam_get_stat_int("h2024_27_2") == 0)
        {
            halprizeID = instance_create(253, 24, ob_hal_prize);
            halprizeID.depth = 0;
            halprizeID.type = 0;
            halprizeID.prize_number = "h2024_27_2";
            halprizeID.hid_alpha = 0.5;
            halprizeID.item_qnt = 2;
            halprizeID.image_xscale = 0.8;
            halprizeID.image_yscale = 0.8;
        }
        if (steam_get_stat_int("h2024_27_3") == 0)
        {
            halprizeID = instance_create(600, 1080, ob_hal_prize);
            halprizeID.depth = -10;
            halprizeID.type = 2;
            halprizeID.prize_number = "h2024_27_3";
            halprizeID.hid_alpha = 0.5;
            halprizeID.item_qnt = 1;
            halprizeID.image_xscale = 0.8;
            halprizeID.image_yscale = 0.8;
        }
        if (steam_get_stat_int("h2024_27_4") == 0)
        {
            halprizeID = instance_create(500, 1000, ob_hal_prize);
            halprizeID.depth = -10;
            halprizeID.type = 0;
            halprizeID.prize_number = "h2024_27_4";
            halprizeID.hid_alpha = 0.5;
            halprizeID.item_qnt = 2;
            halprizeID.image_xscale = 0.8;
            halprizeID.image_yscale = 0.8;
        }
    }
    if (current_day >= 28)
    {
        if (steam_get_stat_int("h2024_28_1") == 0)
        {
            halprizeID = instance_create(365, 154, ob_hal_prize);
            halprizeID.depth = 0;
            halprizeID.type = 0;
            halprizeID.prize_number = "h2024_28_1";
            halprizeID.hid_alpha = 0.5;
            halprizeID.item_qnt = 3;
            halprizeID.image_xscale = 0.8;
            halprizeID.image_yscale = 0.8;
        }
        if (steam_get_stat_int("h2024_28_2") == 0)
        {
            halprizeID = instance_create(288, 937, ob_hal_prize);
            halprizeID.depth = 0;
            halprizeID.type = 1;
            halprizeID.prize_number = "h2024_28_2";
            halprizeID.hid_alpha = 0.5;
            halprizeID.item_qnt = 15;
            halprizeID.image_xscale = 0.8;
            halprizeID.image_yscale = 0.8;
        }
        if (steam_get_stat_int("h2024_28_3") == 0)
        {
            halprizeID = instance_create(0, 845, ob_hal_prize);
            halprizeID.depth = 0;
            halprizeID.type = 1;
            halprizeID.prize_number = "h2024_28_3";
            halprizeID.hid_alpha = 0.5;
            halprizeID.item_qnt = 15;
            halprizeID.image_xscale = 0.8;
            halprizeID.image_yscale = 0.8;
        }
        if (steam_get_stat_int("h2024_28_4") == 0)
        {
            halprizeID = instance_create(943, 237, ob_hal_prize);
            halprizeID.depth = 0;
            halprizeID.type = 0;
            halprizeID.prize_number = "h2024_28_4";
            halprizeID.hid_alpha = 0.5;
            halprizeID.item_qnt = 2;
            halprizeID.image_xscale = 0.8;
            halprizeID.image_yscale = 0.8;
        }
    }
    if (current_day >= 29)
    {
        if (steam_get_stat_int("h2024_29_1") == 0)
        {
            halprizeID = instance_create(737, 1059, ob_hal_prize);
            halprizeID.depth = 0;
            halprizeID.type = 1;
            halprizeID.prize_number = "h2024_29_1";
            halprizeID.hid_alpha = 0.3;
            halprizeID.item_qnt = 15;
            halprizeID.image_xscale = 0.8;
            halprizeID.image_yscale = 0.8;
        }
        if (steam_get_stat_int("h2024_29_2") == 0)
        {
            halprizeID = instance_create(1735, 523, ob_hal_prize);
            halprizeID.depth = 0;
            halprizeID.type = 1;
            halprizeID.prize_number = "h2024_29_2";
            halprizeID.hid_alpha = 0.3;
            halprizeID.item_qnt = 10;
            halprizeID.image_xscale = 0.8;
            halprizeID.image_yscale = 0.8;
        }
        if (steam_get_stat_int("h2024_29_3") == 0)
        {
            halprizeID = instance_create(394, 10, ob_hal_prize);
            halprizeID.depth = 0;
            halprizeID.type = 0;
            halprizeID.prize_number = "h2024_29_3";
            halprizeID.hid_alpha = 0.3;
            halprizeID.item_qnt = 5;
            halprizeID.image_xscale = 0.8;
            halprizeID.image_yscale = 0.8;
        }
        if (steam_get_stat_int("h2024_29_4") == 0)
        {
            halprizeID = instance_create(1681, 1078, ob_hal_prize);
            halprizeID.depth = 0;
            halprizeID.type = 0;
            halprizeID.prize_number = "h2024_29_4";
            halprizeID.hid_alpha = 0.3;
            halprizeID.item_qnt = 3;
            halprizeID.image_xscale = 0.8;
            halprizeID.image_yscale = 0.8;
        }
    }
    if (current_day >= 30)
    {
        if (steam_get_stat_int("h2024_30_1") == 0)
        {
            halprizeID = instance_create(209, 48, ob_hal_prize);
            halprizeID.depth = 0;
            halprizeID.type = 1;
            halprizeID.prize_number = "h2024_30_1";
            halprizeID.hid_alpha = 0.5;
            halprizeID.item_qnt = 15;
            halprizeID.image_xscale = 0.8;
            halprizeID.image_yscale = 0.8;
        }
        if (steam_get_stat_int("h2024_30_2") == 0)
        {
            halprizeID = instance_create(1730, 30, ob_hal_prize);
            halprizeID.depth = 0;
            halprizeID.type = 1;
            halprizeID.prize_number = "h2024_30_2";
            halprizeID.hid_alpha = 0.5;
            halprizeID.item_qnt = 15;
            halprizeID.image_xscale = 0.8;
            halprizeID.image_yscale = 0.8;
        }
        if (steam_get_stat_int("h2024_30_3") == 0)
        {
            halprizeID = instance_create(1880, 611, ob_hal_prize);
            halprizeID.depth = 0;
            halprizeID.type = 0;
            halprizeID.prize_number = "h2024_30_3";
            halprizeID.hid_alpha = 0.5;
            halprizeID.item_qnt = 5;
            halprizeID.image_xscale = 0.8;
            halprizeID.image_yscale = 0.8;
        }
        if (steam_get_stat_int("h2024_30_4") == 0)
        {
            halprizeID = instance_create(1684, 181, ob_hal_prize);
            halprizeID.depth = 0;
            halprizeID.type = 0;
            halprizeID.prize_number = "h2024_30_4";
            halprizeID.hid_alpha = 0.5;
            halprizeID.item_qnt = 5;
            halprizeID.image_xscale = 0.8;
            halprizeID.image_yscale = 0.8;
        }
    }
    if (current_day >= 31)
    {
        if (steam_get_stat_int("h2024_31_1") == 0)
        {
            halprizeID = instance_create(266, 93, ob_hal_prize);
            halprizeID.depth = 0;
            halprizeID.type = 1;
            halprizeID.prize_number = "h2024_31_1";
            halprizeID.hid_alpha = 0.5;
            halprizeID.item_qnt = 20;
            halprizeID.image_xscale = 0.8;
            halprizeID.image_yscale = 0.8;
        }
        if (steam_get_stat_int("h2024_31_2") == 0)
        {
            halprizeID = instance_create(0, 1080, ob_hal_prize);
            halprizeID.depth = -10;
            halprizeID.type = 1;
            halprizeID.prize_number = "h2024_31_2";
            halprizeID.hid_alpha = 0.5;
            halprizeID.item_qnt = 20;
            halprizeID.image_xscale = 0.8;
            halprizeID.image_yscale = 0.8;
        }
        if (steam_get_stat_int("h2024_31_3") == 0)
        {
            halprizeID = instance_create(1920, 300, ob_hal_prize);
            halprizeID.depth = 0;
            halprizeID.type = 0;
            halprizeID.prize_number = "h2024_31_3";
            halprizeID.hid_alpha = 0.5;
            halprizeID.item_qnt = 5;
            halprizeID.image_xscale = 0.8;
            halprizeID.image_yscale = 0.8;
        }
        if (steam_get_stat_int("h2024_31_4") == 0)
        {
            halprizeID = instance_create(1882, 31, ob_hal_prize);
            halprizeID.depth = 0;
            halprizeID.type = 2;
            halprizeID.prize_number = "h2024_31_4";
            halprizeID.hid_alpha = 0.5;
            halprizeID.item_qnt = 1;
            halprizeID.image_xscale = 0.8;
            halprizeID.image_yscale = 0.8;
        }
        if (steam_get_stat_int("h2024_31_5") == 0)
        {
            halprizeID = instance_create(162, 850, ob_hal_prize);
            halprizeID.depth = 0;
            halprizeID.type = 2;
            halprizeID.prize_number = "h2024_31_5";
            halprizeID.hid_alpha = 0.5;
            halprizeID.item_qnt = 1;
            halprizeID.image_xscale = 0.8;
            halprizeID.image_yscale = 0.8;
        }
        if (steam_get_stat_int("h2024_31_6") == 0)
        {
            halprizeID = instance_create(290, 259, ob_hal_prize);
            halprizeID.depth = 0;
            halprizeID.type = 0;
            halprizeID.prize_number = "h2024_31_6";
            halprizeID.hid_alpha = 0.5;
            halprizeID.item_qnt = 5;
            halprizeID.image_xscale = 0.8;
            halprizeID.image_yscale = 0.8;
        }
        if (steam_get_stat_int("h2024_31_7") == 0)
        {
            halprizeID = instance_create(281, 823, ob_hal_prize);
            halprizeID.depth = 0;
            halprizeID.type = 0;
            halprizeID.prize_number = "h2024_31_7";
            halprizeID.hid_alpha = 0.5;
            halprizeID.item_qnt = 5;
            halprizeID.image_xscale = 0.8;
            halprizeID.image_yscale = 0.8;
        }
    }
}
