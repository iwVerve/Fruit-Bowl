///canvas_init()

enum CANVAS_TOOL {
    NONE,
    BRUSH,
};

global.canvas_background = noone;
global.canvas_surf = noone;

global.canvas_width = 800;
global.canvas_height = 608;

global.last_mouse_x = 0;
global.last_mouse_y = 0;

global.canvas_drawing = false;

global.canvas_tool = CANVAS_TOOL.BRUSH;
global.canvas_color = c_red;
global.canvas_radius = 4;
