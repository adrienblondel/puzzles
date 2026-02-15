puzzle_list = ds_list_create();
if (global.current_pack_open_number_of_puzzles == 1)
{
    ds_list_add(puzzle_list, 1);
}
if (global.current_pack_open_number_of_puzzles == 2)
{
    ds_list_add(puzzle_list, 1, 2);
}
if (global.current_pack_open_number_of_puzzles == 3)
{
    ds_list_add(puzzle_list, 1, 2, 3);
}
if (global.current_pack_open_number_of_puzzles == 4)
{
    ds_list_add(puzzle_list, 1, 2, 3, 4);
}
if (global.current_pack_open_number_of_puzzles == 5)
{
    ds_list_add(puzzle_list, 1, 2, 3, 4, 5);
}
if (global.current_pack_open_number_of_puzzles == 6)
{
    ds_list_add(puzzle_list, 1, 2, 3, 4, 5, 6);
}
if (global.current_pack_open_number_of_puzzles == 7)
{
    ds_list_add(puzzle_list, 1, 2, 3, 4, 5, 6, 7);
}
if (global.current_pack_open_number_of_puzzles == 8)
{
    ds_list_add(puzzle_list, 1, 2, 3, 4, 5, 6, 7, 8);
}
if (global.current_pack_open_number_of_puzzles == 9)
{
    ds_list_add(puzzle_list, 1, 2, 3, 4, 5, 6, 7, 8, 9);
}
if (global.current_pack_open_number_of_puzzles == 10)
{
    ds_list_add(puzzle_list, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10);
}
if (global.current_pack_open_number_of_puzzles == 11)
{
    ds_list_add(puzzle_list, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11);
}
if (global.current_pack_open_number_of_puzzles == 12)
{
    ds_list_add(puzzle_list, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12);
}
if (global.current_pack_open_number_of_puzzles == 13)
{
    ds_list_add(puzzle_list, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13);
}
if (global.current_pack_open_number_of_puzzles == 14)
{
    ds_list_add(puzzle_list, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14);
}
if (global.current_pack_open_number_of_puzzles == 15)
{
    ds_list_add(puzzle_list, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15);
}
if (global.current_pack_open_number_of_puzzles == 16)
{
    ds_list_add(puzzle_list, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15);
    ds_list_add(puzzle_list, 16);
}
if (global.current_pack_open_number_of_puzzles == 17)
{
    ds_list_add(puzzle_list, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15);
    ds_list_add(puzzle_list, 16, 17);
}
if (global.current_pack_open_number_of_puzzles == 18)
{
    ds_list_add(puzzle_list, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15);
    ds_list_add(puzzle_list, 16, 17, 18);
}
if (global.current_pack_open_number_of_puzzles == 19)
{
    ds_list_add(puzzle_list, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15);
    ds_list_add(puzzle_list, 16, 17, 18, 19);
}
if (global.current_pack_open_number_of_puzzles == 20)
{
    ds_list_add(puzzle_list, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15);
    ds_list_add(puzzle_list, 16, 17, 18, 19, 20);
}
if (global.current_pack_open_number_of_puzzles == 21)
{
    ds_list_add(puzzle_list, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15);
    ds_list_add(puzzle_list, 16, 17, 18, 19, 20, 21);
}
if (global.current_pack_open_number_of_puzzles == 22)
{
    ds_list_add(puzzle_list, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15);
    ds_list_add(puzzle_list, 16, 17, 18, 19, 20, 21, 22);
}
if (global.current_pack_open_number_of_puzzles == 23)
{
    ds_list_add(puzzle_list, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15);
    ds_list_add(puzzle_list, 16, 17, 18, 19, 20, 21, 22, 23);
}
if (global.current_pack_open_number_of_puzzles == 24)
{
    ds_list_add(puzzle_list, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15);
    ds_list_add(puzzle_list, 16, 17, 18, 19, 20, 21, 22, 23, 24);
}
if (global.current_pack_open_number_of_puzzles == 25)
{
    ds_list_add(puzzle_list, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15);
    ds_list_add(puzzle_list, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25);
}
ds_list_shuffle(puzzle_list);
puzzles_remaining = ds_list_size(puzzle_list);
puzzles_remaining -= 1;
puzzle_list_current_number = puzzles_remaining;
ds_list_shuffle(puzzle_list);
global.puzzle_button_1_x = 510;
global.puzzle_button_1_y = 400;
puzzle_number_button_1 = instance_create(global.puzzle_button_1_x, global.puzzle_button_1_y, ob_puzzle_button);
puzzle_number_button_1.puzzle_button_number = 1;
puzzle_number_button_1.button_x_plus_amount = 0;
puzzle_number_button_1.button_y_plus_amount = 0;
puzzle_number_button_1.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_list_current_number > -1)
{
    puzzle_number_button_1.puzzle_number = ds_list_find_value(puzzle_list, puzzle_list_current_number);
    puzzle_number_button_1.colour_set_to_use = global.current_pack_open_colour_set;
    puzzle_list_current_number -= 1;
}
else
{
    puzzle_number_button_1.puzzle_number = 0;
    puzzle_number_button_1.colour_set_to_use = global.current_pack_open_dead_colour_set;
}
puzzle_number_button_2 = instance_create(global.puzzle_button_1_x + 187, global.puzzle_button_1_y, ob_puzzle_button);
puzzle_number_button_2.puzzle_button_number = 2;
puzzle_number_button_2.button_x_plus_amount = 187;
puzzle_number_button_2.button_y_plus_amount = 0;
puzzle_number_button_2.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_list_current_number > -1)
{
    puzzle_number_button_2.puzzle_number = ds_list_find_value(puzzle_list, puzzle_list_current_number);
    puzzle_number_button_2.colour_set_to_use = global.current_pack_open_colour_set;
    puzzle_list_current_number -= 1;
}
else
{
    puzzle_number_button_2.puzzle_number = 0;
    puzzle_number_button_2.colour_set_to_use = global.current_pack_open_dead_colour_set;
}
puzzle_number_button_3 = instance_create(global.puzzle_button_1_x + 374, global.puzzle_button_1_y, ob_puzzle_button);
puzzle_number_button_3.puzzle_button_number = 3;
puzzle_number_button_3.button_x_plus_amount = 374;
puzzle_number_button_3.button_y_plus_amount = 0;
puzzle_number_button_3.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_list_current_number > -1)
{
    puzzle_number_button_3.puzzle_number = ds_list_find_value(puzzle_list, puzzle_list_current_number);
    puzzle_number_button_3.colour_set_to_use = global.current_pack_open_colour_set;
    puzzle_list_current_number -= 1;
}
else
{
    puzzle_number_button_3.puzzle_number = 0;
    puzzle_number_button_3.colour_set_to_use = global.current_pack_open_dead_colour_set;
}
puzzle_number_button_4 = instance_create(global.puzzle_button_1_x + 561, global.puzzle_button_1_y, ob_puzzle_button);
puzzle_number_button_4.puzzle_button_number = 4;
puzzle_number_button_4.button_x_plus_amount = 561;
puzzle_number_button_4.button_y_plus_amount = 0;
puzzle_number_button_4.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_list_current_number > -1)
{
    puzzle_number_button_4.puzzle_number = ds_list_find_value(puzzle_list, puzzle_list_current_number);
    puzzle_number_button_4.colour_set_to_use = global.current_pack_open_colour_set;
    puzzle_list_current_number -= 1;
}
else
{
    puzzle_number_button_4.puzzle_number = 0;
    puzzle_number_button_4.colour_set_to_use = global.current_pack_open_dead_colour_set;
}
puzzle_number_button_5 = instance_create(global.puzzle_button_1_x + 748, global.puzzle_button_1_y, ob_puzzle_button);
puzzle_number_button_5.puzzle_button_number = 5;
puzzle_number_button_5.button_x_plus_amount = 748;
puzzle_number_button_5.button_y_plus_amount = 0;
puzzle_number_button_5.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_list_current_number > -1)
{
    puzzle_number_button_5.puzzle_number = ds_list_find_value(puzzle_list, puzzle_list_current_number);
    puzzle_number_button_5.colour_set_to_use = global.current_pack_open_colour_set;
    puzzle_list_current_number -= 1;
}
else
{
    puzzle_number_button_5.puzzle_number = 0;
    puzzle_number_button_5.colour_set_to_use = global.current_pack_open_dead_colour_set;
}
puzzle_number_button_6 = instance_create(global.puzzle_button_1_x, global.puzzle_button_1_y + 187, ob_puzzle_button);
puzzle_number_button_6.puzzle_button_number = 6;
puzzle_number_button_6.button_x_plus_amount = 0;
puzzle_number_button_6.button_y_plus_amount = 187;
puzzle_number_button_6.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_list_current_number > -1)
{
    puzzle_number_button_6.puzzle_number = ds_list_find_value(puzzle_list, puzzle_list_current_number);
    puzzle_number_button_6.colour_set_to_use = global.current_pack_open_colour_set;
    puzzle_list_current_number -= 1;
}
else
{
    puzzle_number_button_6.puzzle_number = 0;
    puzzle_number_button_6.colour_set_to_use = global.current_pack_open_dead_colour_set;
}
puzzle_number_button_7 = instance_create(global.puzzle_button_1_x + 187, global.puzzle_button_1_y + 187, ob_puzzle_button);
puzzle_number_button_7.puzzle_button_number = 7;
puzzle_number_button_7.button_x_plus_amount = 187;
puzzle_number_button_7.button_y_plus_amount = 187;
puzzle_number_button_7.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_list_current_number > -1)
{
    puzzle_number_button_7.puzzle_number = ds_list_find_value(puzzle_list, puzzle_list_current_number);
    puzzle_number_button_7.colour_set_to_use = global.current_pack_open_colour_set;
    puzzle_list_current_number -= 1;
}
else
{
    puzzle_number_button_7.puzzle_number = 0;
    puzzle_number_button_7.colour_set_to_use = global.current_pack_open_dead_colour_set;
}
puzzle_number_button_8 = instance_create(global.puzzle_button_1_x + 374, global.puzzle_button_1_y + 187, ob_puzzle_button);
puzzle_number_button_8.puzzle_button_number = 8;
puzzle_number_button_8.button_x_plus_amount = 374;
puzzle_number_button_8.button_y_plus_amount = 187;
puzzle_number_button_8.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_list_current_number > -1)
{
    puzzle_number_button_8.puzzle_number = ds_list_find_value(puzzle_list, puzzle_list_current_number);
    puzzle_number_button_8.colour_set_to_use = global.current_pack_open_colour_set;
    puzzle_list_current_number -= 1;
}
else
{
    puzzle_number_button_8.puzzle_number = 0;
    puzzle_number_button_8.colour_set_to_use = global.current_pack_open_dead_colour_set;
}
puzzle_number_button_9 = instance_create(global.puzzle_button_1_x + 561, global.puzzle_button_1_y + 187, ob_puzzle_button);
puzzle_number_button_9.puzzle_button_number = 9;
puzzle_number_button_9.button_x_plus_amount = 561;
puzzle_number_button_9.button_y_plus_amount = 187;
puzzle_number_button_9.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_list_current_number > -1)
{
    puzzle_number_button_9.puzzle_number = ds_list_find_value(puzzle_list, puzzle_list_current_number);
    puzzle_number_button_9.colour_set_to_use = global.current_pack_open_colour_set;
    puzzle_list_current_number -= 1;
}
else
{
    puzzle_number_button_9.puzzle_number = 0;
    puzzle_number_button_9.colour_set_to_use = global.current_pack_open_dead_colour_set;
}
puzzle_number_button_10 = instance_create(global.puzzle_button_1_x + 748, global.puzzle_button_1_y + 187, ob_puzzle_button);
puzzle_number_button_10.puzzle_button_number = 10;
puzzle_number_button_10.button_x_plus_amount = 748;
puzzle_number_button_10.button_y_plus_amount = 187;
puzzle_number_button_10.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_list_current_number > -1)
{
    puzzle_number_button_10.puzzle_number = ds_list_find_value(puzzle_list, puzzle_list_current_number);
    puzzle_number_button_10.colour_set_to_use = global.current_pack_open_colour_set;
    puzzle_list_current_number -= 1;
}
else
{
    puzzle_number_button_10.puzzle_number = 0;
    puzzle_number_button_10.colour_set_to_use = global.current_pack_open_dead_colour_set;
}
puzzle_number_button_11 = instance_create(global.puzzle_button_1_x, global.puzzle_button_1_y + 374, ob_puzzle_button);
puzzle_number_button_11.puzzle_button_number = 11;
puzzle_number_button_11.button_x_plus_amount = 0;
puzzle_number_button_11.button_y_plus_amount = 374;
puzzle_number_button_11.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_list_current_number > -1)
{
    puzzle_number_button_11.puzzle_number = ds_list_find_value(puzzle_list, puzzle_list_current_number);
    puzzle_number_button_11.colour_set_to_use = global.current_pack_open_colour_set;
    puzzle_list_current_number -= 1;
}
else
{
    puzzle_number_button_11.puzzle_number = 0;
    puzzle_number_button_11.colour_set_to_use = global.current_pack_open_dead_colour_set;
}
puzzle_number_button_12 = instance_create(global.puzzle_button_1_x + 187, global.puzzle_button_1_y + 374, ob_puzzle_button);
puzzle_number_button_12.puzzle_button_number = 12;
puzzle_number_button_12.button_x_plus_amount = 187;
puzzle_number_button_12.button_y_plus_amount = 374;
puzzle_number_button_12.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_list_current_number > -1)
{
    puzzle_number_button_12.puzzle_number = ds_list_find_value(puzzle_list, puzzle_list_current_number);
    puzzle_number_button_12.colour_set_to_use = global.current_pack_open_colour_set;
    puzzle_list_current_number -= 1;
}
else
{
    puzzle_number_button_12.puzzle_number = 0;
    puzzle_number_button_12.colour_set_to_use = global.current_pack_open_dead_colour_set;
}
puzzle_number_button_13 = instance_create(global.puzzle_button_1_x + 374, global.puzzle_button_1_y + 374, ob_puzzle_button);
puzzle_number_button_13.puzzle_button_number = 13;
puzzle_number_button_13.button_x_plus_amount = 374;
puzzle_number_button_13.button_y_plus_amount = 374;
puzzle_number_button_13.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_list_current_number > -1)
{
    puzzle_number_button_13.puzzle_number = ds_list_find_value(puzzle_list, puzzle_list_current_number);
    puzzle_number_button_13.colour_set_to_use = global.current_pack_open_colour_set;
    puzzle_list_current_number -= 1;
}
else
{
    puzzle_number_button_13.puzzle_number = 0;
    puzzle_number_button_13.colour_set_to_use = global.current_pack_open_dead_colour_set;
}
puzzle_number_button_14 = instance_create(global.puzzle_button_1_x + 561, global.puzzle_button_1_y + 374, ob_puzzle_button);
puzzle_number_button_14.puzzle_button_number = 14;
puzzle_number_button_14.button_x_plus_amount = 561;
puzzle_number_button_14.button_y_plus_amount = 374;
puzzle_number_button_14.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_list_current_number > -1)
{
    puzzle_number_button_14.puzzle_number = ds_list_find_value(puzzle_list, puzzle_list_current_number);
    puzzle_number_button_14.colour_set_to_use = global.current_pack_open_colour_set;
    puzzle_list_current_number -= 1;
}
else
{
    puzzle_number_button_14.puzzle_number = 0;
    puzzle_number_button_14.colour_set_to_use = global.current_pack_open_dead_colour_set;
}
puzzle_number_button_15 = instance_create(global.puzzle_button_1_x + 748, global.puzzle_button_1_y + 374, ob_puzzle_button);
puzzle_number_button_15.puzzle_button_number = 15;
puzzle_number_button_15.button_x_plus_amount = 748;
puzzle_number_button_15.button_y_plus_amount = 374;
puzzle_number_button_15.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_list_current_number > -1)
{
    puzzle_number_button_15.puzzle_number = ds_list_find_value(puzzle_list, puzzle_list_current_number);
    puzzle_number_button_15.colour_set_to_use = global.current_pack_open_colour_set;
    puzzle_list_current_number -= 1;
}
else
{
    puzzle_number_button_15.puzzle_number = 0;
    puzzle_number_button_15.colour_set_to_use = global.current_pack_open_dead_colour_set;
}
puzzle_number_button_16 = instance_create(global.puzzle_button_1_x, global.puzzle_button_1_y + 561, ob_puzzle_button);
puzzle_number_button_16.puzzle_button_number = 16;
puzzle_number_button_16.button_x_plus_amount = 0;
puzzle_number_button_16.button_y_plus_amount = 561;
puzzle_number_button_16.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_list_current_number > -1)
{
    puzzle_number_button_16.puzzle_number = ds_list_find_value(puzzle_list, puzzle_list_current_number);
    puzzle_number_button_16.colour_set_to_use = global.current_pack_open_colour_set;
    puzzle_list_current_number -= 1;
}
else
{
    puzzle_number_button_16.puzzle_number = 0;
    puzzle_number_button_16.colour_set_to_use = global.current_pack_open_dead_colour_set;
}
puzzle_number_button_17 = instance_create(global.puzzle_button_1_x + 187, global.puzzle_button_1_y + 561, ob_puzzle_button);
puzzle_number_button_17.puzzle_button_number = 17;
puzzle_number_button_17.button_x_plus_amount = 187;
puzzle_number_button_17.button_y_plus_amount = 561;
puzzle_number_button_17.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_list_current_number > -1)
{
    puzzle_number_button_17.puzzle_number = ds_list_find_value(puzzle_list, puzzle_list_current_number);
    puzzle_number_button_17.colour_set_to_use = global.current_pack_open_colour_set;
    puzzle_list_current_number -= 1;
}
else
{
    puzzle_number_button_17.puzzle_number = 0;
    puzzle_number_button_17.colour_set_to_use = global.current_pack_open_dead_colour_set;
}
puzzle_number_button_18 = instance_create(global.puzzle_button_1_x + 374, global.puzzle_button_1_y + 561, ob_puzzle_button);
puzzle_number_button_18.puzzle_button_number = 18;
puzzle_number_button_18.button_x_plus_amount = 374;
puzzle_number_button_18.button_y_plus_amount = 561;
puzzle_number_button_18.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_list_current_number > -1)
{
    puzzle_number_button_18.puzzle_number = ds_list_find_value(puzzle_list, puzzle_list_current_number);
    puzzle_number_button_18.colour_set_to_use = global.current_pack_open_colour_set;
    puzzle_list_current_number -= 1;
}
else
{
    puzzle_number_button_18.puzzle_number = 0;
    puzzle_number_button_18.colour_set_to_use = global.current_pack_open_dead_colour_set;
}
puzzle_number_button_19 = instance_create(global.puzzle_button_1_x + 561, global.puzzle_button_1_y + 561, ob_puzzle_button);
puzzle_number_button_19.puzzle_button_number = 19;
puzzle_number_button_19.button_x_plus_amount = 561;
puzzle_number_button_19.button_y_plus_amount = 561;
puzzle_number_button_19.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_list_current_number > -1)
{
    puzzle_number_button_19.puzzle_number = ds_list_find_value(puzzle_list, puzzle_list_current_number);
    puzzle_number_button_19.colour_set_to_use = global.current_pack_open_colour_set;
    puzzle_list_current_number -= 1;
}
else
{
    puzzle_number_button_19.puzzle_number = 0;
    puzzle_number_button_19.colour_set_to_use = global.current_pack_open_dead_colour_set;
}
puzzle_number_button_20 = instance_create(global.puzzle_button_1_x + 748, global.puzzle_button_1_y + 561, ob_puzzle_button);
puzzle_number_button_20.puzzle_button_number = 20;
puzzle_number_button_20.button_x_plus_amount = 748;
puzzle_number_button_20.button_y_plus_amount = 561;
puzzle_number_button_20.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_list_current_number > -1)
{
    puzzle_number_button_20.puzzle_number = ds_list_find_value(puzzle_list, puzzle_list_current_number);
    puzzle_number_button_20.colour_set_to_use = global.current_pack_open_colour_set;
    puzzle_list_current_number -= 1;
}
else
{
    puzzle_number_button_20.puzzle_number = 0;
    puzzle_number_button_20.colour_set_to_use = global.current_pack_open_dead_colour_set;
}
puzzle_number_button_21 = instance_create(global.puzzle_button_1_x, global.puzzle_button_1_y + 748, ob_puzzle_button);
puzzle_number_button_21.puzzle_button_number = 21;
puzzle_number_button_21.button_x_plus_amount = 0;
puzzle_number_button_21.button_y_plus_amount = 748;
puzzle_number_button_21.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_list_current_number > -1)
{
    puzzle_number_button_21.puzzle_number = ds_list_find_value(puzzle_list, puzzle_list_current_number);
    puzzle_number_button_21.colour_set_to_use = global.current_pack_open_colour_set;
    puzzle_list_current_number -= 1;
}
else
{
    puzzle_number_button_21.puzzle_number = 0;
    puzzle_number_button_21.colour_set_to_use = global.current_pack_open_dead_colour_set;
}
puzzle_number_button_22 = instance_create(global.puzzle_button_1_x + 187, global.puzzle_button_1_y + 748, ob_puzzle_button);
puzzle_number_button_22.puzzle_button_number = 22;
puzzle_number_button_22.button_x_plus_amount = 187;
puzzle_number_button_22.button_y_plus_amount = 748;
puzzle_number_button_22.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_list_current_number > -1)
{
    puzzle_number_button_22.puzzle_number = ds_list_find_value(puzzle_list, puzzle_list_current_number);
    puzzle_number_button_22.colour_set_to_use = global.current_pack_open_colour_set;
    puzzle_list_current_number -= 1;
}
else
{
    puzzle_number_button_22.puzzle_number = 0;
    puzzle_number_button_22.colour_set_to_use = global.current_pack_open_dead_colour_set;
}
puzzle_number_button_23 = instance_create(global.puzzle_button_1_x + 374, global.puzzle_button_1_y + 748, ob_puzzle_button);
puzzle_number_button_23.puzzle_button_number = 23;
puzzle_number_button_23.button_x_plus_amount = 374;
puzzle_number_button_23.button_y_plus_amount = 748;
puzzle_number_button_23.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_list_current_number > -1)
{
    puzzle_number_button_23.puzzle_number = ds_list_find_value(puzzle_list, puzzle_list_current_number);
    puzzle_number_button_23.colour_set_to_use = global.current_pack_open_colour_set;
    puzzle_list_current_number -= 1;
}
else
{
    puzzle_number_button_23.puzzle_number = 0;
    puzzle_number_button_23.colour_set_to_use = global.current_pack_open_dead_colour_set;
}
puzzle_number_button_24 = instance_create(global.puzzle_button_1_x + 561, global.puzzle_button_1_y + 748, ob_puzzle_button);
puzzle_number_button_24.puzzle_button_number = 24;
puzzle_number_button_24.button_x_plus_amount = 561;
puzzle_number_button_24.button_y_plus_amount = 748;
puzzle_number_button_24.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_list_current_number > -1)
{
    puzzle_number_button_24.puzzle_number = ds_list_find_value(puzzle_list, puzzle_list_current_number);
    puzzle_number_button_24.colour_set_to_use = global.current_pack_open_colour_set;
    puzzle_list_current_number -= 1;
}
else
{
    puzzle_number_button_24.puzzle_number = 0;
    puzzle_number_button_24.colour_set_to_use = global.current_pack_open_dead_colour_set;
}
puzzle_number_button_25 = instance_create(global.puzzle_button_1_x + 748, global.puzzle_button_1_y + 748, ob_puzzle_button);
puzzle_number_button_25.puzzle_button_number = 25;
puzzle_number_button_25.button_x_plus_amount = 748;
puzzle_number_button_25.button_y_plus_amount = 748;
puzzle_number_button_25.mask_index = sp_menu_puzzle_pack_fav_mask;
if (puzzle_list_current_number > -1)
{
    puzzle_number_button_25.puzzle_number = ds_list_find_value(puzzle_list, puzzle_list_current_number);
    puzzle_number_button_25.colour_set_to_use = global.current_pack_open_colour_set;
    puzzle_list_current_number -= 1;
}
else
{
    puzzle_number_button_25.puzzle_number = 0;
    puzzle_number_button_25.colour_set_to_use = global.current_pack_open_dead_colour_set;
}
ds_list_destroy(puzzle_list);
