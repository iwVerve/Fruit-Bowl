///array_contains(array, value)

var i = 0;
var l = array_length_1d(argument0);

while(i < l) {
    if argument0[i] == argument1 {
        return true;
    }
    i += 1;
}

return false;
