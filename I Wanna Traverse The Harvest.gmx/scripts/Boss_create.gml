///Boss_create()

image_speed = 12/50;
bob_time = 0;
bob_period = 40;
bob_distance = 4;

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

p2_damage = false;

healthbar_y = 36;
healthbar_vspeed = 0;
lerped_hp = hp;

instance_create(0, 0, objBossHealthbar);
