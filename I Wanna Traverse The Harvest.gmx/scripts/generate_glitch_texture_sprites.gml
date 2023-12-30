///generate_glitch_texture_sprites()

var COUNT = 256;
var WIDTH = 16;
var HEIGHT = 16;
var ALL_BACKGROUNDS = array_from_values(bTutorialTiles, bSecret1Tiles, bBananaTiles, bCherryTiles, bGrapeTiles, bIntermission1Tiles, bRedAppleTiles, bGreenAppleTiles, bKiwiTiles, bCoconutTiles, bIntermission2Tiles, bBlackberryTiles, bStrawberryTiles, bWatermelonTiles, bCloudTiles, bJigsawTiles, bLemonTiles, bOTiles);
var FILENAME = "glitch\frame";

var surf = surface_create(32, 32);
surface_set_target(surf);
    for(var c = 0; c < COUNT; c += 1) {
        draw_clear_alpha(c_black, 0);
        
        for(var i = 0; i < 4; i += 1) {
            var index = irandom(array_length_1d(ALL_BACKGROUNDS) - 1);
            var background = ALL_BACKGROUNDS[index];
            var left = random_range(0, 320);
            var top = random_range(0, 128);
        
            var xx = (i % 2) * 16;
            var yy = (i div 2) * 16;
            draw_background_part(
                background,
                left,
                top,
                WIDTH,
                HEIGHT,
                xx,
                yy,
            );
        }
        
        surface_save(surf, FILENAME + string(c) + ".png");
    }
surface_reset_target();


surface_free(surf);
game_end();
