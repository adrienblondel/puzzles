puz_select_pack_info_backing_colour_2 = make_colour_rgb(0 + random(255), 0 + random(255), 0 + random(255));
puzzle_pack_list = ds_list_create();
ds_list_add(puzzle_pack_list, 4, 3, 2, 1);
puzzle_packs_remaining = ds_list_size(puzzle_pack_list);
puzzle_packs_remaining -= 1;
puzzle_pack_list_current_number = puzzle_packs_remaining;
global.unique_1_x = 140;
global.unique_1_y = 412;
unique_button = instance_create(global.unique_1_x, global.unique_1_y, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 0;
unique_button.button_y_plus_amount = 0;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 220, global.unique_1_y, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 220;
unique_button.button_y_plus_amount = 0;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 440, global.unique_1_y, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 440;
unique_button.button_y_plus_amount = 0;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 660, global.unique_1_y, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 660;
unique_button.button_y_plus_amount = 0;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 880, global.unique_1_y, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 880;
unique_button.button_y_plus_amount = 0;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 1100, global.unique_1_y, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 1100;
unique_button.button_y_plus_amount = 0;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x, global.unique_1_y + 220, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 0;
unique_button.button_y_plus_amount = 220;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 220, global.unique_1_y + 220, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 220;
unique_button.button_y_plus_amount = 220;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 440, global.unique_1_y + 220, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 440;
unique_button.button_y_plus_amount = 220;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 660, global.unique_1_y + 220, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 660;
unique_button.button_y_plus_amount = 220;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 880, global.unique_1_y + 220, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 880;
unique_button.button_y_plus_amount = 220;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 1100, global.unique_1_y + 220, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 1100;
unique_button.button_y_plus_amount = 220;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x, global.unique_1_y + 440, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 0;
unique_button.button_y_plus_amount = 440;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 220, global.unique_1_y + 440, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 220;
unique_button.button_y_plus_amount = 440;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 440, global.unique_1_y + 440, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 440;
unique_button.button_y_plus_amount = 440;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 660, global.unique_1_y + 440, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 660;
unique_button.button_y_plus_amount = 440;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 880, global.unique_1_y + 440, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 880;
unique_button.button_y_plus_amount = 440;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 1100, global.unique_1_y + 440, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 1100;
unique_button.button_y_plus_amount = 440;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x, global.unique_1_y + 660, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 0;
unique_button.button_y_plus_amount = 660;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 220, global.unique_1_y + 660, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 220;
unique_button.button_y_plus_amount = 660;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 440, global.unique_1_y + 660, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 440;
unique_button.button_y_plus_amount = 660;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 660, global.unique_1_y + 660, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 660;
unique_button.button_y_plus_amount = 660;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 880, global.unique_1_y + 660, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 880;
unique_button.button_y_plus_amount = 660;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 1100, global.unique_1_y + 660, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 1100;
unique_button.button_y_plus_amount = 660;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x, global.unique_1_y + 880, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 0;
unique_button.button_y_plus_amount = 880;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 220, global.unique_1_y + 880, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 220;
unique_button.button_y_plus_amount = 880;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 440, global.unique_1_y + 880, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 440;
unique_button.button_y_plus_amount = 880;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 660, global.unique_1_y + 880, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 660;
unique_button.button_y_plus_amount = 880;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 880, global.unique_1_y + 880, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 880;
unique_button.button_y_plus_amount = 880;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 1100, global.unique_1_y + 880, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 1100;
unique_button.button_y_plus_amount = 880;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x, global.unique_1_y + 1100, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 0;
unique_button.button_y_plus_amount = 1100;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 220, global.unique_1_y + 1100, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 220;
unique_button.button_y_plus_amount = 1100;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 440, global.unique_1_y + 1100, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 440;
unique_button.button_y_plus_amount = 1100;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 660, global.unique_1_y + 1100, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 660;
unique_button.button_y_plus_amount = 1100;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 880, global.unique_1_y + 1100, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 880;
unique_button.button_y_plus_amount = 1100;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 1100, global.unique_1_y + 1100, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 1100;
unique_button.button_y_plus_amount = 1100;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x, global.unique_1_y + 1320, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 0;
unique_button.button_y_plus_amount = 1320;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 220, global.unique_1_y + 1320, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 220;
unique_button.button_y_plus_amount = 1320;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 440, global.unique_1_y + 1320, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 440;
unique_button.button_y_plus_amount = 1320;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 660, global.unique_1_y + 1320, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 660;
unique_button.button_y_plus_amount = 1320;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 880, global.unique_1_y + 1320, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 880;
unique_button.button_y_plus_amount = 1320;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 1100, global.unique_1_y + 1320, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 1100;
unique_button.button_y_plus_amount = 1320;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x, global.unique_1_y + 1540, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 0;
unique_button.button_y_plus_amount = 1540;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 220, global.unique_1_y + 1540, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 220;
unique_button.button_y_plus_amount = 1540;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 440, global.unique_1_y + 1540, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 440;
unique_button.button_y_plus_amount = 1540;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 660, global.unique_1_y + 1540, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 660;
unique_button.button_y_plus_amount = 1540;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 880, global.unique_1_y + 1540, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 880;
unique_button.button_y_plus_amount = 1540;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 1100, global.unique_1_y + 1540, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 1100;
unique_button.button_y_plus_amount = 1540;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x, global.unique_1_y + 1760, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 0;
unique_button.button_y_plus_amount = 1760;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 220, global.unique_1_y + 1760, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 220;
unique_button.button_y_plus_amount = 1760;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 440, global.unique_1_y + 1760, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 440;
unique_button.button_y_plus_amount = 1760;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 660, global.unique_1_y + 1760, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 660;
unique_button.button_y_plus_amount = 1760;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 880, global.unique_1_y + 1760, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 880;
unique_button.button_y_plus_amount = 1760;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 1100, global.unique_1_y + 1760, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 1100;
unique_button.button_y_plus_amount = 1760;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x, global.unique_1_y + 1980, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 0;
unique_button.button_y_plus_amount = 1980;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 220, global.unique_1_y + 1980, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 220;
unique_button.button_y_plus_amount = 1980;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 440, global.unique_1_y + 1980, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 440;
unique_button.button_y_plus_amount = 1980;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 660, global.unique_1_y + 1980, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 660;
unique_button.button_y_plus_amount = 1980;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 880, global.unique_1_y + 1980, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 880;
unique_button.button_y_plus_amount = 1980;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 1100, global.unique_1_y + 1980, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 1100;
unique_button.button_y_plus_amount = 1980;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x, global.unique_1_y + 2200, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 0;
unique_button.button_y_plus_amount = 2200;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 220, global.unique_1_y + 2200, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 220;
unique_button.button_y_plus_amount = 2200;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 440, global.unique_1_y + 2200, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 440;
unique_button.button_y_plus_amount = 2200;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 660, global.unique_1_y + 2200, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 660;
unique_button.button_y_plus_amount = 2200;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 880, global.unique_1_y + 2200, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 880;
unique_button.button_y_plus_amount = 2200;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 1100, global.unique_1_y + 2200, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 1100;
unique_button.button_y_plus_amount = 2200;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x, global.unique_1_y + 2420, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 0;
unique_button.button_y_plus_amount = 2420;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 220, global.unique_1_y + 2420, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 220;
unique_button.button_y_plus_amount = 2420;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 440, global.unique_1_y + 2420, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 440;
unique_button.button_y_plus_amount = 2420;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 660, global.unique_1_y + 2420, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 660;
unique_button.button_y_plus_amount = 2420;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 880, global.unique_1_y + 2420, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 880;
unique_button.button_y_plus_amount = 2420;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 1100, global.unique_1_y + 2420, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 1100;
unique_button.button_y_plus_amount = 2420;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x, global.unique_1_y + 2640, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 0;
unique_button.button_y_plus_amount = 2640;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 220, global.unique_1_y + 2640, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 220;
unique_button.button_y_plus_amount = 2640;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 440, global.unique_1_y + 2640, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 440;
unique_button.button_y_plus_amount = 2640;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 660, global.unique_1_y + 2640, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 660;
unique_button.button_y_plus_amount = 2640;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 880, global.unique_1_y + 2640, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 880;
unique_button.button_y_plus_amount = 2640;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 1100, global.unique_1_y + 2640, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 1100;
unique_button.button_y_plus_amount = 2640;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x, global.unique_1_y + 2860, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 0;
unique_button.button_y_plus_amount = 2860;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 220, global.unique_1_y + 2860, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 220;
unique_button.button_y_plus_amount = 2860;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 440, global.unique_1_y + 2860, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 440;
unique_button.button_y_plus_amount = 2860;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 660, global.unique_1_y + 2860, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 660;
unique_button.button_y_plus_amount = 2860;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 880, global.unique_1_y + 2860, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 880;
unique_button.button_y_plus_amount = 2860;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 1100, global.unique_1_y + 2860, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 1100;
unique_button.button_y_plus_amount = 2860;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x, global.unique_1_y + 3080, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 0;
unique_button.button_y_plus_amount = 3080;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 220, global.unique_1_y + 3080, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 220;
unique_button.button_y_plus_amount = 3080;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 440, global.unique_1_y + 3080, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 440;
unique_button.button_y_plus_amount = 3080;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 660, global.unique_1_y + 3080, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 660;
unique_button.button_y_plus_amount = 3080;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 880, global.unique_1_y + 3080, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 880;
unique_button.button_y_plus_amount = 3080;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 1100, global.unique_1_y + 3080, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 1100;
unique_button.button_y_plus_amount = 3080;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x, global.unique_1_y + 3300, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 0;
unique_button.button_y_plus_amount = 3300;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 220, global.unique_1_y + 3300, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 220;
unique_button.button_y_plus_amount = 3300;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 440, global.unique_1_y + 3300, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 440;
unique_button.button_y_plus_amount = 3300;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 660, global.unique_1_y + 3300, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 660;
unique_button.button_y_plus_amount = 3300;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 880, global.unique_1_y + 3300, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 880;
unique_button.button_y_plus_amount = 3300;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 1100, global.unique_1_y + 3300, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 1100;
unique_button.button_y_plus_amount = 3300;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x, global.unique_1_y + 3520, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 0;
unique_button.button_y_plus_amount = 3520;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 220, global.unique_1_y + 3520, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 220;
unique_button.button_y_plus_amount = 3520;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 440, global.unique_1_y + 3520, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 440;
unique_button.button_y_plus_amount = 3520;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 660, global.unique_1_y + 3520, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 660;
unique_button.button_y_plus_amount = 3520;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 880, global.unique_1_y + 3520, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 880;
unique_button.button_y_plus_amount = 3520;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 1100, global.unique_1_y + 3520, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 1100;
unique_button.button_y_plus_amount = 3520;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x, global.unique_1_y + 3740, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 0;
unique_button.button_y_plus_amount = 3740;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 220, global.unique_1_y + 3740, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 220;
unique_button.button_y_plus_amount = 3740;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 440, global.unique_1_y + 3740, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 440;
unique_button.button_y_plus_amount = 3740;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 660, global.unique_1_y + 3740, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 660;
unique_button.button_y_plus_amount = 3740;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 880, global.unique_1_y + 3740, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 880;
unique_button.button_y_plus_amount = 3740;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 1100, global.unique_1_y + 3740, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 1100;
unique_button.button_y_plus_amount = 3740;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x, global.unique_1_y + 3960, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 0;
unique_button.button_y_plus_amount = 3960;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 220, global.unique_1_y + 3960, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 220;
unique_button.button_y_plus_amount = 3960;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 440, global.unique_1_y + 3960, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 440;
unique_button.button_y_plus_amount = 3960;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 660, global.unique_1_y + 3960, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 660;
unique_button.button_y_plus_amount = 3960;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 880, global.unique_1_y + 3960, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 880;
unique_button.button_y_plus_amount = 3960;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
unique_button = instance_create(global.unique_1_x + 1100, global.unique_1_y + 3960, ob_uniques_category_buttons);
unique_button.button_x_plus_amount = 1100;
unique_button.button_y_plus_amount = 3960;
if (puzzle_pack_list_current_number > -1)
{
    unique_button.unique_category_button = ds_list_find_value(puzzle_pack_list, puzzle_pack_list_current_number);
    puzzle_pack_list_current_number -= 1;
}
else
{
    unique_button.unique_category_button = 0;
}
