///Boss_state_p1_arrive()

y = lerp(y, 114, 0.1);
if y > 112 {
    state = Boss_state_p1_choose;
}