if (black_fade_alpha > 0)
{
    black_fade_alpha -= 0.04;
    alarm[0] = 2;
}
else
{
    black_fade_alpha = 0;
    ob_intro_puzzle_piece.alarm[0] = 50;
}
