// Inherit the parent event
event_inherited();

if cooldown > 0
	cooldown--
else
{
	if place_meeting(x+hsp,y+vsp,obj_horseparent)
	{
		var _collidingobject = instance_place(x+hsp,y+vsp,obj_horseparent)
		
		switch(_collidingobject.horseidentity) 
		{
			default: 
			{
				audio_play_sound(sfx_punched,10,false)
				var _throw = instance_create_depth(_collidingobject.x,_collidingobject.y,1,obj_spineffect)
				_throw.timespeed = 0.1;
				_throw.owner = _collidingobject;
				_throw.hold_x = _collidingobject.x;
				_throw.hold_y = _collidingobject.y;
				_collidingobject.mask_index = spr_null;
				_collidingobject.image_alpha = 0;
		
				cooldown = 10;
			}
			break;
			case "All That Glitters": 
			case "Tire Delivery":
			{
				
			}
			break;
		}
	}
}

