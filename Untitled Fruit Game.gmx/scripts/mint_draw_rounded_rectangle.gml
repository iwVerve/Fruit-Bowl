///mint_draw_rounded_rectangle(x1, y1, x2, y2, radius, [color])

var x1 = argument[0];
var y1 = argument[1];
var x2 = argument[2];
var y2 = argument[3];
var rad = argument[4];
if (argument_count >= 6)
{
    draw_set_color(argument[5]);
}

draw_rectangle(x1+rad, y1, x2-rad, y2, false);
draw_rectangle(x1, y1+rad, x2, y2-rad, false);
draw_circle(x1+rad-1, y1+rad-1, rad, false);
draw_circle(x2-rad, y1+rad-1, rad, false);
draw_circle(x1+rad-1, y2-rad, rad, false);
draw_circle(x2-rad, y2-rad, rad, false);
