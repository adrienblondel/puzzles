alarm[0] = 3;
if (news_pause_slideshow == 0)
{
    if (news_pip_x < news_pip_x_max)
    {
        news_pip_x += 1;
    }
    else
    {
        news_page_alpha = 0;
        news_pip_x = 160;
        if (news_pages < news_pages_total)
        {
            news_pages += 1;
        }
        else
        {
            news_pages = 0;
        }
    }
}
if (current_menu_page == 11)
{
    if (exit_door_animation < 5)
    {
        exit_door_animation += 0.5;
    }
    else
    {
        exit_door_animation = 0;
    }
}
if (current_menu_page == 6)
{
    if (kiosk_but_1_scale > 1)
    {
        if (kiosk_but_1_ani < 4)
        {
            kiosk_but_1_ani += 0.5;
        }
        else
        {
            kiosk_but_1_ani = 0;
        }
    }
    else
    {
        kiosk_but_1_ani = 0;
    }
    if (kiosk_but_2_scale > 1)
    {
        if (kiosk_but_2_ani < 4)
        {
            kiosk_but_2_ani += 0.5;
        }
        else
        {
            kiosk_but_2_ani = 0;
        }
    }
    else
    {
        kiosk_but_2_ani = 0;
    }
    if (kiosk_but_3_scale > 1)
    {
        if (kiosk_but_3_ani < 4)
        {
            kiosk_but_3_ani += 0.5;
        }
        else
        {
            kiosk_but_3_ani = 0;
        }
    }
    else
    {
        kiosk_but_3_ani = 0;
    }
    if (kiosk_but_4_scale > 1)
    {
        if (kiosk_but_4_ani < 4)
        {
            kiosk_but_4_ani += 0.5;
        }
        else
        {
            kiosk_but_4_ani = 0;
        }
    }
    else
    {
        kiosk_but_4_ani = 0;
    }
}
if (global.menu_return_to == 3)
{
    if (current_menu_page == 3)
    {
        if (can_fix_chal_next_error == 1)
        {
            kiosk_current_page = 0;
            kiosk_total_pages = fncbwr;
            can_fix_chal_next_error = 0;
        }
    }
}
if (global.menu_seasonal_decor == 2)
{
    instance_create(-1 + random(1920), -5, ob_menu_xmas_snow);
    instance_create(-1 + random(1920), -5, ob_menu_xmas_snow);
}
if (global.menu_seasonal_decor == 1)
{
    var num_choose_leave = choose(0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    if (num_choose_leave == 1)
    {
        instance_create(0 + random(1920), 0, ob_menu_new_seasonal_fall_leaves);
    }
}
if (current_menu_page == 0)
{
    if (type_of_special_page == 1)
    {
        instance_create(986 + random(70), 537 + random(5), ob_nm_hal_bag_spark);
        instance_create(986 + random(70), 537 + random(5), ob_nm_hal_bag_spark);
        instance_create(986 + random(70), 537 + random(5), ob_nm_hal_bag_spark);
        instance_create(986 + random(70), 537 + random(5), ob_nm_hal_bag_spark);
        if (special_hal_bag_xscale_change == 1)
        {
            if (special_hal_bag_xscale < 1.01)
            {
                special_hal_bag_xscale += 0.007;
            }
            else
            {
                special_hal_bag_xscale_change = 0;
            }
        }
        else if (special_hal_bag_xscale > 0.98)
        {
            special_hal_bag_xscale -= 0.006;
        }
        else
        {
            special_hal_bag_xscale_change = 1;
        }
        if (special_hal_bag_yscale_change == 1)
        {
            if (special_hal_bag_yscale < 1.01)
            {
                special_hal_bag_yscale += 0.006;
            }
            else
            {
                special_hal_bag_yscale_change = 0;
            }
        }
        else if (special_hal_bag_yscale > 0.98)
        {
            special_hal_bag_yscale -= 0.005;
        }
        else
        {
            special_hal_bag_yscale_change = 1;
        }
    }
}
