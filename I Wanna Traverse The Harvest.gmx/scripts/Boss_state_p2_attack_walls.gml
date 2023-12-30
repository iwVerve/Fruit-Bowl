///Boss_state_p2_attack_walls()

Boss_p2_check_hit();

if walls_time % walls_bullet_period == 0 {
    walls_bullet_counter += 1;
    var side = choose(-1, 1);
    if (walls_bullet_counter + 2) % walls_wall_period == 0 {
        // 2 before wall, preview bouncer
        instance_create(walls_bouncer_next_x, 480, objBossWallsIndicator);
    }
    if (walls_bullet_counter + 1) % walls_wall_period == 0 {
        // 1 before wall, move bouncer
        walls_wall_counter += 1;
        walls_bouncer_x = walls_bouncer_next_x;
        if (walls_wall_counter + 1) % walls_leave_period == 0 {
            // Move to edge
            walls_bouncer_next_x = 400 + choose(-1, 1) * 176;
        }
        else {
            // Move around middle
            var xx = walls_bouncer_x;
            while(abs(walls_bouncer_x - xx) < 48) {
                xx = 400 + random_range(-80, 80);
            }
            walls_bouncer_next_x = xx;
        }
    }
    if walls_bullet_counter % walls_wall_period == 0 {
        if walls_wall_counter % walls_leave_period != 0 {
            // Spawn wall
            for(var i = 0; i < 5; i += 1) {
                var yy = 528 - i * 32;
                var inst = instance_create(400 + side * 400, yy, objBossWallsWallBullet);
                inst.hspeed = -side * walls_bullet_speed;
                create_instance_display(inst);
            }
        }
    }
    else if walls_bullet_counter % walls_wall_period != 1 {
        // Spawn bullet
        var yy = 528 - irandom(4) * 32;
        var inst = instance_create(400 + side * 400, yy, objBossWallsSingleBullet);
        inst.hspeed = -side * walls_bullet_speed;
        create_instance_display(inst);
    }
}

if walls_time % walls_aimed_period == 0 {
    if instance_exists(objPlayer) {
        var inst = instance_create(x, y, objBossWallsAimedBullet);
        inst.speed = walls_aimed_speed;
        inst.direction = point_direction(x, y, objPlayer.x, objPlayer.y) + random_range(-walls_aimed_angle_range, walls_aimed_angle_range);
    }
}
walls_time += 1;

if walls_bouncer == noone {
    if instance_exists(objBounceRefresher) {
        walls_bouncer = instance_find(objBounceRefresher, 0);
    }
}
if instance_exists(walls_bouncer) {
    walls_bouncer.xstart = lerp(walls_bouncer.xstart, walls_bouncer_x, 0.1);
}
