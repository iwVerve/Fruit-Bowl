///Visuals_add_object_sprite(object, sprite, ...)
// Takes object - sprite pairs as arguments, adds those to the object and sprite arrays respectively.

var index = array_length_1d(object);

for(var i = 0; i < argument_count - 1; i += 2) {
    var _object = argument[i];
    var _sprite = argument[i + 1];
    
    object[index] = _object;
    sprite[index] = _sprite;    
    index += 1;
}
