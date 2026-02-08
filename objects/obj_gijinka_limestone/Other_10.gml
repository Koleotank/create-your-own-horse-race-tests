// Inherit the parent event
event_inherited();

if(!theyrepresent) dillydally++

if dillydally == times_up
{
	sprite_index = spr_gijinka_limestone_MEequalsmcSCARED
	audio_play_sound(sfx_yourtakingtoolong,10,false)
	defaultmovespeed=0
	hsp=0
	vsp=0
	knockbackresistance = 5
}

if dillydally == times_up+func_secondstoframes(0.8) 
{
	audio_play_sound(sfx_ominousrpgmakersound,10,false)
	var _THEM = instance_create_depth(72+((x%32)+32)%32,y,1,obj_crepusculekill)
	_THEM.owner = id
}

