if (ob_puzzles_generic_room_controller.TrayOpen == 1)
{
    TrayAlpha = 1;
    if (TrayOpacity < global.TrayOpacity)
    {
        TrayOpacity += 0.02;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x, y + 4, x + 51, y + 45))
    {
        CloseTrayHov = 1;
        if (mouse_check_button_released(mb_left))
        {
            ob_puzzles_generic_room_controller.TrayOpen = 0;
            audio_play_sound(s_ui_x_button, 1, false);
        }
    }
    else
    {
        CloseTrayHov = 0;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x, y, x + 1920, y + 10) && mouse_check_button_pressed(mb_left))
    {
        CursorMoveTray = 1;
    }
    if (CursorMoveTray == 1)
    {
        if (ob_menu_cursor.y > 795 && ob_menu_cursor.y < 1000)
        {
            OpenY = ob_menu_cursor.y;
            if (OpenY < 795)
            {
                OpenY = 795;
            }
            y = OpenY;
        }
        if (!mouse_check_button(mb_left))
        {
            CursorMoveTray = 0;
        }
    }
    else if (y > (OpenY + 10))
    {
        y -= 10;
    }
    else
    {
        y = OpenY;
    }
    if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x + 1117, y + 5, x + 1155, y + 44))
    {
        TrayTabHov = 1;
        if (mouse_check_button_pressed(mb_left))
        {
            if (TrayNum != 1)
            {
                TrayNum = 1;
                audio_play_sound(s_menu_tabs, 10, false);
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x + 1117 + 40, y + 5, x + 1155 + 40, y + 44))
    {
        TrayTabHov = 2;
        if (mouse_check_button_pressed(mb_left))
        {
            if (TrayNum != 2)
            {
                TrayNum = 2;
                audio_play_sound(s_menu_tabs, 10, false);
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x + 1117 + 80, y + 5, x + 1155 + 80, y + 44))
    {
        TrayTabHov = 3;
        if (mouse_check_button_pressed(mb_left))
        {
            if (TrayNum != 3)
            {
                TrayNum = 3;
                audio_play_sound(s_menu_tabs, 10, false);
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x + 1117 + 120, y + 5, x + 1155 + 120, y + 44))
    {
        TrayTabHov = 4;
        if (mouse_check_button_pressed(mb_left))
        {
            if (TrayNum != 4)
            {
                TrayNum = 4;
                audio_play_sound(s_menu_tabs, 10, false);
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x + 1117 + 160, y + 5, x + 1155 + 160, y + 44))
    {
        TrayTabHov = 5;
        if (mouse_check_button_pressed(mb_left))
        {
            if (TrayNum != 5)
            {
                TrayNum = 5;
                audio_play_sound(s_menu_tabs, 10, false);
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x + 1117 + 200, y + 5, x + 1155 + 200, y + 44))
    {
        TrayTabHov = 6;
        if (mouse_check_button_pressed(mb_left))
        {
            if (TrayNum != 6)
            {
                TrayNum = 6;
                audio_play_sound(s_menu_tabs, 10, false);
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x + 1117 + 240, y + 5, x + 1155 + 240, y + 44))
    {
        TrayTabHov = 7;
        if (mouse_check_button_pressed(mb_left))
        {
            if (TrayNum != 7)
            {
                TrayNum = 7;
                audio_play_sound(s_menu_tabs, 10, false);
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x + 1117 + 280, y + 5, x + 1155 + 280, y + 44))
    {
        TrayTabHov = 8;
        if (mouse_check_button_pressed(mb_left))
        {
            if (TrayNum != 8)
            {
                TrayNum = 8;
                audio_play_sound(s_menu_tabs, 10, false);
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x + 1117 + 320, y + 5, x + 1155 + 320, y + 44))
    {
        TrayTabHov = 9;
        if (mouse_check_button_pressed(mb_left))
        {
            if (TrayNum != 9)
            {
                TrayNum = 9;
                audio_play_sound(s_menu_tabs, 10, false);
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x + 1117 + 360, y + 5, x + 1155 + 360, y + 44))
    {
        TrayTabHov = 10;
        if (mouse_check_button_pressed(mb_left))
        {
            if (TrayNum != 10)
            {
                TrayNum = 10;
                audio_play_sound(s_menu_tabs, 10, false);
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x + 1117 + 400, y + 5, x + 1155 + 400, y + 44))
    {
        TrayTabHov = 11;
        if (mouse_check_button_pressed(mb_left))
        {
            if (TrayNum != 11)
            {
                TrayNum = 11;
                audio_play_sound(s_menu_tabs, 10, false);
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x + 1117 + 440, y + 5, x + 1155 + 440, y + 44))
    {
        TrayTabHov = 12;
        if (mouse_check_button_pressed(mb_left))
        {
            if (TrayNum != 12)
            {
                TrayNum = 12;
                audio_play_sound(s_menu_tabs, 10, false);
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x + 1117 + 480, y + 5, x + 1155 + 480, y + 44))
    {
        TrayTabHov = 13;
        if (mouse_check_button_pressed(mb_left))
        {
            if (TrayNum != 13)
            {
                TrayNum = 13;
                audio_play_sound(s_menu_tabs, 10, false);
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x + 1117 + 520, y + 5, x + 1155 + 520, y + 44))
    {
        TrayTabHov = 14;
        if (mouse_check_button_pressed(mb_left))
        {
            if (TrayNum != 14)
            {
                TrayNum = 14;
                audio_play_sound(s_menu_tabs, 10, false);
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x + 1117 + 560, y + 5, x + 1155 + 560, y + 44))
    {
        TrayTabHov = 15;
        if (mouse_check_button_pressed(mb_left))
        {
            if (TrayNum != 15)
            {
                TrayNum = 15;
                audio_play_sound(s_menu_tabs, 10, false);
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x + 1117 + 600, y + 5, x + 1155 + 600, y + 44))
    {
        TrayTabHov = 16;
        if (mouse_check_button_pressed(mb_left))
        {
            if (TrayNum != 16)
            {
                TrayNum = 16;
                audio_play_sound(s_menu_tabs, 10, false);
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x + 1117 + 640, y + 5, x + 1155 + 640, y + 44))
    {
        TrayTabHov = 17;
        if (mouse_check_button_pressed(mb_left))
        {
            if (TrayNum != 17)
            {
                TrayNum = 17;
                audio_play_sound(s_menu_tabs, 10, false);
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x + 1117 + 680, y + 5, x + 1155 + 680, y + 44))
    {
        TrayTabHov = 18;
        if (mouse_check_button_pressed(mb_left))
        {
            if (TrayNum != 18)
            {
                TrayNum = 18;
                audio_play_sound(s_menu_tabs, 10, false);
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x + 1117 + 720, y + 5, x + 1155 + 720, y + 44))
    {
        TrayTabHov = 19;
        if (mouse_check_button_pressed(mb_left))
        {
            if (TrayNum != 19)
            {
                TrayNum = 19;
                audio_play_sound(s_menu_tabs, 10, false);
            }
        }
    }
    else if (point_in_rectangle(ob_menu_cursor.x, ob_menu_cursor.y, x + 1117 + 760, y + 5, x + 1155 + 760, y + 44))
    {
        TrayTabHov = 20;
        if (mouse_check_button_pressed(mb_left))
        {
            if (TrayNum != 20)
            {
                TrayNum = 20;
                audio_play_sound(s_menu_tabs, 10, false);
            }
        }
    }
    else
    {
        TrayTabHov = 0;
    }
}
else
{
    CursorMoveTray = 0;
    if (TrayAlpha > 0)
    {
        TrayAlpha -= 0.05;
    }
    if (TrayOpacity > 0)
    {
        TrayOpacity -= 0.5;
    }
    if (y < 1081)
    {
        y += 25;
    }
    else
    {
        y = 1081;
    }
}
