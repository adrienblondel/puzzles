if (num_gold_make == 10000000)
{
    bit_to_make = instance_create(mouse_x, mouse_y, ob_new_menu_gold_spend_particle);
    bit_to_make.sprite_index = sp_kiosk_uktimate_piece;
    num_gold_make = 0;
}
else if (num_gold_make > 0)
{
    bit_to_make = instance_create(mouse_x, mouse_y, ob_new_menu_gold_spend_particle);
    num_gold_make -= 1;
    alarm[3] = 1;
}
