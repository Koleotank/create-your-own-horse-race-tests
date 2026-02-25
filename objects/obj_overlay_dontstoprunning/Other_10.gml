if global.GAME_STATE == "normal"
{
	is_triggered = true
}
if is_triggered
{
	/*
	image_xscale -= 0.02
	image_yscale -= 0.02
	*/
	shrinktween += shrinktweenspeed
}
//if image_xscale <= 0 || image_yscale <= 0
if shrinktween >= 1
	instance_destroy()