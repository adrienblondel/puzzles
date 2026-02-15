var FrameSprite = "\themes\theme" + string(global.theme_to_use) + "frame" + string(global.level_type) + ".png";
if (file_exists(working_directory + string(FrameSprite)))
{
    T_Frame = sprite_add(working_directory + string(FrameSprite), 0, false, false, 0, 0);
}
if (global.theme_to_use == 2)
{
    var LineSprite = "\themes\theme" + string(global.theme_to_use) + "frame" + string(global.level_type) + "lines.png";
    if (file_exists(working_directory + string(LineSprite)))
    {
        GlowLines = sprite_add(working_directory + string(LineSprite), 0, false, false, 0, 0);
    }
}
