var _cor_suave = make_color_rgb(110, 110, 115);
draw_set_color(_cor_suave);
draw_set_alpha(1.0);

for (var _gh = 0; _gh <= divisoes_h; _gh++) {
    for (var _gv = 0; _gv <= divisoes_v; _gv++) {
        
        var _qx = (_gh * tamanho_grade) + (tamanho_grade/2);
        var _qy = (_gv * tamanho_grade) + (tamanho_grade/2);
        
        var _atraso = (_gh + _gv) / (divisoes_h + divisoes_v); 
        var _escala_atrasada = anim_fade - _atraso;
        var _escala_final = clamp(_escala_atrasada, 0, 1);
        
        if (_escala_final > 0) {
            var _metade_tam = (tamanho_grade / 2) * _escala_final;
            
            draw_rectangle(
                _qx - _metade_tam, 
                _qy - _metade_tam, 
                _qx + _metade_tam, 
                _qy + _metade_tam, 
                false
            );
        }
    }
}