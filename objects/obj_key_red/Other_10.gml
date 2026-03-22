if place_meeting(x,y,obj_horseparent) 
{
	audio_play_sound(sfx_rpgmakerkey,10,false)
	for(var _i = 0; _i<instance_number(obj_lockparent); _i++)
	{
		var _collidingobject = instance_find(obj_lockparent,_i);
		var _deatheffect = instance_create_depth(_collidingobject.x,_collidingobject.y,0,obj_shakinghorsedeatheffect)
		
		_deatheffect.skullcolor = c_white
		_deatheffect.sprite_index = _collidingobject.sprite_index
		
		instance_destroy(instance_find(obj_lockparent,_i))	
	}
	for(var _i = 0; _i<instance_number(obj_key_red); _i++)
	{
		if(id!=instance_find(obj_lockparent,_i)) instance_destroy(instance_find(obj_key_red,_i))	
	}
	instance_destroy()
}