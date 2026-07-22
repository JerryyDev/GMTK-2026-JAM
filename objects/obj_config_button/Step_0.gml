var Mouse_position = position_meeting(mouse_x,mouse_y,id);

var _layer_id = layer_get_id("Fundo");
var _bg_id = layer_background_get_id(_layer_id);


if(Mouse_position){
	image_index = 1;
	
	image_xscale = lerp(image_xscale,1.1,0.2);
	image_yscale = lerp(image_yscale,1.1,0.2);
	
	layer_background_blend(_bg_id,c_white);
    layer_background_sprite(_bg_id, spr_background_config);
	
	if(mouse_check_button_pressed(mb_left)){
		room_goto(rm_config);	
	}
}else{
	image_index = 0;
	
	image_xscale = lerp(image_xscale,1,0.2);
	image_yscale = lerp(image_yscale,1,0.2);
	
	layer_background_blend(_bg_id,c_black);
	layer_background_sprite(_bg_id, -1);
}