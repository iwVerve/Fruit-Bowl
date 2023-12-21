///Boss_state_p1_start()

attacks = array_shuffle(array_from_values(
    Boss_state_p1_attack_sweep_start,
    Boss_state_p1_attack_rain_start,
    Boss_state_p1_attack_rise_start,
));
next_attack = 0;

state = Boss_state_p1_arrive;
