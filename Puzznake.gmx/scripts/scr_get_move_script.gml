///scr_get_move_script(portalFlag)

/////////////// Available Scripts /////////////////
/// 
/// scr_move(portalFlag)
/// scr_move_pushing_box(e_Dir)
/// scr_move_into_portal(e_Dir)
/// scr_move_and_eat(e_Dir)
/// scr_get_into_portal()
///
///////////////////////////////////////////////////

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
else if( place_meeting(xx+sign(hMove)*global.moveOffset, yy+sign(vMove)*global.moveOffset, oMovableCube) ) // Move Cube
{
    if(portalFlag)
        scr_get_into_portal();

    return scr_move_pushing_box;
}
else if( place_meeting(xx+sign(hMove)*global.moveOffset, yy+sign(vMove)*global.moveOffset, oPortal) ) // Portal
{
    show_debug_message("Hiting Portal");
    var portalID = instance_place(xx+sign(hMove)*global.moveOffset, yy+sign(vMove)*global.moveOffset, oPortal);
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
