/// @description controlled step event
// You can write your code in this editor

image_angle = lerp(0,360,time)

image_xscale = lerp(1,3,1-abs(1-time*2))
image_yscale = lerp(1,3,1-abs(1-time*2))

time += timespeed

if(time>1) {
	// we are doing it like this because we want to preserve the spawn positions
	// why do we want to preserve the spawn positions? because fuck you, that's why
	owner.mask_index = owner.sprite_index
	owner.image_alpha = 1
	
	instance_destroy()
} else {
	owner.x = hold_x
	owner.y = hold_y
}




