#region VARIAVEIS

velh			= 0;
velv			= 0;
velhMAX			= 1;
velvMAX			= 1;


left			= false;
right			= false;
up				= false;
down			= false;


timer_passo		= 60;
passos			= 0;
limite_de_passos= 5;

#endregion
#region MÉTODOS

Inputs = function(){
	var _l,_r,_u,_d;
	_l = keyboard_check(ord("A"));
	_r = keyboard_check(ord("D"));
	_u = keyboard_check(ord("W"));
	_d = keyboard_check(ord("S"));
	
	right = _r;
	left = _l;
	up = _u;
	down = _d;
}
Movimento = function(){
	velh = (right - left) * velhMAX;
	velv = (down - up) * velvMAX;
	
	if(place_meeting(x + velh, y, obj_wall)){
		velh = 0;	
	}
	
	x += velh;
	
	if(place_meeting(x,y + velv, obj_wall)){
		velv = 0;
	}
	
	y += velv;
	
	timer_passo--;
	if(timer_passo<=0){
		if(velh != 0 || velv != 0){
			timer_passo = 60;
			passos++;	
		}
	}
	
	if(global.index_energia >= 5){
		global.index_energia = 5;
		exit;	
	}
	
	if(passos >= limite_de_passos){
		passos = 0;
		timer_passo = timer_passo - 15;
		limite_de_passos = limite_de_passos + 2;
		global.index_energia++;
	}
}	
#endregion