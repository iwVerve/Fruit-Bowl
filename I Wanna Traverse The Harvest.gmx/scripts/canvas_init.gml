///canvas_init() -> void

enum CANVAS_TOOL {
    NONE,
    BRUSH,
    COUNT,
};

global.canvas_width = 800;
global.canvas_height = 608;

global.canvas_background = noone;
global.canvas_surf = noone;
global.canvas_ui_surf = noone;

global.canvas_tool = CANVAS_TOOL.NONE;
global.canvas_color = c_red;
global.canvas_radius = 4;

global.canvas_drawing = false;
global.last_mouse_x = 0;
global.last_mouse_y = 0;

global.canvas_ui_alpha = 0;
global.canvas_ui_cooldown_duration = 30;
global.canvas_ui_cooldown = 0;
global.canvas_ui_lifetime = 20;
