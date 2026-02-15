if (global.level_type != 5)
{
    var VertRows;
    if (TotalBits == 96)
    {
        VertRows = 12;
    }
    if (TotalBits == 140)
    {
        VertRows = 14;
    }
    if (TotalBits == 216)
    {
        VertRows = 18;
    }
    if (TotalBits == 330)
    {
        VertRows = 22;
    }
    if (TotalBits == 425)
    {
        VertRows = 25;
    }
    if (TotalBits == 640 && global.level_type == 2)
    {
        VertRows = 32;
    }
    if (TotalBits == 840)
    {
        VertRows = 35;
    }
    if (TotalBits == 1410)
    {
        VertRows = 47;
    }
    if (TotalBits == 100)
    {
        VertRows = 10;
    }
    if (TotalBits == 169)
    {
        VertRows = 13;
    }
    if (TotalBits == 324)
    {
        VertRows = 18;
    }
    if (TotalBits == 400)
    {
        VertRows = 20;
    }
    if (TotalBits == 676)
    {
        VertRows = 26;
    }
    if (TotalBits == 841)
    {
        VertRows = 29;
    }
    if (TotalBits == 60)
    {
        VertRows = 10;
    }
    if (TotalBits == 112)
    {
        VertRows = 14;
    }
    if (TotalBits == 153)
    {
        VertRows = 17;
    }
    if (TotalBits == 220)
    {
        VertRows = 20;
    }
    if (TotalBits == 350)
    {
        VertRows = 25;
    }
    if (TotalBits == 126)
    {
        VertRows = 18;
    }
    if (TotalBits == 168)
    {
        VertRows = 21;
    }
    if (TotalBits == 250)
    {
        VertRows = 25;
    }
    if (TotalBits == 455)
    {
        VertRows = 35;
    }
    if (TotalBits == 640 && global.level_type == 4)
    {
        VertRows = 40;
    }
    if (TotalBits == 810)
    {
        VertRows = 45;
    }
    if (TotalBits == 1000)
    {
        VertRows = 50;
    }
    puz_bit_num = 1;
    var y_row_to_use = 0;
    y_row_to_use = 0;
    var vcolomb = 0;
    var PuzGrid = ds_grid_create(4, TotalBits + 1);
    var savefile = "p" + string(global.current_pack_open) + ".ini";
    ini_open(string(savefile));
    var section = "P" + string(global.puzzle_number_to_play);
    if (ini_key_exists(string(section), "0"))
    {
        ds_grid_read(PuzGrid, ini_read_string(string(section), "0", ""));
    }
    ini_close();
    for (var i = 0; i < TotalBits; i++)
    {
        puzzle_piece = instance_create(Xstart + (vcolomb * Plus_x), Ystart + (y_row_to_use * Plus_y), ob_puzzle_pieces_actual);
        puzzle_piece.puzzle_piece_number = puz_bit_num;
        var piece_state = 0;
        var Piece_Angle = 0;
        var TrayX = 0;
        var TrayY = 0;
        piece_state = ds_grid_get(PuzGrid, 0, puz_bit_num);
        if (piece_state > 9)
        {
            Piece_Angle = ds_grid_get(PuzGrid, 1, puz_bit_num);
            TrayX = ds_grid_get(PuzGrid, 2, puz_bit_num);
            TrayY = ds_grid_get(PuzGrid, 3, puz_bit_num);
        }
        if (piece_state == 1 || piece_state == 0 || (piece_state >= 11 && piece_state <= 30))
        {
        }
        else
        {
            piece_state = 0;
        }
        if (piece_state == 0)
        {
            puzzle_piece.CurrentState = 100;
        }
        else if (piece_state == 1)
        {
            puzzle_piece.CurrentState = 3;
            global.total_number_of_pieces -= 1;
        }
        else if (piece_state >= 11 && piece_state <= 30)
        {
            puzzle_piece.CurrentState = 8;
            puzzle_piece.alarm[1] = 100;
            puzzle_piece.TrayNum = piece_state - 10;
            puzzle_piece.image_angle = Piece_Angle;
            if (TrayX > 0)
            {
                puzzle_piece.TrayX = TrayX;
            }
            if (TrayY > 0)
            {
                puzzle_piece.TrayY = TrayY;
            }
            if (piece_state == 11)
            {
                ob_tray.TrayQnt1 += 1;
            }
            if (piece_state == 12)
            {
                ob_tray.TrayQnt2 += 1;
            }
            if (piece_state == 13)
            {
                ob_tray.TrayQnt3 += 1;
            }
            if (piece_state == 14)
            {
                ob_tray.TrayQnt4 += 1;
            }
            if (piece_state == 15)
            {
                ob_tray.TrayQnt5 += 1;
            }
            if (piece_state == 16)
            {
                ob_tray.TrayQnt6 += 1;
            }
            if (piece_state == 17)
            {
                ob_tray.TrayQnt7 += 1;
            }
            if (piece_state == 18)
            {
                ob_tray.TrayQnt8 += 1;
            }
            if (piece_state == 19)
            {
                ob_tray.TrayQnt9 += 1;
            }
            if (piece_state == 20)
            {
                ob_tray.TrayQnt10 += 1;
            }
            if (piece_state == 21)
            {
                ob_tray.TrayQnt11 += 1;
            }
            if (piece_state == 22)
            {
                ob_tray.TrayQnt12 += 1;
            }
            if (piece_state == 23)
            {
                ob_tray.TrayQnt13 += 1;
            }
            if (piece_state == 24)
            {
                ob_tray.TrayQnt14 += 1;
            }
            if (piece_state == 25)
            {
                ob_tray.TrayQnt15 += 1;
            }
            if (piece_state == 26)
            {
                ob_tray.TrayQnt16 += 1;
            }
            if (piece_state == 27)
            {
                ob_tray.TrayQnt17 += 1;
            }
            if (piece_state == 28)
            {
                ob_tray.TrayQnt18 += 1;
            }
            if (piece_state == 29)
            {
                ob_tray.TrayQnt19 += 1;
            }
            if (piece_state == 30)
            {
                ob_tray.TrayQnt20 += 1;
            }
        }
        puzzle_piece.socket_x_location = Xstart + (vcolomb * Plus_x);
        puzzle_piece.socket_y_location = Ystart + (y_row_to_use * Plus_y);
        puzzle_piece.image_index = puz_bit_num - 1;
        puzzle_piece.alarm[6] = 100;
        puz_bit_num += 1;
        if (((i + 1) % VertRows) == 0)
        {
            y_row_to_use += 1;
            vcolomb = 0;
        }
        else
        {
            vcolomb += 1;
        }
    }
    ds_grid_destroy(PuzGrid);
}
