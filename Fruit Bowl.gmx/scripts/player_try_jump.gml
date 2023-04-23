///player_try_jump()

var platform = instance_place(x, y, objPlatformOrb);

if (!place_free(x, y + global.grav) || onPlatform || place_meeting(x, y, objWater) || place_meeting(x, y, objPlatform) || platform != noone)
{
    player_ground_jump();
    if platform != noone {
        instance_destroy(platform);
    }
}
else if (airJumps > 0 || place_meeting(x, y + global.grav, objWater2) || global.infJump || global.debugInfJump)
{
    player_air_jump();
}
