DesenhaItens()

draw_set_font(fnt_principal);

draw_text(35,23," X " + string(global.timer) + "s");
draw_text(35,57," X " + string(global.cristais));
draw_text(35,89," X " + string(global.energia[global.index_energia]));

draw_set_font(-1);

draw_sprite_ext(spr_bateria,index_bateria,25,90,1,1,0,c_white,1);