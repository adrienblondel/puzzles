if (steam_user_owns_dlc(global.pack_1_dlc_appid))
{
    pack_is_owned = 1;
    if (file_exists(working_directory + "\icons\packicon1.png"))
    {
        dlc_is_installed = 1;
        can_keep_checking = 0;
        ob_puzzle_button.dlc_is_owned = 1;
    }
    else
    {
        ob_puzzle_button.dlc_is_owned = 0;
        dlc_is_installed = 0;
    }
}
else
{
    ob_puzzle_button.dlc_is_owned = 0;
    pack_is_owned = 0;
}
if (can_keep_checking == 1)
{
    alarm[0] = 60;
}
