// Inherit the parent event
event_inherited();

if place_meeting(x+hsp,y+vsp,obj_horseparent) {
	var _collidingobject = instance_place(x+hsp,y+vsp,obj_horseparent)
	if _collidingobject.horseidentity == "Limestone Effodient" && cooldown == 0
	{
		var _deathsound = audio_play_sound(sfx_CHOMP,10,false)
		
		var _deatheffect = instance_create_depth(_collidingobject.x,_collidingobject.y,0,obj_shakinghorsedeatheffect)
		
		_deatheffect.skullcolor = c_white
		_deatheffect.sprite_index = spr_gijinka_limestone_DIE
		
		audio_sound_pitch(_deathsound,1.75)
		
		instance_destroy(_collidingobject)
		cooldown = 30
	}
}

if (cooldown > 0) cooldown--
