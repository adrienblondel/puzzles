if (door_open == 1)
{
    if (flipOpen == 0)
    {
        if (OpenAnimation < 3)
        {
            OpenAnimation += 1;
            image_index += 1;
            alarm[0] = 3;
        }
    }
    else
    {
        image_index += 3;
    }
}
