///restart_game()

if (surface_exists(global.pauseSurf))
{
    surface_free(global.pauseSurf);
}

part_system_destroy(global.glitch_particle_system);
part_type_destroy(global.glitch_particle_type);

game_restart();
