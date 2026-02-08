/// @description controlled step event
// You can write your code in this editor

if place_meeting(x,y,obj_horseparent) {
	var _collidingobject = instance_place(x,y,obj_horseparent)
	if _collidingobject == owner && success == false
	{
		var _deathsound = audio_play_sound(sfx_CHOMP,10,false)
		
		var _deatheffect = instance_create_depth(_collidingobject.x,_collidingobject.y,0,obj_shakinghorsedeatheffect)
		
		_deatheffect.skullcolor = c_white
		_deatheffect.sprite_index = spr_gijinka_limestone_DIE
		
		audio_sound_pitch(_deathsound,1.75)
		
		instance_destroy(_collidingobject)
		
		success = true
	}
}

if (killtime < 10) image_alpha = 0.1*killtime

if (killtime > 30) x += 36

if (x > room_width) instance_destroy()

killtime++




