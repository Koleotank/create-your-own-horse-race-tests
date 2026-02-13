if place_meeting(x,y,obj_horseparent)
{
	func_anticollisionclipping(obj_horseparent)
}

if knockbackrecieved>0 && !iscollided
{
	audio_play_sound(sfx_rpgmakerblow3,10,false)
	//var _collidingobject = instance_place(x,y,obj_horseparent);
	//func_performknockback(_collidingobject)
	mask_index = spr_null
	targetangle=random_range(0,359)//_collidingobject.targetangle
	iscollided = true
}

if (iscollided) 
{
	x+=lengthdir_x(10,targetangle)
	y+=lengthdir_y(10,targetangle)
}

if (x<-spritewidth_half || x>room_width+spritewidth_half) && (y<-spriteheight_half || y>room_height+spriteheight_half)
{
	instance_destroy()
}