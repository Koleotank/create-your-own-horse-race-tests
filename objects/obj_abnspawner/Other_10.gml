/// @description controlled step event

spawn_timer++

if spawn_timer == time_to_spawn
{
	if(!audio_is_playing(sfx_abnnoise)) audio_play_sound(sfx_abnnoise,10,false)
}
else if spawn_timer > time_to_spawn
{
	image_alpha+=0.05	
}


if (image_alpha>=1)
{
	instance_create_depth(x,y,1,obj_gijinka_abn)
	instance_destroy();
}