sale_word_1 = 0;
sale_word_2 = 0;
sale_amount = 0;
button_colour = 16777215;
can_correct_position = 0;
pack_is_owned = 0;
pack_is_complete = 0;
number_of_puzzles_complete = 0;
number_of_puzzles = 0;
alarm[1] = 1;
button_fav_x_plus_amount = 0;
pack_is_a_fav = 0;
favorite_hilight_alpha = 0;
favorite_hilight_alpha_up_or_down = 0;
unfavorite_hilight_is_showing = 0;
add_to_favorite_hilight_is_showing = 0;
alarm[2] = 1;
backing_image_blend = 0;
colour_set_to_use = 0;
current_button_sprite_showing_1_or_2 = 0;
button_sprite_to_show_1 = 1;
button_sprite_to_show_2 = 1;
button_sprite_to_show_1_alpha = 1;
button_sprite_to_show_2_alpha = 0;
pack_sprite_index = 0;
alarm[4] = 1;
colour_to_use = 16777215;
image_alpha = 0;
if (global.puzzle_favorites_can_fade_in == 1)
{
    alarm[0] = 1 + random(60);
}
else
{
    alarm[0] = 1 + random(30);
}
