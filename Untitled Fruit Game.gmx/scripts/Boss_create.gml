///Boss_create()

max_hp = 3;
hp = max_hp;

state = noone;

boss_hit = false;
iframes = 0;
iframes_duration = 50;

shield_hp = 0;
shield_hit = false;
shield_iframes = 0;
shield_iframes_duration = 50;

wait_after_attack = 25;

instance_create(0, 0, objBossHealthbar);
