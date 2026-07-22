global.index_resolution = 1;

function MudarResolucao(_largura, _altura) {
    if (_largura <= 0 || _altura <= 0) exit;
    window_set_size(_largura, _altura);
    if (surface_exists(application_surface)) {
        surface_resize(application_surface, _largura, _altura);
    }

    display_set_gui_size(_largura, _altura);

    alarm[0] = 1;
}