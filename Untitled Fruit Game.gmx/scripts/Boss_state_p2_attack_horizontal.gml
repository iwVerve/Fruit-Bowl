///Boss_state_p2_attack_horizontal()

Boss_p2_check_hit();

if horizontal_time % horizontal_wall_period == 0 {
    var xx = 400 + 400 * horizontal_wall_side;
    for(var i = 0; i < 12; i += 1) {
        var yy = 528 - 32 * i;
        var inst = instance_create(xx, yy, objBossHorizontalBullet);
        inst.s0_target_x = 400 - horizontal_wall_side * 172;
        inst.side = horizontal_wall_side;
        create_instance_display(inst);
    }
    
    horizontal_wall_count += 1;
    horizontal_wall_side *= -1;
}
if horizontal_time % horizontal_wall_period == horizontal_obstacle_offset {
    instance_destroy(objBossHorizontalObstacleBullet);
    var count = 5;
    var gap = irandom(count - 2);
    for(var i = 0; i < count; i += 1) {
        if i == gap || i - 1 == gap {
            continue;
        }
        instance_create(400, 528 - 32 * i, objBossHorizontalObstacleBullet);
    }
}
if !horizontal_rotate_bouncers && horizontal_time % horizontal_wall_period == 25 && horizontal_wall_count == horizontal_wall_needed_count {
    horizontal_rotate_bouncers = true;
    horizontal_timer_pause = 50;
}
if horizontal_timer_pause <= 0 {
    horizontal_time += 1;
}
else {
    horizontal_timer_pause -= 1;
}

if horizontal_rotate_bouncers {
    with(objBounceRefresher) {
        var difference = angle_difference(image_angle, 0);
        if abs(difference) > 1 {
            image_angle -= 0.05 * difference;
        }
        else {
            image_angle = 0;
        }
    }
}
