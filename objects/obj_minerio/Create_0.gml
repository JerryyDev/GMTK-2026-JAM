image_xscale = 2.5;
image_yscale = 2.5;

hp = 2;
range = 80;
levei_dano = false;
qtd = random_range(1,4);

SoltaCristais = function(){
	instance_destroy();
	
	screenshake(3,5);
	
	var objeto,parti,qtd_p;
	objeto = obj_minerio_icon;
	parti = obj_part;
	qtd_p = random_range(1,3);
	
	repeat(qtd_p){
		instance_create_layer(x,y,"UI",parti);	
	}
	
	repeat(qtd){
		instance_create_layer(x,y,"UI",objeto);
	}
}