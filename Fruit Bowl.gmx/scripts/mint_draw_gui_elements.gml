///mint_draw_gui_elements()

for(var i = 0; i < array_length_1d(buttons); i++)
{
    var _button = buttons[i];
    if (!_button[? "visible"]) continue;
    
    var _ox = mint_get_button_offset(_button[? "anchor"], true);
    var _oy = mint_get_button_offset(_button[? "anchor"], false);
    
    if (hoveredButton == _button)
        draw_set_color(colorButtonHover);
    else if (_button[? "on"])
        draw_set_color(colorButton);
    else
        draw_set_color(colorButtonOff);
    mint_draw_rounded_rectangle(_button[? "x"] + _ox, _button[? "y"] + _oy, _button[? "x"] + _button[? "width"] - 1 + _ox, _button[? "y"] + _button[? "height"] - 1 + _oy, _button[? "radius"]);
    
    if (_button[? "sprite"] > -1)
    {
        var _sprite = _button[? "sprite"];
        var _image = _button[? "image"];
        var _width = min(32, sprite_get_width(_sprite));
        var _height = min(32, sprite_get_height(_sprite));
        var _xscale = _width / sprite_get_width(_sprite);
        var _yscale = _height / sprite_get_height(_sprite);
        var _x = _button[? "x"] + _button[? "width"] / 2 + _ox - _width/2 + _xscale * sprite_get_xoffset(_sprite);
        var _y = _button[? "y"] + _button[? "height"] / 2 + _oy - _height/2 + _yscale * sprite_get_yoffset(_sprite);
        var _angle = 0;
        var _blend = c_white;
        var _alpha = 1;
        draw_sprite_ext(_sprite, _image, floor(_x), floor(_y), _xscale, _yscale, _angle, _blend, _alpha);
    }
}

draw_set_font(font);
for(var i = 0; i < array_length_1d(textboxes); i++)
{
    var _textbox = textboxes[i];
    if (!_textbox[? "visible"]) continue;
    
    var _ox = mint_get_button_offset(_textbox[? "anchor"], true);
    var _oy = mint_get_button_offset(_textbox[? "anchor"], false);
    
    if (hoveredTextbox == _textbox || selectedTextbox == _textbox)
        draw_set_color(colorTextboxHover);
    else
        draw_set_color(colorTextbox);
    mint_draw_rounded_rectangle(_textbox[? "x"] + _ox, _textbox[? "y"] + _oy, _textbox[? "x"] + _textbox[? "width"] - 1 + _ox, _textbox[? "y"] + _textbox[? "height"] - 1 + _oy, _textbox[? "radius"]);
    
    draw_set_halign(fa_left);
    draw_set_valign(fa_middle);
    draw_set_color(c_black);
    draw_text(_textbox[? "x"] + _ox + 4, _textbox[? "y"] + _oy + _textbox[? "height"] / 2, string(_textbox[? "display text"]));
    if (selectedTextbox == _textbox && textboxTimer < 20)
    {
        draw_text(_textbox[? "x"] + _ox + 1 + string_width(string(_textbox[? "display text"])), _textbox[? "y"] + _oy + _textbox[? "height"] / 2, "|");
    }
}
