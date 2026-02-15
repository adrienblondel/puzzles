spu = choose(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 2);
if (spu == 0)
{
    sprite_use = 18;
}
if (spu == 1)
{
    sprite_use = 17;
}
if (spu == 2)
{
    sprite_use = 21;
}
image_speed = 0;
speed = 1;
direction = random_range(0, 180);
gravity = random_range(0.06, 0.1);
gravity_direction = 270;
spin = choose(0, 1);
spin_speed = random_range(0.1, 5);
image_angle = random(360);
image_xscale = random_range(0.4, 1);
image_yscale = image_xscale;
