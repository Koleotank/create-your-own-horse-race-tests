for(var _i = 0; _i<20; _i++)
{
	switch(_i%2)
	{
		case 0:
		{
			draw_sprite_part(
				sprite_index,-1,
				0, 0,
				lerp(originalxscale,0,shrinktween), originalyscale,
				0, 24*_i
			)
		}
		break
		case 1:
		{
			draw_sprite_part(
				sprite_index,-1,
				lerp(0,originalxscale,shrinktween), 0,
				lerp(originalxscale,0,shrinktween), originalyscale,
				lerp(0,originalxscale,shrinktween), 24*_i
			)
		}
		break
	}
}