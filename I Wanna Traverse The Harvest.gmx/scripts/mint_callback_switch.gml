///mint_callback_switch(button, type)

var b = variable_instance_get(id, argument1);
b = !b;
argument0[? "on"] = b;
variable_instance_set(id, argument1, b);

switch(argument1)
{
    case "showObjects":
    case "showInvisibleObjects":
        with(objMintInstance)
        {
            visible = other.showObjects && (object_get_visible(object) || other.showInvisibleObjects);
        }
        break;
        break;
    case "showTiles":
        with(objMintTile)
        {
            visible = b;
        }
        break;
    case "showBackgrounds":
    case "showForegrounds":
        var f = (argument1 == "showForegrounds");
        for(var i = 0; i < 8; i++)
        {
            var _bg = backgrounds[i];
            if (_bg[? "foreground"] == f)
            {
                background_visible[i] = _bg[? "visible"] && b;
            }
        }
        break;
}
