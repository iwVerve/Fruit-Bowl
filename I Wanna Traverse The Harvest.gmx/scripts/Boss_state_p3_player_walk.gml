///Boss_state_p3_player_walk_start()

if instance_exists(objPlayer) {
    var dir = ternary(objPlayer.x < 400, -1, 1);
    if dir * objPlayer.x >= dir * (400 + dir * 112) {
        objPlayer.cutscene_dir = 0;
        objPlayer.xScale = -dir;
        Boss_wait(25, Boss_state_p3_talk_start);
    }
    else {
        objPlayer.cutscene_dir = dir;
    }
} 
