///BossHealthbar_draw()

if !instance_exists(objBossEagle) {
    exit;
}

var xx = 36;
var yy = objBossEagle.healthbar_y;
var full_width = 800 - 72;
var hp_fraction = objBossEagle.lerped_hp/objBossEagle.max_hp;
var current_width = hp_fraction * full_width;
var foreground_image, background_image;

switch(room) {
    case rBoss1:
        foreground_image = 0;
        background_image = 1;
        break;
    case rBoss2:
        foreground_image = 1;
        background_image = 2;
        break;
    case rBoss3:
        foreground_image = 2;
        background_image = 3;
        break;
}

draw_sprite_ext(sprBossHealthbar, background_image, xx, yy, full_width, 1, 0, c_dkgray, 1);
draw_sprite_ext(sprBossHealthbar, foreground_image, xx, yy, current_width, 1, 0, c_white, 1);
