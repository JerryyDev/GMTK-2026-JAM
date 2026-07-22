global.timer = 1000;
global.cristais = 0;
global.coins = 0;
global.index_energia = 0;
global.energia = [
	"100%",
	"90%",
	"75%",
	"50%",
	"20%",
	"0%"
];



function screenshake(_magnitude, _time) {
    if (!instance_exists(obj_screenshake)) {
        instance_create_layer(0, 0, "UI", obj_screenshake);
    }
    
    with (obj_screenshake) {
        shake_magnitude = _magnitude;
        shake_time = _time;
    }
}