///mint_highlight_rectangle(x1, y1, x2, y2, alpha, adjustForZoom);

var x1 = (argument0 - view_xview) * zoom;
var y1 = (argument1 - view_yview) * zoom;
if (!argument5)
{
    var x2 = (argument2 - view_xview) * zoom;
    var y2 = (argument3 - view_yview) * zoom;
}
else
{
    var x2 = (argument2 - view_xview + 1) * zoom - 1;
    var y2 = (argument3 - view_yview + 1) * zoom - 1;
}

draw_set_alpha(argument4);
    draw_set_color(c_white);
    draw_rectangle(x1, y1, x2, y2, true);
    draw_set_color(c_black);
    draw_rectangle(x1 + 1, y1 + 1, x2 - 1, y2 - 1, true);
draw_set_alpha(1);
