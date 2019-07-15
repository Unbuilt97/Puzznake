///scr_get_instance_id(xx, yy, obj)

var xx = argument0;
var yy = argument1;
var obj = argument2;

var insID = instance_place(xx+sign(hMove)*global.moveOffset, yy+sign(vMove)*global.moveOffset, obj);

return insID;

