///Boss_state_p2_attack_cover_start()

cover_time = 0;
cover_direction = choose(-1, 1)
cover_done_spawning = false;
cover_spawn_period = 4;
cover_spawn_range = 216;
cover_spawn_x = 400 - cover_direction * cover_spawn_range;
cover_spawn_y_min = 176;
cover_spawn_y_max = 272;
cover_spawn_step = 16;
cover_bouncer_delay = 325;
cover_bouncer = noone;
cover_bouncer_y = 480;
cover_reset_delay = 300;

state = Boss_state_p2_attack_cover;
