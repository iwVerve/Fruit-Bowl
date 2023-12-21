///Boss_state_p1_attack_rain_start()

rain_time = 0;
rain_period = 12;
rain_speed = 3.2;
rain_angle_range = 4;

rain_spawn_time = 0;
rain_spawn_period = 30;
rain_spawn_x_range = 304;
rain_spawn_y_start = 376;
rain_spawn_y_min = 216;
rain_spawn_y = rain_spawn_y_start;
rain_spawn_y_step = 40;
rain_spawn_y_range = 8;
rain_spawn_rng_count = 10;
rain_spawn_rng_index = 0;
rain_spawn_fairness = 0.9;
rain_spawn_rng = array_shuffle(get_fair_rng(
    400 - rain_spawn_x_range, 400 + rain_spawn_x_range, 
    rain_spawn_rng_count, rain_spawn_fairness
));

shield_hp = 1;

state = Boss_state_p1_attack_rain;
