///Boss_state_p1_choose()

if hp <= 0 {
    state = Boss_state_p1_talk_start;
    exit;
}

state = attacks[next_attack % array_length_1d(attacks)];
next_attack += 1;
