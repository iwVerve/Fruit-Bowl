///mint_get_room()

with(all)
{
    var ignored = false;
    for(var i = 0; i < array_length_1d(other.ignore); i++)
    {
        if (object_index == other.ignore[i])
        {
            ignored = true;
            break;
        }
    }
    if (!ignored)
    {
        var index = array_height_2d(other.instances);
        other.instances[index, 0] = object_index;
        other.instances[index, 1] = x;
        other.instances[index, 2] = y;
        other.instances[index, 3] = image_xscale;
        other.instances[index, 4] = image_yscale;
        other.instances[index, 5] = image_blend;
        other.instances[index, 6] = image_angle;
        other.instances[index, 7] = array_create(0);
    }
}
var roomTiles = tile_get_ids();
for(var i = 0; i < array_length_1d(roomTiles); i++)
{
    var tile = roomTiles[i];
    tiles[i, 0] = tile_get_background(tile);
    tiles[i, 1] = tile_get_x(tile);
    tiles[i, 2] = tile_get_y(tile);
    tiles[i, 3] = tile_get_width(tile);
    tiles[i, 4] = tile_get_height(tile);
    tiles[i, 5] = tile_get_left(tile);
    tiles[i, 6] = tile_get_top(tile);
    tiles[i, 7] = tile_get_depth(tile);
    tiles[i, 8] = tile_get_blend(tile);
    tiles[i, 9] = tile_get_xscale(tile);
    tiles[i, 10] = tile_get_yscale(tile);
}

for(var i = 0; i < 8; i++)
{
    var bg = backgrounds[i];
    bg[? "visible"] = background_visible[i];
    bg[? "index"] = background_index[i];
    bg[? "foreground"] = background_foreground[i];
    bg[? "x"] = background_x[i];
    bg[? "y"] = background_y[i];
    bg[? "htiled"] = background_htiled[i];
    bg[? "vtiled"] = background_vtiled[i];
    bg[? "hspeed"] = background_hspeed[i];
    bg[? "vspeed"] = background_vspeed[i];
    bg[? "stretch"] = (background_width[i] == room_width);
}

backgroundColor = noone;
if (background_showcolour)
{
    backgroundColor = background_color;
}

roomWidth = room_width;
roomHeight = room_height;
roomSpeed = room_speed;

room_set_width(editorRoom, room_width);
room_set_height(editorRoom, room_height);
room_set_view_enabled(editorRoom, true);
room_set_view(editorRoom, 0, true, -lm, -tm, sw, sh, 0, 0, sw, sh, 0, 0, 0, 0, -1);

