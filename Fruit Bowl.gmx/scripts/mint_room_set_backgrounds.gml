///mint_room_set_backgrounds()
    
for (var i = 0; i < 8; i++)
{
    var bg = backgrounds[i];
    background_visible[i] = bg[? "visible"];
    background_index[i] = bg[? "index"];
    background_foreground[i] = bg[? "foreground"];
    background_x[i] = bg[? "x"];
    background_y[i] = bg[? "y"];
    background_htiled[i] = bg[? "htiled"];
    background_vtiled[i] = bg[? "vtiled"];
    background_hspeed[i] = bg[? "hspeed"];
    background_vspeed[i] = bg[? "vspeed"];
    if (bg[? "stretch"])
    {
        background_xscale[i] = room_width / background_width[i];
        background_yscale[i] = room_height / background_height[i];
    }
}

if (backgroundColor == noone)
{
    background_showcolour = false;
}
else
{
    background_showcolour = true;
    background_color = backgroundColor;
}
