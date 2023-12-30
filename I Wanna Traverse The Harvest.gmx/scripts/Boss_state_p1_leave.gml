///Boss_state_p1_leave()

if leave_spawn_time % leave_spawn_period == 0 {
    if leave_spawn_y > 0 {
        instance_create(leave_spawn_x, leave_spawn_y, objBounceRefresherAppear);
        leave_spawn_x = 800 - leave_spawn_x;
        leave_spawn_y -= leave_spawn_step;
    }
}
leave_spawn_time += 1;

with(objGlitchTexture) {
    if y <= 32 {
        vspeed -= 0.1;
    }
}

vspeed -= 0.2;
healthbar_vspeed -= 0.1;
