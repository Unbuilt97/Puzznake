///scr_move_setups()

global.moveSpeed = 3;

global.moveOffset = 1;
if(sprite_exists(sprBodyPart))  
    global.moveOffset = sprite_get_width(sprBodyPart);

global.maxMoves = global.moveOffset / global.moveSpeed;

// Sets a precise number to maxMoves
while( (global.moveOffset % (global.moveSpeed)) > 0 ){
    show_debug_message("arredondando: "+string(global.moveOffset / (global.moveSpeed)));
    show_debug_message(">>> "+string((global.moveOffset % (global.moveSpeed))));
    global.moveSpeed += 1;
    global.maxMoves = global.moveOffset / (global.moveSpeed);
}
