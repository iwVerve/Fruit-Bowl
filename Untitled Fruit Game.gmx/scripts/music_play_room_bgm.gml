///music_play_room_bgm()

var roomSong = music_get_room_bgm();

if roomSong == -1 {
    music_fadeout(2000);
}
else if roomSong != -2 {
    music_play(roomSong, true);
}
