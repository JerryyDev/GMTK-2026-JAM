var _layer_id = layer_get_id("Fundo");
var _bg_id = layer_background_get_id(_layer_id);

var _fundo_desejado = -1;


if (position_meeting(mouse_x, mouse_y, obj_exit_button)) {
    _fundo_desejado = spr_background_exit;
} 
else if (position_meeting(mouse_x, mouse_y, obj_config_button)) {
    _fundo_desejado = spr_background_config;
}


if (fundo_atual != _fundo_desejado) {
    fundo_atual = _fundo_desejado;
    
    if (_fundo_desejado != -1) {
       
        layer_background_blend(_bg_id, c_white);
        layer_background_sprite(_bg_id, _fundo_desejado);
    } else {
        
        layer_background_blend(_bg_id, c_black);
        layer_background_sprite(_bg_id, -1);
    }
}