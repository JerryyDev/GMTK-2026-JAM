var qtd = irandom_range(2,5);
repeat(qtd){
	instance_create_layer(x,y,"UI",obj_part);
}

global.upgrade_mineracao++;
global.timer++;

audio_play_sound(snd_enche_gerador,0,false);
screenshake(1,5);