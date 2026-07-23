

var _x1 = bbox_left;
var _y1 = bbox_top;
var _x2 = bbox_right;
var _y2 = bbox_bottom;

var Mouse_position = point_in_rectangle(mouse_x, mouse_y, _x1, _y1, _x2, _y2);

if(Mouse_position){
	image_index = 1;
	
	image_xscale = lerp(image_xscale,1.1,0.2);
	image_yscale = lerp(image_yscale,1.1,0.2);
	
	if(mouse_check_button_pressed(mb_left)){
		global.proxima_room = rm_jogo;
		instance_create_layer(0, 0, "UI", obj_trans)
	}
}else{
	image_index = 0;
	
	image_xscale = lerp(image_xscale,1,0.2);
	image_yscale = lerp(image_yscale,1,0.2);
}