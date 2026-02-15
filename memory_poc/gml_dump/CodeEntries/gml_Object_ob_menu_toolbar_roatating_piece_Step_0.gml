image_angle -= 2;
if (has_faded_in == 1)
{
    if (x > 750)
    {
        if (image_alpha > 0)
        {
            image_alpha -= 0.01;
        }
        else
        {
            instance_destroy();
            instance_create(297, 270, ob_menu_toolbar_roatating_piece);
            instance_create(1903, 270, ob_menu_toolbar_roatating_piece2);
        }
    }
}
else if (image_alpha < 1)
{
    image_alpha += 0.01;
}
else
{
    has_faded_in = 1;
}
