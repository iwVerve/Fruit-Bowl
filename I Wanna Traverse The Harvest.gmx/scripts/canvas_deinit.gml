///canvas_deinit()

if (background_exists(global.canvas_background)) {
    background_delete(global.canvas_background);
}
surface_free(global.canvas_surf);
