event_inherited()

if kill_time>0
{
	sprite_index=spr_gijinka_cerealbox_EAT
	
	var _jitteringX = random_range(-3.5,3.5)*(kill_time*0.03)
	var _jitteringY = random_range(-3.5,3.5)*(kill_time*0.03)
	
	x=killing_x
	y=killing_y
	
	if !func_placemeetingalt(x+_jitteringX,y,obj_mapparent) && !func_placemeetingalt(x+_jitteringX,y,obj_horseparent)
		x+=_jitteringX;
	if !func_placemeetingalt(x,y+_jitteringY,obj_mapparent) && !func_placemeetingalt(x,y+_jitteringY,obj_horseparent)
		y+=_jitteringY;
		
	kill_time--
}
else
{
	sprite_index=spr_gijinka_cerealbox
	killing_x=x
	killing_y=y
}

if place_meeting(x+sign(hsp),y+sign(vsp),obj_horseparent)
{
	is_killing=true
	var _collidingobject = instance_place(x+sign(hsp),y+sign(vsp),obj_horseparent);
	if is_killing && round(random_range(1,8))==1
	{
		kill_time = 30
		audio_play_sound(sfx_CHOMP,10,false)
		instance_destroy(_collidingobject)
		is_killing = false
	}
}