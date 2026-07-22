var key = keyboard_check_pressed(ord("E"));

var x1,y1,x2,y2;
x1 = x;
y2 = y;
x2 = obj_personagem.x;
y2 = obj_personagem.y;
var distance_player = point_distance(x,y,obj_personagem.x,obj_personagem.y);

if(distance_player <= range){
	if(key){
		hp--;
		levei_dano = true;
	}
}


if(hp <= 0){
	SoltaCristais();
}


if(levei_dano == true){
	image_xscale = lerp(image_xscale,9,0.2);
	image_yscale = lerp(image_yscale,7,0.2);
	levei_dano = false;
}

if(levei_dano == false){
	image_xscale = lerp(image_xscale,2.5,0.2);
	image_yscale = lerp(image_yscale,2.5,0.2);
}