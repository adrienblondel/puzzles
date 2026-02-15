var N = 0;
var A = 0;
var pieces_per_row = 0;
if (global.puzzle_max_number_of_pieces == 96)
{
    pieces_per_row = 12;
}
else if (global.puzzle_max_number_of_pieces == 140)
{
    pieces_per_row = 14;
}
else if (global.puzzle_max_number_of_pieces == 216)
{
    pieces_per_row = 18;
}
else if (global.puzzle_max_number_of_pieces == 330)
{
    pieces_per_row = 22;
}
else if (global.puzzle_max_number_of_pieces == 425)
{
    pieces_per_row = 25;
}
else if (global.puzzle_max_number_of_pieces == 640 && global.level_type == 2)
{
    pieces_per_row = 32;
}
else if (global.puzzle_max_number_of_pieces == 840)
{
    pieces_per_row = 35;
}
else if (global.puzzle_max_number_of_pieces == 1410)
{
    pieces_per_row = 47;
}
else if (global.puzzle_max_number_of_pieces == 60)
{
    pieces_per_row = 10;
}
else if (global.puzzle_max_number_of_pieces == 112)
{
    pieces_per_row = 14;
}
else if (global.puzzle_max_number_of_pieces == 153)
{
    pieces_per_row = 17;
}
else if (global.puzzle_max_number_of_pieces == 220)
{
    pieces_per_row = 20;
}
else if (global.puzzle_max_number_of_pieces == 350)
{
    pieces_per_row = 25;
}
else if (global.puzzle_max_number_of_pieces == 100)
{
    pieces_per_row = 10;
}
else if (global.puzzle_max_number_of_pieces == 169)
{
    pieces_per_row = 13;
}
else if (global.puzzle_max_number_of_pieces == 324)
{
    pieces_per_row = 18;
}
else if (global.puzzle_max_number_of_pieces == 400)
{
    pieces_per_row = 20;
}
else if (global.puzzle_max_number_of_pieces == 676)
{
    pieces_per_row = 26;
}
else if (global.puzzle_max_number_of_pieces == 841)
{
    pieces_per_row = 29;
}
else if (global.puzzle_max_number_of_pieces == 126)
{
    pieces_per_row = 18;
}
else if (global.puzzle_max_number_of_pieces == 168)
{
    pieces_per_row = 21;
}
else if (global.puzzle_max_number_of_pieces == 250)
{
    pieces_per_row = 25;
}
else if (global.puzzle_max_number_of_pieces == 455)
{
    pieces_per_row = 35;
}
else if (global.puzzle_max_number_of_pieces == 640 && global.level_type == 4)
{
    pieces_per_row = 40;
}
else if (global.puzzle_max_number_of_pieces == 810)
{
    pieces_per_row = 45;
}
else if (global.puzzle_max_number_of_pieces == 1000)
{
    pieces_per_row = 50;
}
var total_rows = global.puzzle_max_number_of_pieces div pieces_per_row;
var pList;
for (var i = 1; i <= pieces_per_row; i += 1)
{
    pList[N++] = i;
}
for (var row = 2; row < total_rows; row += 1)
{
    var left_edge = ((row - 1) * pieces_per_row) + 1;
    var right_edge = row * pieces_per_row;
    pList[N++] = left_edge;
    pList[N++] = right_edge;
}
var bottom_start = ((total_rows - 1) * pieces_per_row) + 1;
var bottom_end = total_rows * pieces_per_row;
for (var i = bottom_start; i <= bottom_end; i += 1)
{
    pList[N++] = i;
}
var PuzGrid = ds_grid_create(4, global.puzzle_max_number_of_pieces + 1);
var ClickedGrid = ds_grid_create(1, 500);
var savefile = "p" + string(global.current_pack_open) + ".ini";
var section = "P" + string(global.puzzle_number_to_play);
ini_open(string(savefile));
var grid_data = ini_read_string(section, "0", "");
if (grid_data != "")
{
    ds_grid_read(PuzGrid, grid_data);
}
var Clicked_data = ini_read_string("PC", "0", "");
if (Clicked_data != "")
{
    ds_grid_read(ClickedGrid, Clicked_data);
}
var PiecesClicked = ds_grid_get(ClickedGrid, 0, global.puzzle_number_to_play);
for (var i = 0; i < N; i++)
{
    var piece = pList[i];
    var PieceCheck = ds_grid_get(PuzGrid, 0, piece);
    if (PieceCheck != 1)
    {
        ds_grid_set(PuzGrid, 0, piece, 1);
        PiecesClicked += 1;
        global.total_number_of_pieces -= 1;
        with (ob_puzzle_pieces_actual)
        {
            if (image_index == (piece - 1))
            {
                CurrentState = 3;
                x = socket_x_location;
                y = socket_y_location;
            }
        }
    }
}
ds_grid_set(ClickedGrid, 0, global.puzzle_number_to_play, PiecesClicked);
ini_write_string(string(section), "0", ds_grid_write(PuzGrid));
ini_write_string("PC", "0", ds_grid_write(ClickedGrid));
ds_grid_destroy(PuzGrid);
ds_grid_destroy(ClickedGrid);
ini_close();
