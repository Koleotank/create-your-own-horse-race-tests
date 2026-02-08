// Inherit the parent event
event_inherited();

if kill_time>0
{
	var _jitteringX = random_range(-3.5,3.5)*(kill_time*0.03)
	var _jitteringY = random_range(-3.5,3.5)*(kill_time*0.03)
	
	x=kill_x+_jitteringX
	y=kill_y+_jitteringY
		
	kill_time--
}

