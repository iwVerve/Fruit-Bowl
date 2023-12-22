///Boss_state_p1_attack_rise()

if boss_hit || shield_hit {
    if instance_exists(objPlayer) {
        with(objBossBulletParent) {
            speed = 12;
            direction = point_direction(objPlayer.x, objPlayer.y, x, y);
        }
        with(objBounceRefresher) {
            var inst = BounceRefresher_disappear();
            inst.speed = 12;
            inst.direction = point_direction(objPlayer.x, objPlayer.y, inst.x, inst.y);
        }
    }
    if boss_hit {
        Boss_wait(p1_wait_after_attack, Boss_state_p1_choose);
    }
    exit;
}

if rise_spawn_time % rise_spawn_period == 0 {
    if rain_spawn_rng_index >= rain_spawn_rng_size {
        rain_spawn_rng = array_shuffle(get_fair_rng(400 - rise_spawn_x_range, 400 + rise_spawn_x_range, rain_spawn_rng_size, 0.9));
        rain_spawn_rng_index = 0;
    }

    var xx = rain_spawn_rng[rain_spawn_rng_index];
    rain_spawn_rng_index += 1;
    var bouncer = instance_create(xx, 640, objBounceRefresher);
    bouncer.vspeed = -rise_spawn_speed;
    bouncer.image_angle = choose(0, 0, 180);
    create_instance_display(bouncer);
}
rise_spawn_time += 1;

if rise_bullet_time % rise_bullet_period == 0 {
    var side = choose(-1, 1);
    var bullet = instance_create(400 + side * 400, random_range(128, 480), objBossRiseBullet);
    bullet.speed = rise_bullet_speed;
    bullet.direction = 90 + side * 90 + random_range(-rise_bullet_max_angle, rise_bullet_max_angle);
    create_instance_display(bullet);
}
rise_bullet_time += 1;
