alarm[3] = 5;
if (can_animate == 1)
{
    if (puzzle_image_index < total_frames)
    {
        puzzle_image_index += 1;
    }
    else
    {
        puzzle_image_index = 0;
    }
}
else
{
    puzzle_image_index = 0;
}
