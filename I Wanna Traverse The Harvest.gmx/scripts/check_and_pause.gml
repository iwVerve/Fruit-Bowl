///check_and_pause()
// Checks whether to (un)pause, does so.

if (global.pauseDelay <= 0)    //Check if pause delay is active
{
    if (input_check_pressed(KEY.PAUSE))
    {
        if (!global.gamePaused)    //Not paused, pause the game
        {
            if (!global.noPause)
            {
                global.gamePaused = true;
                global.pauseDelay = global.pauseDelayLength;
                
                with(objPlayer)
                {
                    if (!place_free(x, y + gravity))
                    {
                        y -= gravity;
                    }
                }
                
                global.pause_seal = noone;                
                with(objPlayer) {
                    var seal = instance_place(x, y, objSeal);
                    if seal != noone {
                        savedata_set_persistent(seal.name, true);
                        
                        var have_all = true;
                        all_seals = array_from_values("sealBanana", "sealCherry", "sealGrape", "sealApple1", "sealApple2", "sealKiwi", "sealCoconut", "sealBlackberry", "sealStrawberry", "sealWatermelon", "sealLemon", "sealSecret1", "sealNegative");
                        for (var i = 0; i < array_length_1d(all_seals); i += 1) {
                            if !savedata_get(all_seals[i]) {
                                have_all = false;
                                break;
                            }
                        }
                        if have_all {
                            savedata_set_persistent("allSeals", true);
                        }
                    }
                }
                
                with(objSeal) {
                    if savedata_get(name) {
                        global.pause_seal = id;
                    }
                }
                pause_t = 0;
                
                instance_deactivate_all(true);
                instance_activate_object(objPlayMusic); //If objPlayMusic sets the current music, we need to find it if we turn on music in the pause options.
                
                global.pauseSurf = surface_create(surface_get_width(application_surface), surface_get_height(application_surface));
                surface_copy(global.pauseSurf, 0, 0, application_surface);
                
                //Fix transparent objects appearing dark when paused
                surface_set_target(global.pauseSurf);
                    draw_set_blend_mode(bm_add);
                    draw_set_color(c_black);
                    draw_rectangle(0, 0, surface_get_width(global.pauseSurf), surface_get_height(global.pauseSurf), false);
                    draw_set_blend_mode(bm_normal);
                surface_reset_target();
            }
        }
        else    //Paused, unpause the game
        {
            instance_destroy(objOptionsMenu);
            instance_destroy(objKeyboardControlsMenu);
            instance_destroy(objControllerMenu);
            
            global.gamePaused = false;
            global.pauseDelay = global.pauseDelayLength;
            
            instance_activate_all();
            
            if (surface_exists(global.pauseSurf))
            {
                surface_free(global.pauseSurf);
            }
            
            config_save();    //Save config in case volume levels were changed
            
            io_clear();    //Clear input states to prevent possible pause strats/exploits
        }
    }
}
else
{
    global.pauseDelay -= 1;
}
