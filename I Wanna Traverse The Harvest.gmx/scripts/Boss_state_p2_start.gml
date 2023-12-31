///Boss_state_p2_start()

p2_wait_after_attack = 100;

attacks = array_shuffle(array_from_values(
    Boss_state_p2_attack_walls_start,
    Boss_state_p2_attack_cover_start,
    Boss_state_p2_attack_horizontal_start,
));
next_attack = 0;

state = Boss_state_p2_choose;
