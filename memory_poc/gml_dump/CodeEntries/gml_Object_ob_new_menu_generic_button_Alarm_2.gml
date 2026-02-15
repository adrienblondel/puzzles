alarm[2] = 2;
var dir_to_use = random(360);
if (ob_new_menu_controller.current_menu_page == 14)
{
    part_id = instance_create(x, y, ob_nm_fav_but_particle);
    part_id.speed = 0.1 + random(2.5);
    part_id.image_angle = dir_to_use;
    part_id.direction = dir_to_use;
    part_id.image_alpha = 0.5 + random(0.51);
    part_id.part_type = 0;
    part_id.alarm[0] = 5 + random(17);
    part_id = instance_create(x, y, ob_nm_fav_but_particle);
    part_id.speed = 0.1 + random(2.5);
    part_id.image_angle = dir_to_use;
    part_id.direction = dir_to_use;
    part_id.image_alpha = 0.5 + random(0.51);
    part_id.part_type = 0;
    part_id.alarm[0] = 5 + random(17);
    part_id = instance_create(x, y, ob_nm_fav_but_particle);
    part_id.speed = 0.1 + random(2.5);
    part_id.image_angle = dir_to_use;
    part_id.direction = dir_to_use;
    part_id.image_alpha = 0.5 + random(0.51);
    part_id.part_type = 0;
    part_id.alarm[0] = 5 + random(17);
}
else if (place_meeting(x, y, ob_menu_cursor))
{
    part_id = instance_create((x - 45) + random(90), (y - 45) + random(90), ob_nm_fav_but_particle);
    part_id.part_type = 1;
    part_id.move_speed = 3 + random(3.1);
    part_id = instance_create((x - 45) + random(90), (y - 45) + random(90), ob_nm_fav_but_particle);
    part_id.part_type = 1;
    part_id.move_speed = 3 + random(3.1);
}
