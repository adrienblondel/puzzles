if (pack_is_owned == 1)
{
    button_sprite_to_show_1 = 0;
    button_sprite_to_show_2 = 0;
}
else
{
    if (place_meeting(x, y, ob_menu_cursor))
    {
        alarm[3] = 50;
    }
    else
    {
        alarm[3] = 150 + random(700);
    }
    if (pack_is_a_fav == 0)
    {
        if (number_of_puzzles > 1)
        {
            if (current_button_sprite_showing_1_or_2 == 0)
            {
                button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                button_sprite_to_show_2 = round(button_sprite_to_show_2);
                if (button_sprite_to_show_2 == button_sprite_to_show_1)
                {
                    button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                }
                current_button_sprite_showing_1_or_2 = 1;
            }
            else
            {
                button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                button_sprite_to_show_1 = round(button_sprite_to_show_1);
                if (button_sprite_to_show_1 == button_sprite_to_show_2)
                {
                    button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                }
                current_button_sprite_showing_1_or_2 = 0;
            }
        }
    }
    else if (pack_is_a_fav == 1)
    {
        if (fav_number == 1)
        {
            if (global.fav_1_current_button_sprite_showing_1_or_2 == 0)
            {
                global.fav_1_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                global.fav_1_button_sprite_to_show_2 = round(global.fav_1_button_sprite_to_show_2);
                if (global.fav_1_button_sprite_to_show_2 == global.fav_1_button_sprite_to_show_1)
                {
                    global.fav_1_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                }
                global.fav_1_current_button_sprite_showing_1_or_2 = 1;
            }
            else
            {
                global.fav_1_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                global.fav_1_button_sprite_to_show_1 = round(global.fav_1_button_sprite_to_show_1);
                if (global.fav_1_button_sprite_to_show_1 == global.fav_1_button_sprite_to_show_2)
                {
                    global.fav_1_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                }
                global.fav_1_current_button_sprite_showing_1_or_2 = 0;
            }
        }
        else if (fav_number == 2)
        {
            if (global.fav_2_current_button_sprite_showing_1_or_2 == 0)
            {
                global.fav_2_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                global.fav_2_button_sprite_to_show_2 = round(global.fav_2_button_sprite_to_show_2);
                if (global.fav_2_button_sprite_to_show_2 == global.fav_2_button_sprite_to_show_1)
                {
                    global.fav_2_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                }
                global.fav_2_current_button_sprite_showing_1_or_2 = 1;
            }
            else
            {
                global.fav_2_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                global.fav_2_button_sprite_to_show_1 = round(global.fav_2_button_sprite_to_show_1);
                if (global.fav_2_button_sprite_to_show_1 == global.fav_2_button_sprite_to_show_2)
                {
                    global.fav_2_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                }
                global.fav_2_current_button_sprite_showing_1_or_2 = 0;
            }
        }
        else if (fav_number == 3)
        {
            if (global.fav_3_current_button_sprite_showing_1_or_2 == 0)
            {
                global.fav_3_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                global.fav_3_button_sprite_to_show_2 = round(global.fav_3_button_sprite_to_show_2);
                if (global.fav_3_button_sprite_to_show_2 == global.fav_3_button_sprite_to_show_1)
                {
                    global.fav_3_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                }
                global.fav_3_current_button_sprite_showing_1_or_2 = 1;
            }
            else
            {
                global.fav_3_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                global.fav_3_button_sprite_to_show_1 = round(global.fav_3_button_sprite_to_show_1);
                if (global.fav_3_button_sprite_to_show_1 == global.fav_3_button_sprite_to_show_2)
                {
                    global.fav_3_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                }
                global.fav_3_current_button_sprite_showing_1_or_2 = 0;
            }
        }
        else if (fav_number == 4)
        {
            if (global.fav_4_current_button_sprite_showing_1_or_2 == 0)
            {
                global.fav_4_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                global.fav_4_button_sprite_to_show_2 = round(global.fav_4_button_sprite_to_show_2);
                if (global.fav_4_button_sprite_to_show_2 == global.fav_4_button_sprite_to_show_1)
                {
                    global.fav_4_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                }
                global.fav_4_current_button_sprite_showing_1_or_2 = 1;
            }
            else
            {
                global.fav_4_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                global.fav_4_button_sprite_to_show_1 = round(global.fav_4_button_sprite_to_show_1);
                if (global.fav_4_button_sprite_to_show_1 == global.fav_4_button_sprite_to_show_2)
                {
                    global.fav_4_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                }
                global.fav_4_current_button_sprite_showing_1_or_2 = 0;
            }
        }
        else if (fav_number == 5)
        {
            if (global.fav_5_current_button_sprite_showing_1_or_2 == 0)
            {
                global.fav_5_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                global.fav_5_button_sprite_to_show_2 = round(global.fav_5_button_sprite_to_show_2);
                if (global.fav_5_button_sprite_to_show_2 == global.fav_5_button_sprite_to_show_1)
                {
                    global.fav_5_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                }
                global.fav_5_current_button_sprite_showing_1_or_2 = 1;
            }
            else
            {
                global.fav_5_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                global.fav_5_button_sprite_to_show_1 = round(global.fav_5_button_sprite_to_show_1);
                if (global.fav_5_button_sprite_to_show_1 == global.fav_5_button_sprite_to_show_2)
                {
                    global.fav_5_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                }
                global.fav_5_current_button_sprite_showing_1_or_2 = 0;
            }
        }
        else if (fav_number == 6)
        {
            if (global.fav_6_current_button_sprite_showing_1_or_2 == 0)
            {
                global.fav_6_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                global.fav_6_button_sprite_to_show_2 = round(global.fav_6_button_sprite_to_show_2);
                if (global.fav_6_button_sprite_to_show_2 == global.fav_6_button_sprite_to_show_1)
                {
                    global.fav_6_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                }
                global.fav_6_current_button_sprite_showing_1_or_2 = 1;
            }
            else
            {
                global.fav_6_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                global.fav_6_button_sprite_to_show_1 = round(global.fav_6_button_sprite_to_show_1);
                if (global.fav_6_button_sprite_to_show_1 == global.fav_6_button_sprite_to_show_2)
                {
                    global.fav_6_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                }
                global.fav_6_current_button_sprite_showing_1_or_2 = 0;
            }
        }
        else if (fav_number == 7)
        {
            if (global.fav_7_current_button_sprite_showing_1_or_2 == 0)
            {
                global.fav_7_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                global.fav_7_button_sprite_to_show_2 = round(global.fav_7_button_sprite_to_show_2);
                if (global.fav_7_button_sprite_to_show_2 == global.fav_7_button_sprite_to_show_1)
                {
                    global.fav_7_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                }
                global.fav_7_current_button_sprite_showing_1_or_2 = 1;
            }
            else
            {
                global.fav_7_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                global.fav_7_button_sprite_to_show_1 = round(global.fav_7_button_sprite_to_show_1);
                if (global.fav_7_button_sprite_to_show_1 == global.fav_7_button_sprite_to_show_2)
                {
                    global.fav_7_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                }
                global.fav_7_current_button_sprite_showing_1_or_2 = 0;
            }
        }
        else if (fav_number == 8)
        {
            if (global.fav_8_current_button_sprite_showing_1_or_2 == 0)
            {
                global.fav_8_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                global.fav_8_button_sprite_to_show_2 = round(global.fav_8_button_sprite_to_show_2);
                if (global.fav_8_button_sprite_to_show_2 == global.fav_8_button_sprite_to_show_1)
                {
                    global.fav_8_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                }
                global.fav_8_current_button_sprite_showing_1_or_2 = 1;
            }
            else
            {
                global.fav_8_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                global.fav_8_button_sprite_to_show_1 = round(global.fav_8_button_sprite_to_show_1);
                if (global.fav_8_button_sprite_to_show_1 == global.fav_8_button_sprite_to_show_2)
                {
                    global.fav_8_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                }
                global.fav_8_current_button_sprite_showing_1_or_2 = 0;
            }
        }
        else if (fav_number == 9)
        {
            if (global.fav_9_current_button_sprite_showing_1_or_2 == 0)
            {
                global.fav_9_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                global.fav_9_button_sprite_to_show_2 = round(global.fav_9_button_sprite_to_show_2);
                if (global.fav_9_button_sprite_to_show_2 == global.fav_9_button_sprite_to_show_1)
                {
                    global.fav_9_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                }
                global.fav_9_current_button_sprite_showing_1_or_2 = 1;
            }
            else
            {
                global.fav_9_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                global.fav_9_button_sprite_to_show_1 = round(global.fav_9_button_sprite_to_show_1);
                if (global.fav_9_button_sprite_to_show_1 == global.fav_9_button_sprite_to_show_2)
                {
                    global.fav_9_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                }
                global.fav_9_current_button_sprite_showing_1_or_2 = 0;
            }
        }
        else if (fav_number == 10)
        {
            if (global.fav_10_current_button_sprite_showing_1_or_2 == 0)
            {
                global.fav_10_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                global.fav_10_button_sprite_to_show_2 = round(global.fav_10_button_sprite_to_show_2);
                if (global.fav_10_button_sprite_to_show_2 == global.fav_10_button_sprite_to_show_1)
                {
                    global.fav_10_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                }
                global.fav_10_current_button_sprite_showing_1_or_2 = 1;
            }
            else
            {
                global.fav_10_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                global.fav_10_button_sprite_to_show_1 = round(global.fav_10_button_sprite_to_show_1);
                if (global.fav_10_button_sprite_to_show_1 == global.fav_10_button_sprite_to_show_2)
                {
                    global.fav_10_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                }
                global.fav_10_current_button_sprite_showing_1_or_2 = 0;
            }
        }
        else if (fav_number == 11)
        {
            if (global.fav_11_current_button_sprite_showing_1_or_2 == 0)
            {
                global.fav_11_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                global.fav_11_button_sprite_to_show_2 = round(global.fav_11_button_sprite_to_show_2);
                if (global.fav_11_button_sprite_to_show_2 == global.fav_11_button_sprite_to_show_1)
                {
                    global.fav_11_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                }
                global.fav_11_current_button_sprite_showing_1_or_2 = 1;
            }
            else
            {
                global.fav_11_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                global.fav_11_button_sprite_to_show_1 = round(global.fav_11_button_sprite_to_show_1);
                if (global.fav_11_button_sprite_to_show_1 == global.fav_11_button_sprite_to_show_2)
                {
                    global.fav_11_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                }
                global.fav_11_current_button_sprite_showing_1_or_2 = 0;
            }
        }
        else if (fav_number == 12)
        {
            if (global.fav_12_current_button_sprite_showing_1_or_2 == 0)
            {
                global.fav_12_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                global.fav_12_button_sprite_to_show_2 = round(global.fav_12_button_sprite_to_show_2);
                if (global.fav_12_button_sprite_to_show_2 == global.fav_12_button_sprite_to_show_1)
                {
                    global.fav_12_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                }
                global.fav_12_current_button_sprite_showing_1_or_2 = 1;
            }
            else
            {
                global.fav_12_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                global.fav_12_button_sprite_to_show_1 = round(global.fav_12_button_sprite_to_show_1);
                if (global.fav_12_button_sprite_to_show_1 == global.fav_12_button_sprite_to_show_2)
                {
                    global.fav_12_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                }
                global.fav_12_current_button_sprite_showing_1_or_2 = 0;
            }
        }
        else if (fav_number == 13)
        {
            if (global.fav_13_current_button_sprite_showing_1_or_2 == 0)
            {
                global.fav_13_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                global.fav_13_button_sprite_to_show_2 = round(global.fav_13_button_sprite_to_show_2);
                if (global.fav_13_button_sprite_to_show_2 == global.fav_13_button_sprite_to_show_1)
                {
                    global.fav_13_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                }
                global.fav_13_current_button_sprite_showing_1_or_2 = 1;
            }
            else
            {
                global.fav_13_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                global.fav_13_button_sprite_to_show_1 = round(global.fav_13_button_sprite_to_show_1);
                if (global.fav_13_button_sprite_to_show_1 == global.fav_13_button_sprite_to_show_2)
                {
                    global.fav_13_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                }
                global.fav_13_current_button_sprite_showing_1_or_2 = 0;
            }
        }
        else if (fav_number == 14)
        {
            if (global.fav_14_current_button_sprite_showing_1_or_2 == 0)
            {
                global.fav_14_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                global.fav_14_button_sprite_to_show_2 = round(global.fav_14_button_sprite_to_show_2);
                if (global.fav_14_button_sprite_to_show_2 == global.fav_14_button_sprite_to_show_1)
                {
                    global.fav_14_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                }
                global.fav_14_current_button_sprite_showing_1_or_2 = 1;
            }
            else
            {
                global.fav_14_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                global.fav_14_button_sprite_to_show_1 = round(global.fav_14_button_sprite_to_show_1);
                if (global.fav_14_button_sprite_to_show_1 == global.fav_14_button_sprite_to_show_2)
                {
                    global.fav_14_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                }
                global.fav_14_current_button_sprite_showing_1_or_2 = 0;
            }
        }
        else if (fav_number == 15)
        {
            if (global.fav_15_current_button_sprite_showing_1_or_2 == 0)
            {
                global.fav_15_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                global.fav_15_button_sprite_to_show_2 = round(global.fav_15_button_sprite_to_show_2);
                if (global.fav_15_button_sprite_to_show_2 == global.fav_15_button_sprite_to_show_1)
                {
                    global.fav_15_button_sprite_to_show_2 = choose(1 + random(number_of_puzzles - 1));
                }
                global.fav_15_current_button_sprite_showing_1_or_2 = 1;
            }
            else
            {
                global.fav_15_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                global.fav_15_button_sprite_to_show_1 = round(global.fav_15_button_sprite_to_show_1);
                if (global.fav_15_button_sprite_to_show_1 == global.fav_15_button_sprite_to_show_2)
                {
                    global.fav_15_button_sprite_to_show_1 = choose(1 + random(number_of_puzzles - 1));
                }
                global.fav_15_current_button_sprite_showing_1_or_2 = 0;
            }
        }
    }
}
