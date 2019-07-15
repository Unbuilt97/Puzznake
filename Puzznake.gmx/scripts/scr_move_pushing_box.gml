///scr_move_pushing_box()

if( movesLeft > 0 )
{
    x += hMove;
    cubeID.x += hMove;
    
    y += vMove;
    cubeID.y += vMove;
    
    movesLeft -= 1;
}else {
    scr_deactivate_turn();
    scr_clear_dir();
}
