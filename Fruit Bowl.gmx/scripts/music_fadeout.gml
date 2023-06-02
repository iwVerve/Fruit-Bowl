///music_fadeout([time=1000])

var time = 1000;
if argument_count >= 1 {
    time = argument[0];
}

if global.currentMusicID != -1 {
    audio_sound_gain(global.currentMusic, 0, time);
}
