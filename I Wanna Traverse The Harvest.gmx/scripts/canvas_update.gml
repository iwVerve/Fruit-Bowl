///canvas_update()

var _left = mouse_check_button(mb_left);
var _right = mouse_check_button(mb_right);

if (global.canvas_drawing) {
    if (_left) {
        draw_set_color(global.canvas_color);
        surface_set_target(global.canvas_surf);
            switch (global.canvas_tool) {
                case CANVAS_TOOL.BRUSH:
                    draw_circle(global.last_mouse_x, global.last_mouse_y, global.canvas_radius, false);
                    draw_circle(mouse_x, mouse_y, global.canvas_radius, false);
                    draw_line_width(global.last_mouse_x, global.last_mouse_y, mouse_x, mouse_y, 2 * global.canvas_radius);
                    break;
            }
        surface_reset_target();
    } else if (_right) {
        draw_set_blend_mode(bm_subtract);
            surface_set_target(global.canvas_surf);
                var _erase_radius = 1.4 * global.canvas_radius + 2;
                draw_circle(global.last_mouse_x, global.last_mouse_y, _erase_radius, false);
                draw_circle(mouse_x, mouse_y, _erase_radius, false);
                draw_line_width(global.last_mouse_x, global.last_mouse_y, mouse_x, mouse_y, 2 * _erase_radius);
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

global.last_mouse_x = mouse_x;
global.last_mouse_y = mouse_y;
