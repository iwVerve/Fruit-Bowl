///menu_goto_options()

global.menuSelectPrev[0] = savefileSelect;
audio_play_sound(global.menuTransitionSound, 0, false);
room_goto(rOptions);
