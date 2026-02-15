alarm[0] = choose(1, 2);
spark_id = instance_create(x, y, ob_fireworks_smoke);
if (sprite_index == sp_firework_1_spark)
{
    spark_id.sprite_index = sp_firework_1_shrapnel;
}
if (sprite_index == sp_firework_2_spark)
{
    spark_id.sprite_index = sp_firework_2_shrapnel;
}
if (sprite_index == sp_firework_3_spark)
{
    spark_id.sprite_index = sp_firework_3_shrapnel;
}
if (sprite_index == sp_firework_4_spark)
{
    spark_id.sprite_index = sp_firework_4_shrapnel;
}
if (sprite_index == sp_firework_5_spark)
{
    spark_id.sprite_index = sp_firework_5_shrapnel;
}
if (sprite_index == sp_firework_6_spark)
{
    spark_id.sprite_index = sp_firework_6_shrapnel;
}
spark_id.image_angle = irandom(359);
