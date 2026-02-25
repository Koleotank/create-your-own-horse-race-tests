// Inherit the parent event
event_inherited();

glitchtimer_a++
glitchtimer_b++

var _width = sprite_width+2
var _height = sprite_height+2

if (
	glitchtimer_b >= random_range(2,15) 
	&& collision_rectangle(x-_width*0.5, y-_height*0.5, x+_width*0.5, y+_height*0.5, obj_mapparent, true, true)==noone 
	&& collision_rectangle(x-_width*0.5, y-_height*0.5, x+_width*0.5, y+_height*0.5, obj_horseparent, true, true)==noone
	&& collision_rectangle((x+hsp)-_width*0.5, (y+vsp)-_height*0.5, (x+hsp)+_width*0.5, (y+vsp)+_height*0.5, obj_mapparent, true, true)==noone 
	&& collision_rectangle((x+hsp)-_width*0.5, (y+vsp)-_height*0.5, (x+hsp)+_width*0.5, (y+vsp)+_height*0.5, obj_horseparent, true, true)==noone
)
{
	var _random = round(random_range(0,3))
	
	sprite_index = m_sprites[_random]
	horseidentity = m_identities[_random]
	scr_horse_stats(horseidentity)
	
	glitchtimer_b = 0
}
