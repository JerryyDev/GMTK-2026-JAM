if (estado == "fechando") {
    anim_fade += velocidade;
    
    if (anim_fade >= 2) {
        anim_fade = 2;
        
        if (room_exists(global.proxima_room)) {
            show_debug_message("Indo para a room: " + room_get_name(global.proxima_room));
            room_goto(global.proxima_room);
        } else {
            show_debug_message("ERRO: A room enviada NAO existe!");
        }
        
        estado = "abrindo";
    }
} 
else if (estado == "abrindo") {
    anim_fade -= velocidade;
    
    if (anim_fade <= -0.5) {
        instance_destroy();
    }
}