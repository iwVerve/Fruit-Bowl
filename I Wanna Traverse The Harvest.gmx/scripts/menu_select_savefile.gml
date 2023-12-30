///menu_select_savefile()

if (global.menuMode == 0)   //Difficulty select room
{
    global.savenum = savefileSelect+1;
    room_goto(rDifficultySelect);
}
else    //Difficulty select menu
{
    fileSelected = true;
    audio_play_sound(global.menuSelectSound, 0, false);
    if (exists[savefileSelect]) //Default to Load game if file exists
        difficultySelect = -1;
    else {
        difficultySelect = ternary(global.noEasyModeYet, 1, 0);
    }
}
