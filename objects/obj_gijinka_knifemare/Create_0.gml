/// @description Insert description here
// You can write your code in this editor
event_inherited()

to_catch_number = 0
cooldown = 40
chasermanager = noone

var _managerr = instance_find(obj_knifemaremanager,0);

if(_managerr!=noone) chasermanager = _managerr;
else sprite_index = spr_gijinka_knifemare_win

//show_debug_message(to_catch_number)

horseidentity = "Shadow Lady Estate"
scr_horse_stats(horseidentity)