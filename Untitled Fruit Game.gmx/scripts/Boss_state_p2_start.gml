///Boss_state_p2_start()

attacks = array_shuffle(array_from_values(
    //Boss_state_p2_attack_walls_start,
    Boss_state_p2_attack_cover_start,
));
next_attack = 0;

state = Boss_state_p2_choose;
