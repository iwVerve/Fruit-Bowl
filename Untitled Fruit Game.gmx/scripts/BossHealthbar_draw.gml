///BossHealthbar_draw()

if !instance_exists(objBossEagle) {
    exit;
}

draw_healthbar(32, 32, 767, 47, 100 * objBossEagle.hp/objBossEagle.max_hp, c_black, c_red, c_red, 0, true, true);
