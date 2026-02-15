puzzle_pack_list = ds_list_create();
if (global.kiosk_items_to_show == 1)
{
    ds_list_add(puzzle_pack_list, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14);
    ds_list_add(puzzle_pack_list, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24);
    ds_list_shuffle(puzzle_pack_list);
}
else if (global.kiosk_items_to_show == 2)
{
    ds_list_add(puzzle_pack_list, 1000, 1, 2, 3, 4, 5, 6, 7, 8, 9);
    ds_list_shuffle(puzzle_pack_list);
}
else if (global.kiosk_items_to_show == 3)
{
    ds_list_add(puzzle_pack_list, 1, 2, 3, 5, 6, 7, 9, 10, 11, 12, 13, 14);
    ds_list_shuffle(puzzle_pack_list);
}
else if (global.kiosk_items_to_show == 4)
{
    ds_list_add(puzzle_pack_list, 1, 2, 3, 4);
    ds_list_shuffle(puzzle_pack_list);
}
else if (global.kiosk_items_to_show == 5)
{
    ds_list_add(puzzle_pack_list, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18);
    ds_list_shuffle(puzzle_pack_list);
}
else if (global.kiosk_items_to_show == 6)
{
    ds_list_add(puzzle_pack_list, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17);
    ds_list_shuffle(puzzle_pack_list);
}
else if (global.kiosk_items_to_show == 7)
{
    ds_list_add(puzzle_pack_list, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14);
    ds_list_add(puzzle_pack_list, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29);
    ds_list_add(puzzle_pack_list, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40);
    ds_list_shuffle(puzzle_pack_list);
}
else if (global.kiosk_items_to_show == 8)
{
    ds_list_add(puzzle_pack_list, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20);
    ds_list_add(puzzle_pack_list, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37);
    ds_list_add(puzzle_pack_list, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54);
    ds_list_add(puzzle_pack_list, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64);
}
else if (global.kiosk_items_to_show == 9)
{
    ds_list_add(puzzle_pack_list, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22);
    ds_list_add(puzzle_pack_list, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43);
    ds_list_add(puzzle_pack_list, 44, 45, 46, 47, 48, 49, 50);
    ds_list_shuffle(puzzle_pack_list);
}
puzzle_packs_remaining = ds_list_size(puzzle_pack_list);
puzzle_packs_remaining -= 1;
puzzle_pack_list_current_number = puzzle_packs_remaining;
global.kiosk_item_1_x = 113;
global.kiosk_item_1_y = 412;
kiosk_button = instance_create(global.kiosk_item_1_x, global.kiosk_item_1_y, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 0;
kiosk_button.button_y_plus_amount = 0;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 213, global.kiosk_item_1_y, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 213;
kiosk_button.button_y_plus_amount = 0;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 426, global.kiosk_item_1_y, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 426;
kiosk_button.button_y_plus_amount = 0;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 639, global.kiosk_item_1_y, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 639;
kiosk_button.button_y_plus_amount = 0;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 852, global.kiosk_item_1_y, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 852;
kiosk_button.button_y_plus_amount = 0;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 1065, global.kiosk_item_1_y, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 1065;
kiosk_button.button_y_plus_amount = 0;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 1278, global.kiosk_item_1_y, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 1278;
kiosk_button.button_y_plus_amount = 0;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x, global.kiosk_item_1_y + 213, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 0;
kiosk_button.button_y_plus_amount = 213;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 213, global.kiosk_item_1_y + 213, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 213;
kiosk_button.button_y_plus_amount = 213;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 426, global.kiosk_item_1_y + 213, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 426;
kiosk_button.button_y_plus_amount = 213;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 639, global.kiosk_item_1_y + 213, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 639;
kiosk_button.button_y_plus_amount = 213;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 852, global.kiosk_item_1_y + 213, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 852;
kiosk_button.button_y_plus_amount = 213;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 1065, global.kiosk_item_1_y + 213, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 1065;
kiosk_button.button_y_plus_amount = 213;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 1278, global.kiosk_item_1_y + 213, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 1278;
kiosk_button.button_y_plus_amount = 213;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x, global.kiosk_item_1_y + 426, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 0;
kiosk_button.button_y_plus_amount = 426;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 213, global.kiosk_item_1_y + 426, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 213;
kiosk_button.button_y_plus_amount = 426;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 426, global.kiosk_item_1_y + 426, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 426;
kiosk_button.button_y_plus_amount = 426;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 639, global.kiosk_item_1_y + 426, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 639;
kiosk_button.button_y_plus_amount = 426;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 852, global.kiosk_item_1_y + 426, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 852;
kiosk_button.button_y_plus_amount = 426;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 1065, global.kiosk_item_1_y + 426, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 1065;
kiosk_button.button_y_plus_amount = 426;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 1278, global.kiosk_item_1_y + 426, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 1278;
kiosk_button.button_y_plus_amount = 426;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x, global.kiosk_item_1_y + 639, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 0;
kiosk_button.button_y_plus_amount = 639;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 213, global.kiosk_item_1_y + 639, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 213;
kiosk_button.button_y_plus_amount = 639;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 426, global.kiosk_item_1_y + 639, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 426;
kiosk_button.button_y_plus_amount = 639;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 639, global.kiosk_item_1_y + 639, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 639;
kiosk_button.button_y_plus_amount = 639;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 852, global.kiosk_item_1_y + 639, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 852;
kiosk_button.button_y_plus_amount = 639;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 1065, global.kiosk_item_1_y + 639, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 1065;
kiosk_button.button_y_plus_amount = 639;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 1278, global.kiosk_item_1_y + 639, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 1278;
kiosk_button.button_y_plus_amount = 639;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x, global.kiosk_item_1_y + 852, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 0;
kiosk_button.button_y_plus_amount = 852;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 213, global.kiosk_item_1_y + 852, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 213;
kiosk_button.button_y_plus_amount = 852;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 426, global.kiosk_item_1_y + 852, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 426;
kiosk_button.button_y_plus_amount = 852;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 639, global.kiosk_item_1_y + 852, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 639;
kiosk_button.button_y_plus_amount = 852;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 852, global.kiosk_item_1_y + 852, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 852;
kiosk_button.button_y_plus_amount = 852;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 1065, global.kiosk_item_1_y + 852, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 1065;
kiosk_button.button_y_plus_amount = 852;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 1278, global.kiosk_item_1_y + 852, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 1278;
kiosk_button.button_y_plus_amount = 852;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x, global.kiosk_item_1_y + 1065, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 0;
kiosk_button.button_y_plus_amount = 1065;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 213, global.kiosk_item_1_y + 1065, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 213;
kiosk_button.button_y_plus_amount = 1065;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 426, global.kiosk_item_1_y + 1065, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 426;
kiosk_button.button_y_plus_amount = 1065;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 639, global.kiosk_item_1_y + 1065, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 639;
kiosk_button.button_y_plus_amount = 1065;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 852, global.kiosk_item_1_y + 1065, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 852;
kiosk_button.button_y_plus_amount = 1065;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 1065, global.kiosk_item_1_y + 1065, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 1065;
kiosk_button.button_y_plus_amount = 1065;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 1278, global.kiosk_item_1_y + 1065, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 1278;
kiosk_button.button_y_plus_amount = 1065;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x, global.kiosk_item_1_y + 1278, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 0;
kiosk_button.button_y_plus_amount = 1278;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 213, global.kiosk_item_1_y + 1278, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 213;
kiosk_button.button_y_plus_amount = 1278;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 426, global.kiosk_item_1_y + 1278, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 426;
kiosk_button.button_y_plus_amount = 1278;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 639, global.kiosk_item_1_y + 1278, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 639;
kiosk_button.button_y_plus_amount = 1278;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 852, global.kiosk_item_1_y + 1278, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 852;
kiosk_button.button_y_plus_amount = 1278;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 1065, global.kiosk_item_1_y + 1278, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 1065;
kiosk_button.button_y_plus_amount = 1278;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 1278, global.kiosk_item_1_y + 1278, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 1278;
kiosk_button.button_y_plus_amount = 1278;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x, global.kiosk_item_1_y + 1491, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 0;
kiosk_button.button_y_plus_amount = 1491;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 213, global.kiosk_item_1_y + 1491, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 213;
kiosk_button.button_y_plus_amount = 1491;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 426, global.kiosk_item_1_y + 1491, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 426;
kiosk_button.button_y_plus_amount = 1491;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 639, global.kiosk_item_1_y + 1491, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 639;
kiosk_button.button_y_plus_amount = 1491;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 852, global.kiosk_item_1_y + 1491, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 852;
kiosk_button.button_y_plus_amount = 1491;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 1065, global.kiosk_item_1_y + 1491, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 1065;
kiosk_button.button_y_plus_amount = 1491;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 1278, global.kiosk_item_1_y + 1491, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 1278;
kiosk_button.button_y_plus_amount = 1491;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x, global.kiosk_item_1_y + 1704, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 0;
kiosk_button.button_y_plus_amount = 1704;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 213, global.kiosk_item_1_y + 1704, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 213;
kiosk_button.button_y_plus_amount = 1704;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 426, global.kiosk_item_1_y + 1704, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 426;
kiosk_button.button_y_plus_amount = 1704;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 639, global.kiosk_item_1_y + 1704, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 639;
kiosk_button.button_y_plus_amount = 1704;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 852, global.kiosk_item_1_y + 1704, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 852;
kiosk_button.button_y_plus_amount = 1704;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 1065, global.kiosk_item_1_y + 1704, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 1065;
kiosk_button.button_y_plus_amount = 1704;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 1278, global.kiosk_item_1_y + 1704, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 1278;
kiosk_button.button_y_plus_amount = 1704;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x, global.kiosk_item_1_y + 1917, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 0;
kiosk_button.button_y_plus_amount = 1917;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 213, global.kiosk_item_1_y + 1917, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 213;
kiosk_button.button_y_plus_amount = 1917;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 426, global.kiosk_item_1_y + 1917, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 426;
kiosk_button.button_y_plus_amount = 1917;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 639, global.kiosk_item_1_y + 1917, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 639;
kiosk_button.button_y_plus_amount = 1917;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 852, global.kiosk_item_1_y + 1917, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 852;
kiosk_button.button_y_plus_amount = 1917;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 1065, global.kiosk_item_1_y + 1917, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 1065;
kiosk_button.button_y_plus_amount = 1917;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 1278, global.kiosk_item_1_y + 1917, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 1278;
kiosk_button.button_y_plus_amount = 1917;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x, global.kiosk_item_1_y + 2130, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 0;
kiosk_button.button_y_plus_amount = 2130;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 213, global.kiosk_item_1_y + 2130, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 213;
kiosk_button.button_y_plus_amount = 2130;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 426, global.kiosk_item_1_y + 2130, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 426;
kiosk_button.button_y_plus_amount = 2130;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 639, global.kiosk_item_1_y + 2130, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 639;
kiosk_button.button_y_plus_amount = 2130;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 852, global.kiosk_item_1_y + 2130, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 852;
kiosk_button.button_y_plus_amount = 2130;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 1065, global.kiosk_item_1_y + 2130, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 1065;
kiosk_button.button_y_plus_amount = 2130;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 1278, global.kiosk_item_1_y + 2130, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 1278;
kiosk_button.button_y_plus_amount = 2130;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x, global.kiosk_item_1_y + 2343, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 0;
kiosk_button.button_y_plus_amount = 2343;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 213, global.kiosk_item_1_y + 2343, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 213;
kiosk_button.button_y_plus_amount = 2343;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 426, global.kiosk_item_1_y + 2343, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 426;
kiosk_button.button_y_plus_amount = 2343;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 639, global.kiosk_item_1_y + 2343, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 639;
kiosk_button.button_y_plus_amount = 2343;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 852, global.kiosk_item_1_y + 2343, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 852;
kiosk_button.button_y_plus_amount = 2343;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 1065, global.kiosk_item_1_y + 2343, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 1065;
kiosk_button.button_y_plus_amount = 2343;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
kiosk_button = instance_create(global.kiosk_item_1_x + 1278, global.kiosk_item_1_y + 2343, ob_kiosk_item_buttons);
kiosk_button.button_x_plus_amount = 1278;
kiosk_button.button_y_plus_amount = 2343;
if (puzzle_pack_list_current_number > -1)
{
    kiosk_button.kiosk_item_number = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    kiosk_button.kiosk_item_number = 0;
}
