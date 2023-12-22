///Boss_p2_check_hit()

if boss_hit {
    if instance_exists(objPlayer) {
        with(objBossBulletParent) {
            if object_index == objBossP2Bullet {
                continue;
            }
            speed = 12;
            direction = point_direction(objPlayer.x, objPlayer.y, x, y);
        }
        with(objBounceRefresher) {
            BounceRefresher_disappear();
        }
    }
    if boss_hit {
        Boss_wait(p2_wait_after_attack, Boss_state_p2_choose);
    }
    exit;
}
