image_index = choose(0, 1, 2);
image_speed = 0;
var left_or_right = choose(0, 1);
if (left_or_right == 1)
{
    direction = irandom_range(100, 190);
}
else
{
    direction = irandom_range(-10, 80);
}
gravity_direction = 270;
gravity = random_range(0.05, 0.2);
speed = random_range(3, 10);
image_xscale = random_range(0.3, 1);
image_yscale = image_xscale;
alarm[0] = 1;
trailer_alpha = 1;
alarm[2] = irandom_range(10, 80);
fade_speed = random_range(0.01, 0.2);
