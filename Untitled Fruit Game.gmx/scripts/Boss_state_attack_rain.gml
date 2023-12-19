///Boss_state_attack_rain()

if boss_hit {
    if instance_exists(objPlayer) {
        with(objBossBulletParent) {
            speed = 12;
            direction = point_direction(objPlayer.x, objPlayer.y, x, y);
        }
        with(objBounceRefresher) {
            BounceRefresher_disappear();
        }
    }
    state = -1;
    exit;    
}

if rain_time % rain_period == 0 {
    var xx = random_range(64, 734);
    var inst = instance_create(xx, -8, objBossRainBullet);
    inst.speed = rain_speed;
    inst.direction = 270 + choose(-1, 1) * random(rain_angle_range);
}
rain_time += 1;

if rain_spawn_time % rain_spawn_period == 0 {
    if rain_spawn_rng_index < rain_spawn_rng_count {
        var xx = rain_spawn_rng[rain_spawn_rng_index];
        var yy = rain_spawn_y + choose(-1, 1) * random(rain_spawn_y_range);
        rain_spawn_rng_index += 1;
        
        var inst = instance_create(xx, yy, objBounceRefresherAppear);
        inst.face_player = true;
    }

    
    rain_spawn_y -= rain_spawn_y_step;
    if rain_spawn_y < rain_spawn_y_min {
        rain_spawn_y = rain_spawn_y_start;
    }
}
rain_spawn_time += 1;
