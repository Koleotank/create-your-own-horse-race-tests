draw_sprite_part(
	sprite_index,-1,
	lerp(0,sprite_width*0.5*originalxscale,shrinktween), 0,
	lerp(sprite_width*0.5*originalxscale,0,shrinktween), 240,
	x+lerp(0,sprite_width*0.5*originalxscale,shrinktween), y
)
draw_sprite_part(
	sprite_index,-1,
	320, lerp(0,sprite_height*0.5*originalyscale,shrinktween),
	320, lerp(sprite_height*0.5*originalyscale,0,shrinktween),
	x+320, y+lerp(0,sprite_height*0.5*originalyscale,shrinktween)
)
draw_sprite_part(
	sprite_index,-1,
	320, 240,
	lerp(sprite_width*0.5*originalxscale,0,shrinktween), 240,
	x+320, y+240
)
draw_sprite_part(
	sprite_index,-1,
	0, 240,
	320, lerp(sprite_height*0.5*originalyscale,0,shrinktween),
	x, y+240
)