if (!variable_global_exists("proxima_room")) {
    global.proxima_room = room;
}
estado = "fechando";   

tamanho_grade = 64;    
divisoes_h = ceil(display_get_gui_width() / tamanho_grade); 
divisoes_v = ceil(display_get_gui_height() / tamanho_grade); 

velocidade = 0.02;
anim_fade = 0;