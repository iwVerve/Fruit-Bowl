///Boss_state_p2_leave()

if p2_leave_spawn_time % p2_leave_spawn_period == 0 {
    if p2_leave_spawn_y > 0 {
        var inst = instance_create(p2_leave_spawn_x, p2_leave_spawn_y, objBounceRefresherAppear);
        inst.face_player = true;
        p2_leave_spawn_x = 800 - p2_leave_spawn_x;
        p2_leave_spawn_y -= p2_leave_spawn_step;
    }
}
p2_leave_spawn_time += 1;

vspeed -= 0.2;
