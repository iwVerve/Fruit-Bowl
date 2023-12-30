///Boss_state_p2_attack_cover()

Boss_p2_check_hit();

if !cover_done_spawning{
    if cover_time % cover_spawn_period == 0 {
        if cover_direction * cover_spawn_x <= cover_direction * (400 + cover_direction * cover_spawn_range) {
            var inst = instance_create(x, y, objBossCoverBullet);
            inst.target_x = cover_spawn_x;
            inst.target_y = random_range(cover_spawn_y_min, cover_spawn_y_max);
            cover_spawn_x += cover_direction * cover_spawn_step;
        }
        else {
            var number = instance_number(objBossCoverBullet);
            var rng = array_shuffle(get_fair_rng(-160, 160, number, 0.99));
            for(var i = 0; i < number; i += 1) {
                var inst = instance_find(objBossCoverBullet, i);
                inst.offset = rng[i];
            }
            cover_done_spawning = true;
        }
    }
}
else {
    if cover_bouncer_delay <= 0 {
        if cover_bouncer == noone {
            if instance_exists(objPlayer) {
                var side = ternary(objPlayer.x < 400, -1, 1);
                var xx = 400 + side * 176;
                cover_bouncer = instance_create(xx, cover_bouncer_y, objBounceRefresherAppear);
            }
        }
        if cover_reset_delay <= 0 {
            with(objBounceRefresher) {
                BounceRefresher_disappear();
            }
            state = Boss_state_p2_attack_cover_start;
        }
        cover_reset_delay -= 1;
    }
    cover_bouncer_delay -= 1;
}
cover_time += 1;
