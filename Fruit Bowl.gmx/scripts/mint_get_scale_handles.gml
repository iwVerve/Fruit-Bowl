///mint_get_scale_handles()

var xx, yy, xDir, yDir, r = 4 / zoom;
for(var i = 0; i < 8; i++)
{
    switch(i)
    {
        case 3:
        case 4:
        case 5:
            xx = selectionLeft - r; xDir = -1; break;
        case 2:
        case 6:
            xx = mean(selectionLeft, selectionRight); xDir = 0; break;
        case 0:
        case 1:
        case 7: 
            xx = selectionRight + r + 1; xDir = 1; break;
    }
    switch(i)
    {
        case 1:
        case 2:
        case 3:
            yy = selectionTop - r; yDir = -1; break;
        case 0:
        case 4:
            yy = mean(selectionTop, selectionBottom); yDir = 0; break;
        case 5:
        case 6:
        case 7:
            yy = selectionBottom + r + 1; yDir = 1; break;
    }
    scaleHandles[i, 0] = xx;
    scaleHandles[i, 1] = yy;
    scaleHandles[i, 2] = xDir;
    scaleHandles[i, 3] = yDir;
}
