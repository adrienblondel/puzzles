image_speed = 0;
sprite_index = sp_theme_megacityone_big_flyers;
mask_index = sp_theme_megacityone_big_flyers;
big_flyer = choose(1, 2, 2, 3, 3, 4, 5, 6, 7, 8, 5, 6, 7, 8);
if (big_flyer == 1)
{
    depth = 9410;
    image_index = 0;
    x = 400 + random(2900);
    y = -129;
    speed = choose(6, 7, 8, 9);
    direction = 215;
    image_xscale = choose(0.3, 0.4, 0.5, 0.6, 0.7);
    image_yscale = image_xscale;
}
else if (big_flyer == 2)
{
    depth = choose(9510, 9490);
    image_index = choose(1, 2, 6);
    x = -144;
    y = 100 + random(800);
    speed = 5 + random(5);
    direction = choose(0, 1, 2, 359);
    image_xscale = choose(0.7, 0.75, 0.8, 0.85, 0.9, 0.95, 1);
    image_yscale = image_xscale;
    can_make_sound = choose(1, 0, 1, 1);
}
else if (big_flyer == 3)
{
    depth = choose(9510, 9490);
    image_index = choose(1, 2, 6);
    x = 2083;
    y = 100 + random(800);
    speed = 5 + random(5);
    direction = choose(180, 181, 182, 179);
    image_xscale = choose(-0.7, -0.8, -0.9, -1);
    if (image_xscale == -0.7)
    {
        image_yscale = 0.7;
    }
    else if (image_xscale == -0.8)
    {
        image_yscale = 0.8;
    }
    else if (image_xscale == -0.9)
    {
        image_yscale = 0.9;
    }
    else if (image_xscale == 1)
    {
        image_yscale = 1;
    }
    can_make_sound = choose(1, 0, 1, 1);
}
else if (big_flyer == 4)
{
    depth = 9420;
    image_index = 4;
    x = 2083;
    y = 150 + random(500);
    speed = choose(2.5, 3, 3.5, 4, 4.5);
    direction = choose(180);
    image_xscale = choose(0.8, 0.85, 0.9, 0.95, 1);
    image_yscale = image_xscale;
}
else if (big_flyer == 5)
{
    depth = 9430;
    image_index = 5;
    x = -700 + random(2400);
    y = 1224;
    speed = 10 + random(5);
    direction = 45;
    image_xscale = choose(0.7, 0.75, 0.8, 0.85, 0.9, 0.95, 1);
    image_yscale = image_xscale;
}
else if (big_flyer == 6)
{
    depth = 9430;
    image_index = 5;
    x = 2620 - random(2400);
    y = 1224;
    speed = 10 + random(5);
    direction = 135;
    image_xscale = choose(-0.7, -0.8, -0.9, -1);
    if (image_xscale == -0.7)
    {
        image_yscale = 0.7;
    }
    else if (image_xscale == -0.8)
    {
        image_yscale = 0.8;
    }
    else if (image_xscale == -0.9)
    {
        image_yscale = 0.9;
    }
    else if (image_xscale == 1)
    {
        image_yscale = 1;
    }
}
else if (big_flyer == 7)
{
    depth = 9440;
    image_index = 3;
    x = -100;
    y = 300 + random(1200);
    speed = 10 + random(5);
    direction = 25;
    image_xscale = choose(0.7, 0.75, 0.8, 0.85, 0.9, 0.95, 1);
    image_yscale = image_xscale;
    can_make_sound = choose(1, 0, 1, 1);
}
else if (big_flyer == 8)
{
    depth = 9440;
    image_index = 3;
    x = 2050;
    y = 300 + random(1200);
    speed = 7 + random(3);
    direction = 155;
    image_xscale = choose(-0.7, -0.8, -0.9, -1);
    if (image_xscale == -0.7)
    {
        image_yscale = 0.7;
    }
    else if (image_xscale == -0.8)
    {
        image_yscale = 0.8;
    }
    else if (image_xscale == -0.9)
    {
        image_yscale = 0.9;
    }
    else if (image_xscale == 1)
    {
        image_yscale = 1;
    }
    can_make_sound = choose(1, 0, 1, 1);
}
