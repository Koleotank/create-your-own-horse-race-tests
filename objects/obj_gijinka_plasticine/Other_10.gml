// Inherit the parent event
event_inherited();

if place_meeting(x+hsp,y+vsp,obj_horseparent)
{
	var _collidingobject = instance_place(x+hsp,y+vsp,obj_horseparent)
	if(_collidingobject.horseidentity == "Pod Ball Chair")
	{ 
		instance_create_depth(_collidingobject.x,_collidingobject.y,1,obj_gijinka_peteggy)
		instance_destroy(_collidingobject)
		instance_destroy()
	}
}

