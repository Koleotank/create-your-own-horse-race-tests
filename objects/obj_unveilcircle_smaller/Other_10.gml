if(instance_exists(obj_winninghorse)) && !is_won
{
	with(obj_mapoverlayparent) 
	{
		self.image_alpha=1
	}	
	is_won = true
}