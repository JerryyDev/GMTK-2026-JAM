if (speed > 0) {
    image_angle += 12;
}

if (speed == 0 && instance_exists(obj_personagem)) {
    var _dist = point_distance(x, y, obj_personagem.x, obj_personagem.y);   
    if (_dist < 48){
        move_towards_point(obj_personagem.x, obj_personagem.y, 6);
		instance_destroy();
		global.cristais++;
		audio_play_sound(snd_pega_cristal,0,false);
    }
}