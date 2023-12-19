///array_shuffle(array)

var array = argument0;

for(var i = array_length_1d(array) - 1; i > 0; i -= 1) {
    var j = irandom_range(0, i);
    if i != j {
        var temp = array[i];
        array[@ i] = array[j];
        array[@ j ] = temp;
    }
}

return argument0;
