///mint_get_button_offset(anchor, x)
var ox = 0, oy = 0;
switch(argument0)
{
    case "tl":
        break;
    case "l":
        oy = tlm;
        break;
    case "t":
        ox = lm;
        break;
    case "b":
        break;
    case "r":
        break;
}
if (argument1)
{
    return ox;
}
return oy;
