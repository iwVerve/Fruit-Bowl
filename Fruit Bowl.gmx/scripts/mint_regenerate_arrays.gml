///mint_regenerate_arrays()

instances = array_create(0);
with(objMintInstance)
{
    var index = array_height_2d(other.instances);
    other.instances[index, 0] = object;
    other.instances[index, 1] = x;
    other.instances[index, 2] = y;
    other.instances[index, 3] = image_xscale;
    other.instances[index, 4] = image_yscale;
    other.instances[index, 5] = image_blend;
    other.instances[index, 6] = image_angle;
    other.instances[index, 7] = code;
}

tiles = array_create(0);
with(objMintTile)
{
    var index = array_height_2d(other.tiles);
    other.tiles[index, 0] = back;
    other.tiles[index, 1] = x;
    other.tiles[index, 2] = y;
    other.tiles[index, 3] = width;
    other.tiles[index, 4] = height;
    other.tiles[index, 5] = left;
    other.tiles[index, 6] = top;
    other.tiles[index, 7] = depth
    other.tiles[index, 8] = image_blend;
    other.tiles[index, 9] = image_xscale;
    other.tiles[index, 10] = image_yscale;
}

