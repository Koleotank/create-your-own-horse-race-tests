/// @description controlled step event

spawn_timer++

if spawn_timer == time_to_spawn
{
	audio_play_sound(sfx_ominousrpgmakersound,10,false)
}
else if spawn_timer > time_to_spawn
{
	image_alpha+=0.2	
}


if (image_alpha>=1)
{
	instance_create_depth(x,y,1,obj_gijinka_crepuscule)
	instance_destroy();
}