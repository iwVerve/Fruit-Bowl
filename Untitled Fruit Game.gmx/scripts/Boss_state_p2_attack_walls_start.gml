///Boss_state_p2_attack_walls_start()

walls_time = 0;
walls_bullet_counter = 0;
walls_bullet_period = 40;
walls_wall_period = 7;
walls_bullet_speed = 3;
walls_aimed_period = 75;
walls_aimed_angle_range = 15;
walls_aimed_speed = 4;
walls_wall_counter = 0;
walls_leave_period = 4;

walls_bouncer_x = 400;                              
walls_bouncer = noone;
var appear = instance_create(400, 480, objBounceRefresherAppear);
appear.face_player = true;

state = Boss_state_p2_attack_walls;
