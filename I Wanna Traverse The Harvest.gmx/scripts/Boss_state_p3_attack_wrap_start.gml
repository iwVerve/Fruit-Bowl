///Boss_state_p3_attack_wrap_start()

shield_hp = 1;

wrap_bullet_count = 7;
wrap_bullet_angle = random(360);

wrap_appear_time = 0;
wrap_appear_delay = 30;
wrap_appear_period = 350;
wrap_appear_count = 30;
wrap_appear_bouncer_count = 25;
wrap_appear_regions = array_from_values(
    array_from_values(0,   192, 95,  415),
    array_from_values(96,  0,   255, 607),
    array_from_values(256, 192, 543, 479),
    array_from_values(544, 0,   703, 607),
    array_from_values(704, 192, 799, 415),
);
wrap_appear_area_sum = 0;
for(var i = 0; i < array_height_2d(wrap_appear_regions); i += 1) {
    var width = wrap_appear_regions[i, 2] - wrap_appear_regions[i, 0] + 1;
    var height = wrap_appear_regions[i, 3] - wrap_appear_regions[i, 1] + 1;
    var area = width * height;
    wrap_appear_areas[i] = area;
    wrap_appear_area_sum += area;
}

for(var i = 0; i < wrap_bullet_count; i += 1) {
    var angle = wrap_bullet_angle + i / wrap_bullet_count * 360;
    var bullet = instance_create(x, y, objBossWrapBullet);
    bullet.speed = random_range(2.4, 2.6);
    bullet.direction = angle + random_range(-5, 5);
    create_instance_display(bullet);
}
audio_play_sound(sndBossBullet2, 0, false);

for(var s = -1; s <= 1; s += 2) {
    for(var distance = 160; distance <= 320; distance += 32) {
        instance_create(400 + s * distance, 592, objBounceRefresherAppear)
    }
}

state = Boss_state_p3_attack_wrap;
