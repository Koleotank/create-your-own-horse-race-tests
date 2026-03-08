for(var _i = 0; _i<20; _i++)
{
	show_debug_message(shrinktween)
	if _i%2 == 0 
	{
		draw_sprite_part(
			sprite_index,-1,
			0, 24*_i,
			lerp(sprite_width*originalxscale,0,shrinktween), 24,
			0, 24*_i
		)
	}
    else
	{
		draw_sprite_part(
			sprite_index,-1,
			lerp(0,sprite_width*originalxscale,shrinktween), 24*_i,
			lerp(sprite_width*originalxscale,0,shrinktween), 24,
			lerp(0,sprite_width*originalxscale,shrinktween), 24*_i
		)
	}
}