function scr_horse_stat_init(){
	defaultmovespeed = 1.5 //how quickly this horse moves by default
	accelerationamount = 0.01 //how quickly this horse builds up acceleration speed
	maxacceleration = 4 //the maximum amount of acceleration speed this horse can have
	//acceleration is reset on each bounce
	overtimeaccelerationamount = 1/func_minutestoframes(2) //how quickly this horse builds up overtime acceleration speed
	//this equation makes it so that the horse gets 1 overtime acceleration for every 2 minutes that passes
	overtimemaxacceleration = 6 //the maximum amount of overtime acceleration speed this horse can have
	//unlike acceleration, overtime acceleration stays persistent between bounces,
	//and serves to gradually make all the horses faster if the race takes too long
	moveangleincrement = 16 //the amount of angles this horse is allowed to move (for pre v1.1 movement, set this to 360)
	//min = 1, max = 360
	
	knockbackintensity = 1 //how strong this horse's knockback is when bumping into other horses
	knockbackresistance = 0.5 //how resistant this horse is to knockback from other horses
	
	angleincrement = 22.5 //angle increment is mostly left unchanged, but it can still be changed
	angleincrementdirectionmin = -3
	angleincrementdirectionmax = 3
	//when randomizing angle, a random number between the minimum & maximum is chosen,
	//and the angleincrement is multiplied by that number and added to the horse's angle.
	//a wider range allows for more drastic random direction changes
	anglechangechance = 3 //how likely the horse's angle is to be randomized on every bounce.
	//higher number = lower chance, lower number (down to 0) = higher chance, 0 = 100% chance, -1 = 0% chance
	
	eyeframeamount = 16 //the amount of eye frames this horse has (set this to 8 if you used the oc submissions template)
	spritemergedwitheyedirection = false //set this to true if the horse's eye directions are merged with the main sprite
	eyedirectionsmoveclockwise = false //set this to true if this horse's eye directions rotate clockwise
	//(or if you used the oc submissions template for the sprite)
	firsteyeframe = 0 //determines which frame the eye direction starts at. this should always be set to the eye frame
	//that points east/right, which is 0 most of the time (set this to 2 if you used the oc submissions template)
	hasdasheffect = true //set this to true if you want your horse to have a special effect when moving at high speeds
	canxscaleflip = false //set this to true if you want your horse to flip like the fishes in paradise fishing.
	//eye directions may look off if this setting is enabled
	xscaleflipspeed = 0.1
	
	bodycolor = make_color_rgb(17,240,13) //color that is used for win screen text & ball color
	customstepsound = sfx_step
	customhorsecollidesound = sfx_horsecollide
	eyesprite = spr_horse_defaultdearly_eyes
	winsprite = spr_horse_defaultdearly_win
	losesprite = -1 //by default there is no lose sprite set, but if your horse has a lose sprite you can change this value
	portraitsprite = spr_horseportrait_defaultdearly
	portraitbgsprite = spr_horseportrait_bg_default
	winsound = sfx_horse1
	secondwinsound = -1 //if you want your horse to have a different sound on the win screen, change this
	winjingle = sfx_winjingle_defaultdearly
	jinglelength = func_secondstoframes(3.5)
	winname = -1 //if you want your horse to have a different name on the win screen, change this
	
	hiddenindarkness = false
	
	soundvariance = 0.2 // variance of the sound
}