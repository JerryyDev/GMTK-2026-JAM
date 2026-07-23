var _cristal_colidido = instance_place(x, y, obj_minerio_icon);

var range_player = 180;
var dist = point_distance(x, y, obj_personagem.x, obj_personagem.y);


if (_cristal_colidido != noone) {
    col_frag = true;
    timer = 15;
    

    global.cristais_entregue++;
    with (_cristal_colidido) {
        instance_destroy();
    }
}


if (col_frag) {
    timer--;
    if (timer <= 0) {
        col_frag = false;
    }
}


if (dist <= range_player && global.suga_cristal == true) {  
    var xx = obj_personagem.x;
    var yy = obj_personagem.y;
    var layerr = "UI";
    var obj = obj_minerio_icon;
    
    if (global.cristais > 0) {
        global.cristais--;
        

        var _frag_criado = instance_create_layer(xx, yy, layerr, obj);
        with (_frag_criado) {
            x_alvo = other.x;
            y_alvo = other.y;
        }
    }
}


if (col_frag) {
    image_xscale = lerp(image_xscale, 3.7, 0.4);
    image_yscale = lerp(image_yscale, 3.3, 0.4);
} else {
    image_xscale = lerp(image_xscale, 3.5, 0.15);
    image_yscale = lerp(image_yscale, 3.5, 0.15);
}


if (global.cristais_entregue >= global.meta_cristais) {
    global.cristais_entregue = 0;
    global.meta_cristais = global.meta_cristais + 5;
    
    if (image_index < image_number - 1) {
        image_index++;
    }
}

if (image_index >= image_number - 1) {
	
}