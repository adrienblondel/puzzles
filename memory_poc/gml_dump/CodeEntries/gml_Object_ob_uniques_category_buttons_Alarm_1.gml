if (unique_category_button == 2)
{
    title_to_display = ob_language_controller.uniques_title_2;
    pack_sprite_index = sp_kiosk_category_icon_experimentals;
    colour_set_to_use = choose(1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 12, 14, 15, 16, 17, 19);
    total_frames = 11;
}
else if (unique_category_button == 3)
{
    title_to_display = ob_language_controller.uniques_title_3;
    pack_sprite_index = sp_kiosk_category_icon_figurals;
    colour_set_to_use = choose(1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 12, 14, 15, 16, 17, 19);
    total_frames = 7;
}
else if (unique_category_button == 4)
{
    title_to_display = ob_language_controller.uniques_title_4;
    pack_sprite_index = sp_kiosk_category_icon_challenges;
    colour_set_to_use = choose(1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 12, 14, 15, 16, 17, 19);
    total_frames = 8;
}
else if (unique_category_button == 1)
{
    title_to_display = ob_language_controller.uniques_title_1;
    pack_sprite_index = sp_kiosk_category_icon_puzzles;
    colour_set_to_use = choose(1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 12, 14, 15, 16, 17, 19);
    total_frames = 5;
}
else
{
    colour_set_to_use = choose(24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34);
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
