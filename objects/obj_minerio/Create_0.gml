image_xscale = 2.5;
image_yscale = 2.5;

hp = 2;
range = 80;
levei_dano = false;


SoltaCristais = function(){
	instance_destroy();
	
	
	var qtd,objeto;
	qtd = random_range(1,4);
	objeto = obj_minerio_icon;
	
	
	repeat(qtd){
		instance_create_layer(x,y,"UI",objeto);
	}
}