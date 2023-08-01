///mint_draw_scale_handles()

for(var i = 0; i < 8; i++)
{
    var r = 4 / zoom;
    var xx = scaleHandles[i, 0];
    var yy = scaleHandles[i, 1];
    mint_highlight_rectangle(xx-r, yy-r, xx+r, yy+r, 1, false);
}
