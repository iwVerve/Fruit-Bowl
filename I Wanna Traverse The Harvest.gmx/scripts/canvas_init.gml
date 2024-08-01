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
global.canvas_brush_sizes = array_from_values(1, 2, 3, 4, 6, 8, 10, 12, 16);
global.canvas_brush_size_index = 3;
global.canvas_brush_size = global.canvas_brush_sizes[global.canvas_brush_size_index];

global.canvas_drawing = false;
global.last_mouse_x = 0;
global.last_mouse_y = 0;
global.last_window_mouse_x = 0;
global.last_window_mouse_y = 0;

global.canvas_ui_alpha = 0;
global.canvas_ui_cooldown_duration = 30;
global.canvas_ui_cooldown = 0;
global.canvas_ui_lifetime = 20;
global.canvas_ui_open = true;
global.canvas_ui_x = 0;
