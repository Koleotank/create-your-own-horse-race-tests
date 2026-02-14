event_inherited()

var _disableHitbox = false;

if kiss_time>0
{
	sprite_index=spr_gijinka_spikeduniversalnerman_kissed
	
	if(thekisser != noone && x>thekisser.x) xscaleflipdir = -1
	mask_index = spr_null
	
	var _jitteringX = random_range(-3.5,3.5)*(kiss_time*0.03)
	var _jitteringY = random_range(-3.5,3.5)*(kiss_time*0.03)
	
	x=kissing_x
	y=kissing_y
	
	if !func_placemeetingalt(x+_jitteringX,y,obj_mapparent) && !func_placemeetingalt(x+_jitteringX,y,obj_horseparent)
		x+=_jitteringX;
	if !func_placemeetingalt(x,y+_jitteringY,obj_mapparent) && !func_placemeetingalt(x,y+_jitteringY,obj_horseparent)
		y+=_jitteringY;
		
	kiss_time--
}
else
{
	xscaleflipdir = 1
	sprite_index=spr_gijinka_spikeduniversalnerman
	mask_index = spr_gijinka_spikeduniversalnerman
	kissing_x=x
	kissing_y=y
}

// THIS IS LINKED TO OBJ_GIJINKA_TASKFAILEDSUCCESSFULLY

/*
if func_placemeetingpath(x+hsp,y+vsp,obj_horseparent)
{
	is_kissing=true
	var _collidingobject = func_instanceplacepath(x+hsp,y+vsp,obj_horseparent);
	if is_kissing && _collidingobject.horseidentity == "Task Failed Successfully"
	{
		thekisser = _collidingobject
		kiss_time = 30
		audio_play_sound(sfx_clickteamkiss2,10,false)
		_disableHitbox = true
		is_kissing = false
	}
}
*/