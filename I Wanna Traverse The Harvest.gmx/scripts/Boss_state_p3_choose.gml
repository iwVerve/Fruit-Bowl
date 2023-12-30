///Boss_state_p3_choose()

if hp <= 0 {
    state = Boss_state_p3_fall_start;
    exit;
}

state = attacks[next_attack % array_length_1d(attacks)];
next_attack += 1;
