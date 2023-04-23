///mint_mouse_update(init)

if (argument_count >= 1)
{
    if (argument[0])
    {
        //Init
        globalvar mouse_room_x, mouse_room_y, mouse_window_x, mouse_window_y, mouse_room_x_prev, mouse_room_y_prev, mouse_window_x_prev, mouse_window_y_prev;
        mouse_room_x = mouse_x;
        mouse_room_y = mouse_y;
        mouse_window_x = window_mouse_get_x();
        mouse_window_y = window_mouse_get_y();
        mouse_room_x_prev = mouse_room_x;
        mouse_room_y_prev = mouse_room_y;
        mouse_window_x_prev = mouse_window_x;
        mouse_window_y_prev = mouse_window_y;
        exit;
    }
}

//Update
mouse_room_x_prev = mouse_room_x;
mouse_room_y_prev = mouse_room_y;
mouse_window_x_prev = mouse_window_x;
mouse_window_y_prev = mouse_window_y;
mouse_room_x = mouse_x;
mouse_room_y = mouse_y;
mouse_window_x = window_mouse_get_x();
mouse_window_y = window_mouse_get_y();
