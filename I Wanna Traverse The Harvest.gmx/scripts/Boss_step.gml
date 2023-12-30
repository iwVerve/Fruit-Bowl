///Boss_step()

boss_hit = false;
shield_hit = false;
var bullet = instance_place(x, y, objBullet);
if bullet != noone || p2_damage {
    if shield_hp > 0 {
        if shield_iframes <= 0 {
            shield_hit = true;
            shield_hp -= 1;
            if shield_hp <= 0 {
                iframes = iframes_duration;
            }
            else {
                shield_iframes = shield_iframes_duration;
            }
            instance_destroy(bullet);
        }
    }
    else {
        if iframes <= 0 {
            hp -= 1;
            boss_hit = true;
            iframes = iframes_duration;
            instance_destroy(bullet);
        }
    }
}
p2_damage = false;

iframes -= 1;
shield_iframes -= 1;
healthbar_y += healthbar_vspeed;
lerped_hp = lerp(lerped_hp, hp, 0.15);

if state != noone {
    script_execute(state);
}
