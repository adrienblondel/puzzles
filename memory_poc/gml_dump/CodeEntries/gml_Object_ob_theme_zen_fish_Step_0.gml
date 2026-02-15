if (swimming_running_holding == 0)
{
    sprite_index = sp_theme_zen_fish_swim;
    image_speed = 0.13;
    if (ob_puzzles_generic_room_controller.ZenFish == 1)
    {
        image_alpha = 0.25;
    }
    else
    {
        image_alpha = 0;
    }
    image_xscale = pond_scale;
    image_yscale = pond_scale;
    image_angle = direction;
    depth = 500600;
    if (x < -300)
    {
        direction = 70 - random(140);
    }
    if (x > 2220)
    {
        direction = 110 + random(140);
    }
    if (y > 1380)
    {
        direction = 20 + random(140);
    }
    if (y < -300)
    {
        direction = 200 + random(140);
    }
    if (place_meeting(x, y, ob_menu_cursor))
    {
        if (global.can_pick_a_bit_up == 1)
        {
            if (ob_puzzles_generic_room_controller.ZenGrabFish == 1 && ob_puzzles_generic_room_controller.ZenFish == 1)
            {
                if (global.can_use_ui_and_buttons_in_puzzle == 1)
                {
                    if (mouse_check_button_pressed(mb_left) || gamepad_button_check_pressed(0, gp_shoulderrb))
                    {
                        if (global.level_type == 1)
                        {
                            if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 246, 0, 1674, 801))
                            {
                            }
                            else
                            {
                                global.can_pick_a_bit_up = 0;
                                looking_right_or_left = choose(0, 1);
                                swimming_running_holding = 2;
                                alarm[1] = 5;
                                audio_play_sound(s_theme_grab_fish_from_pond, 1, false);
                                if (steam_stats_ready())
                                {
                                    if (!steam_get_achievement("grab_a_fish"))
                                    {
                                        steam_set_achievement("grab_a_fish");
                                    }
                                }
                            }
                        }
                        else if (global.level_type == 2)
                        {
                            if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 240, 0, 1680, 910))
                            {
                            }
                            else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 0, 240, 0, 1080))
                            {
                                global.can_pick_a_bit_up = 0;
                                looking_right_or_left = choose(0, 1);
                                swimming_running_holding = 2;
                                alarm[1] = 5;
                                audio_play_sound(s_theme_grab_fish_from_pond, 1, false);
                                if (steam_stats_ready())
                                {
                                    if (!steam_get_achievement("grab_a_fish"))
                                    {
                                        steam_set_achievement("grab_a_fish");
                                    }
                                }
                            }
                            else
                            {
                                global.can_pick_a_bit_up = 0;
                                looking_right_or_left = choose(0, 1);
                                swimming_running_holding = 2;
                                alarm[1] = 5;
                                audio_play_sound(s_theme_grab_fish_from_pond, 1, false);
                                if (steam_stats_ready())
                                {
                                    if (!steam_get_achievement("grab_a_fish"))
                                    {
                                        steam_set_achievement("grab_a_fish");
                                    }
                                }
                            }
                        }
                        else if (global.level_type == 3)
                        {
                            if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 303, 0, 1373, 1080))
                            {
                            }
                            else
                            {
                                global.can_pick_a_bit_up = 0;
                                looking_right_or_left = choose(0, 1);
                                swimming_running_holding = 2;
                                alarm[1] = 5;
                                audio_play_sound(s_theme_grab_fish_from_pond, 1, false);
                                if (steam_stats_ready())
                                {
                                    if (!steam_get_achievement("grab_a_fish"))
                                    {
                                        steam_set_achievement("grab_a_fish");
                                    }
                                }
                            }
                        }
                        else if (global.level_type == 4)
                        {
                            if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 0, 227, 1920, 967))
                            {
                            }
                            else
                            {
                                global.can_pick_a_bit_up = 0;
                                looking_right_or_left = choose(0, 1);
                                swimming_running_holding = 2;
                                alarm[1] = 5;
                                audio_play_sound(s_theme_grab_fish_from_pond, 1, false);
                                if (steam_stats_ready())
                                {
                                    if (!steam_get_achievement("grab_a_fish"))
                                    {
                                        steam_set_achievement("grab_a_fish");
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
else if (swimming_running_holding == 1)
{
    if (ob_puzzles_generic_room_controller.ZenFish != 1)
    {
        instance_destroy();
    }
    if (looking_right_or_left == 0)
    {
        sprite_index = sp_theme_zen_fish_run;
        image_speed = 0.2;
        image_alpha = ob_puzzles_generic_room_controller.ZenFish;
        image_xscale = 1;
        image_yscale = 1;
        image_angle = direction;
        depth = -300005;
    }
    else
    {
        sprite_index = sp_theme_zen_fish_run;
        image_speed = 0.2;
        image_alpha = ob_puzzles_generic_room_controller.ZenFish;
        image_xscale = -1;
        image_yscale = 1;
        image_angle = direction - 180;
        depth = -300005;
    }
    if (place_meeting(x, y, ob_menu_cursor))
    {
        if (global.can_pick_a_bit_up == 1)
        {
            if (ob_puzzles_generic_room_controller.ZenGrabFish == 1 && ob_puzzles_generic_room_controller.ZenFish == 1)
            {
                if (mouse_check_button_pressed(mb_left) || gamepad_button_check_pressed(0, gp_shoulderrb))
                {
                    global.can_pick_a_bit_up = 0;
                    looking_right_or_left = choose(0, 1);
                    swimming_running_holding = 2;
                    alarm[1] = 5;
                    audio_play_sound(s_grab_fish_from_board, 1, false);
                }
            }
        }
    }
    if (global.level_type == 1)
    {
        if (y < 840)
        {
            if (looking_right_or_left == 0)
            {
                if (x > 1720)
                {
                    swimming_running_holding = 0;
                    speed = choose(0.5, 0.6, 0.7, 0.8, 0.9, 1, 1.1, 1.2, 1.3, 1.4, 1.5);
                    direction = random(360);
                    if (ob_puzzles_generic_room_controller.ZenFish == 1)
                    {
                        instance_create(x, y, ob_theme_zen_fish_splash);
                        audio_play_sound(s_theme_drop_fish_in_water, 1, false);
                    }
                }
            }
            else if (x < 200)
            {
                swimming_running_holding = 0;
                speed = choose(0.5, 0.6, 0.7, 0.8, 0.9, 1, 1.1, 1.2, 1.3, 1.4, 1.5);
                direction = random(360);
                if (ob_puzzles_generic_room_controller.ZenFish == 1)
                {
                    instance_create(x, y, ob_theme_zen_fish_splash);
                    audio_play_sound(s_theme_drop_fish_in_water, 1, false);
                }
            }
        }
        else if (y < 900)
        {
            swimming_running_holding = 0;
            speed = choose(0.5, 0.6, 0.7, 0.8, 0.9, 1, 1.1, 1.2, 1.3, 1.4, 1.5);
            direction = random(360);
            if (ob_puzzles_generic_room_controller.ZenFish == 1)
            {
                instance_create(x, y, ob_theme_zen_fish_splash);
                audio_play_sound(s_theme_drop_fish_in_water, 1, false);
            }
        }
    }
    else if (global.level_type == 2)
    {
        if (looking_right_or_left == 0)
        {
            if (x > 1720)
            {
                swimming_running_holding = 0;
                speed = choose(0.5, 0.6, 0.7, 0.8, 0.9, 1, 1.1, 1.2, 1.3, 1.4, 1.5);
                direction = random(360);
                if (ob_puzzles_generic_room_controller.ZenFish == 1)
                {
                    instance_create(x, y, ob_theme_zen_fish_splash);
                    audio_play_sound(s_theme_drop_fish_in_water, 1, false);
                }
            }
        }
        else if (x < 195)
        {
            swimming_running_holding = 0;
            speed = choose(0.5, 0.6, 0.7, 0.8, 0.9, 1, 1.1, 1.2, 1.3, 1.4, 1.5);
            direction = random(360);
            if (ob_puzzles_generic_room_controller.ZenFish == 1)
            {
                instance_create(x, y, ob_theme_zen_fish_splash);
                audio_play_sound(s_theme_drop_fish_in_water, 1, false);
            }
        }
    }
    else if (global.level_type == 3)
    {
        if (x > 1420)
        {
            swimming_running_holding = 0;
            speed = choose(0.5, 0.6, 0.7, 0.8, 0.9, 1, 1.1, 1.2, 1.3, 1.4, 1.5);
            direction = random(360);
            if (ob_puzzles_generic_room_controller.ZenFish == 1)
            {
                instance_create(x, y, ob_theme_zen_fish_splash);
                audio_play_sound(s_theme_drop_fish_in_water, 1, false);
            }
        }
    }
    else if (global.level_type == 4)
    {
        if (y < 190)
        {
            swimming_running_holding = 0;
            speed = choose(0.5, 0.6, 0.7, 0.8, 0.9, 1, 1.1, 1.2, 1.3, 1.4, 1.5);
            direction = random(360);
            if (ob_puzzles_generic_room_controller.ZenFish == 1)
            {
                instance_create(x, y, ob_theme_zen_fish_splash);
                audio_play_sound(s_theme_drop_fish_in_water, 1, false);
            }
        }
    }
}
else if (swimming_running_holding == 2)
{
    if (ob_puzzles_generic_room_controller.ZenGrabFish == 0)
    {
        global.can_pick_a_bit_up = 1;
        instance_destroy();
    }
    if (ob_puzzles_generic_room_controller.ZenFish == 0)
    {
        global.can_pick_a_bit_up = 1;
        instance_destroy();
    }
    if (looking_right_or_left == 0)
    {
        sprite_index = sp_theme_zen_fish_hold;
        image_speed = 0.12;
        image_alpha = ob_puzzles_generic_room_controller.ZenFish;
        image_xscale = 1.2;
        image_yscale = 1.2;
        image_angle = current_angle;
        depth = -700350;
        x = ob_menu_cursor.x;
        y = ob_menu_cursor.y;
    }
    else
    {
        sprite_index = sp_theme_zen_fish_hold;
        image_speed = 0.12;
        image_alpha = ob_puzzles_generic_room_controller.ZenFish;
        image_xscale = -1.2;
        image_yscale = 1.2;
        image_angle = current_angle - 180;
        depth = -700350;
        x = ob_menu_cursor.x;
        y = ob_menu_cursor.y;
    }
    if (place_meeting(x, y, ob_menu_cursor))
    {
        if (mouse_check_button_released(mb_left) || gamepad_button_check_released(0, gp_shoulderrb))
        {
            if (global.level_type == 1)
            {
                if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 0, 933, 1920, 1080))
                {
                    speed = choose(0.85, 0.9, 0.95, 1, 1.05, 1.1, 1.15);
                    alarm[0] = 1;
                    global.can_pick_a_bit_up = 1;
                    swimming_running_holding = 1;
                    audio_play_sound(s_drop_fish_on_board, 1, false);
                    if (looking_right_or_left == 0)
                    {
                        direction = point_direction(x, y, 1820 - random(500), 800);
                    }
                    else
                    {
                        direction = point_direction(x, y, 100 + random(500), 800);
                    }
                }
                else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 246, 0, 1674, 801))
                {
                    speed = choose(0.85, 0.9, 0.95, 1, 1.05, 1.1, 1.15);
                    alarm[0] = 1;
                    global.can_pick_a_bit_up = 1;
                    swimming_running_holding = 1;
                    audio_play_sound(s_drop_fish_on_board, 1, false);
                    if (looking_right_or_left == 0)
                    {
                        direction = point_direction(x, y, 1900, 100 + random(600));
                    }
                    else
                    {
                        direction = point_direction(x, y, 20, 100 + random(600));
                    }
                }
                else
                {
                    global.can_pick_a_bit_up = 1;
                    swimming_running_holding = 0;
                    instance_create(x, y, ob_theme_zen_fish_splash);
                    speed = choose(0.5, 0.6, 0.7, 0.8, 0.9, 1, 1.1, 1.2, 1.3, 1.4, 1.5);
                    audio_play_sound(s_theme_drop_fish_in_water, 1, false);
                    direction = random(360);
                }
            }
            else if (global.level_type == 2)
            {
                if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 240, 910, 1680, 1080))
                {
                    speed = choose(0.85, 0.9, 0.95, 1, 1.05, 1.1, 1.15);
                    alarm[0] = 1;
                    global.can_pick_a_bit_up = 1;
                    swimming_running_holding = 1;
                    audio_play_sound(s_drop_fish_on_board, 1, false);
                    if (looking_right_or_left == 0)
                    {
                        direction = point_direction(x, y, 1900, 100 + random(900));
                    }
                    else
                    {
                        direction = point_direction(x, y, 20, 100 + random(900));
                    }
                }
                else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 240, 0, 1680, 910))
                {
                    speed = choose(0.85, 0.9, 0.95, 1, 1.05, 1.1, 1.15);
                    alarm[0] = 1;
                    global.can_pick_a_bit_up = 1;
                    swimming_running_holding = 1;
                    audio_play_sound(s_drop_fish_on_board, 1, false);
                    if (looking_right_or_left == 0)
                    {
                        direction = point_direction(x, y, 1900, 100 + random(900));
                    }
                    else
                    {
                        direction = point_direction(x, y, 20, 100 + random(900));
                    }
                }
                else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 0, 240, 0, 1080))
                {
                    global.can_pick_a_bit_up = 1;
                    swimming_running_holding = 0;
                    instance_create(x, y, ob_theme_zen_fish_splash);
                    speed = choose(0.5, 0.6, 0.7, 0.8, 0.9, 1, 1.1, 1.2, 1.3, 1.4, 1.5);
                    audio_play_sound(s_theme_drop_fish_in_water, 1, false);
                    direction = random(360);
                }
                else
                {
                    global.can_pick_a_bit_up = 1;
                    swimming_running_holding = 0;
                    instance_create(x, y, ob_theme_zen_fish_splash);
                    speed = choose(0.5, 0.6, 0.7, 0.8, 0.9, 1, 1.1, 1.2, 1.3, 1.4, 1.5);
                    audio_play_sound(s_theme_drop_fish_in_water, 1, false);
                    direction = random(360);
                }
            }
            else if (global.level_type == 3)
            {
                if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 0, 0, 303, 1080))
                {
                    speed = choose(0.85, 0.9, 0.95, 1, 1.05, 1.1, 1.15);
                    alarm[0] = 1;
                    global.can_pick_a_bit_up = 1;
                    swimming_running_holding = 1;
                    audio_play_sound(s_drop_fish_on_board, 1, false);
                    looking_right_or_left = 0;
                    direction = point_direction(x, y, 1900, 100 + random(900));
                }
                else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 303, 0, 1373, 1080))
                {
                    speed = choose(0.85, 0.9, 0.95, 1, 1.05, 1.1, 1.15);
                    alarm[0] = 1;
                    global.can_pick_a_bit_up = 1;
                    swimming_running_holding = 1;
                    audio_play_sound(s_drop_fish_on_board, 1, false);
                    looking_right_or_left = 0;
                    direction = point_direction(x, y, 1900, 100 + random(900));
                }
                else
                {
                    global.can_pick_a_bit_up = 1;
                    swimming_running_holding = 0;
                    instance_create(x, y, ob_theme_zen_fish_splash);
                    speed = choose(0.5, 0.6, 0.7, 0.8, 0.9, 1, 1.1, 1.2, 1.3, 1.4, 1.5);
                    audio_play_sound(s_theme_drop_fish_in_water, 1, false);
                    direction = random(360);
                }
            }
            else if (global.level_type == 4)
            {
                if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 0, 967, 1920, 1080))
                {
                    speed = choose(0.85, 0.9, 0.95, 1, 1.05, 1.1, 1.15);
                    alarm[0] = 1;
                    global.can_pick_a_bit_up = 1;
                    audio_play_sound(s_drop_fish_on_board, 1, false);
                    swimming_running_holding = 1;
                    if (looking_right_or_left == 0)
                    {
                        direction = point_direction(x, y, 1820 - random(500), 10);
                    }
                    else
                    {
                        direction = point_direction(x, y, 100 + random(500), 10);
                    }
                }
                else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, 0, 227, 1920, 967))
                {
                    speed = choose(0.85, 0.9, 0.95, 1, 1.05, 1.1, 1.15);
                    alarm[0] = 1;
                    global.can_pick_a_bit_up = 1;
                    audio_play_sound(s_drop_fish_on_board, 1, false);
                    swimming_running_holding = 1;
                    if (looking_right_or_left == 0)
                    {
                        direction = point_direction(x, y, 1820 - random(500), 10);
                    }
                    else
                    {
                        direction = point_direction(x, y, 100 + random(500), 10);
                    }
                }
                else
                {
                    global.can_pick_a_bit_up = 1;
                    swimming_running_holding = 0;
                    instance_create(x, y, ob_theme_zen_fish_splash);
                    audio_play_sound(s_theme_drop_fish_in_water, 1, false);
                    speed = choose(0.5, 0.6, 0.7, 0.8, 0.9, 1, 1.1, 1.2, 1.3, 1.4, 1.5);
                    direction = random(360);
                }
            }
        }
    }
}
