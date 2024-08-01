///canvas_update() -> void

if (!canvas_is_unlocked()) {
    exit;
}

var _left = mouse_check_button(mb_left);
var _right = mouse_check_button(mb_right);

var _mouse_x = mouse_x - view_xview;
var _mouse_y = mouse_y - view_yview;

if (global.canvas_ui_cooldown > 0) {
    global.canvas_ui_cooldown -= 1;
} else {
    global.canvas_ui_alpha -= 1 / global.canvas_ui_lifetime;
}

if (!surface_exists(global.canvas_ui_surf)) {
    global.canvas_ui_surf = surface_create(global.canvas_width, global.canvas_height);
}

surface_set_target(global.canvas_ui_surf);
    d3d_set_projection_ortho(-global.canvas_ui_x, 0, global.canvas_width, global.canvas_height, 0);
    draw_clear_alpha(c_black, 0);
    
    for (var i = 0; i < CANVAS_TOOL.COUNT; i += 1) {
        var _clicked = canvas_button(32 * i, 0, i, (global.canvas_tool == i), false);
        if (_clicked) {
            global.canvas_tool = i;
        }
    }
    var _clear = canvas_button(32 * CANVAS_TOOL.COUNT, 0, CANVAS_TOOL.COUNT, false, false);
    if (_clear) {
        global.canvas_drawing = false;
        if (background_exists(global.canvas_background)) {
            background_delete(global.canvas_background);
        }
    }
    
    if (global.canvas_tool != CANVAS_TOOL.NONE) {
        var _smaller = canvas_button(0, 32, CANVAS_TOOL.COUNT + 2, false, false) || mouse_wheel_down();
        var _bigger = canvas_button(64, 32, CANVAS_TOOL.COUNT + 1, false, false) || mouse_wheel_up();
        var _change = _bigger - _smaller;
        if (_change != 0) {        
            global.canvas_ui_alpha = 1;
            global.canvas_ui_cooldown = global.canvas_ui_cooldown_duration;
            global.canvas_brush_size_index = clamp(global.canvas_brush_size_index + _change, 0, array_length_1d(global.canvas_brush_sizes) - 1);
            global.canvas_brush_size = global.canvas_brush_sizes[global.canvas_brush_size_index];
        }
        draw_sprite(sprCanvasButton, 2, 32, 32);
        draw_set_color(c_white);
        draw_circle(47, 47, global.canvas_brush_size, false);
        draw_set_color(c_black);
        draw_circle(47, 47, global.canvas_brush_size, true);
    }
    
    var _show_hide = canvas_button(96, 0, global.canvas_ui_open, false, true);
    if (_show_hide) {
        global.canvas_ui_open = !global.canvas_ui_open;
    }
    
    d3d_set_projection_ortho(view_xview, view_yview, view_wview, view_hview, view_angle);
surface_reset_target();

var _ui_x_target = ternary(global.canvas_ui_open, 0, -96);
global.canvas_ui_x = lerp(global.canvas_ui_x, _ui_x_target, 0.3);

if (window_mouse_get_x() != global.last_window_mouse_x || window_mouse_get_y() != global.last_window_mouse_y) {
    global.canvas_ui_alpha = 1;
    global.canvas_ui_cooldown = global.canvas_ui_cooldown_duration;
}

global.last_window_mouse_x = window_mouse_get_x();
global.last_window_mouse_y = window_mouse_get_y();

if (global.canvas_drawing) {
    if (surface_exists(global.canvas_surf)) {
        if (_left) {
            draw_set_color(global.canvas_color);
            surface_set_target(global.canvas_surf);
                switch (global.canvas_tool) {
                    case CANVAS_TOOL.BRUSH:
                        draw_circle(global.last_mouse_x, global.last_mouse_y, global.canvas_brush_size, false);
                        draw_circle(_mouse_x, _mouse_y, global.canvas_brush_size, false);
                        draw_line_width(global.last_mouse_x, global.last_mouse_y, _mouse_x, _mouse_y, 2 * global.canvas_brush_size);
                        break;
                }
            surface_reset_target();
        } else if (_right) {
            draw_set_blend_mode(bm_subtract);
                surface_set_target(global.canvas_surf);
                    var _erase_radius = 1.4 * global.canvas_brush_size + 2;
                    draw_circle(global.last_mouse_x, global.last_mouse_y, _erase_radius, false);
                    draw_circle(_mouse_x, _mouse_y, _erase_radius, false);
                    draw_line_width(global.last_mouse_x, global.last_mouse_y, _mouse_x, _mouse_y, 2 * _erase_radius);
                surface_reset_target();
            draw_set_blend_mode(bm_normal);
        } else {
            if (background_exists(global.canvas_background)) {
                background_delete(global.canvas_background);
            }
            global.canvas_background = background_create_from_surface(global.canvas_surf, 0, 0, 800, 608, false, false);
        
            global.canvas_drawing = false;
        }
    } else {
        global.canvas_drawing = false;
    }
} else {
    if ((_left || _right) && global.canvas_tool != CANVAS_TOOL.NONE) {
        if (!surface_exists(global.canvas_surf)) {
            global.canvas_surf = surface_create(global.canvas_width, global.canvas_height);
        }
        surface_set_target(global.canvas_surf);
            draw_clear_alpha(c_black, 0);
            if (background_exists(global.canvas_background)) {
                draw_background(global.canvas_background, 0, 0);
            }

        surface_reset_target();
        global.canvas_drawing = true;
    }
}

global.last_mouse_x = _mouse_x;
global.last_mouse_y = _mouse_y;
