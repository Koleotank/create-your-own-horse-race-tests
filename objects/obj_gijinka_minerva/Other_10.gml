event_inherited()

var _disableHitbox = false;

if parry_time>0
{
	sprite_index=spr_gijinka_minerva_parry
	
	if(thetarget != noone && x>thetarget.x) xscaleflipdir = -1
	mask_index = spr_null
	
	var _jitteringX = random_range(-3.5,3.5)*(parry_time*0.03)
	var _jitteringY = random_range(-3.5,3.5)*(parry_time*0.03)
	
	x=parry_x
	y=parry_y
	
	if !func_placemeetingalt(x+_jitteringX,y,obj_mapparent) && !func_placemeetingalt(x+_jitteringX,y,obj_horseparent)
		x+=_jitteringX;
	if !func_placemeetingalt(x,y+_jitteringY,obj_mapparent) && !func_placemeetingalt(x,y+_jitteringY,obj_horseparent)
		y+=_jitteringY;
		
	parry_time--
}
else
{
	xscaleflipdir = 1
	sprite_index=spr_gijinka_minerva
	mask_index = spr_gijinka_minerva
	parry_x=x
	parry_y=y
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