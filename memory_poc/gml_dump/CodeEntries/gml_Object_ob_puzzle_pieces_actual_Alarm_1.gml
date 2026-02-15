if (CurrentState == 8)
{
    if (Img_alpha > 0)
    {
        alarm[1] = 1;
        Img_alpha -= 0.02;
    }
    else
    {
        CurrentState = 4;
        depth = -(302000 - image_index);
    }
}
