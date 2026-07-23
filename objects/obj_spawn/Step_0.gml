var col_player = place_meeting(x,y,obj_personagem);
if(col_player){
	global.timer_ativo = false;	
}else{
	global.timer_ativo = true;	
}