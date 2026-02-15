if (CurrentState == 0)
{
    var x1 = 0;
    var y1 = 0;
    var x2 = 0;
    var y2 = 0;
    var Loc = 0;
    if (global.level_type == 1)
    {
        Loc = choose(1, 2, 3);
        if (Loc == 1)
        {
            x1 = 20;
            y1 = 20;
            x2 = 210;
            y2 = 1050;
        }
        if (Loc == 2)
        {
            x1 = 1694;
            y1 = 20;
            x2 = 210;
            y2 = 1050;
        }
        if (Loc == 3)
        {
            x1 = 226;
            y1 = 801;
            x2 = 1467;
            y2 = 261;
        }
    }
    else if (global.level_type == 2)
    {
        Loc = choose(1, 2, 3);
        if (Loc == 1)
        {
            x1 = 20;
            y1 = 20;
            x2 = 213;
            y2 = 1048;
        }
        if (Loc == 2)
        {
            x1 = 1700;
            y1 = 20;
            x2 = 213;
            y2 = 1048;
        }
        if (Loc == 3)
        {
            x1 = 220;
            y1 = 940;
            x2 = 1469;
            y2 = 129;
        }
    }
    else if (global.level_type == 3)
    {
        Loc = choose(1, 2);
        x2 = 382;
        y2 = 1042;
        if (Loc == 1)
        {
            x1 = 20;
            y1 = 20;
        }
        if (Loc == 2)
        {
            x1 = 1520;
            y1 = 20;
        }
    }
    else if (global.level_type == 4)
    {
        Loc = 1;
        if (Loc == 1)
        {
            x1 = 20;
            y1 = 750;
            x2 = 1884;
            y2 = 313;
        }
    }
    else if (global.level_type == 5)
    {
        Loc = 1;
        if (Loc == 1)
        {
            x1 = 20;
            y1 = 20;
            x2 = 1884;
            y2 = 1050;
        }
    }
    x = x1 + irandom(x2);
    y = y1 + irandom(y2);
    Img_alpha = 0;
    direction = random(360);
    if (global.piece_rotation == 1)
    {
        image_angle = choose(0, 90, 180, 270);
    }
}
