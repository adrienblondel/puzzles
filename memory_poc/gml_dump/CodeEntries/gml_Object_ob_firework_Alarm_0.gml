alarm[0] = 1;
smoke_id = instance_create(x, y, ob_fireworks_smoke);
smoke_id.image_angle = choose(image_angle, image_angle - 180);
smoke_id.image_xscale = image_xscale;
smoke_id.image_yscale = image_yscale;
if (can_do_turning == 1)
{
    if (turn_speed < turn_speed_target)
    {
        turn_speed += 1;
    }
    if (can_turn == 1)
    {
        direction += turn_speed;
        image_angle = direction;
    }
    else if (can_turn == 2)
    {
        direction -= turn_speed;
        image_angle = direction;
    }
}
