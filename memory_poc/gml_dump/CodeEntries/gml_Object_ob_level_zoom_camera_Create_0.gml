x = 960;
y = 540;
current_hotkey_for_zoom = "Z";
alarm[0] = 1;
zoom_pan_speed = 0;
if (global.zoom_pan_speed == 1)
{
    zoom_pan_speed = 7;
}
else if (global.zoom_pan_speed == 2)
{
    zoom_pan_speed = 9;
}
else if (global.zoom_pan_speed == 3)
{
    zoom_pan_speed = 11;
}
else if (global.zoom_pan_speed == 4)
{
    zoom_pan_speed = 13;
}
else
{
    zoom_pan_speed = 5;
}
