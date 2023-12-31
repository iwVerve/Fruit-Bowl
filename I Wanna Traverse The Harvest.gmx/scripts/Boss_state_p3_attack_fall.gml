///Boss_state_p3_attack_fall()

if boss_hit || shield_hit {
    if shield_hit {
        with(ternary(fall_shield_side == 1, objBossFallGlitchLeft, objBossFallGlitchRight)) {
            y -= 256;
        }
    }
    with(ternary(fall_shield_side == -1, objBossFallGlitchLeft, objBossFallGlitchRight)) {
        y += 256;
    }
    fall_shield_side *= -1;
    if boss_hit {
        with(objBossFallGlitch) {
            y -= 544;
            target_alpha = 0;
        }
        if instance_exists(objPlayer) {
            with(objBossBulletParent) {
                speed = 12;
                direction = point_direction(objPlayer.x, objPlayer.y, x, y);
            }
            with(objBounceRefresher) {
                BounceRefresher_disappear();
            }
        }
        Boss_wait(p3_wait_after_attack, Boss_state_p3_choose);
    }
}

if fall_time % fall_bouncer_spawn_period == 0 {
    var side = fall_bouncer_spawn_side;
    var xx = 400 + side * (160 + irandom(4) * 32);
    var bouncer = instance_create(xx, 624, objBounceRefresher);
    bouncer.image_angle = 180;
    bouncer.vspeed = -3;
    create_instance_display(bouncer);
}

if fall_bullets_spawn && fall_time % fall_bullet_period == 0 {
    var xx = 400 + fall_bouncer_spawn_side * (160 + irandom(4) * 32);
    var dir = choose(-1, 1);
    var yy = 304 - dir * 224;
    var bullet = instance_create(xx, yy, objBossFallBullet);
    bullet.vspeed = dir * random_range(1, 2);
}
if fall_bullets_spawn && fall_time % fall_bullet_period_opposite == 0 {
    var xx = 400 + -fall_bouncer_spawn_side * (160 + irandom(4) * 32);
    var dir = choose(-1, 1);
    var yy = 304 - dir * 224;
    var bullet = instance_create(xx, yy, objBossFallBullet);
    bullet.vspeed = dir * random_range(1, 2);
}
fall_time += 1;

if fall_side_time_left == 0 {
    with(objBossFallBullet) {
        state = 2;
        mask_index = sprEmpty;
    }
    fall_bullets_spawn = false;
    var b;
    b = instance_create(400 + 352, 336, objBounceRefresherAppear);
    b.image_angle = 180;
    b = instance_create(400 - 352, 336, objBounceRefresherAppear);
    b.image_angle = 180;
    fall_side_flip_delay = fall_side_flip_delay_duration;
}
fall_side_time_left -= 1;

if fall_side_flip_delay > 0 {
    if instance_exists(objPlayer) {
        var s = fall_bouncer_spawn_side;
        if s * objPlayer.x < s * 400 {
            fall_side_flip_delay = min(fall_side_flip_delay, 50);
        }
    }
}
if fall_side_flip_delay == 0 {
    fall_bouncer_spawn_side *= -1;
    state = Boss_state_p3_attack_fall_initialize;
    with(objBounceRefresher) {
        BounceRefresher_disappear();
    }
}
fall_side_flip_delay -= 1;

if fall_move_glitch_delay == 0 {
    with(objBossFallGlitch) {
        y += 544;
        target_alpha = 1;
    }
    audio_play_sound(sndBossBullet3, 0, false);
}
fall_move_glitch_delay -= 1;
