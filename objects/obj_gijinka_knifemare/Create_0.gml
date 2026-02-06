/// @description Insert description here
// You can write your code in this editor
event_inherited()

to_catch = []
to_catch_number = 0
herself = noone
cooldown = 40

for (var _i=0; _i<instance_number(obj_horseparent); _i++)
{
	var _honse = instance_find(obj_horseparent,_i)
	if(_honse.id != id) to_catch_number++ //array_push(to_catch,_honse)
	else herself = _honse
}

show_debug_message(to_catch_number)

horseidentity = "Shadow Lady Estate"
scr_horse_stats(horseidentity)