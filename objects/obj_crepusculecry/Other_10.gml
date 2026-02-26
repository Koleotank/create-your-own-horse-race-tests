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

cryaboutit_time++

if (cryaboutit_time == func_secondstoframes(2)) sprite_index = spr_gijinka_crepuscule_crysepically
if cryaboutit_time > func_secondstoframes(2.5)
{
	x++
	image_alpha -= 1/func_secondstoframes(4)
}

if image_alpha <= 0
	instance_destroy()

