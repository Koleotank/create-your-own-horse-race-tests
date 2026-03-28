for(var _i = 0; _i<3; _i++)
{
	if _i%2 == 0 
	{
		draw_sprite_part(
			sprite_index,-1,
			0, 160*_i,
			lerp(sprite_width*originalxscale,0,shrinktween), 160,
			0, 160*_i
		)
	}
    else
	{
		draw_sprite_part(
			sprite_index,-1,
			lerp(0,sprite_width*originalxscale,shrinktween), 160*_i,
			lerp(sprite_width*originalxscale,0,shrinktween), 160,
			lerp(0,sprite_width*originalxscale,shrinktween), 160*_i
		)
	}
}