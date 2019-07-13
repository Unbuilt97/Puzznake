///scr_move()

if(movesLeft > 0)
{
    x += hMove;
    y += vMove;

    movesLeft -= 1;
}else{
    scr_deactivate_turn();
}
