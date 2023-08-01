///array_from_values(...)

var array = array_create(0);

for(var i = 0; i < argument_count; i += 1) {
    var arg = argument[i];
    if is_array(arg) {
        for(var j = 0; j < array_length_1d(arg); j += 1) {
            array[i, j] = arg[j];
        }
    }
    else {
        array[i] = argument[i];
    }
}

return array;
