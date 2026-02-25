// Inherit the parent event
event_inherited();

if hasdonecollisionthisframe
{
	var _random = random_range(0,3)
	
	sprite_index = m_sprites[_random]
	horseidentity = m_identities[_random]
	scr_horse_stats(horseidentity)
}

glitchtimer_a++
glitchtimer_b++

if glitchtimer_a == random_range(12,15)
{
	var _jitteringX = random_range(-16.5,16.5)
	var _jitteringY = random_range(-16.5,16.5)
	
	if !func_placemeetingalt(x+_jitteringX,y,obj_mapparent) && !func_placemeetingalt(x+_jitteringX,y,obj_horseparent)
		x+=_jitteringX;
	if !func_placemeetingalt(x,y+_jitteringY,obj_mapparent) && !func_placemeetingalt(x,y+_jitteringY,obj_horseparent)
		y+=_jitteringY;	
		
	glitchtimer_a = 0
}

if glitchtimer_b == 42
{
	var _random = random_range(0,3)
	
	sprite_index = m_sprites[_random]
	horseidentity = m_identities[_random]
	scr_horse_stats(horseidentity)
}

if (glitchtimer_b == random_range(43,45)) glitchtimer_b = 0


var _jitteringX = random_range(-1,1)
var _jitteringY = random_range(-1,1)
	
if !func_placemeetingalt(x+_jitteringX,y,obj_mapparent) && !func_placemeetingalt(x+_jitteringX,y,obj_horseparent)
	x+=_jitteringX;
if !func_placemeetingalt(x,y+_jitteringY,obj_mapparent) && !func_placemeetingalt(x,y+_jitteringY,obj_horseparent)
	y+=_jitteringY;
