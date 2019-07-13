///scr_update_dir(e_Dir)
//
// Return 0 if no erros occur
//
///

var dir = argument0;

if(dir == e_Dir.NONE){
    hMove = 0;
    vMove = 0;

    return 0;
}

switch(dir)
{
    case e_Dir.UP:
        hMove = 0;
        vMove = -global.moveSpeed;
        return 0;

    case e_Dir.DOWN:
        hMove = 0;
        vMove = global.moveSpeed;
        return 0;

    case e_Dir.LEFT:
        hMove = -global.moveSpeed;
        vMove = 0;
        return 0;

    case e_Dir.RIGHT:
        hMove = global.moveSpeed;
        vMove = 0;
        return 0;

    default:
        return -1;
}
