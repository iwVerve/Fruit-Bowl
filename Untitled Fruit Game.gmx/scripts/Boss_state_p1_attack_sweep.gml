///Boss_state_p1_attack_sweep()

if boss_hit || shield_hit {
    if instance_exists(objPlayer) {
        with(objBossBulletParent) {
            speed = 12;
            direction = point_direction(objPlayer.x, objPlayer.y, x, y);
        }
        with(objBounceRefresher) {
            BounceRefresher_disappear();
        }
    }
    if boss_hit {
        Boss_wait(p1_wait_after_attack, Boss_state_p1_choose);
    }
    else {
        sweep_direction *= -1;
        sweep_angle = 270 - sweep_direction * 90;
        sweep_angle_target = 270 + sweep_direction * 90;
        sweep_fire_timer = 0;
        sweep_burst_timer = 0;
    
        instance_create(400 + 208 * sweep_direction, 368, objBounceRefresherAppear);
        instance_create(400 + 272 * sweep_direction, 304, objBounceRefresherAppear);
        
        sweep_delay = 25;
    }
    exit;
}

if sweep_delay > 0 {
    sweep_delay -= 1;
    exit;
}

if sweep_fire_timer % sweep_fire_period == 0 {
    var inst = instance_create(x, y, objBossSweepBullet);
    inst.speed = 8;
    inst.direction = sweep_angle;
}
sweep_fire_timer += 1;

if sweep_burst_timer % sweep_burst_period == 0 {
    var count = 4;
    var offset = random_range(-15, 15);
    var rng = get_fair_rng(200 + offset, 340 + offset, count, 0.9);
    for(var i = 0; i < count; i += 1) {
        var inst = instance_create(x, y, objBossSweepBurstBullet);
        inst.speed = 4;
        inst.direction = rng[i];
    }
}
sweep_burst_timer += 1;

sweep_angle += sweep_angle_speed * sweep_direction;
