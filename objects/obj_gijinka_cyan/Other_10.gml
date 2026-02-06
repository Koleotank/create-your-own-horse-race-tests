event_inherited()

if place_meeting(x+sign(hsp),y+sign(vsp),obj_horseparent)
{
	var _collidingobject = instance_place(x+sign(hsp),y+sign(vsp),obj_horseparent)
	
	var _shocker = instance_create_depth(_collidingobject.x,_collidingobject.y,1,obj_tasershock)
	_shocker.lifespan = 20;
	_shocker.owner = _collidingobject;
	
}