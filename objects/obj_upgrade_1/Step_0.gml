

if(global.upgrade_mineracao < custo or global.comprado == true){
	image_alpha = 0.4;	
}else if(global.upgrade_mineracao > custo && global.comprado == false){
	image_alpha = 1;
	
	var mouse_in = instance_position(mouse_x,mouse_y,id);
	if(mouse_in){
		image_xscale = lerp(image_xscale,1.6,0.2);
		image_yscale = lerp(image_yscale,1.6,0.2);
		
		if(mouse_check_button_pressed(mb_left)){
			global.comprado = true;
		}	
		
	}else{
		image_xscale = lerp(image_xscale,1.5,0.2);
		image_yscale = lerp(image_yscale,1.5,0.2);
	}
}

if(global.comprado == true){
	with(obj_minerio){
		hp = 1;	
	}
}

if(!instance_exists(obj_placa_upgrade)){
	instance_destroy();
}