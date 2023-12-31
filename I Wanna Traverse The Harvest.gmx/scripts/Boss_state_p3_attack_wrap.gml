///Boss_state_p3_attack_wrap()

if boss_hit || shield_hit {
    if instance_exists(objPlayer) {
        with(objBossWrapAppearBullet) {
            speed = 12;
            direction = point_direction(objPlayer.x, objPlayer.y, x, y);
        }
    }
    if shield_hit {
        if instance_exists(objPlayer) {
            with(objBossWrapBounceRefresher) {
                speed = 12;
                direction = point_direction(objPlayer.x, objPlayer.y, x, y);
            }
        }
        wrap_appear_time = 0;
    }
    else {
        if instance_exists(objPlayer) {
            with(objBounceRefresher) {
                speed = 12;
                direction = point_direction(objPlayer.x, objPlayer.y, x, y);
            }
            with(objBossWrapBullet) {
                speed = 12;
                direction = point_direction(objPlayer.x, objPlayer.y, x, y);
                wrap_x = false;
                wrap_y = false;
            }
        }
        Boss_wait(p3_wait_after_attack, Boss_state_p3_choose);
    }
}

if (wrap_appear_time - wrap_appear_delay) % wrap_appear_period == 0 {
    instance_destroy(objBossWrapAppearBullet);
    instance_destroy(objBossWrapBounceRefresher);
    
    var bullets_left = wrap_appear_count;
    var bouncers_left = wrap_appear_bouncer_count;
    var total_left = bullets_left + bouncers_left;
    var area_left = wrap_appear_area_sum;
    
    var area_count = array_length_1d(wrap_appear_areas);
    for(var a = 0; a < area_count; a += 1) {
        var f = wrap_appear_areas[a] / area_left;
        area_left -= wrap_appear_areas[a];
        var in_area = floor(f * total_left + 0.5);
        var x_rng = get_fair_rng(wrap_appear_regions[a, 0] + 16, wrap_appear_regions[a, 2] - 16, in_area, 0.99);
        var y_rng = array_shuffle(get_fair_rng(wrap_appear_regions[a, 1] + 16, wrap_appear_regions[a, 3] - 16, in_area, 0.99));
        for(var i = 0; i < in_area; i += 1) {
            var is_bouncer = random(bullets_left + bouncers_left) > bullets_left;
            var object = ternary(is_bouncer, objBossWrapBounceRefresher, objBossWrapAppearBullet);
            var inst = instance_create(x_rng[i], y_rng[i], object);
            
            if is_bouncer {
                bouncers_left -= 1;
            }
            else {
                inst.speed = 0.25;
                inst.direction = random(360);
                bullets_left -= 1;
            }
            total_left -= 1;
        }
    }
}
wrap_appear_time += 1;
