///scr_get_move_script(portalFlag)

var portalFlag = argument0;

// Set Position
var xx = 0;
var yy = 0;
if(!portalFlag){
    xx = x;
    yy = y;
} else{
    xx = xOut;
    yy = yOut;
}



if( place_free(xx+sign(hMove)*global.moveOffset, yy+sign(vMove)*global.moveOffset) ) // Empty place
{
    if(portalFlag)
        scr_get_into_portal();

    return scr_move;
}
else if( place_meeting(xx+sign(hMove)*global.moveOffset, yy+sign(vMove)*global.moveOffset, oMoveCube) ) // Move Cube
{
    cubeID = scr_get_instance_id(xx, yy, oMoveCube);
    
    if( place_free(cubeID.x + sign(hMove)*global.moveOffset, cubeID.y + sign(vMove)*global.moveOffset ) )
    {

        if(portalFlag)
            scr_get_into_portal();
            
        return scr_move_pushing_box;
    }else{
        scr_clear_cube_id();
        return -1;
    }
}
else if( place_meeting(xx+sign(hMove)*global.moveOffset, yy+sign(vMove)*global.moveOffset, oPortal) ) // Portal
{
    show_debug_message("Hiting Portal");
    var portalID = scr_get_instance_id(xx, yy, oPortal);
    var outside = portalID.portalOut;

    if( !portalFlag )
        portalFlag = true;

    xOut = outside.x;
    yOut = outside.y;

    return scr_get_move_script(portalFlag);
}
else if( place_meeting(xx+sign(hMove)*global.moveOffset, yy+sign(vMove)*global.moveOffset, oFood))  // Food
{
    if(portalFlag)
        scr_get_into_portal();

    return scr_move_and_eat;

}else{
    return -1;
}
