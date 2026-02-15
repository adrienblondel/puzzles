ArrowClicksMax = 0;
ArrowClicks = 0;
ScrollAmount = 150;
ini_open("pidsg.ini");
var PackGrid = ds_grid_create(10, global.TotalPacks + 1);
if (ini_key_exists("pi", "0"))
{
    ds_grid_read(PackGrid, ini_read_string("pi", "0", ""));
}
ini_close();
var buttons_per_row = 6;
var horizontal_spacing = 208;
var vertical_spacing = 150;
var initial_xpos = 423;
var initial_ypos = 260;
var total_rows = 0;
var puz_beat = 0;
var add_puz = 0;
var is_owned = 0;
var Puz_file = 0;
var puz_num = 0;
var RorP640 = 0;
var button_count = 0;
var total_buttons = 0;
for (var pack = 1; pack <= global.TotalPacks; pack++)
{
    var savefile = "p" + string(pack) + ".ini";
    ini_open(savefile);
    var ClickedGrid = ds_grid_create(1, 500);
    if (ini_key_exists("PC", "0"))
    {
        ds_grid_read(ClickedGrid, ini_read_string("PC", "0", ""));
    }
    ini_close();
    var total_puzzles_in_pack = ds_grid_get(PackGrid, 2, pack);
    for (var puz_index = 11; puz_index <= (10 + total_puzzles_in_pack); puz_index++)
    {
        var piece_count = ds_grid_get(PackGrid, puz_index, pack);
        puz_num = puz_index - 10;
        is_owned = 0;
        Puz_file = "\\misc\\content\\" + string(pack) + "\\p" + string(pack) + "p" + string(puz_num);
        if (file_exists(working_directory + string(Puz_file) + "b.png"))
        {
            is_owned = 1;
        }
        add_puz = 1;
        if (SbS_C == 1 || SbS_I == 1)
        {
            a_c = "complete_pack_" + string(pack) + "_puzzle_" + string(puz_num);
            puz_beat = steam_get_achievement(a_c);
            if (SbS_C == 1 && puz_beat != 1)
            {
                add_puz = 0;
            }
            if (SbS_I == 1 && puz_beat != 0)
            {
                add_puz = 0;
            }
        }
        RorP640 = 0;
        if (pack == 1 || pack == 7 || (pack == 59 && puz_num == 12) || (pack == 62 && puz_num == 6) || (pack == 62 && puz_num == 7) || (pack == 63 && puz_num == 4) || (pack == 65 && puz_num == 7) || (pack == 82 && puz_num == 13) || pack == 123)
        {
            RorP640 = 1;
        }
        if (is_owned == 1 && add_puz == 1)
        {
            if ((SbS_60 == 1 && piece_count == 60) || (SbS_112 == 1 && piece_count == 112) || (SbS_153 == 1 && piece_count == 153) || (SbS_220 == 1 && piece_count == 220) || (SbS_350 == 1 && piece_count == 350) || (SbS_96 == 1 && piece_count == 96) || (SbS_140 == 1 && piece_count == 140) || (SbS_216 == 1 && piece_count == 216) || (SbS_330 == 1 && piece_count == 330) || (SbS_425 == 1 && piece_count == 425) || (SbS_640 == 1 && piece_count == 640 && RorP640 == 0) || (SbS_840 == 1 && piece_count == 840) || (SbS_1410 == 1 && piece_count == 1410) || (SbS_100 == 1 && piece_count == 100) || (SbS_169 == 1 && piece_count == 169) || (SbS_324 == 1 && piece_count == 324) || (SbS_400 == 1 && piece_count == 400) || (SbS_676 == 1 && piece_count == 676) || (SbS_841 == 1 && piece_count == 841) || (SbS_126 == 1 && piece_count == 126) || (SbS_168 == 1 && piece_count == 168) || (SbS_250 == 1 && piece_count == 250) || (SbS_455 == 1 && piece_count == 455) || (SbS_640p == 1 && piece_count == 640 && RorP640 == 1) || (SbS_810 == 1 && piece_count == 810) || (SbS_1000 == 1 && piece_count == 1000))
            {
                total_buttons++;
                var row = button_count div buttons_per_row;
                var col = button_count % buttons_per_row;
                var xpos = initial_xpos + (col * horizontal_spacing);
                var ypos = initial_ypos + (row * vertical_spacing);
                var PuzBut = instance_create(xpos, ypos, ob_menu_puz_button);
                PuzBut.puz_num = puz_num;
                PuzBut.pack_num = pack;
                PuzBut.bits = piece_count;
                PuzBut.startY = ypos;
                PuzBut.SbS = 1;
                PuzBut.puz_beat = puz_beat;
                PuzBut.sprite_to_use = sprite_add(working_directory + string(Puz_file) + "b.png", 0, false, false, 87, 53);
                var pieces_placed = ds_grid_get(ClickedGrid, 0, puz_num);
                PuzBut.pieces_placed = max(pieces_placed, 0);
                button_count++;
            }
        }
    }
    ds_grid_destroy(ClickedGrid);
}
ds_grid_destroy(PackGrid);
total_rows = ceil(total_buttons / buttons_per_row);
if (total_rows > 6)
{
    ArrowClicksMax = total_rows - 6;
}
