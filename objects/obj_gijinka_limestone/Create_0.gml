/// @description Insert description here
// You can write your code in this editor
event_inherited()

dillydally = 0

theyrepresent = false

for (var _i=0; _i<instance_number(obj_horseparent); _i++)
{
	var _honse = instance_find(obj_horseparent,_i)
	if(_honse.horseidentity == "Crepuscule")
	{
		theyrepresent = true 
		break;
	}
}



times_up = round(func_minutestoframes(2)+func_minutestoframes(random_range(0,1)))
show_debug_message(times_up)


horseidentity = "Limestone Effodient"
scr_horse_stats(horseidentity)