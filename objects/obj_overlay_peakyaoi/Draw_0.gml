draw_sprite_part(
	sprite_index,-1,
	lerp(0,sprite_width*0.5*originalxscale,shrinktween), 240,
	lerp(sprite_width*0.5*originalxscale,0,shrinktween), 240,
	lerp(0,sprite_width*0.5*originalxscale,shrinktween), 240
)
draw_sprite_part(
	sprite_index,-1,
	320, lerp(0,sprite_height*0.5*originalyscale,shrinktween),
	320, lerp(sprite_height*0.5*originalyscale,0,shrinktween),
	320, lerp(0,sprite_height*0.5*originalyscale,shrinktween)
)
draw_sprite_part(
	sprite_index,-1,
	320, 240,
	lerp(sprite_width*originalxscale,0,shrinktween), 240,
	320, 240
)
draw_sprite_part(
	sprite_index,-1,
	0, 240,
	320, lerp(sprite_height*originalyscale,0,shrinktween),
	0, 240
)