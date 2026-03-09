/// @description Insert description here
// You can write your code in this editor
event_inherited();

if hasdonecollisionthisframe && speedupcooldown <= 0
{
	if irandom_range(1,4)+(defaultmovespeed/5) >= 4
	{
		x = glitchx
		y = glitchy
		targetangle = glitchangle
		sprite_index = spr_gijinka_abn_charge
		image_index = 0
		glitchspriteduration = 10
	}
	if defaultmovespeed <= 10
		defaultmovespeed += 0.9
	else
		defaultmovespeed = 0
	speedupcooldown = 6
	glitchx = x
	glitchy = y
	glitchangle = targetangle
}
if glitchspriteduration > 0
{
	glitchspriteduration--
}
else
{
	sprite_index = spr_gijinka_abn
}

if speedupcooldown > 0
{
	speedupcooldown--
}



if manager != noone
{
	if place_meeting(x+hsp,y+vsp,obj_horseparent)
	{
		var _collidingobject = instance_place(x+hsp,y+vsp,obj_horseparent)
		switch(_collidingobject.horseidentity) 
		{
			default:
			{
				audio_play_sound(sfx_clickteamcrush,10,false)
				instance_create_depth(_collidingobject.x,_collidingobject.y,1,obj_gijinka_abn)
				instance_destroy(_collidingobject)
			}
			break
			case "Crepuscule":
			{
				if _collidingobject.wardoff_counter <= 0
					{
						audio_play_sound(sfx_clickteamcrush,10,false)
						instance_create_depth(_collidingobject.x,_collidingobject.y,1,obj_gijinka_abn)
						instance_destroy(_collidingobject)
					}
					else
					{
						audio_play_sound(sfx_clickteamcrush,10,false)
						var _deathsound = audio_play_sound(sfx_crepuscule_OW,10,false)
					
						_collidingobject.sprite_index = spr_gijinka_crepuscule_ow
					
						_collidingobject.stun_time = 30
						_collidingobject.wardoff_counter--
					}
			}
			break
		}
	}
}

