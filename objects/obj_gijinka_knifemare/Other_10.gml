// Inherit the parent event
event_inherited();

if to_catch_number <= 0 && global.GAME_STATE = "normal" //array_length(to_catch)<=0 && global.GAME_STATE = "normal"
{
	audio_play_sound(winsound,20,false)
	global.LASTPLAYEDWINSOUND = winsound
	//var _wineffect = instance_create_depth(x,y,0,obj_horsewineffect)
	//_wineffect.sprite_index = sprite_index
	global.GAME_STATE = "raceend"
	
	if array_length(global.WINNERS_LIST) <= 0
		global.WINJINGLE = winjingle
	array_insert(global.WINNERS_LIST,array_length(global.WINNERS_LIST),horseidentity)
	var _winninghorse = instance_create_depth(x,y,0,obj_winninghorse)
	_winninghorse.sprite_index = winsprite
	_winninghorse.winplacement = array_length(global.WINNERS_LIST)
	_winninghorse.hsp = clamp(hsp,_winninghorse.maxhsp*-1.25,_winninghorse.maxhsp*1.25)
	_winninghorse.vsp = clamp(vsp,_winninghorse.maxvsp*-1.25,_winninghorse.maxvsp*1.25)
	var _targetgoal = herself
		if _targetgoal != noone
	if _targetgoal != noone
	{
		_winninghorse.targetgoal = _targetgoal
		global.CAM_TARGET_GOAL = _targetgoal
	}
	instance_destroy()
}

var _chasertraplocations = instance_number(obj_chasertraplocation)
if cooldown == 0 
{
	if place_meeting(x+sign(hsp),y+sign(vsp),obj_horseparent) && _chasertraplocations>0
	{
		audio_play_sound(sfx_2kkichasertrap1,20,false)
		var _collidingobject = instance_place(x+sign(hsp),y+sign(vsp),obj_horseparent)
		to_catch_number--;
		/*
		for (var _i=0; _i<array_length(to_catch); _i++)
		{
			var _honse = instance_find(obj_horseparent,_i)
			if(_honse.id == _collidingobject.id) array_delete(to_catch,_i,1)
		}*/
		var _chasertrap = instance_find(obj_chasertraplocation,round(random_range(0,_chasertraplocations-1)))
		_collidingobject.x = _chasertrap.x
		_collidingobject.y = _chasertrap.y
		cooldown = 40
		show_debug_message(to_catch_number)
	}
}
else cooldown--
