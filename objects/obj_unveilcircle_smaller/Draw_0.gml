if !overlay_workaround
{
	with(obj_mapparent) {
		if(!scr_compare(object_get_parent(self.object_index),obj_pictureobstacleparent, obj_gate, obj_gate_classic, obj_pinball)) self.image_alpha=0.03
	}
	overlay_workaruond = true
}

gpu_set_stencil_enable(true)        
draw_clear_stencil(255) // SWAP
gpu_set_stencil_func(cmpfunc_always)
gpu_set_stencil_pass(stencilop_replace)

gpu_set_colorwriteenable(false,false,false,false)
gpu_set_stencil_ref(0) // SWAP

gpu_set_alphatestenable(true)
gpu_set_alphatestref(127)
            
with(obj_horseparent) {
	draw_sprite_ext(spr_unveilCircle,-1,self.x,self.y,0.5,0.5,image_angle,image_blend,image_alpha);
}
gpu_set_colorwriteenable(true,true,true,true)
gpu_set_alphatestenable(false)
    
gpu_set_stencil_func(cmpfunc_greater)        
gpu_set_stencil_ref(128) 

with(obj_mapparent) {
	if(!scr_compare(object_get_parent(self.object_index),obj_pictureobstacleparent, obj_gate, obj_gate_classic, obj_pinball)) draw_sprite(self.sprite_index,-1,0,0);
}

gpu_set_stencil_enable(false);