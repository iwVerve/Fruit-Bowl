///mint_on_playtest_start()

var early = !argument0;

if early
{
    //Runs before the room gets created, useful for setting global.
    global.grav = 1;
}
else
{
    //Runs after instances get placed in the room.
    with(objBlock) {visible = true;}
}

