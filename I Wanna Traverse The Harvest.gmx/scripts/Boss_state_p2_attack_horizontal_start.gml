///Boss_state_p2_attack_horizontal_start()

horizontal_start_delay = 50;
horizontal_time = 0;
horizontal_timer_pause = 0;
horizontal_wall_period = 130;
horizontal_obstacle_offset = 50;
horizontal_wall_side = choose(-1, 1);
horizontal_wall_count = 0;
horizontal_wall_needed_count = 4;
horizontal_rotate_bouncers = false;

var i;
var distance = 208;
var yy = 496;
i = instance_create(400 - distance, yy, objBounceRefresherAppear);
i.image_angle = 270;
i = instance_create(400 + distance, yy, objBounceRefresherAppear);
i.image_angle = 90;

i = instance_create(0, 0, objBossHorizontalWarning);
i.side = horizontal_wall_side;

state = Boss_state_p2_attack_horizontal;
