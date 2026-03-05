// Inherit the parent event
event_inherited();

if stun_time>0
{
	
	var _jitteringX = random_range(-3.5,3.5)*(stun_time*0.03)
	var _jitteringY = random_range(-3.5,3.5)*(stun_time*0.03)
	
	x=stun_x
	y=stun_y
	
	if !func_placemeetingalt(x+_jitteringX,y,obj_mapparent) && !func_placemeetingalt(x+_jitteringX,y,obj_horseparent)
		x+=_jitteringX;
	if !func_placemeetingalt(x,y+_jitteringY,obj_mapparent) && !func_placemeetingalt(x,y+_jitteringY,obj_horseparent)
		y+=_jitteringY;
		
	stun_time--
}
else
{
	sprite_index=spr_gijinka_crepuscule
	stun_x=x
	stun_y=y
}

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
			case "Literally Winter P1nes":
			{
				var _deathsound = audio_play_sound(sfx_winterp1nes_DIE,10,false)
		
				var _deatheffect = instance_create_depth(_collidingobject.x,_collidingobject.y,0,obj_shakinghorsedeatheffect)
		
				_deatheffect.skullcolor = c_white
				_deatheffect.sprite_index = spr_gijinka_winterp1nes_DIE
		
				audio_sound_pitch(_deathsound,1)
		
				instance_destroy(_collidingobject)
				cooldown = 30
			}
			break;
			case "Giant Steps":
			{
				if _collidingobject.total_hp <= 0
				{
					var _deathsound = audio_play_sound(sfx_CHOMP,10,false)
		
					var _deatheffect = instance_create_depth(_collidingobject.x,_collidingobject.y,0,obj_shakinghorsedeatheffect)
		
					_deatheffect.skullcolor = c_red
					_deatheffect.sprite_index = spr_gijinka_gst_lose
		
					audio_sound_pitch(_deathsound,0.8)
		
					instance_destroy(_collidingobject)
					cooldown = 30
				}
				else
				{
					audio_play_sound(sfx_punched,10,false)
					var _deathsound = audio_play_sound(sfx_oww,10,false)
					
					_collidingobject.sprite_index = spr_gijinka_gst_OUCH
					
					_collidingobject.stun_time = 30
					_collidingobject.total_hp--
					cooldown = 30
				}
			}
			break;
			case "All That Glitters":
			{
				if wardoff_counter <= 0
				{
					audio_play_sound(sfx_rpgmakerattack2,10,false)
					var _deathsound = audio_play_sound(sfx_crepusculecrys,10,false)
		
					var _deatheffect = instance_create_depth(x,y,0,obj_crepusculecry)
		
					audio_sound_pitch(_deathsound,1)
		
					instance_destroy()
				}
				else
				{
					audio_play_sound(sfx_rpgmakerattack2,10,false)
					var _deathsound = audio_play_sound(sfx_crepuscule_OW,10,false)
					
					sprite_index = spr_gijinka_crepuscule_ow
					
					stun_time = 30
					wardoff_counter-=2
				}
			}
			break;
			case "Aetherial Mark":
			{
				if wardoff_counter <= 0
				{
					audio_play_sound(sfx_rpgmakerattack2,10,false)
					var _deathsound = audio_play_sound(sfx_crepusculecrys,10,false)
		
					var _deatheffect = instance_create_depth(x,y,0,obj_crepusculecry)
		
					audio_sound_pitch(_deathsound,1)
					
					_collidingobject.winsound = sfx_rpgmakerblind
					_collidingobject.secondwinsound = sfx_rpgmakerblind
					_collidingobject.winsprite = spr_gijinka_aetherialmark_success
		
					instance_destroy()
				}
				else
				{
					audio_play_sound(sfx_rpgmakerattack2,10,false)
					var _deathsound = audio_play_sound(sfx_crepuscule_OW,10,false)
					
					sprite_index = spr_gijinka_crepuscule_ow
					
					stun_time = 30
					wardoff_counter--
				}
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