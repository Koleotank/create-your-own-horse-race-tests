if global.GAME_STATE != "racesetup"
{
	is_triggered = true
}
if is_triggered
{
	shrinktween += shrinktweenspeed
}
//if image_xscale <= 0 || image_yscale <= 0
if shrinktween >= 1
	instance_destroy()