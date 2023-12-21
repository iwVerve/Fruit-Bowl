///Boss_state_p2_attack_cover()

if !cover_done_spawning && cover_time % cover_spawn_period == 0 {
    if cover_spawn_x <= 400 + cover_spawn_range {
        var inst = instance_create(x, y, objBossCoverBullet);
        inst.target_x = cover_spawn_x;
        inst.target_y = random_range(cover_spawn_y_min, cover_spawn_y_max);
        cover_spawn_x += cover_spawn_step;
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
cover_time += 1;
