///canvas_button(x, y, tool) -> bool

var _x = argument0;
var _y = argument1;
var _tool = argument2;

var _hover = point_in_rectangle(
    mouse_x - view_xview, mouse_y - view_yview,
    _x, _y,
    _x + 31, _y + 31,
);

var _highlight = (global.canvas_tool == _tool) || _hover;
draw_sprite(sprCanvasButton, _highlight, _x, _y);
draw_sprite(sprCanvasIcon, _tool, _x, _y);

return _hover && mouse_check_button_pressed(mb_left);
