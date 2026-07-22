var Mouse_position = position_meeting(mouse_x,mouse_y,id);



if(Mouse_position){
	image_index = 1;
	
	image_xscale = lerp(image_xscale,1.1,0.2);
	image_yscale = lerp(image_yscale,1.1,0.2);
	

	
	if(mouse_check_button_pressed(mb_left)){
		room_goto(rm_menu);
	}
}else{
	image_index = 0;
	
	image_xscale = lerp(image_xscale,1,0.2);
	image_yscale = lerp(image_yscale,1,0.2);
}