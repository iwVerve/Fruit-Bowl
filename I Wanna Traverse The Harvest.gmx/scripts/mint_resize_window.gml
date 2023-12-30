///mint_resize_window(stretch app surf, [width], [height], [x], [y])

if (argument_count >= 3)
{
    var w = argument[1], h = argument[2];
    window_set_size(w, h);
    if (argument_count >= 5)
    {
        window_set_position(argument[3], argument[4]);
    }
}
else
{
    var w = window_get_width(), h = window_get_height();
    view_wview = w / zoom; view_wport = w;
    view_hview = h / zoom; view_hport = h;
}

if (argument[0])
{
    surface_resize(application_surface, w, h);
    display_set_gui_size(w, h);
}
else
{
    surface_resize(application_surface, wview, hview);
    display_set_gui_size(wview, hview);
}
