
if(!instance_exists(obj_upgrade_1) && !instance_exists(obj_upgrade_2)){
	var margem = 30;
	var obj = [obj_upgrade_1,obj_upgrade_2];
	var index = 0;
	repeat(2){
		instance_create_layer(x,y+margem,"placa",obj[index]);
		margem+=80;	
		index++;
	}
	
	instance_create_layer(x + 102,y + 5,"placa",obj_x);
}

if(global.fechar == true){
	global.fechar = false;
	instance_destroy();
}