
if (speed > 0) {
    image_angle += 12;
}

if (global.suga_cristal == false) {
    
    if (speed == 0 && instance_exists(obj_personagem)) {
        var _dist = point_distance(x, y, obj_personagem.x, obj_personagem.y);   
        

        if (_dist < 48) {
            move_towards_point(obj_personagem.x, obj_personagem.y, 6);
        }
        

        if (_dist <= 36) {
            global.cristais++;
            audio_play_sound(snd_pega_cristal, 0, false);
            instance_destroy();
        }
    }   
}else {    
    if (instance_exists(obj_gerador)) {
		move_towards_point(obj_gerador.x, obj_gerador.y, 6);
    }
}