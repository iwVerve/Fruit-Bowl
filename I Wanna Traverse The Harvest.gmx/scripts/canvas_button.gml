///canvas_button(x, y, image, selected, small) -> bool

var _x = argument0;
var _y = argument1;
var _image = argument2;
var _selected = argument3;
var _small = argument4;

var _size = ternary(_small, 15, 31);

var _hover = point_in_rectangle(
    mouse_x - view_xview - global.canvas_ui_x,
    mouse_y - view_yview,
    _x, _y,
    _x + _size, _y + _size,
);

var _highlight = _selected || _hover;
draw_sprite(ternary(_small, sprCanvasButtonSmall, sprCanvasButton), _highlight, _x, _y);
draw_sprite(ternary(_small, sprCanvasIconSmall, sprCanvasIcon), _image, _x, _y);

if (_hover) {
    global.canvas_ui_alpha = 1;
    global.canvas_ui_cooldown = global.canvas_ui_cooldown_duration;
    if (mouse_check_button_pressed(mb_left)) {
        mouse_clear(mb_left);
        return true;
    }
}
return false;
