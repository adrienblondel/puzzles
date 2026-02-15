kiosk_info_is_showing = 0;
if (steam_stats_ready())
{
    if (!steam_get_achievement("openkiosk3"))
    {
        kiosk_info_is_showing = 1;
        global.a_menu_overlay_is_showing = 1;
    }
}
alarm[2] = 1;
kiosk_first_launch_info_a = "0";
kiosk_first_launch_info_b = "0";
kiosk_first_launch_info_c = "0";
kiosk_first_launch_info_d = "0";
purchase_kiosk_category_number = 0;
purchase_kiosk_item_number = 0;
purchase_gold_price = 0;
global.kiosk_items_to_show = 0;
puzzle_pack_list = ds_list_create();
ds_list_add(puzzle_pack_list, 6, 7, 1, 2, 4, 8, 5, 3, 9);
puzzle_packs_remaining = ds_list_size(puzzle_pack_list);
puzzle_packs_remaining -= 1;
puzzle_pack_list_current_number = puzzle_packs_remaining;
global.kiosk_button_1_x = 132;
global.kiosk_button_1_y = 389;
kiosk_button = instance_create(global.kiosk_button_1_x, global.kiosk_button_1_y + 248, ob_kiosk_category_buttons);
kiosk_button.button_x_plus_amount = 0;
kiosk_button.button_y_plus_amount = 248;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_category = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_category = 0;
}
kiosk_button = instance_create(global.kiosk_button_1_x + 248, global.kiosk_button_1_y + 248, ob_kiosk_category_buttons);
kiosk_button.button_x_plus_amount = 248;
kiosk_button.button_y_plus_amount = 248;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_category = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_category = 0;
}
kiosk_button = instance_create(global.kiosk_button_1_x + 496, global.kiosk_button_1_y + 248, ob_kiosk_category_buttons);
kiosk_button.button_x_plus_amount = 496;
kiosk_button.button_y_plus_amount = 248;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_category = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_category = 0;
}
kiosk_button = instance_create(global.kiosk_button_1_x + 744, global.kiosk_button_1_y + 248, ob_kiosk_category_buttons);
kiosk_button.button_x_plus_amount = 744;
kiosk_button.button_y_plus_amount = 248;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_category = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_category = 0;
}
kiosk_button = instance_create(global.kiosk_button_1_x + 992, global.kiosk_button_1_y + 248, ob_kiosk_category_buttons);
kiosk_button.button_x_plus_amount = 992;
kiosk_button.button_y_plus_amount = 248;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_category = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_category = 0;
}
kiosk_button = instance_create(global.kiosk_button_1_x + 1240, global.kiosk_button_1_y + 248, ob_kiosk_category_buttons);
kiosk_button.button_x_plus_amount = 1240;
kiosk_button.button_y_plus_amount = 248;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_category = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_category = 0;
}
kiosk_button = instance_create(global.kiosk_button_1_x, global.kiosk_button_1_y + 496, ob_kiosk_category_buttons);
kiosk_button.button_x_plus_amount = 0;
kiosk_button.button_y_plus_amount = 496;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_category = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_category = 0;
}
kiosk_button = instance_create(global.kiosk_button_1_x + 248, global.kiosk_button_1_y + 496, ob_kiosk_category_buttons);
kiosk_button.button_x_plus_amount = 248;
kiosk_button.button_y_plus_amount = 496;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_category = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_category = 0;
}
kiosk_button = instance_create(global.kiosk_button_1_x + 496, global.kiosk_button_1_y + 496, ob_kiosk_category_buttons);
kiosk_button.button_x_plus_amount = 496;
kiosk_button.button_y_plus_amount = 496;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_category = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_category = 0;
}
kiosk_button = instance_create(global.kiosk_button_1_x + 744, global.kiosk_button_1_y + 496, ob_kiosk_category_buttons);
kiosk_button.button_x_plus_amount = 744;
kiosk_button.button_y_plus_amount = 496;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_category = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_category = 0;
}
kiosk_button = instance_create(global.kiosk_button_1_x + 992, global.kiosk_button_1_y + 496, ob_kiosk_category_buttons);
kiosk_button.button_x_plus_amount = 992;
kiosk_button.button_y_plus_amount = 496;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_category = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_category = 0;
}
kiosk_button = instance_create(global.kiosk_button_1_x + 1240, global.kiosk_button_1_y + 496, ob_kiosk_category_buttons);
kiosk_button.button_x_plus_amount = 1240;
kiosk_button.button_y_plus_amount = 496;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_category = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_category = 0;
}
kiosk_button = instance_create(global.kiosk_button_1_x, global.kiosk_button_1_y + 744, ob_kiosk_category_buttons);
kiosk_button.button_x_plus_amount = 0;
kiosk_button.button_y_plus_amount = 744;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_category = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_category = 0;
}
kiosk_button = instance_create(global.kiosk_button_1_x + 248, global.kiosk_button_1_y + 744, ob_kiosk_category_buttons);
kiosk_button.button_x_plus_amount = 248;
kiosk_button.button_y_plus_amount = 744;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_category = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_category = 0;
}
kiosk_button = instance_create(global.kiosk_button_1_x + 496, global.kiosk_button_1_y + 744, ob_kiosk_category_buttons);
kiosk_button.button_x_plus_amount = 496;
kiosk_button.button_y_plus_amount = 744;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_category = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_category = 0;
}
kiosk_button = instance_create(global.kiosk_button_1_x + 744, global.kiosk_button_1_y + 744, ob_kiosk_category_buttons);
kiosk_button.button_x_plus_amount = 744;
kiosk_button.button_y_plus_amount = 744;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_category = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_category = 0;
}
kiosk_button = instance_create(global.kiosk_button_1_x + 992, global.kiosk_button_1_y + 744, ob_kiosk_category_buttons);
kiosk_button.button_x_plus_amount = 992;
kiosk_button.button_y_plus_amount = 744;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_category = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_category = 0;
}
kiosk_button = instance_create(global.kiosk_button_1_x + 1240, global.kiosk_button_1_y + 744, ob_kiosk_category_buttons);
kiosk_button.button_x_plus_amount = 1240;
kiosk_button.button_y_plus_amount = 744;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_category = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_category = 0;
}
