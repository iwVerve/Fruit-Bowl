///canvas_draw() -> void

if (!canvas_is_unlocked()) {
    exit;
}

d3d_set_projection_ortho(0, 0, global.canvas_width, global.canvas_height, 0);

if (global.canvas_drawing) {
    draw_surface(global.canvas_surf, 0, 0);
} else {
    if (background_exists(global.canvas_background)) {
        draw_background(global.canvas_background, 0, 0);
    }
}

if (global.canvas_tool != CANVAS_TOOL.NONE) {
    draw_set_color(c_white);
    draw_set_alpha(0.5);
        draw_circle(global.last_mouse_x, global.last_mouse_y, global.canvas_brush_size, true);
    draw_set_alpha(1);
}

if (surface_exists(global.canvas_ui_surf)) {
    draw_set_alpha(global.canvas_ui_alpha);
        draw_surface(global.canvas_ui_surf, 0, 0);
    draw_set_alpha(1);
}

d3d_set_projection_ortho(view_xview, view_yview, view_wview, view_hview, view_angle);
