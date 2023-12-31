///Boss_state_p3_handshake()

if instance_exists(objPlayer) {
    instance_create(lerp(objPlayer.x, objBossEagle.x, 0.3), objPlayer.y, objHandshake);
    audio_play_sound(sndBlockChange, 0, false);
    
    Boss_wait(100, Boss_state_p3_spawn_fade_out);
}
