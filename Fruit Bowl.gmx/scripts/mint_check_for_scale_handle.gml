///mint_check_for_scale_handle(x, y)

var r = 6 / zoom;
for(var i = 0; i < 8; i++)
{
    if (mint_in_range(argument0, scaleHandles[i, 0] - r, scaleHandles[i, 0] + r) && mint_in_range(argument1, scaleHandles[i, 1] - r, scaleHandles[i, 1] + r))
    {
        var a;
        a[0] = scaleHandles[i, 2];
        a[1] = scaleHandles[i, 3];
        return a;
    }
}
return noone;
