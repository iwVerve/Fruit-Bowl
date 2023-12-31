///Boss_state_p3_fell()

if place_meeting(x, y, objPlayer) {
    objPlayer.frozen = true;
    Boss_wait(25, Boss_state_p3_player_walk);
}
