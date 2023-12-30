///get_fair_rng(min, max, count, fairness)

var min_value = argument0;
var max_value = argument1;
var count     = argument2;
var fairness  = argument3;
                         
var array = array_create(0);
for(var i = 0; i < count; i += 1) {
    var current_fair = lerp(min_value, max_value, i / (count - 1));
    var current_min = lerp(min_value, current_fair, fairness);
    var current_max = lerp(max_value, current_fair, fairness);
    array[i] = random_range(current_min, current_max);
}

return array;
