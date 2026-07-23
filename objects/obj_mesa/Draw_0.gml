draw_self();

draw_set_font(fnt_principal);

draw_set_colour(c_black);

var range_player = 40;
var dist = point_distance(x,y,obj_personagem.x,obj_personagem.y);

if(dist <= range_player){
	draw_text(x,y,"E");
}

draw_set_colour(-1);

draw_set_font(-1);