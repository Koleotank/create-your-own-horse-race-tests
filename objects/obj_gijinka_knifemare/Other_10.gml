// Inherit the parent event
event_inherited();

if chasermanager != noone 
{
	var _chasertraplocations = instance_number(obj_chasertraplocation)
	if cooldown == 0 
	{
		if place_meeting(x+hsp,y+vsp,obj_horseparent) && _chasertraplocations>0
		{
			audio_play_sound(sfx_2kkichasertrap1,20,false)
			var _collidingobject = instance_place(x+hsp,y+vsp,obj_horseparent)
			if(_collidingobject.horseidentity != "Shadow Lady Estate")
			{
				chasermanager.count--;
				/*
				for (var _i=0; _i<array_length(to_catch); _i++)
				{
					var _honse = instance_find(obj_horseparent,_i)
					if(_honse.id == _collidingobject.id) array_delete(to_catch,_i,1)
				}*/
				var _chasertrap = instance_find(obj_chasertraplocation,round(random_range(0,_chasertraplocations-1)))
				_collidingobject.x = _chasertrap.x
				_collidingobject.y = _chasertrap.y
				cooldown = 40
				show_debug_message(chasermanager.count)
			}
		}
	}
	else cooldown--
}
