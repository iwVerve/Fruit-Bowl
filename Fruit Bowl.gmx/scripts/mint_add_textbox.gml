///mint_add_textbox(x, y, anchor, width, height, radius, value, numeric, tooltip, update, finish, [update arg], [finish arg], [visible])

var _index = array_length_1d(textboxes);
var _textbox = ds_map_create();

_textbox[? "x"] = argument[0];
_textbox[? "y"] = argument[1];
_textbox[? "anchor"] = argument[2];
_textbox[? "width"] = argument[3];
_textbox[? "height"] = argument[4];
_textbox[? "radius"] = argument[5];
_textbox[? "value"] = argument[6];
_textbox[? "numeric"] = argument[7];
_textbox[? "tooltip"] = argument[8];
_textbox[? "update"] = argument[9];
_textbox[? "finish"] = argument[10];
_textbox[? "update arg"] = undefined;
if (argument_count >= 12)
{
    _textbox[? "update arg"] = argument[11];
}
_textbox[? "finish arg"] = undefined;
if (argument_count >= 13)
{
    _textbox[? "finish arg"] = argument[12];
}
_textbox[? "visible"] = true;
if (argument_count >= 14)
{
    _textbox[? "visible"] = argument[13];
}

_textbox[? "display text"] = _textbox[? "value"];

textboxes[_index] = _textbox;

return _textbox;