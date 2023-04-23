///mint_get_window_position(playtest)

if (argument0)
{
    windowPlaytestX = window_get_x();
    windowPlaytestY = window_get_y();
    windowPlaytestWidth = window_get_width();
    windowPlaytestHeight = window_get_height();
}
else
{
    windowEditorX = window_get_x();
    windowEditorY = window_get_y();
    windowEditorWidth = window_get_width();
    windowEditorHeight = window_get_height();
}