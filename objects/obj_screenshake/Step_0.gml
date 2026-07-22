if (shake_time > 0) {
    shake_time -= 1;
    
    var _cam_x = view_xport[0] + random_range(-shake_magnitude, shake_magnitude);
    var _cam_y = view_yport[0] + random_range(-shake_magnitude, shake_magnitude);
    
    var _cam = view_camera[0];
    camera_set_view_pos(_cam, _cam_x, _cam_y);
    
    shake_magnitude = lerp(shake_magnitude, 0, shake_fade);
} else {
    var _cam = view_camera[0];
    camera_set_view_pos(_cam, 0, 0); 
}