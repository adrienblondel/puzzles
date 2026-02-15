var new_puz_num = 0;
if (puz_type == 1)
{
    new_puz_num = puz_num;
}
else if (puz_type == 2)
{
    new_puz_num = puz_num + 5000;
}
else if (puz_type == 3)
{
    new_puz_num = puz_num + 7000;
}
else if (puz_type == 4)
{
    new_puz_num = puz_num + 100;
}
else if (puz_type == 5)
{
    new_puz_num = puz_num + 1000;
}
ini_open("ppu.ini");
s_l = "p5000x" + string(new_puz_num);
s_s = "p5000x" + string(new_puz_num) + "b0";
s_p = ini_read_string(s_l, s_s, 0);
s_pp = real(base64_decode(s_p));
pieces_placed = s_pp;
ini_close();
