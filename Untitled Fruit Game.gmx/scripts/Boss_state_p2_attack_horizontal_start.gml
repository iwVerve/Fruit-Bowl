///Boss_state_p2_attack_horizontal_start()

horizontal_time = 0;
horizontal_timer_pause = 0;
horizontal_wall_period = 120;
horizontal_obstacle_offset = 50;
horizontal_wall_side = choose(-1, 1);
horizontal_wall_count = 0;
horizontal_wall_needed_count = 4;
horizontal_rotate_bouncers = false;

var i;
var distance = 192;
var yy = 496;
i = instance_create(400 - distance, yy, objBounceRefresherAppear);
i.image_angle = 270;
i = instance_create(400 + distance, yy, objBounceRefresherAppear);
i.image_angle = 90;

state = Boss_state_p2_attack_horizontal;
