///Boss_draw()

var alpha = 1;
if iframes > 0 {
    alpha = 0.5;
}

var yy = y;
if sprite_index == sprBossEagle {
    yy += bob_distance * (dsin(bob_time * 360 / bob_period) + 1) / 2;
}
draw_sprite_ext(
    sprite_index, image_index, x, yy,
    image_xscale, image_yscale, image_angle, image_blend,
    alpha * image_alpha
);


if shield_hp > 0 {
    alpha = 1;
    if shield_iframes > 0 {
        alpha = 0.5;
    }
    draw_set_alpha(alpha);
        draw_sprite(sprBossShield, 0, x, y);
    draw_set_alpha(1);
}
