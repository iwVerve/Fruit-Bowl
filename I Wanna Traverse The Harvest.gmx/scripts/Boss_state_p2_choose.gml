///Boss_state_p2_choose()

if hp <= 0 {
    state = Boss_state_p2_leave_start;
    exit;
}

state = attacks[next_attack % array_length_1d(attacks)];
next_attack += 1;

with(objBossP2DamageTrigger) {
    active = true;
}
with(objBossP2Trigger) {
    active = true;
}
