#region VARIAVEIS

velh			= 0;
velv			= 0;
velhMAX			= 3;
velvMAX			= 3;


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
	
	x += velh;
	y += velv;
}	
#endregion