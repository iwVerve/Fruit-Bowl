///Boss_state_p3_attack_ceiling()

if boss_hit || shield_hit {
    if instance_exists(objPlayer) {
        with(objBossBulletParent) {
            speed = 12;
            direction = point_direction(objPlayer.x, objPlayer.y, x, y);
        }
    }
    if boss_hit {
        if instance_exists(objPlayer) {
            with(objBounceRefresher) {
                BounceRefresher_disappear();
            }
        }
        Boss_wait(p3_wait_after_attack, Boss_state_p3_choose);
    }
    else {
        ceiling_restart_delay = 20;
    }
}

if ceiling_restart_delay == 0 {
    state = Boss_state_p3_attack_ceiling_initialize;
}
ceiling_restart_delay -= 1;

var bouncer_number = ceiling_bouncer_spawn_time / ceiling_bouncer_spawn_period;
if !ceiling_bouncer_spawned && bouncer_number % 1 == 0 && in_range(bouncer_number, 1, ceiling_bouncer_spawn_count) {
    for(var s = -1; s <= 1; s += 2) {
        var distance = ceiling_bouncer_spawn_x_start + 64 * bouncer_number;
        var xx = 400 + s * distance;
        var yy = 384;
        instance_create(xx, yy, objBounceRefresherAppear);
        if bouncer_number == ceiling_bouncer_spawn_count {
            ceiling_bouncer_spawned = true;
        }
    }
}
ceiling_bouncer_spawn_time += 1;

var time = ceiling_v_bullet_time - ceiling_v_bullet_spawn_delay;
if ceiling_spawn_v_bullets && time >= 0 && time % ceiling_v_bullet_spawn_period == 0 {
    if instance_exists(objPlayer) {
        var inst = instance_create(objPlayer.x, 0, objBossCeilingVBullet);
        inst.hspeed = choose(-1, 1) * random(0.15);
        inst.vspeed = 6;
        inst.gravity = 0.04;
        create_instance_display(inst);
    }
}
ceiling_v_bullet_time += 1;

var time = ceiling_bullet_time - ceiling_bullet_aim_delay;
if time >= 0 && time % ceiling_bullet_aim_period == 0 {
    var array = array_create(0);
    with(objBossCeilingBullet) {
        if state == 0 {
            array[array_length_1d(array)] = id;
        }
    }
    if array_length_1d(array) > 0 {
        var index = irandom(array_length_1d(array) - 1);
        var bullet = array[index];
        bullet.state = 1;
        if instance_exists(objPlayer) {
            bullet.speed = 4;
            bullet.direction = point_direction(bullet.x, bullet.y, objPlayer.x, objPlayer.y);
            bullet.gravity_direction = bullet.direction;
            bullet.gravity = 0.03;
            audio_play_sound(sndBossBullet1, 0, false);
        }
        if array_length_1d(array) == 1 {
            ceiling_spawn_v_bullets = false;
            ceiling_restart_delay = 600;
        }
    }
}
ceiling_bullet_time += 1;
