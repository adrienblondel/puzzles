if (global.level_type != 5)
{
    if (CurrentState == 1 || CurrentState == 100)
    {
        if (global.level_type == 1)
        {
            var Loc = choose(0, 1, 2);
            if (Loc == 0)
            {
                clearXtarget = irandom_range(0, 170);
                clearYtarget = irandom_range(0, 1080);
            }
            else if (Loc == 1)
            {
                clearXtarget = irandom_range(1750, 1920);
                clearYtarget = irandom_range(0, 1080);
            }
            else if (Loc == 2)
            {
                clearXtarget = irandom_range(0, 1920);
                clearYtarget = irandom_range(850, 1080);
            }
        }
        if (global.level_type == 2)
        {
            var Loc = choose(0, 1, 2);
            if (Loc == 0)
            {
                clearXtarget = irandom_range(0, 170);
                clearYtarget = irandom_range(0, 1080);
            }
            else if (Loc == 1)
            {
                clearXtarget = irandom_range(1750, 1920);
                clearYtarget = irandom_range(0, 1080);
            }
            else if (Loc == 2)
            {
                clearXtarget = irandom_range(0, 1920);
                clearYtarget = irandom_range(980, 1080);
            }
        }
        if (global.level_type == 3)
        {
            var Loc = choose(0, 1);
            if (Loc == 0)
            {
                clearXtarget = irandom_range(0, 340);
                clearYtarget = irandom_range(0, 1080);
            }
            else if (Loc == 1)
            {
                clearXtarget = irandom_range(1580, 1920);
                clearYtarget = irandom_range(0, 1080);
            }
        }
        if (global.level_type == 4)
        {
            clearXtarget = irandom_range(0, 1870);
            clearYtarget = irandom_range(800, 1080);
        }
        CurrentState = 7;
        speed = random_range(10, 15);
        direction = point_direction(x, y, clearXtarget, clearYtarget);
    }
}
else if (CurrentState != 3)
{
    CurrentState = 0;
    alarm[0] = 1;
}
