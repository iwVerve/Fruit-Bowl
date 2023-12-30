///jigsaw_draw_tile(index)

var i = argument0;

draw_sprite_part_ext(
    sprite_index,
    image_index,
    tile_left[i],
    tile_top[i],
    tile_sprite_width,
    tile_sprite_height,
    x + tile_x[i],
    y + tile_y[i],
    image_xscale,
    image_yscale,
    image_blend,
    image_alpha,
);
var image = 0;
if selection == i {
    image = 1;
}
draw_sprite_ext(sprJigsawTile, image, x + tile_x[i], y + tile_y[i], 1, 1, 0, c_white, tile_alpha);
