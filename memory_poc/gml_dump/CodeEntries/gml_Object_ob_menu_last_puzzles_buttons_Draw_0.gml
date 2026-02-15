if (toolbar_button_number == 1)
{
    draw_sprite(global.last_puzzle_button_1_sprite_index, 0, x, y);
}
if (toolbar_button_number == 2)
{
    draw_sprite(global.last_puzzle_button_2_sprite_index, 0, x, y);
}
if (toolbar_button_number == 3)
{
    draw_sprite(global.last_puzzle_button_3_sprite_index, 0, x, y);
}
if (toolbar_button_number == 4)
{
    draw_sprite(global.last_puzzle_button_4_sprite_index, 0, x, y);
}
if (toolbar_button_number == 5)
{
    draw_sprite(global.last_puzzle_button_5_sprite_index, 0, x, y);
}
if (toolbar_button_number == 6)
{
    draw_sprite(global.last_puzzle_button_6_sprite_index, 0, x, y);
}
draw_set_halign(fa_center);
draw_set_colour(c_white);
draw_set_font(global.current_font_22);
draw_text_transformed(x + 117, y + 187, puzzle_number_of_pieces_placed, 0.8, 0.8, 0);
draw_text_transformed(x + 117, y + 215, puzzle_total_pieces, 0.8, 0.8, 0);
draw_set_halign(fa_left);
