depth = 10

is_won = false

with(obj_mapparent) {
	if(!scr_compare(object_get_parent(self.object_index),obj_pictureobstacleparent, obj_gate, obj_gate_classic, obj_pinball)) self.image_alpha=0.03
}