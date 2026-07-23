var range_player = 40;
var dist = point_distance(x,y,obj_personagem.x,obj_personagem.y);

if(dist <= range_player){
	var key = keyboard_check_pressed(ord("E"));
	if(key && !instance_exists(obj_placa_upgrade)){
		instance_create_layer(0,0,"Fundo_upgrade",obj_fundo_upgrade);
		instance_create_layer(room_width/2,room_height/4,"UI",obj_placa_upgrade);
	}
}