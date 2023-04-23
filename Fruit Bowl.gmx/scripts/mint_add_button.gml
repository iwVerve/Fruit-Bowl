///mint_add_button(x, y, anchor, width, height, radius, sprite, image, tooltip, callback, [callback arg], [visible])

var _index = array_length_1d(buttons);
var _button = ds_map_create();

_button[? "x"] = argument[0];
_button[? "y"] = argument[1];
_button[? "anchor"] = argument[2];
_button[? "width"] = argument[3];
_button[? "height"] = argument[4];
_button[? "radius"] = argument[5];
_button[? "sprite"] = argument[6];
_button[? "image"] = argument[7];
_button[? "tooltip"] = argument[8];
_button[? "callback"] = argument[9];
_button[? "callback arg"] = undefined;
if (argument_count >= 11)
{
    _button[? "callback arg"] = argument[10];
}
_button[? "visible"] = true;
if (argument_count >= 12)
{
    _button[? "visible"] = argument[11];
}

_button[? "on"] = true;

buttons[_index] = _button;

return _button;
