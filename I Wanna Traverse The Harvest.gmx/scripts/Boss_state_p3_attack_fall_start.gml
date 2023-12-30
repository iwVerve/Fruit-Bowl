///Boss_state_p3_attack_fall_start()

shield_hp = 1;

var side = 1;
if instance_exists(objPlayer) {
    if objPlayer.x > 400 {
        side = -1;
    }
}

fall_bouncer_spawn_side = -side;
fall_move_glitch_delay = 120;

var warn = instance_create(0, 0, objBossFallWarning);
warn.side = side;

fall_shield_side = side;
with(ternary(fall_shield_side == 1, objBossFallGlitchLeft, objBossFallGlitchRight)) {
    y += 256;
}

state = Boss_state_p3_attack_fall_initialize;
