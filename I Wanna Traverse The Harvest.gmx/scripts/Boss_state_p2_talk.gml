///Boss_state_p2_talk()

if talk_time < talk_fade_duration {
    talk_alpha += 1/talk_fade_duration;
}
else if talk_time >= talk_duration - talk_fade_duration {
    talk_alpha -= 1/talk_fade_duration;
    if talk_alpha <= 0 {
        instance_destroy(talk_instance);
        state = Boss_state_p2_leave_start;
        exit;
    }
}
talk_time += 1;

talk_alpha = clamp(talk_alpha, 0, 1);
talk_instance.image_alpha = talk_alpha;
