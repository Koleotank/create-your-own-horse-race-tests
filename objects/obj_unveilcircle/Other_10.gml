if(instance_exists(obj_winninghorse)) && !is_won
{
	with(obj_mapparent) 
	{
		if(!scr_compare(object_get_parent(self.object_index),obj_pictureobstacleparent, obj_gate, obj_gate_classic, obj_pinball)) self.image_alpha=1
	}	
	is_won = true
}