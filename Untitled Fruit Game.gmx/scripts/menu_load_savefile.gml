///menu_load_savefile()

if savedata_exists(global.savenum) {
    audio_play_sound(global.menuSelectSound, 0, false);
    savedata_load(true);
}
