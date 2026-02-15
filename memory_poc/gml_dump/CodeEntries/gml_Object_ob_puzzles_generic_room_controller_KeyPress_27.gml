if (global.can_use_ui_and_buttons_in_puzzle == 1 || (puzzle_is_over == 1 && menu_overlay == 0 && ExitPuzzle != 1))
{
    ExitPuzzle = 1;
    global.can_pick_a_bit_up = 0;
    global.can_use_ui_and_buttons_in_puzzle = 0;
    audio_play_sound(s_ui_x_button, 1, false);
}
