///scr_move_setups()

global.moveSpeed = 1;

global.moveOffset = 1;
if(sprite_exists(sprBodyPart))  
    global.moveOffset = sprite_get_width(sprBodyPart);

global.maxMoves = global.moveOffset div global.moveSpeed;
