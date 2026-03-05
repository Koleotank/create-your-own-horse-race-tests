// Inherit the parent event
event_inherited();

if stun_time>0
{
	
	var _jitteringX = random_range(-3.5,3.5)*(stun_time*0.03)
	var _jitteringY = random_range(-3.5,3.5)*(stun_time*0.03)
	
	x=stun_x
	y=stun_y
	
	if !func_placemeetingalt(x+_jitteringX,y,obj_mapparent) && !func_placemeetingalt(x+_jitteringX,y,obj_horseparent)
		x+=_jitteringX;
	if !func_placemeetingalt(x,y+_jitteringY,obj_mapparent) && !func_placemeetingalt(x,y+_jitteringY,obj_horseparent)
		y+=_jitteringY;
		
	stun_time--
}
else
{
	sprite_index=spr_gijinka_gst
	stun_x=x
	stun_y=y
}

