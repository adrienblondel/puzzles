if (puzzle_number > 0)
{
    colour_set_to_use = choose(1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 12, 14, 15, 16, 17, 19);
}
else
{
    colour_set_to_use = choose(24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34);
}
if (puzzle_number == 1)
{
    title_to_display = "Challenge 1";
    puzzle_level_type = 3;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 0;
    puzzle_number_of_pieces = 676;
    if (steam_get_achievement("challenge_1"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x1b0 = ini_read_string("p5000x1", "p5000x1b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x1b0));
    ini_close();
}
else if (puzzle_number == 2)
{
    title_to_display = "Challenge 2";
    puzzle_level_type = 4;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 1;
    puzzle_number_of_pieces = 810;
    if (steam_get_achievement("challenge_2"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x2b0 = ini_read_string("p5000x2", "p5000x2b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x2b0));
    ini_close();
}
else if (puzzle_number == 3)
{
    title_to_display = "Challenge 3";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 2;
    puzzle_number_of_pieces = 840;
    if (steam_get_achievement("challenge_3"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x3b0 = ini_read_string("p5000x3", "p5000x3b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x3b0));
    ini_close();
}
else if (puzzle_number == 4)
{
    title_to_display = "Challenge 4";
    puzzle_level_type = 3;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 3;
    puzzle_number_of_pieces = 841;
    if (steam_get_achievement("challenge_4"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x4b0 = ini_read_string("p5000x4", "p5000x4b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x4b0));
    ini_close();
}
else if (puzzle_number == 5)
{
    title_to_display = "Challenge 5";
    puzzle_level_type = 3;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 4;
    puzzle_number_of_pieces = 841;
    if (steam_get_achievement("challenge_5"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5b0 = ini_read_string("p5000x5", "p5000x5b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5b0));
    ini_close();
}
else if (puzzle_number == 6)
{
    title_to_display = "Challenge 6";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 5;
    puzzle_number_of_pieces = 640;
    if (steam_get_achievement("challenge_6"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x6b0 = ini_read_string("p5000x6", "p5000x6b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x6b0));
    ini_close();
}
else if (puzzle_number == 7)
{
    title_to_display = "Challenge 7";
    puzzle_level_type = 4;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 6;
    puzzle_number_of_pieces = 810;
    if (steam_get_achievement("challenge_7"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x7b0 = ini_read_string("p5000x7", "p5000x7b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x7b0));
    ini_close();
}
else if (puzzle_number == 8)
{
    title_to_display = "Challenge 8";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 7;
    puzzle_number_of_pieces = 640;
    if (steam_get_achievement("challenge_8"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x8b0 = ini_read_string("p5000x8", "p5000x8b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x8b0));
    ini_close();
}
else if (puzzle_number == 9)
{
    title_to_display = "Challenge 9";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 8;
    puzzle_number_of_pieces = 840;
    if (steam_get_achievement("challenge_9"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x9b0 = ini_read_string("p5000x9", "p5000x9b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x9b0));
    ini_close();
}
else if (puzzle_number == 10)
{
    title_to_display = "Challenge 10";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 9;
    puzzle_number_of_pieces = 840;
    if (steam_get_achievement("challenge_10"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x10b0 = ini_read_string("p5000x10", "p5000x10b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x10b0));
    ini_close();
}
else if (puzzle_number == 11)
{
    title_to_display = "Challenge 11";
    puzzle_level_type = 3;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 10;
    puzzle_number_of_pieces = 400;
    if (steam_get_achievement("challenge_11"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x11b0 = ini_read_string("p5000x11", "p5000x11b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x11b0));
    ini_close();
}
else if (puzzle_number == 12)
{
    title_to_display = "Challenge 12";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 11;
    puzzle_number_of_pieces = 425;
    if (steam_get_achievement("challenge_12"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x12b0 = ini_read_string("p5000x12", "p5000x12b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x12b0));
    ini_close();
}
else if (puzzle_number == 13)
{
    title_to_display = "Challenge 13";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 12;
    puzzle_number_of_pieces = 425;
    if (steam_get_achievement("challenge_13"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x13b0 = ini_read_string("p5000x13", "p5000x13b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x13b0));
    ini_close();
}
else if (puzzle_number == 14)
{
    title_to_display = "Challenge 14";
    puzzle_level_type = 4;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 13;
    puzzle_number_of_pieces = 640;
    if (steam_get_achievement("challenge_14"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x14b0 = ini_read_string("p5000x14", "p5000x14b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x14b0));
    ini_close();
}
else if (puzzle_number == 15)
{
    title_to_display = "Challenge 15";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 14;
    puzzle_number_of_pieces = 640;
    if (steam_get_achievement("challenge_15"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x15b0 = ini_read_string("p5000x15", "p5000x15b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x15b0));
    ini_close();
}
else if (puzzle_number == 16)
{
    title_to_display = "Challenge 16";
    puzzle_level_type = 3;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 15;
    puzzle_number_of_pieces = 676;
    if (steam_get_achievement("challenge_16"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x16b0 = ini_read_string("p5000x16", "p5000x16b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x16b0));
    ini_close();
}
else if (puzzle_number == 17)
{
    title_to_display = "Challenge 17";
    puzzle_level_type = 4;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 16;
    puzzle_number_of_pieces = 640;
    if (steam_get_achievement("challenge_17"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x17b0 = ini_read_string("p5000x17", "p5000x17b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x17b0));
    ini_close();
}
else if (puzzle_number == 18)
{
    title_to_display = "Challenge 18";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 17;
    puzzle_number_of_pieces = 640;
    if (steam_get_achievement("challenge_18"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x18b0 = ini_read_string("p5000x18", "p5000x18b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x18b0));
    ini_close();
}
else if (puzzle_number == 19)
{
    title_to_display = "Challenge 19";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 18;
    puzzle_number_of_pieces = 1410;
    if (steam_get_achievement("challenge_19"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x19b0 = ini_read_string("p5000x19", "p5000x19b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x19b0));
    ini_close();
}
else if (puzzle_number == 20)
{
    title_to_display = "Challenge 20";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 19;
    puzzle_number_of_pieces = 640;
    if (steam_get_achievement("challenge_20"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x20b0 = ini_read_string("p5000x20", "p5000x20b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x20b0));
    ini_close();
}
else if (puzzle_number == 21)
{
    title_to_display = "Challenge 21";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 20;
    puzzle_number_of_pieces = 640;
    if (steam_get_achievement("challenge_21"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x21b0 = ini_read_string("p5000x21", "p5000x21b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x21b0));
    ini_close();
}
else if (puzzle_number == 22)
{
    title_to_display = "Challenge 22";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 21;
    puzzle_number_of_pieces = 640;
    if (steam_get_achievement("challenge_22"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x22b0 = ini_read_string("p5000x22", "p5000x22b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x22b0));
    ini_close();
}
else if (puzzle_number == 23)
{
    title_to_display = "Challenge 23";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 22;
    puzzle_number_of_pieces = 640;
    if (steam_get_achievement("challenge_23"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x23b0 = ini_read_string("p5000x23", "p5000x23b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x23b0));
    ini_close();
}
else if (puzzle_number == 24)
{
    title_to_display = "Challenge 24";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 23;
    puzzle_number_of_pieces = 640;
    if (steam_get_achievement("challenge_24"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x24b0 = ini_read_string("p5000x24", "p5000x24b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x24b0));
    ini_close();
}
else if (puzzle_number == 25)
{
    title_to_display = "Challenge 25";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 24;
    puzzle_number_of_pieces = 640;
    if (steam_get_achievement("challenge_25"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x25b0 = ini_read_string("p5000x25", "p5000x25b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x25b0));
    ini_close();
}
else if (puzzle_number == 26)
{
    title_to_display = "Challenge 26";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 25;
    puzzle_number_of_pieces = 425;
    if (steam_get_achievement("challenge_26"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x26b0 = ini_read_string("p5000x26", "p5000x26b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x26b0));
    ini_close();
}
else if (puzzle_number == 27)
{
    title_to_display = "Challenge 27";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 26;
    puzzle_number_of_pieces = 640;
    if (steam_get_achievement("challenge_27"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x27b0 = ini_read_string("p5000x27", "p5000x27b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x27b0));
    ini_close();
}
else if (puzzle_number == 28)
{
    title_to_display = "Challenge 28";
    puzzle_level_type = 3;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 27;
    puzzle_number_of_pieces = 676;
    if (steam_get_achievement("challenge_28"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x28b0 = ini_read_string("p5000x28", "p5000x28b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x28b0));
    ini_close();
}
else if (puzzle_number == 29)
{
    title_to_display = "Challenge 29";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 28;
    puzzle_number_of_pieces = 425;
    if (steam_get_achievement("challenge_29"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x29b0 = ini_read_string("p5000x29", "p5000x29b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x29b0));
    ini_close();
}
else if (puzzle_number == 30)
{
    title_to_display = "Challenge 30";
    puzzle_level_type = 4;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 29;
    puzzle_number_of_pieces = 455;
    if (steam_get_achievement("challenge_30"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x30b0 = ini_read_string("p5000x30", "p5000x30b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x30b0));
    ini_close();
}
else if (puzzle_number == 31)
{
    title_to_display = "Challenge 31";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 30;
    puzzle_number_of_pieces = 425;
    if (steam_get_achievement("challenge_31"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x31b0 = ini_read_string("p5000x31", "p5000x31b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x31b0));
    ini_close();
}
else if (puzzle_number == 32)
{
    title_to_display = "Challenge 32";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 31;
    puzzle_number_of_pieces = 425;
    if (steam_get_achievement("challenge_32"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x32b0 = ini_read_string("p5000x32", "p5000x32b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x32b0));
    ini_close();
}
else if (puzzle_number == 33)
{
    title_to_display = "Challenge 33";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 32;
    puzzle_number_of_pieces = 425;
    if (steam_get_achievement("challenge_33"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x33b0 = ini_read_string("p5000x33", "p5000x33b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x33b0));
    ini_close();
}
else if (puzzle_number == 34)
{
    title_to_display = "Challenge 34";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 33;
    puzzle_number_of_pieces = 425;
    if (steam_get_achievement("challenge_34"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x34b0 = ini_read_string("p5000x34", "p5000x34b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x34b0));
    ini_close();
}
else if (puzzle_number == 35)
{
    title_to_display = "Challenge 35";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 34;
    puzzle_number_of_pieces = 330;
    if (steam_get_achievement("challenge_35"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x35b0 = ini_read_string("p5000x35", "p5000x35b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x35b0));
    ini_close();
}
else if (puzzle_number == 36)
{
    title_to_display = "Challenge 36";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 35;
    puzzle_number_of_pieces = 425;
    if (steam_get_achievement("challenge_36"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x36b0 = ini_read_string("p5000x36", "p5000x36b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x36b0));
    ini_close();
}
else if (puzzle_number == 37)
{
    title_to_display = "Challenge 37";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 36;
    puzzle_number_of_pieces = 330;
    if (steam_get_achievement("challenge_37"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x37b0 = ini_read_string("p5000x37", "p5000x37b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x37b0));
    ini_close();
}
else if (puzzle_number == 38)
{
    title_to_display = "Challenge 38";
    puzzle_level_type = 3;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 37;
    puzzle_number_of_pieces = 324;
    if (steam_get_achievement("challenge_38"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x38b0 = ini_read_string("p5000x38", "p5000x38b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x38b0));
    ini_close();
}
else if (puzzle_number == 39)
{
    title_to_display = "Challenge 39";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 38;
    puzzle_number_of_pieces = 330;
    if (steam_get_achievement("challenge_39"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x39b0 = ini_read_string("p5000x39", "p5000x39b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x39b0));
    ini_close();
}
else if (puzzle_number == 40)
{
    title_to_display = "Challenge 40";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 39;
    puzzle_number_of_pieces = 330;
    if (steam_get_achievement("challenge_40"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x40b0 = ini_read_string("p5000x40", "p5000x40b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x40b0));
    ini_close();
}
else if (puzzle_number == 41)
{
    title_to_display = "Challenge 41";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 40;
    puzzle_number_of_pieces = 425;
    if (steam_get_achievement("challenge_41"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x41b0 = ini_read_string("p5000x41", "p5000x41b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x41b0));
    ini_close();
}
else if (puzzle_number == 42)
{
    title_to_display = "Challenge 42";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 41;
    puzzle_number_of_pieces = 425;
    if (steam_get_achievement("challenge_42"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x42b0 = ini_read_string("p5000x42", "p5000x42b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x42b0));
    ini_close();
}
else if (puzzle_number == 43)
{
    title_to_display = "Challenge 43";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 42;
    puzzle_number_of_pieces = 425;
    if (steam_get_achievement("challenge_43"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x43b0 = ini_read_string("p5000x43", "p5000x43b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x43b0));
    ini_close();
}
else if (puzzle_number == 44)
{
    title_to_display = "Challenge 44";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 43;
    puzzle_number_of_pieces = 425;
    if (steam_get_achievement("challenge_44"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x44b0 = ini_read_string("p5000x44", "p5000x44b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x44b0));
    ini_close();
}
else if (puzzle_number == 45)
{
    title_to_display = "Challenge 45";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 44;
    puzzle_number_of_pieces = 330;
    if (steam_get_achievement("challenge_45"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x45b0 = ini_read_string("p5000x45", "p5000x45b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x45b0));
    ini_close();
}
else if (puzzle_number == 46)
{
    title_to_display = "Challenge 46";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 45;
    puzzle_number_of_pieces = 425;
    if (steam_get_achievement("challenge_46"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x46b0 = ini_read_string("p5000x46", "p5000x46b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x46b0));
    ini_close();
}
else if (puzzle_number == 47)
{
    title_to_display = "Challenge 47";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 46;
    puzzle_number_of_pieces = 840;
    if (steam_get_achievement("challenge_47"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x47b0 = ini_read_string("p5000x47", "p5000x47b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x47b0));
    ini_close();
}
else if (puzzle_number == 48)
{
    title_to_display = "Challenge 48";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 47;
    puzzle_number_of_pieces = 425;
    if (steam_get_achievement("challenge_48"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x48b0 = ini_read_string("p5000x48", "p5000x48b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x48b0));
    ini_close();
}
else if (puzzle_number == 49)
{
    title_to_display = "Challenge 49";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 48;
    puzzle_number_of_pieces = 425;
    if (steam_get_achievement("challenge_49"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x49b0 = ini_read_string("p5000x49", "p5000x49b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x49b0));
    ini_close();
}
else if (puzzle_number == 50)
{
    title_to_display = "Challenge 50";
    puzzle_level_type = 4;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 49;
    puzzle_number_of_pieces = 640;
    if (steam_get_achievement("challenge_50"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x50b0 = ini_read_string("p5000x50", "p5000x50b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x50b0));
    ini_close();
}
else if (puzzle_number == 51)
{
    title_to_display = "Challenge 51";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 50;
    puzzle_number_of_pieces = 425;
    if (steam_get_achievement("challenge_51"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x51b0 = ini_read_string("p5000x51", "p5000x51b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x51b0));
    ini_close();
}
else if (puzzle_number == 52)
{
    title_to_display = "Challenge 52";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 51;
    puzzle_number_of_pieces = 640;
    if (steam_get_achievement("challenge_52"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x52b0 = ini_read_string("p5000x52", "p5000x52b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x52b0));
    ini_close();
}
else if (puzzle_number == 53)
{
    title_to_display = "Challenge 53";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 52;
    puzzle_number_of_pieces = 425;
    if (steam_get_achievement("challenge_53"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x53b0 = ini_read_string("p5000x53", "p5000x53b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x53b0));
    ini_close();
}
else if (puzzle_number == 54)
{
    title_to_display = "Challenge 54";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 53;
    puzzle_number_of_pieces = 425;
    if (steam_get_achievement("challenge_54"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x54b0 = ini_read_string("p5000x54", "p5000x54b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x54b0));
    ini_close();
}
else if (puzzle_number == 55)
{
    title_to_display = "Challenge 55";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 54;
    puzzle_number_of_pieces = 640;
    if (steam_get_achievement("challenge_55"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x55b0 = ini_read_string("p5000x55", "p5000x55b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x55b0));
    ini_close();
}
else if (puzzle_number == 56)
{
    title_to_display = "Challenge 56";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 55;
    puzzle_number_of_pieces = 640;
    if (steam_get_achievement("challenge_56"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x56b0 = ini_read_string("p5000x56", "p5000x56b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x56b0));
    ini_close();
}
else if (puzzle_number == 57)
{
    title_to_display = "Challenge 57";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 56;
    puzzle_number_of_pieces = 425;
    if (steam_get_achievement("challenge_57"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x57b0 = ini_read_string("p5000x57", "p5000x57b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x57b0));
    ini_close();
}
else if (puzzle_number == 58)
{
    title_to_display = "Challenge 58";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 57;
    puzzle_number_of_pieces = 425;
    if (steam_get_achievement("challenge_58"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x58b0 = ini_read_string("p5000x58", "p5000x58b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x58b0));
    ini_close();
}
else if (puzzle_number == 59)
{
    title_to_display = "Challenge 59";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 58;
    puzzle_number_of_pieces = 330;
    if (steam_get_achievement("challenge_59"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x59b0 = ini_read_string("p5000x59", "p5000x59b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x59b0));
    ini_close();
}
else if (puzzle_number == 60)
{
    title_to_display = "Challenge 60";
    puzzle_level_type = 3;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 59;
    puzzle_number_of_pieces = 324;
    if (steam_get_achievement("challenge_60"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x60b0 = ini_read_string("p5000x60", "p5000x60b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x60b0));
    ini_close();
}
else if (puzzle_number == 61)
{
    title_to_display = "Challenge 61";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 60;
    puzzle_number_of_pieces = 330;
    if (steam_get_achievement("challenge_61"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x61b0 = ini_read_string("p5000x61", "p5000x61b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x61b0));
    ini_close();
}
else if (puzzle_number == 62)
{
    title_to_display = "Challenge 62";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 61;
    puzzle_number_of_pieces = 425;
    if (steam_get_achievement("challenge_62"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x62b0 = ini_read_string("p5000x62", "p5000x62b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x62b0));
    ini_close();
}
else if (puzzle_number == 63)
{
    title_to_display = "Challenge 63";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 62;
    puzzle_number_of_pieces = 330;
    if (steam_get_achievement("challenge_63"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x63b0 = ini_read_string("p5000x63", "p5000x63b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x63b0));
    ini_close();
}
else if (puzzle_number == 64)
{
    title_to_display = "Challenge 64";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 63;
    puzzle_number_of_pieces = 330;
    if (steam_get_achievement("challenge_64"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x64b0 = ini_read_string("p5000x64", "p5000x64b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x64b0));
    ini_close();
}
else if (puzzle_number == 65)
{
    title_to_display = "Challenge 65";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_challenges_icons;
    puzzle_image_index = 64;
    puzzle_number_of_pieces = 330;
    if (steam_get_achievement("challenge_65"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x65b0 = ini_read_string("p5000x65", "p5000x65b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x65b0));
    ini_close();
}
else if (puzzle_number == 101)
{
    title_to_display = "Anime";
    puzzle_level_type = 5;
    pack_sprite_index = sp_kiosk_figural_icons;
    puzzle_image_index = 0;
    puzzle_number_of_pieces = 21;
    if (steam_get_achievement("uniques_101"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x101b0 = ini_read_string("p5000x101", "p5000x101b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x101b0));
    ini_close();
}
else if (puzzle_number == 102)
{
    title_to_display = "Eagle";
    puzzle_level_type = 5;
    pack_sprite_index = sp_kiosk_figural_icons;
    puzzle_image_index = 1;
    puzzle_number_of_pieces = 29;
    if (steam_get_achievement("uniques_102"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x102b0 = ini_read_string("p5000x102", "p5000x102b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x102b0));
    ini_close();
}
else if (puzzle_number == 103)
{
    title_to_display = "Demon";
    puzzle_level_type = 5;
    pack_sprite_index = sp_kiosk_figural_icons;
    puzzle_image_index = 2;
    puzzle_number_of_pieces = 29;
    if (steam_get_achievement("uniques_103"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x103b0 = ini_read_string("p5000x103", "p5000x103b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x103b0));
    ini_close();
}
else if (puzzle_number == 104)
{
    title_to_display = "Rad Roach";
    puzzle_level_type = 5;
    pack_sprite_index = sp_kiosk_figural_icons;
    puzzle_image_index = 3;
    puzzle_number_of_pieces = 46;
    if (steam_get_achievement("uniques_104"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x104b0 = ini_read_string("p5000x104", "p5000x104b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x104b0));
    ini_close();
}
else if (puzzle_number == 105)
{
    title_to_display = "Shuttle";
    puzzle_level_type = 5;
    pack_sprite_index = sp_kiosk_figural_icons;
    puzzle_image_index = 4;
    puzzle_number_of_pieces = 37;
    if (steam_get_achievement("uniques_105"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x105b0 = ini_read_string("p5000x105", "p5000x105b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x105b0));
    ini_close();
}
else if (puzzle_number == 106)
{
    title_to_display = "Shell";
    puzzle_level_type = 5;
    pack_sprite_index = sp_kiosk_figural_icons;
    puzzle_image_index = 5;
    puzzle_number_of_pieces = 48;
    if (steam_get_achievement("uniques_106"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x106b0 = ini_read_string("p5000x106", "p5000x106b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x106b0));
    ini_close();
}
else if (puzzle_number == 107)
{
    title_to_display = "Sports Bike";
    puzzle_level_type = 5;
    pack_sprite_index = sp_kiosk_figural_icons;
    puzzle_image_index = 6;
    puzzle_number_of_pieces = 60;
    if (steam_get_achievement("uniques_107"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x107b0 = ini_read_string("p5000x107", "p5000x107b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x107b0));
    ini_close();
}
else if (puzzle_number == 108)
{
    title_to_display = "Sweets";
    puzzle_level_type = 5;
    pack_sprite_index = sp_kiosk_figural_icons;
    puzzle_image_index = 7;
    puzzle_number_of_pieces = 59;
    if (steam_get_achievement("uniques_108"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x108b0 = ini_read_string("p5000x108", "p5000x108b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x108b0));
    ini_close();
}
else if (puzzle_number == 109)
{
    title_to_display = "Gun";
    puzzle_level_type = 5;
    pack_sprite_index = sp_kiosk_figural_icons;
    puzzle_image_index = 8;
    puzzle_number_of_pieces = 30;
    if (steam_get_achievement("uniques_109"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x109b0 = ini_read_string("p5000x109", "p5000x109b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x109b0));
    ini_close();
}
else if (puzzle_number == 110)
{
    title_to_display = "Buddha";
    puzzle_level_type = 5;
    pack_sprite_index = sp_kiosk_figural_icons;
    puzzle_image_index = 9;
    puzzle_number_of_pieces = 54;
    if (steam_get_achievement("uniques_110"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x110b0 = ini_read_string("p5000x110", "p5000x110b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x110b0));
    ini_close();
}
else if (puzzle_number == 111)
{
    title_to_display = "Snail";
    puzzle_level_type = 5;
    pack_sprite_index = sp_kiosk_figural_icons;
    puzzle_image_index = 10;
    puzzle_number_of_pieces = 71;
    if (steam_get_achievement("uniques_111"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x111b0 = ini_read_string("p5000x111", "p5000x111b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x111b0));
    ini_close();
}
else if (puzzle_number == 112)
{
    title_to_display = "Boat";
    puzzle_level_type = 5;
    pack_sprite_index = sp_kiosk_figural_icons;
    puzzle_image_index = 11;
    puzzle_number_of_pieces = 47;
    if (steam_get_achievement("uniques_112"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x112b0 = ini_read_string("p5000x112", "p5000x112b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x112b0));
    ini_close();
}
else if (puzzle_number == 113)
{
    title_to_display = "Santa";
    puzzle_level_type = 5;
    pack_sprite_index = sp_kiosk_figural_icons;
    puzzle_image_index = 12;
    puzzle_number_of_pieces = 33;
    if (steam_get_achievement("uniques_113"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x113b0 = ini_read_string("p5000x113", "p5000x113b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x113b0));
    ini_close();
}
else if (puzzle_number == 114)
{
    title_to_display = "Cracker";
    puzzle_level_type = 5;
    pack_sprite_index = sp_kiosk_figural_icons;
    puzzle_image_index = 13;
    puzzle_number_of_pieces = 38;
    if (steam_get_achievement("uniques_114"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x114b0 = ini_read_string("p5000x114", "p5000x114b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x114b0));
    ini_close();
}
else if (puzzle_number == 115)
{
    title_to_display = "Present";
    puzzle_level_type = 5;
    pack_sprite_index = sp_kiosk_figural_icons;
    puzzle_image_index = 14;
    puzzle_number_of_pieces = 28;
    if (steam_get_achievement("uniques_115"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x115b0 = ini_read_string("p5000x115", "p5000x115b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x115b0));
    ini_close();
}
else if (puzzle_number == 116)
{
    title_to_display = "Snow Globe";
    puzzle_level_type = 5;
    pack_sprite_index = sp_kiosk_figural_icons;
    puzzle_image_index = 15;
    puzzle_number_of_pieces = 32;
    if (steam_get_achievement("uniques_116"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x116b0 = ini_read_string("p5000x116", "p5000x116b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x116b0));
    ini_close();
}
else if (puzzle_number == 117)
{
    title_to_display = "Snowman";
    puzzle_level_type = 5;
    pack_sprite_index = sp_kiosk_figural_icons;
    puzzle_image_index = 16;
    puzzle_number_of_pieces = 36;
    if (steam_get_achievement("uniques_117"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x117b0 = ini_read_string("p5000x117", "p5000x117b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x117b0));
    ini_close();
}
else if (puzzle_number == 118)
{
    title_to_display = "Stocking";
    puzzle_level_type = 5;
    pack_sprite_index = sp_kiosk_figural_icons;
    puzzle_image_index = 17;
    puzzle_number_of_pieces = 57;
    if (steam_get_achievement("uniques_118"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x118b0 = ini_read_string("p5000x118", "p5000x118b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x118b0));
    ini_close();
}
else if (puzzle_number == 1001)
{
    title_to_display = "Rainbow Field";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_experimentals_icons;
    puzzle_image_index = 0;
    puzzle_number_of_pieces = 1410;
    if (steam_get_achievement("uniques_1001"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x1001b0 = ini_read_string("p5000x1001", "p5000x1001b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x1001b0));
    ini_close();
}
else if (puzzle_number == 1002)
{
    title_to_display = "Blocks";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_experimentals_icons;
    puzzle_image_index = 1;
    puzzle_number_of_pieces = 840;
    if (steam_get_achievement("uniques_1002"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x1002b0 = ini_read_string("p5000x1002", "p5000x1002b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x1002b0));
    ini_close();
}
else if (puzzle_number == 1003)
{
    title_to_display = "Wood Wheel";
    puzzle_level_type = 5;
    pack_sprite_index = sp_kiosk_experimentals_icons;
    puzzle_image_index = 2;
    puzzle_number_of_pieces = 36;
    if (steam_get_achievement("uniques_1003"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x1003b0 = ini_read_string("p5000x1003", "p5000x1003b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x1003b0));
    ini_close();
}
else if (puzzle_number == 1005)
{
    title_to_display = "Orange";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_experimentals_icons;
    puzzle_image_index = 4;
    puzzle_number_of_pieces = 425;
    if (steam_get_achievement("uniques_1005"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x1005b0 = ini_read_string("p5000x1005", "p5000x1005b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x1005b0));
    ini_close();
}
else if (puzzle_number == 1006)
{
    title_to_display = "Cityscape";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_experimentals_icons;
    puzzle_image_index = 5;
    puzzle_number_of_pieces = 1410;
    if (steam_get_achievement("uniques_1006"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x1006b0 = ini_read_string("p5000x1006", "p5000x1006b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x1006b0));
    ini_close();
}
else if (puzzle_number == 1007)
{
    title_to_display = "Terracotta";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_experimentals_icons;
    puzzle_image_index = 6;
    puzzle_number_of_pieces = 1410;
    if (steam_get_achievement("uniques_1007"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x1007b0 = ini_read_string("p5000x1007", "p5000x1007b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x1007b0));
    ini_close();
}
else if (puzzle_number == 1009)
{
    title_to_display = "Industrial";
    puzzle_level_type = 3;
    pack_sprite_index = sp_kiosk_experimentals_icons;
    puzzle_image_index = 8;
    puzzle_number_of_pieces = 841;
    if (steam_get_achievement("uniques_1009"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x1009b0 = ini_read_string("p5000x1009", "p5000x1009b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x1009b0));
    ini_close();
}
else if (puzzle_number == 1010)
{
    title_to_display = "Monks";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_experimentals_icons;
    puzzle_image_index = 9;
    puzzle_number_of_pieces = 1410;
    if (steam_get_achievement("uniques_1010"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x1010b0 = ini_read_string("p5000x1010", "p5000x1010b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x1010b0));
    ini_close();
}
else if (puzzle_number == 1011)
{
    title_to_display = "Fractal";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_experimentals_icons;
    puzzle_image_index = 10;
    puzzle_number_of_pieces = 840;
    if (steam_get_achievement("uniques_1011"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x1011b0 = ini_read_string("p5000x1011", "p5000x1011b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x1011b0));
    ini_close();
}
else if (puzzle_number == 1012)
{
    title_to_display = "Eggs";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_experimentals_icons;
    puzzle_image_index = 11;
    puzzle_number_of_pieces = 840;
    if (steam_get_achievement("uniques_1012"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x1012b0 = ini_read_string("p5000x1012", "p5000x1012b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x1012b0));
    ini_close();
}
else if (puzzle_number == 1013)
{
    title_to_display = "Circuit";
    puzzle_level_type = 4;
    pack_sprite_index = sp_kiosk_experimentals_icons;
    puzzle_image_index = 12;
    puzzle_number_of_pieces = 1000;
    if (steam_get_achievement("uniques_1013"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x1013b0 = ini_read_string("p5000x1013", "p5000x1013b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x1013b0));
    ini_close();
}
else if (puzzle_number == 1014)
{
    title_to_display = "Normandy";
    puzzle_level_type = 3;
    pack_sprite_index = sp_kiosk_experimentals_icons;
    puzzle_image_index = 13;
    puzzle_number_of_pieces = 400;
    if (steam_get_achievement("uniques_1014"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x1014b0 = ini_read_string("p5000x1014", "p5000x1014b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x1014b0));
    ini_close();
}
else if (puzzle_number == 5001)
{
    title_to_display = "Pumpkin Comp";
    puzzle_level_type = 4;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 0;
    puzzle_number_of_pieces = 455;
    if (steam_get_achievement("uniques_5001"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5001b0 = ini_read_string("p5000x5001", "p5000x5001b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5001b0));
    ini_close();
}
else if (puzzle_number == 5002)
{
    title_to_display = "Butterfly";
    puzzle_level_type = 4;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 1;
    puzzle_number_of_pieces = 250;
    if (steam_get_achievement("uniques_5002"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5002b0 = ini_read_string("p5000x5002", "p5000x5002b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5002b0));
    ini_close();
}
else if (puzzle_number == 5003)
{
    title_to_display = "Berry Drink";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 2;
    puzzle_number_of_pieces = 425;
    if (steam_get_achievement("uniques_5003"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5003b0 = ini_read_string("p5000x5003", "p5000x5003b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5003b0));
    ini_close();
}
else if (puzzle_number == 5004)
{
    title_to_display = "Lake";
    puzzle_level_type = 4;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 3;
    puzzle_number_of_pieces = 168;
    if (steam_get_achievement("uniques_5004"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5004b0 = ini_read_string("p5000x5004", "p5000x5004b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5004b0));
    ini_close();
}
else if (puzzle_number == 5005)
{
    title_to_display = "Lighthouse";
    puzzle_level_type = 3;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 4;
    puzzle_number_of_pieces = 169;
    if (steam_get_achievement("uniques_5005"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5005b0 = ini_read_string("p5000x5005", "p5000x5005b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5005b0));
    ini_close();
}
else if (puzzle_number == 5006)
{
    title_to_display = "Pineapple";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 5;
    puzzle_number_of_pieces = 330;
    if (steam_get_achievement("uniques_5006"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5006b0 = ini_read_string("p5000x5006", "p5000x5006b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5006b0));
    ini_close();
}
else if (puzzle_number == 5007)
{
    title_to_display = "Mushroom";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 6;
    puzzle_number_of_pieces = 425;
    if (steam_get_achievement("uniques_5007"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5007b0 = ini_read_string("p5000x5007", "p5000x5007b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5007b0));
    ini_close();
}
else if (puzzle_number == 5008)
{
    title_to_display = "Poppy Field";
    puzzle_level_type = 4;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 7;
    puzzle_number_of_pieces = 640;
    if (steam_get_achievement("uniques_5008"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5008b0 = ini_read_string("p5000x5008", "p5000x5008b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5008b0));
    ini_close();
}
else if (puzzle_number == 5009)
{
    title_to_display = "Wigwam";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 8;
    puzzle_number_of_pieces = 140;
    if (steam_get_achievement("uniques_5009"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5009b0 = ini_read_string("p5000x5009", "p5000x5009b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5009b0));
    ini_close();
}
else if (puzzle_number == 5010)
{
    title_to_display = "Pyramids";
    puzzle_level_type = 4;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 9;
    puzzle_number_of_pieces = 455;
    if (steam_get_achievement("uniques_5010"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5010b0 = ini_read_string("p5000x5010", "p5000x5010b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5010b0));
    ini_close();
}
else if (puzzle_number == 5011)
{
    title_to_display = "Open Road";
    puzzle_level_type = 4;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 10;
    puzzle_number_of_pieces = 126;
    if (steam_get_achievement("uniques_5011"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5011b0 = ini_read_string("p5000x5011", "p5000x5011b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5011b0));
    ini_close();
}
else if (puzzle_number == 5012)
{
    title_to_display = "Tank";
    puzzle_level_type = 4;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 11;
    puzzle_number_of_pieces = 168;
    if (steam_get_achievement("uniques_5012"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5012b0 = ini_read_string("p5000x5012", "p5000x5012b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5012b0));
    ini_close();
}
else if (puzzle_number == 5013)
{
    title_to_display = "Tiger";
    puzzle_level_type = 4;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 12;
    puzzle_number_of_pieces = 810;
    if (steam_get_achievement("uniques_5013"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5013b0 = ini_read_string("p5000x5013", "p5000x5013b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5013b0));
    ini_close();
}
else if (puzzle_number == 5014)
{
    title_to_display = "Presents";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 13;
    puzzle_number_of_pieces = 140;
    if (steam_get_achievement("uniques_5014"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5014b0 = ini_read_string("p5000x5014", "p5000x5014b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5014b0));
    ini_close();
}
else if (puzzle_number == 5015)
{
    title_to_display = "Decorations";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 14;
    puzzle_number_of_pieces = 216;
    if (steam_get_achievement("uniques_5015"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5015b0 = ini_read_string("p5000x5015", "p5000x5015b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5015b0));
    ini_close();
}
else if (puzzle_number == 5016)
{
    title_to_display = "X-mas Owl";
    puzzle_level_type = 4;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 15;
    puzzle_number_of_pieces = 168;
    if (steam_get_achievement("uniques_5016"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5016b0 = ini_read_string("p5000x5016", "p5000x5016b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5016b0));
    ini_close();
}
else if (puzzle_number == 5017)
{
    title_to_display = "Sleigh";
    puzzle_level_type = 3;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 16;
    puzzle_number_of_pieces = 100;
    if (steam_get_achievement("uniques_5017"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5017b0 = ini_read_string("p5000x5017", "p5000x5017b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5017b0));
    ini_close();
}
else if (puzzle_number == 5018)
{
    title_to_display = "Giant Hound";
    puzzle_level_type = 4;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 17;
    puzzle_number_of_pieces = 455;
    if (steam_get_achievement("uniques_5018"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5018b0 = ini_read_string("p5000x5018", "p5000x5018b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5018b0));
    ini_close();
}
else if (puzzle_number == 5019)
{
    title_to_display = "Bacchanale";
    puzzle_level_type = 3;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 18;
    puzzle_number_of_pieces = 676;
    if (steam_get_achievement("uniques_5019"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5019b0 = ini_read_string("p5000x5019", "p5000x5019b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5019b0));
    ini_close();
}
else if (puzzle_number == 5020)
{
    title_to_display = "Owl";
    puzzle_level_type = 3;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 19;
    puzzle_number_of_pieces = 324;
    if (steam_get_achievement("uniques_5020"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5020b0 = ini_read_string("p5000x5020", "p5000x5020b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5020b0));
    ini_close();
}
else if (puzzle_number == 5021)
{
    title_to_display = "Mountain";
    puzzle_level_type = 4;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 20;
    puzzle_number_of_pieces = 250;
    if (steam_get_achievement("uniques_5021"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5021b0 = ini_read_string("p5000x5021", "p5000x5021b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5021b0));
    ini_close();
}
else if (puzzle_number == 5022)
{
    title_to_display = "Jigsaw";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 21;
    puzzle_number_of_pieces = 330;
    if (steam_get_achievement("uniques_5022"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5022b0 = ini_read_string("p5000x5022", "p5000x5022b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5022b0));
    ini_close();
}
else if (puzzle_number == 5023)
{
    title_to_display = "Gifts";
    puzzle_level_type = 3;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 22;
    puzzle_number_of_pieces = 169;
    if (steam_get_achievement("uniques_5023"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5023b0 = ini_read_string("p5000x5023", "p5000x5023b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5023b0));
    ini_close();
}
else if (puzzle_number == 5024)
{
    title_to_display = "Dinner Time";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 23;
    puzzle_number_of_pieces = 330;
    if (steam_get_achievement("uniques_5024"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5024b0 = ini_read_string("p5000x5024", "p5000x5024b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5024b0));
    ini_close();
}
else if (puzzle_number == 5025)
{
    title_to_display = "Owl In A Hat";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 24;
    puzzle_number_of_pieces = 96;
    if (steam_get_achievement("uniques_5025"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5025b0 = ini_read_string("p5000x5025", "p5000x5025b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5025b0));
    ini_close();
}
else if (puzzle_number == 5026)
{
    title_to_display = "Wrapping";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 25;
    puzzle_number_of_pieces = 216;
    if (steam_get_achievement("uniques_5026"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5026b0 = ini_read_string("p5000x5026", "p5000x5026b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5026b0));
    ini_close();
}
else if (puzzle_number == 5027)
{
    title_to_display = "Old Santa";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 26;
    puzzle_number_of_pieces = 140;
    if (steam_get_achievement("uniques_5027"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5027b0 = ini_read_string("p5000x5027", "p5000x5027b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5027b0));
    ini_close();
}
else if (puzzle_number == 5028)
{
    title_to_display = "Dessert";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 27;
    puzzle_number_of_pieces = 140;
    if (steam_get_achievement("uniques_5028"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5028b0 = ini_read_string("p5000x5028", "p5000x5028b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5028b0));
    ini_close();
}
else if (puzzle_number == 5029)
{
    title_to_display = "Savanna";
    puzzle_level_type = 4;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 28;
    puzzle_number_of_pieces = 126;
    if (steam_get_achievement("uniques_5029"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5029b0 = ini_read_string("p5000x5029", "p5000x5029b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5029b0));
    ini_close();
}
else if (puzzle_number == 5030)
{
    title_to_display = "Candy Hands";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 29;
    puzzle_number_of_pieces = 140;
    if (steam_get_achievement("uniques_5030"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5030b0 = ini_read_string("p5000x5030", "p5000x5030b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5030b0));
    ini_close();
}
else if (puzzle_number == 5031)
{
    title_to_display = "Fort";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 30;
    puzzle_number_of_pieces = 96;
    if (steam_get_achievement("uniques_5031"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5031b0 = ini_read_string("p5000x5031", "p5000x5031b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5031b0));
    ini_close();
}
else if (puzzle_number == 5032)
{
    title_to_display = "Da Vinci";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 31;
    puzzle_number_of_pieces = 96;
    if (steam_get_achievement("uniques_5032"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5032b0 = ini_read_string("p5000x5032", "p5000x5032b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5032b0));
    ini_close();
}
else if (puzzle_number == 5033)
{
    title_to_display = "Bird";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 32;
    puzzle_number_of_pieces = 140;
    if (steam_get_achievement("uniques_5033"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5033b0 = ini_read_string("p5000x5033", "p5000x5033b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5033b0));
    ini_close();
}
else if (puzzle_number == 5034)
{
    title_to_display = "Face";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 33;
    puzzle_number_of_pieces = 216;
    if (steam_get_achievement("uniques_5034"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5034b0 = ini_read_string("p5000x5034", "p5000x5034b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5034b0));
    ini_close();
}
else if (puzzle_number == 5035)
{
    title_to_display = "Castle";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 34;
    puzzle_number_of_pieces = 330;
    if (steam_get_achievement("uniques_5035"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5035b0 = ini_read_string("p5000x5035", "p5000x5035b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5035b0));
    ini_close();
}
else if (puzzle_number == 5036)
{
    title_to_display = "Salad";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 35;
    puzzle_number_of_pieces = 140;
    if (steam_get_achievement("uniques_5036"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5036b0 = ini_read_string("p5000x5036", "p5000x5036b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5036b0));
    ini_close();
}
else if (puzzle_number == 5037)
{
    title_to_display = "Horse";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 36;
    puzzle_number_of_pieces = 216;
    if (steam_get_achievement("uniques_5037"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5037b0 = ini_read_string("p5000x5037", "p5000x5037b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5037b0));
    ini_close();
}
else if (puzzle_number == 5038)
{
    title_to_display = "Advent";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 37;
    puzzle_number_of_pieces = 140;
    if (steam_get_achievement("uniques_5038"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5038b0 = ini_read_string("p5000x5038", "p5000x5038b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5038b0));
    ini_close();
}
else if (puzzle_number == 5039)
{
    title_to_display = "Deers";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 38;
    puzzle_number_of_pieces = 96;
    if (steam_get_achievement("uniques_5039"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5039b0 = ini_read_string("p5000x5039", "p5000x5039b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5039b0));
    ini_close();
}
else if (puzzle_number == 5040)
{
    title_to_display = "Manger";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 39;
    puzzle_number_of_pieces = 96;
    if (steam_get_achievement("uniques_5040"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5040b0 = ini_read_string("p5000x5040", "p5000x5040b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5040b0));
    ini_close();
}
else if (puzzle_number == 5041)
{
    title_to_display = "Merry Christmas";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 40;
    puzzle_number_of_pieces = 216;
    if (steam_get_achievement("uniques_5041"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5041b0 = ini_read_string("p5000x5041", "p5000x5041b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5041b0));
    ini_close();
}
else if (puzzle_number == 5042)
{
    title_to_display = "Mince Pies";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 41;
    puzzle_number_of_pieces = 140;
    if (steam_get_achievement("uniques_5042"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5042b0 = ini_read_string("p5000x5042", "p5000x5042b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5042b0));
    ini_close();
}
else if (puzzle_number == 5043)
{
    title_to_display = "Mini Santas";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 42;
    puzzle_number_of_pieces = 96;
    if (steam_get_achievement("uniques_5043"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5043b0 = ini_read_string("p5000x5043", "p5000x5043b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5043b0));
    ini_close();
}
else if (puzzle_number == 5044)
{
    title_to_display = "Mug";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 43;
    puzzle_number_of_pieces = 140;
    if (steam_get_achievement("uniques_5044"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5044b0 = ini_read_string("p5000x5044", "p5000x5044b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5044b0));
    ini_close();
}
else if (puzzle_number == 5045)
{
    title_to_display = "Nap Time";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 44;
    puzzle_number_of_pieces = 216;
    if (steam_get_achievement("uniques_5045"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5045b0 = ini_read_string("p5000x5045", "p5000x5045b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5045b0));
    ini_close();
}
else if (puzzle_number == 5046)
{
    title_to_display = "Pets";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 45;
    puzzle_number_of_pieces = 216;
    if (steam_get_achievement("uniques_5046"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5046b0 = ini_read_string("p5000x5046", "p5000x5046b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5046b0));
    ini_close();
}
else if (puzzle_number == 5047)
{
    title_to_display = "Take A Drink";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 46;
    puzzle_number_of_pieces = 140;
    if (steam_get_achievement("uniques_5047"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5047b0 = ini_read_string("p5000x5047", "p5000x5047b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5047b0));
    ini_close();
}
else if (puzzle_number == 5048)
{
    title_to_display = "Teddy";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 47;
    puzzle_number_of_pieces = 216;
    if (steam_get_achievement("uniques_5048"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5048b0 = ini_read_string("p5000x5048", "p5000x5048b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5048b0));
    ini_close();
}
else if (puzzle_number == 5049)
{
    title_to_display = "Unwrapping";
    puzzle_level_type = 3;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 48;
    puzzle_number_of_pieces = 169;
    if (steam_get_achievement("uniques_5049"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5049b0 = ini_read_string("p5000x5049", "p5000x5049b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5049b0));
    ini_close();
}
else if (puzzle_number == 5050)
{
    title_to_display = "Yum Yum";
    puzzle_level_type = 2;
    pack_sprite_index = sp_kiosk_puzzles_icons;
    puzzle_image_index = 49;
    puzzle_number_of_pieces = 140;
    if (steam_get_achievement("uniques_5050"))
    {
        puzzle_has_been_beat = 1;
    }
    ini_open("ppu.ini");
    var p5000x5050b0 = ini_read_string("p5000x5050", "p5000x5050b0", 0);
    puzzle_number_of_pieces_placed = real(base64_decode(p5000x5050b0));
    ini_close();
}
if (colour_set_to_use == 1)
{
    backing_image_blend = choose(make_colour_rgb(227, 58, 40), make_colour_rgb(244, 71, 57), make_colour_rgb(205, 29, 10), make_colour_rgb(207, 3, 1), make_colour_rgb(228, 3, 0), make_colour_rgb(220, 45, 43), make_colour_rgb(218, 64, 62), make_colour_rgb(238, 57, 57));
}
else if (colour_set_to_use == 2)
{
    backing_image_blend = choose(make_colour_rgb(189, 35, 42), make_colour_rgb(179, 38, 38), make_colour_rgb(175, 16, 16), make_colour_rgb(170, 21, 0), make_colour_rgb(143, 20, 3), make_colour_rgb(257, 32, 23), make_colour_rgb(2163, 63, 55), make_colour_rgb(158, 60, 65));
}
else if (colour_set_to_use == 3)
{
    backing_image_blend = choose(make_colour_rgb(241, 142, 142), make_colour_rgb(254, 175, 175), make_colour_rgb(227, 150, 150), make_colour_rgb(238, 144, 137), make_colour_rgb(251, 137, 128), make_colour_rgb(251, 187, 189), make_colour_rgb(240, 200, 200), make_colour_rgb(252, 134, 143));
}
else if (colour_set_to_use == 4)
{
    backing_image_blend = choose(make_colour_rgb(232, 88, 32), make_colour_rgb(255, 96, 34), make_colour_rgb(248, 77, 10), make_colour_rgb(224, 59, 21), make_colour_rgb(222, 81, 48), make_colour_rgb(229, 111, 47), make_colour_rgb(236, 103, 15), make_colour_rgb(208, 87, 6));
}
else if (colour_set_to_use == 5)
{
    backing_image_blend = choose(make_colour_rgb(225, 134, 94), make_colour_rgb(225, 152, 119), make_colour_rgb(225, 159, 117), make_colour_rgb(225, 156, 97), make_colour_rgb(236, 174, 123), make_colour_rgb(225, 165, 92), make_colour_rgb(220, 166, 137), make_colour_rgb(225, 155, 81));
}
else if (colour_set_to_use == 6)
{
    backing_image_blend = choose(make_colour_rgb(255, 184, 92), make_colour_rgb(243, 167, 70), make_colour_rgb(239, 179, 84), make_colour_rgb(252, 201, 121), make_colour_rgb(230, 192, 119), make_colour_rgb(250, 196, 93), make_colour_rgb(248, 197, 73), make_colour_rgb(251, 206, 119));
}
else if (colour_set_to_use == 8)
{
    backing_image_blend = choose(make_colour_rgb(186, 198, 50), make_colour_rgb(198, 215, 12), make_colour_rgb(164, 177, 19), make_colour_rgb(153, 178, 36), make_colour_rgb(168, 185, 89), make_colour_rgb(190, 206, 117), make_colour_rgb(191, 221, 88), make_colour_rgb(182, 218, 56));
}
else if (colour_set_to_use == 9)
{
    backing_image_blend = choose(make_colour_rgb(95, 189, 73), make_colour_rgb(147, 207, 133), make_colour_rgb(97, 220, 69), make_colour_rgb(72, 189, 20), make_colour_rgb(23, 199, 0), make_colour_rgb(41, 220, 17), make_colour_rgb(73, 232, 69), make_colour_rgb(123, 220, 127));
}
else if (colour_set_to_use == 10)
{
    backing_image_blend = choose(make_colour_rgb(92, 154, 86), make_colour_rgb(64, 144, 55), make_colour_rgb(38, 145, 27), make_colour_rgb(70, 120, 53), make_colour_rgb(88, 116, 67), make_colour_rgb(17, 122, 27), make_colour_rgb(51, 120, 64), make_colour_rgb(68, 107, 76));
}
else if (colour_set_to_use == 11)
{
    backing_image_blend = choose(make_colour_rgb(100, 200, 143), make_colour_rgb(64, 214, 127), make_colour_rgb(105, 179, 137), make_colour_rgb(110, 222, 168), make_colour_rgb(83, 230, 159), make_colour_rgb(129, 176, 153), make_colour_rgb(87, 165, 136), make_colour_rgb(56, 175, 132));
}
else if (colour_set_to_use == 12)
{
    backing_image_blend = choose(make_colour_rgb(88, 214, 213), make_colour_rgb(51, 236, 234), make_colour_rgb(56, 255, 253), make_colour_rgb(136, 232, 231), make_colour_rgb(101, 197, 211), make_colour_rgb(163, 221, 230), make_colour_rgb(49, 207, 221), make_colour_rgb(56, 173, 183));
}
else if (colour_set_to_use == 14)
{
    backing_image_blend = choose(make_colour_rgb(50, 100, 211), make_colour_rgb(81, 129, 227), make_colour_rgb(56, 89, 185), make_colour_rgb(30, 75, 204), make_colour_rgb(0, 52, 199), make_colour_rgb(51, 86, 219), make_colour_rgb(32, 100, 255), make_colour_rgb(70, 127, 255));
}
else if (colour_set_to_use == 15)
{
    backing_image_blend = choose(make_colour_rgb(44, 67, 184), make_colour_rgb(25, 49, 170), make_colour_rgb(0, 24, 144), make_colour_rgb(31, 47, 127), make_colour_rgb(59, 66, 128), make_colour_rgb(40, 50, 148), make_colour_rgb(42, 49, 119), make_colour_rgb(15, 25, 119));
}
else if (colour_set_to_use == 16)
{
    backing_image_blend = choose(make_colour_rgb(32, 21, 140), make_colour_rgb(32, 18, 166), make_colour_rgb(54, 38, 208), make_colour_rgb(80, 66, 223), make_colour_rgb(92, 80, 199), make_colour_rgb(77, 68, 160), make_colour_rgb(49, 41, 131), make_colour_rgb(138, 129, 223));
}
else if (colour_set_to_use == 17)
{
    backing_image_blend = choose(make_colour_rgb(130, 102, 200), make_colour_rgb(143, 103, 244), make_colour_rgb(106, 58, 230), make_colour_rgb(76, 13, 237), make_colour_rgb(74, 22, 204), make_colour_rgb(83, 50, 167), make_colour_rgb(73, 50, 133), make_colour_rgb(52, 17, 143));
}
else if (colour_set_to_use == 19)
{
    backing_image_blend = choose(make_colour_rgb(198, 30, 204), make_colour_rgb(228, 25, 235), make_colour_rgb(249, 72, 255), make_colour_rgb(229, 89, 214), make_colour_rgb(204, 70, 196), make_colour_rgb(182, 6, 172), make_colour_rgb(255, 107, 208), make_colour_rgb(207, 95, 193));
}
else if (colour_set_to_use == 24)
{
    backing_image_blend = choose(make_colour_rgb(122, 99, 99), make_colour_rgb(133, 114, 114), make_colour_rgb(106, 91, 91), make_colour_rgb(113, 92, 89), make_colour_rgb(122, 89, 84), make_colour_rgb(105, 82, 86), make_colour_rgb(128, 108, 110), make_colour_rgb(99, 75, 76));
}
else if (colour_set_to_use == 25)
{
    backing_image_blend = choose(make_colour_rgb(123, 112, 99), make_colour_rgb(133, 124, 114), make_colour_rgb(107, 100, 91), make_colour_rgb(114, 106, 89), make_colour_rgb(123, 110, 84), make_colour_rgb(106, 91, 82), make_colour_rgb(128, 116, 108), make_colour_rgb(100, 89, 75));
}
else if (colour_set_to_use == 26)
{
    backing_image_blend = choose(make_colour_rgb(123, 120, 99), make_colour_rgb(133, 130, 114), make_colour_rgb(107, 105, 91), make_colour_rgb(114, 114, 89), make_colour_rgb(123, 123, 84), make_colour_rgb(106, 99, 82), make_colour_rgb(128, 123, 108), make_colour_rgb(100, 97, 75));
}
else if (colour_set_to_use == 27)
{
    backing_image_blend = choose(make_colour_rgb(118, 123, 99), make_colour_rgb(129, 133, 114), make_colour_rgb(103, 107, 91), make_colour_rgb(105, 114, 89), make_colour_rgb(109, 123, 84), make_colour_rgb(104, 106, 82), make_colour_rgb(126, 128, 108), make_colour_rgb(94, 100, 75));
}
else if (colour_set_to_use == 28)
{
    backing_image_blend = choose(make_colour_rgb(103, 123, 99), make_colour_rgb(117, 133, 114), make_colour_rgb(93, 107, 91), make_colour_rgb(89, 114, 89), make_colour_rgb(84, 123, 84), make_colour_rgb(89, 106, 82), make_colour_rgb(113, 128, 108), make_colour_rgb(78, 100, 75));
}
else if (colour_set_to_use == 29)
{
    backing_image_blend = choose(make_colour_rgb(99, 123, 112), make_colour_rgb(114, 133, 125), make_colour_rgb(91, 107, 100), make_colour_rgb(89, 114, 107), make_colour_rgb(84, 123, 112), make_colour_rgb(82, 106, 92), make_colour_rgb(108, 128, 117), make_colour_rgb(75, 100, 90));
}
else if (colour_set_to_use == 30)
{
    backing_image_blend = choose(make_colour_rgb(99, 123, 119), make_colour_rgb(114, 133, 130), make_colour_rgb(91, 107, 104), make_colour_rgb(89, 114, 114), make_colour_rgb(84, 123, 123), make_colour_rgb(82, 106, 99), make_colour_rgb(108, 128, 123), make_colour_rgb(75, 100, 97));
}
else if (colour_set_to_use == 31)
{
    backing_image_blend = choose(make_colour_rgb(99, 115, 123), make_colour_rgb(114, 126, 133), make_colour_rgb(91, 102, 107), make_colour_rgb(89, 101, 114), make_colour_rgb(84, 103, 123), make_colour_rgb(82, 101, 106), make_colour_rgb(108, 123, 128), make_colour_rgb(75, 90, 100));
}
else if (colour_set_to_use == 32)
{
    backing_image_blend = choose(make_colour_rgb(99, 105, 123), make_colour_rgb(114, 118, 133), make_colour_rgb(91, 95, 107), make_colour_rgb(89, 91, 114), make_colour_rgb(84, 87, 123), make_colour_rgb(82, 91, 106), make_colour_rgb(108, 115, 128), make_colour_rgb(75, 80, 100));
}
else if (colour_set_to_use == 33)
{
    backing_image_blend = choose(make_colour_rgb(115, 101, 121), make_colour_rgb(127, 115, 131), make_colour_rgb(102, 92, 106), make_colour_rgb(109, 91, 112), make_colour_rgb(116, 87, 120), make_colour_rgb(95, 84, 104), make_colour_rgb(119, 109, 126), make_colour_rgb(93, 77, 98));
}
else if (colour_set_to_use == 34)
{
    backing_image_blend = choose(make_colour_rgb(85, 83, 82), make_colour_rgb(94, 93, 92), make_colour_rgb(75, 74, 73), make_colour_rgb(78, 76, 75), make_colour_rgb(80, 77, 75), make_colour_rgb(72, 69, 69), make_colour_rgb(90, 87, 87), make_colour_rgb(67, 65, 64));
}
