///Boss_state_p3_start()

p3_wait_after_attack = 50;
iframes_duration = 100;
shield_iframes_duration = 100;

attacks = array_shuffle(array_from_values(
    Boss_state_p3_attack_ceiling_start,
    Boss_state_p3_attack_fall_start,
));
attacks[2] = Boss_state_p3_attack_wrap_start;
next_attack = 0;

with(objGlitchTexture) {
    if in_range(x, 160, 640) && y > 0 {
        disappear = true;
    }
}

Boss_wait(25, Boss_state_p3_choose);
