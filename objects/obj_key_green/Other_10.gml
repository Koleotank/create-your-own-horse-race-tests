if place_meeting(x,y,obj_horseparent) 
{
	audio_play_sound(sfx_rpgmakerkey,10,false)
	with(obj_lock_green)
	{
		var _deatheffect = instance_create_depth(self.x,self.y,0,obj_shakinghorsedeatheffect)
		
		_deatheffect.skullcolor = c_white
		_deatheffect.sprite_index = self.sprite_index
		
		instance_destroy(self)	
	}
	with(obj_key_green)
	{
		instance_destroy()
	}
}