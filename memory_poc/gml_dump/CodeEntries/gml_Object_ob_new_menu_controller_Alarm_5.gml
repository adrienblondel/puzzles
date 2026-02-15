var p_l = ds_list_create();
ds_list_add(p_l, 48, 47, 46, 45, 44, 43, 42, 41, 40, 39, 38, 37, 36, 35, 34, 33, 32, 31, 30, 29, 28, 27, 26, 25, 24, 23, 22, 21, 20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1);
puz_remaining = ds_list_size(p_l);
puz_remaining -= 1;
var p_l_num = puz_remaining;
var puz_x = 827;
var puz_y = 275;
var puz_but = 0;
var s_l = 0;
var s_s = 0;
var s_p = 0;
var s_pp = 0;
var puz_num = 0;
ini_open("ppu.ini");
puz_but = instance_create(puz_x, puz_y, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x + 191, puz_y, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x + 382, puz_y, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x + 573, puz_y, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x, puz_y + 123, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x + 191, puz_y + 123, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x + 382, puz_y + 123, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x + 573, puz_y + 123, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x, puz_y + 246, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x + 191, puz_y + 246, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x + 382, puz_y + 246, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x + 573, puz_y + 246, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x, puz_y + 369, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x + 191, puz_y + 369, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x + 382, puz_y + 369, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x + 573, puz_y + 369, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x, puz_y + 492, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x + 191, puz_y + 492, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x + 382, puz_y + 492, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x + 573, puz_y + 492, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x, puz_y + 615, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x + 191, puz_y + 615, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x + 382, puz_y + 615, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x + 573, puz_y + 615, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x, puz_y + 738, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x + 191, puz_y + 738, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x + 382, puz_y + 738, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x + 573, puz_y + 738, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x, puz_y + 861, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x + 191, puz_y + 861, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x + 382, puz_y + 861, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x + 573, puz_y + 861, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x, puz_y + 984, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x + 191, puz_y + 984, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x + 382, puz_y + 984, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x + 573, puz_y + 984, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x, puz_y + 1107, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x + 191, puz_y + 1107, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x + 382, puz_y + 1107, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x + 573, puz_y + 1107, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x, puz_y + 1230, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x + 191, puz_y + 1230, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x + 382, puz_y + 1230, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x + 573, puz_y + 1230, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x, puz_y + 1353, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x + 191, puz_y + 1353, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x + 382, puz_y + 1353, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
puz_but = instance_create(puz_x + 573, puz_y + 1353, ob_new_menu_puz_button);
if (p_l_num > -1)
{
    puz_num = ds_list_find_value(p_l, p_l_num);
    puz_but.puz_num = puz_num;
    p_s_n = puz_num;
    s_l = "p" + string(pack_to_open) + "x" + string(p_s_n);
    s_s = "p" + string(pack_to_open) + "x" + string(p_s_n) + "b0";
    s_p = ini_read_string(s_l, s_s, 0);
    s_pp = real(base64_decode(s_p));
    puz_but.pieces_placed = s_pp;
    puz_but.maxy_vis = 930;
    puz_but.miny_vis = 244;
    p_l_num -= 1;
}
ds_list_destroy(p_l);
ini_close();
