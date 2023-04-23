///mint_get_instance_tooltip(id)

var inst = id;
if (argument_count >= 1)
{
    inst = argument[0];
}
var tooltip = "";

with(inst)
{
    tooltip = object_get_name(object);
    if (array_height_2d(code) > 0)
    {
        tooltip += "#";
        for (var i = 0; i < array_height_2d(code); i++)
        {
            var value = code[i, 1];
            if (is_string(value))
            {
                value = '"' + value + '"';
            }
            else
            {
                value = string(value);
            }
            tooltip += "#" + string(code[i, 0]) + " = " + value;
        }
    }
}

return tooltip;
