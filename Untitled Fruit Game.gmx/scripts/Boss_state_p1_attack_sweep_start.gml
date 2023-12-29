///Boss_state_p1_attack_sweep_start()

sweep_angle_speed = 0.4;
sweep_direction = choose(-1, 1);
sweep_angle = 270 - sweep_direction * 90;
sweep_angle_target = 270 + sweep_direction * 90;

sweep_fire_timer = 0;
sweep_fire_period = 4;

instance_create(400 + 208 * sweep_direction, 368, objBounceRefresherAppear);
instance_create(400 + 272 * sweep_direction, 304, objBounceRefresherAppear);

sweep_burst_timer = 0;
sweep_burst_period = 32;
sweep_burst_count = 3;

sweep_delay = 0;

shield_hp = 1;

state = Boss_state_p1_attack_sweep;
