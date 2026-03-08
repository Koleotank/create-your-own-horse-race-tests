depth = -20


count = 0
wincondition = false
winsound = sfx_2kkilaugh
winjingle = sfx_winjingle_nighttimeknifemare
horseidentity = "Shadow Lady Estate"


for (var _i=0; _i<instance_number(obj_horseparent); _i++)
{
	var _honse = instance_find(obj_horseparent,_i)
	if(_honse.horseidentity != "Shadow Lady Estate") count++ //array_push(to_catch,_honse)
}