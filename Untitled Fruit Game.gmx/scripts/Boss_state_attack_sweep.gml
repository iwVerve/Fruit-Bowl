///Boss_state_attack_sweep()

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

if sweep_fire_timer % sweep_fire_period == 0 {
    var inst = instance_create(x, y, objBossSweepBullet);
    inst.speed = 8;
    inst.direction = sweep_angle;
}
sweep_fire_timer += 1;

if sweep_burst_timer % sweep_burst_period == 0 {
    var count = 5;
    var rng = get_fair_rng(180, 360, count, 0.85);
    for(var i = 0; i < count; i += 1) {
        var inst = instance_create(x, y, objBossSweepBurstBullet);
        inst.speed = 4;
        inst.direction = rng[i];
    }
}
sweep_burst_timer += 1;

sweep_angle += sweep_angle_speed * sweep_direction;
if sweep_direction * sweep_angle > sweep_direction * sweep_angle_target {
    state = -1;
}
