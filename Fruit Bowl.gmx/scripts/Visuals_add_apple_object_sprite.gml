///Visuals_add_object_sprite(object, left_sprite, right_sprite, ...)
// Takes object - left_sprite - right_sprite, triples as arguments, adds those to the object and both sprite arrays respectively.

var index = array_length_1d(object);

for(var i = 0; i < argument_count - 2; i += 3) {
    var _object = argument[i];
    var _left_sprite = argument[i + 1];
    var _right_sprite = argument[i + 2];
    
    object[index] = _object;
    left_sprite[index] = _left_sprite;
    right_sprite[index] = _right_sprite;
    index += 1;
}
