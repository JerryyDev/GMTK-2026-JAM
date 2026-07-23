index_sprites = [
	spr_ampulheta,
	spr_cristal_icon
];

index_bateria = 0;

index_timer = room_speed*1;


DesenhaItens = function(){
	var xx,xx2,yy,xscale,yscale,margem,sprite;
	xx = 25;
	yy = 20;
	xscale = 1;
	yscale = 1;
	margem = 10;
	sprite = 0;
	
	repeat(2){
		draw_sprite_ext(index_sprites[sprite],0,xx,yy+margem,xscale,yscale,0,c_white,1);
		sprite++;
		margem += 30;
	}
}