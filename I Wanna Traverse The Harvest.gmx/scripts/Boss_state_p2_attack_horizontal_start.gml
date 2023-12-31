///Boss_state_p2_attack_horizontal_start()

horizontal_start_delay = 50;
horizontal_time = 0;
horizontal_timer_pause = 0;
horizontal_wall_period = 135;
horizontal_obstacle_offset = 50;
horizontal_wall_side = choose(-1, 1);
horizontal_wall_count = 0;
horizontal_wall_needed_count = 4;
horizontal_rotate_bouncers = false;

var i;
var distance = 208 - 48;
var yy = 496;
i = instance_create(400 - distance, yy, objBounceRefresherAppear);
i.image_angle = 270;
i = instance_create(400 + distance, yy, objBounceRefresherAppear);
i.image_angle = 90;

for(var i = 0; i < 3; i += 1) {
    for(var s = -1; s <= 1; s += 2) {
        if i == 0 && s == 1 {
            continue;
        }
        var bullet = instance_create(400 + s * i * 44, 528 + 128, objBossHorizontalObstacleBullet);
        bullet.destroy_outside_room = false;
    }
}
horizontal_obstacle_delay = 75;

i = instance_create(0, 0, objBossHorizontalWarning);
i.side = horizontal_wall_side;

state = Boss_state_p2_attack_horizontal;
