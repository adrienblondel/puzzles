if (room == r_intro)
{
    if (sentence_complete == 2)
    {
        sentence_complete = 0;
        if (global.language_using == 100)
        {
            hello = "Hello...";
        }
        else
        {
            hello = choose(ob_lan.Hello1, ob_lan.Hello2, ob_lan.Hello3, ob_lan.Hello4, ob_lan.Hello5, ob_lan.Hello6, ob_lan.Hello7, ob_lan.Hello8, ob_lan.Hello9, ob_lan.Hello10, ob_lan.Hello11, ob_lan.Hello12, ob_lan.Hello13, ob_lan.Hello14, ob_lan.Hello15, ob_lan.Hello16, ob_lan.Hello17, ob_lan.Hello18) + "...";
        }
        alarm[1] = 1;
    }
    else if (sentence_complete == 0)
    {
        if (letter < string_length(hello))
        {
            letter++;
            alarm[1] = 7;
        }
        else
        {
            alarm[1] = 60;
            sentence_complete = 1;
        }
    }
    else if (sentence_complete == 1)
    {
        if (intro_part == 2)
        {
            intro_part = 3;
            alarm[0] = 1;
        }
        if (hello_alpha > 0)
        {
            hello_alpha -= 0.01;
            alarm[1] = 1;
        }
    }
}
