if (ob_puzzles_generic_room_controller.ArcadeAliens == 1)
{
    image_alpha = 0.4;
}
else
{
    image_alpha = 0;
}
if (x < -150 || x > 2070)
{
    instance_destroy();
}
