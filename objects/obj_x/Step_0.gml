var mb_key = mouse_check_button_pressed(mb_left);
var mouse_in = instance_position(mouse_x,mouse_y,obj_x);


if(mouse_in){
	image_xscale = lerp(image_xscale, 0.6, 0.2);
	image_yscale = lerp(image_yscale, 0.6, 0.2);
	
	if(mb_key){
		global.fechar = true;
	}
}else{
	image_xscale = lerp(image_xscale, 0.5, 0.2);
	image_yscale = lerp(image_yscale, 0.5, 0.2);
}

if(!instance_exists(obj_placa_upgrade)){
	instance_destroy();
}