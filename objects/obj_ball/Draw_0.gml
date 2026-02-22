/// @description Insert description here
// You can write your code in this editor

/*
if multicolor
{
	draw_sprite_general(coloringsprite,0,0,0,sprite_width,sprite_height,x-sprite_width*0.5,y-sprite_height*0.5,image_xscale,image_yscale,image_angle,bodycolor,bodycolor,c_white,c_white,image_alpha)
	if global.OUT_OF_BOUNDS_MEASURE == "wrap"
	{
		draw_sprite_general(coloringsprite,0,0,0,sprite_width,sprite_height,x-sprite_width*0.5,y+room_height-sprite_height*0.5,image_xscale,image_yscale,image_angle,bodycolor,bodycolor,c_white,c_white,image_alpha)
		draw_sprite_general(coloringsprite,0,0,0,sprite_width,sprite_height,x-sprite_width*0.5,y-room_height-sprite_height*0.5,image_xscale,image_yscale,image_angle,bodycolor,bodycolor,c_white,c_white,image_alpha)
		draw_sprite_general(coloringsprite,0,0,0,sprite_width,sprite_height,x+room_width-sprite_width*0.5,y-sprite_height*0.5,image_xscale,image_yscale,image_angle,bodycolor,bodycolor,c_white,c_white,image_alpha)
		draw_sprite_general(coloringsprite,0,0,0,sprite_width,sprite_height,x+room_width-sprite_width*0.5,y+room_height-sprite_height*0.5,image_xscale,image_yscale,image_angle,bodycolor,bodycolor,c_white,c_white,image_alpha)
		draw_sprite_general(coloringsprite,0,0,0,sprite_width,sprite_height,x+room_width-sprite_width*0.5,y-room_height-sprite_height*0.5,image_xscale,image_yscale,image_angle,bodycolor,bodycolor,c_white,c_white,image_alpha)
		draw_sprite_general(coloringsprite,0,0,0,sprite_width,sprite_height,x-room_width-sprite_width*0.5,y-sprite_height*0.5,image_xscale,image_yscale,image_angle,bodycolor,bodycolor,c_white,c_white,image_alpha)
		draw_sprite_general(coloringsprite,0,0,0,sprite_width,sprite_height,x-room_width-sprite_width*0.5,y+room_height-sprite_height*0.5,image_xscale,image_yscale,image_angle,bodycolor,bodycolor,c_white,c_white,image_alpha)
		draw_sprite_general(coloringsprite,0,0,0,sprite_width,sprite_height,x-room_width-sprite_width*0.5,y-room_height-sprite_height*0.5,image_xscale,image_yscale,image_angle,bodycolor,bodycolor,c_white,c_white,image_alpha)
	}
}
else
{
	draw_sprite_ext(coloringsprite,0,x,y,image_xscale,image_yscale,image_angle,bodycolor,image_alpha)
	if global.OUT_OF_BOUNDS_MEASURE == "wrap"
	{

		draw_sprite_ext(coloringsprite,0,x,y+room_height,image_xscale,image_yscale,image_angle,bodycolor,image_alpha)
		draw_sprite_ext(coloringsprite,0,x,y-room_height,image_xscale,image_yscale,image_angle,bodycolor,image_alpha)
		draw_sprite_ext(coloringsprite,0,x+room_width,y,image_xscale,image_yscale,image_angle,bodycolor,image_alpha)
		draw_sprite_ext(coloringsprite,0,x+room_width,y+room_height,image_xscale,image_yscale,image_angle,bodycolor,image_alpha)
		draw_sprite_ext(coloringsprite,0,x+room_width,y-room_height,image_xscale,image_yscale,image_angle,bodycolor,image_alpha)
		draw_sprite_ext(coloringsprite,0,x-room_width,y,image_xscale,image_yscale,image_angle,bodycolor,image_alpha)
		draw_sprite_ext(coloringsprite,0,x-room_width,y+room_height,image_xscale,image_yscale,image_angle,bodycolor,image_alpha)
		draw_sprite_ext(coloringsprite,0,x-room_width,y-room_height,image_xscale,image_yscale,image_angle,bodycolor,image_alpha)
	}	
}
*/
draw_sprite_ext(coloringsprite,0,x,y,image_xscale,image_yscale,image_angle,bodycolor,image_alpha)
if global.OUT_OF_BOUNDS_MEASURE == "wrap"
{

	draw_sprite_ext(coloringsprite,0,x,y+room_height,image_xscale,image_yscale,image_angle,bodycolor,image_alpha)
	draw_sprite_ext(coloringsprite,0,x,y-room_height,image_xscale,image_yscale,image_angle,bodycolor,image_alpha)
	draw_sprite_ext(coloringsprite,0,x+room_width,y,image_xscale,image_yscale,image_angle,bodycolor,image_alpha)
	draw_sprite_ext(coloringsprite,0,x+room_width,y+room_height,image_xscale,image_yscale,image_angle,bodycolor,image_alpha)
	draw_sprite_ext(coloringsprite,0,x+room_width,y-room_height,image_xscale,image_yscale,image_angle,bodycolor,image_alpha)
	draw_sprite_ext(coloringsprite,0,x-room_width,y,image_xscale,image_yscale,image_angle,bodycolor,image_alpha)
	draw_sprite_ext(coloringsprite,0,x-room_width,y+room_height,image_xscale,image_yscale,image_angle,bodycolor,image_alpha)
	draw_sprite_ext(coloringsprite,0,x-room_width,y-room_height,image_xscale,image_yscale,image_angle,bodycolor,image_alpha)
}	

