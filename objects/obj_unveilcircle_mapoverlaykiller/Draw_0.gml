gpu_set_stencil_enable(true)        
draw_clear_stencil(255) // SWAP
gpu_set_stencil_func(cmpfunc_always)
gpu_set_stencil_pass(stencilop_replace)

gpu_set_colorwriteenable(false,false,false,false)
gpu_set_stencil_ref(0) // SWAP

gpu_set_alphatestenable(true)
gpu_set_alphatestref(127)
            
with(obj_mapoverlayparent) {
	draw_sprite(spr_unveilCircle,-1,self.x,self.y);
}
gpu_set_colorwriteenable(true,true,true,true)
gpu_set_alphatestenable(false)
    
gpu_set_stencil_func(cmpfunc_greater)        
gpu_set_stencil_ref(128) 

if !is_won
{
	with(obj_mapoverlayparent) 
	{
		draw_sprite(self.sprite_index,-1,0,0);
	}
}

gpu_set_stencil_enable(false);