///Boss_state_p3_attack_ceiling_initialize()

ceiling_restart_delay = -1;

ceiling_bouncer_spawn_time = 0;
ceiling_bouncer_spawn_period = 10;
ceiling_bouncer_spawn_count = 4;
ceiling_bouncer_spawn_x_start = 112;
ceiling_bouncer_spawn_x_step = 64;

ceiling_spawn_v_bullets = true;
ceiling_v_bullet_time = 0;
ceiling_v_bullet_spawn_delay = 25;
ceiling_v_bullet_spawn_period = 4;

ceiling_bullet_time = 0;
ceiling_bullet_aim_delay = 160;
ceiling_bullet_aim_period = 30;

for(var s = -1; s <= 1; s += 2) {
    for(var distance = 160; distance <= 288; distance += 32) {
        var xx = 400 + s * distance;
        var yy = 112;
        var inst = instance_create(400, yy, objBossCeilingBullet);
        inst.target_x = xx;
    }
}

if !ceiling_init {
    for(var s = -1; s <= 1; s += 2) {
        instance_create(400 + s * ceiling_bouncer_spawn_x_start, 448, objBounceRefresherAppear);
    }
    ceiling_init = true;
}

state = Boss_state_p3_attack_ceiling;