if multicolor 
{
	draw_sprite_ext(spr_ball_gradient,0,x,y,image_xscale,image_yscale,image_angle,bodycolor_b,image_alpha)
	if global.OUT_OF_BOUNDS_MEASURE == "wrap"
	{

		draw_sprite_ext(spr_ball_gradient,0,x,y+room_height,image_xscale,image_yscale,image_angle,bodycolor_b,image_alpha)
		draw_sprite_ext(spr_ball_gradient,0,x,y-room_height,image_xscale,image_yscale,image_angle,bodycolor_b,image_alpha)
		draw_sprite_ext(spr_ball_gradient,0,x+room_width,y,image_xscale,image_yscale,image_angle,bodycolor_b,image_alpha)
		draw_sprite_ext(spr_ball_gradient,0,x+room_width,y+room_height,image_xscale,image_yscale,image_angle,bodycolor_b,image_alpha)
		draw_sprite_ext(spr_ball_gradient,0,x+room_width,y-room_height,image_xscale,image_yscale,image_angle,bodycolor_b,image_alpha)
		draw_sprite_ext(spr_ball_gradient,0,x-room_width,y,image_xscale,image_yscale,image_angle,bodycolor_b,image_alpha)
		draw_sprite_ext(spr_ball_gradient,0,x-room_width,y+room_height,image_xscale,image_yscale,image_angle,bodycolor_b,image_alpha)
		draw_sprite_ext(spr_ball_gradient,0,x-room_width,y-room_height,image_xscale,image_yscale,image_angle,bodycolor_b,image_alpha)
	}
}

draw_sprite_ext(outlinesprite,0,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha)
if global.OUT_OF_BOUNDS_MEASURE == "wrap"
{
	draw_sprite_ext(outlinesprite,0,x,y+room_height,image_xscale,image_yscale,image_angle,c_white,image_alpha)
	draw_sprite_ext(outlinesprite,0,x,y-room_height,image_xscale,image_yscale,image_angle,c_white,image_alpha)
	draw_sprite_ext(outlinesprite,0,x+room_width,y,image_xscale,image_yscale,image_angle,c_white,image_alpha)
	draw_sprite_ext(outlinesprite,0,x+room_width,y+room_height,image_xscale,image_yscale,image_angle,c_white,image_alpha)
	draw_sprite_ext(outlinesprite,0,x+room_width,y-room_height,image_xscale,image_yscale,image_angle,c_white,image_alpha)
	draw_sprite_ext(outlinesprite,0,x-room_width,y,image_xscale,image_yscale,image_angle,c_white,image_alpha)
	draw_sprite_ext(outlinesprite,0,x-room_width,y+room_height,image_xscale,image_yscale,image_angle,c_white,image_alpha)
	draw_sprite_ext(outlinesprite,0,x-room_width,y-room_height,image_xscale,image_yscale,image_angle,c_white,image_alpha)
}


