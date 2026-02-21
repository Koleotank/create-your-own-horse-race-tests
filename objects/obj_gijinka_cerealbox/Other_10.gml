if kill_time>0
{
	
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
	mask_index=spr_gijinka_cerealbox
	killing_x=x
	killing_y=y
	image_blend=c_white
}

if func_placemeetingpath(x+hsp,y+vsp,obj_horseparent)
{
	is_killing=true
	var _collidingobject = func_instanceplacepath(x+hsp,y+vsp,obj_horseparent);
	switch(_collidingobject.horseidentity) {
		default:
		{
			if is_killing && round(random_range(1,8))==1
			{
				sprite_index=spr_gijinka_cerealbox_EAT
				kill_time = 30
				audio_play_sound(sfx_CHOMP,10,false)
				instance_destroy(_collidingobject)
				is_killing = false
			}
		}
		break
		case "Felis TNT":
		{
			if is_killing
			{
				sprite_index=spr_gijinka_cerealbox_lose
				image_blend=make_colour_rgb(255,0,0);
				mask_index=spr_null
				kill_time = 70
				knockbackrecieved = 8
				_collidingobject.parry_time=30
				audio_play_sound(sfx_blockhit,10,false)
				is_killing = false
			}
		}
		break
	}
}

event_inherited()