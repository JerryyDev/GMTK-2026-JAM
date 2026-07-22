var mouse_in = position_meeting(mouse_x,mouse_y,id);
var mouse_click = mouse_check_button_pressed(mb_left);


if(mouse_in){
	image_xscale = lerp(image_xscale,1.1,0.2);
	image_yscale = lerp(image_yscale,1.1,0.2);
	
	image_index = 1;
	
	if(mouse_click){
		global.index_resolution++;
	}
}
else{
	image_index = 0;
	
	image_xscale = lerp(image_xscale,1,0.2);
	image_yscale = lerp(image_yscale,1,0.2);
}