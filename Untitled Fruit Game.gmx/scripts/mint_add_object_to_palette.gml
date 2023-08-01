///mint_add_object_to_palette(object)

var object = argument0;

var col = array_length_1d(paletteButtons) % 4;
var row = floor(array_length_1d(paletteButtons) / 4);

var sprite = object_get_sprite(object);
if (sprite == -1)
{
    sprite = defaultSprite;
}

var button = mint_add_button(6 + 46 * col, 6 + 46 * row, "l", 42, 42, 6, sprite, 0, object_get_name(object), mint_callback_select_object, object);
paletteButtons[array_length_1d(paletteButtons)] = button;
