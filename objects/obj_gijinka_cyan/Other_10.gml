event_inherited()

if cooldown > 0
	cooldown--
else
{
	if place_meeting(x+sign(hsp),y+sign(vsp),obj_horseparent)
	{
		var _collidingobject = instance_place(x+sign(hsp),y+sign(vsp),obj_horseparent)
		audio_play_sound(sfx_tasershock,10,false)
		var _shocker = instance_create_depth(_collidingobject.x,_collidingobject.y,1,obj_tasershock)
		_shocker.lifespan = 70;
		_shocker.owner = _collidingobject;
		cooldown = 20;
	}
	if place_meeting(x,y,obj_horseparent)
	{
		var _collidingobject = instance_place(x,y,obj_horseparent)
		audio_play_sound(sfx_tasershock,10,false)
		var _shocker = instance_create_depth(_collidingobject.x,_collidingobject.y,1,obj_tasershock)
		_shocker.lifespan = 70;
		_shocker.owner = _collidingobject;
		cooldown = 20;
	}
}