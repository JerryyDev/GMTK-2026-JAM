#region VARIAVEIS

velh			= 0;
velv			= 0;
velhMAX			= 1.25;
velvMAX			= 1.25;


left			= false;
right			= false;
up				= false;
down			= false;

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
}	
#endregion