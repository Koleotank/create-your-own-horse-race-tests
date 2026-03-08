if (count <= 0) wincondition = true

if wincondition && global.GAME_STATE = "normal" //array_length(to_catch)<=0 && global.GAME_STATE = "normal"
{
	audio_play_sound(winsound,20,false)
	global.LASTPLAYEDWINSOUND = winsound
	//var _wineffect = instance_create_depth(x,y,0,obj_horsewineffect)
	//_wineffect.sprite_index = sprite_index
	global.GAME_STATE = "raceend"
	global.WINJINGLE = winjingle
	
	for(var _i = 0; _i<instance_number(obj_gijinka_knifemare); _i++) 
	{
		var _winners = instance_find(obj_gijinka_knifemare,_i);
		
		array_insert(global.WINNERS_LIST,array_length(global.WINNERS_LIST),_winners.horseidentity)
		var _winninghorse = instance_create_depth(x,y,0,obj_winninghorse)
		_winninghorse.sprite_index = _winners.winsprite
		_winninghorse.winplacement = array_length(global.WINNERS_LIST)
		_winninghorse.hsp = clamp(_winners.hsp,_winninghorse.maxhsp*-1.25,_winninghorse.maxhsp*1.25)
		_winninghorse.vsp = clamp(_winners.vsp,_winninghorse.maxvsp*-1.25,_winninghorse.maxvsp*1.25)
		var _targetgoal = instance_place(x,y,obj_goal)
		if _targetgoal != noone
		{
			_winninghorse.targetgoal = _targetgoal
			global.CAM_TARGET_GOAL = _targetgoal
		}
	}
	instance_destroy()
}