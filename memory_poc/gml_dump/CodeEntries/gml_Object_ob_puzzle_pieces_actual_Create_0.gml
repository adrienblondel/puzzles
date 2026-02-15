image_alpha = 0;
image_speed = 0;
sprite_index = global.puzzle_sprite_index_to_use;
speed = 0;
direction = 0;
depth = -200;
Img_alpha = 1;
CurrentState = 0;
can_bounce = 1;
TrayX = 0;
TrayY = 0;
TrayNum = 0;
SetIntroTrayDepth = 1;
clearXtarget = 0;
clearYtarget = 0;
socket_x_location = 0;
socket_y_location = 0;
FloatRotDir = choose(0, 1);
Can_Intro = 1;
IntroAngle = 0;
if (global.piece_rotation == 1)
{
    IntroAngle = choose(0, 90, 180, 270);
}
