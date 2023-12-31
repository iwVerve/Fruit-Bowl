///Boss_state_p3_fall()

vspeed += 0.2;
healthbar_vspeed -= 0.1;

if y > ystart && !place_free(x, y + 1) {
    vspeed = 0;
    Boss_wait(50, Boss_state_p3_fell);
}
