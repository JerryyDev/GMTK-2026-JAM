if(global.index_energia == 4){
	index_bateria = 1;
}

if(global.timer_ativo == false){
	global.timer = global.timer;
	exit;
}else{
	if(index_timer > 0) index_timer--; 
	if(index_timer <= 0){
		index_timer = room_speed*1;
		global.timer--;
	}	
}