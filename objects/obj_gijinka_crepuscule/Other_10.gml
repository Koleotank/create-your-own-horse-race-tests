// Inherit the parent event
event_inherited();

if place_meeting(x+hsp,y+vsp,obj_horseparent) {
	var _collidingobject = instance_place(x+hsp,y+vsp,obj_horseparent)
	if cooldown == 0
	{
		switch(_collidingobject.horseidentity) 
		{
			case "Limestone Effodient":
			{
				var _deathsound = audio_play_sound(sfx_CHOMP,10,false)
		
				var _deatheffect = instance_create_depth(_collidingobject.x,_collidingobject.y,0,obj_shakinghorsedeatheffect)
		
				_deatheffect.skullcolor = c_white
				_deatheffect.sprite_index = spr_gijinka_limestone_DIE
		
				audio_sound_pitch(_deathsound,1.75)
		
				instance_destroy(_collidingobject)
				cooldown = 30
			}
			break;
			case "Shitass?":
			{
				var _deathsound = audio_play_sound(sfx_CHOMP,10,false)
		
				var _deatheffect = instance_create_depth(_collidingobject.x,_collidingobject.y,0,obj_shakinghorsedeatheffect)
		
				_deatheffect.skullcolor = c_red
				_deatheffect.sprite_index = spr_gijinka_shitass_winlose
		
				audio_sound_pitch(_deathsound,1.75)
		
				instance_destroy(_collidingobject)
				cooldown = 30
			}
			break;
		}
	}
}

if (cooldown > 0) cooldown--


if afterimagecooldown >= 4
	{
		var _afterimage = instance_create_depth(x,y,0,obj_dasheffect_afterimage)
		_afterimage.sprite_index = sprite_index
		afterimagecooldown = 0
	}
	else
		afterimagecooldown++