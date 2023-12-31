///Boss_state_p3_talk()

if talk_time < talk_fade_duration {
    talk_alpha += 1/talk_fade_duration;
}
else if talk_time >= talk_duration - talk_fade_duration {
    talk_alpha -= 1/talk_fade_duration;
    if talk_alpha <= 0 {
        instance_destroy(talk_instance);
        Boss_wait(50, Boss_state_p3_handshake);
        exit;
    }
}
talk_time += 1;

talk_alpha = clamp(talk_alpha, 0, 1);
talk_instance.image_alpha = talk_alpha;

if instance_exists(objPlayer) {
    talk_instance.x = objPlayer.x + talk_offset_x;
    talk_instance.y = objPlayer.y + talk_offset_y;
}
else {
    instance_destroy(talk_instance);
}
