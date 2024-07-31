///Boss_state_p2_attack_walls_start()

walls_time = 0;
walls_bullet_counter = 0;
walls_bullet_period = 55;
walls_wall_period = 5;
walls_bullet_speed = 2;
walls_aimed_period = 95;
walls_aimed_angle_range = 10;
walls_aimed_speed = 3;
walls_wall_counter = 0;
walls_leave_period = 4;

walls_bouncer_x = 400;                              
walls_bouncer_next_x = 400 + random_range(-80, 80);
walls_bouncer = noone;
var appear = instance_create(400, 480, objBounceRefresherAppear);
appear.face_player = true;

state = Boss_state_p2_attack_walls;
