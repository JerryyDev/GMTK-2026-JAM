draw_self();

draw_set_font(fnt_principal);

draw_set_colour(c_white);

var range_player = 70;
var dist = point_distance(x,y,obj_personagem.x,obj_personagem.y);

if(dist <= range_player){
	draw_text(x-2,y-30,"E");
}

draw_set_colour(-1);

draw_set_font(-1);