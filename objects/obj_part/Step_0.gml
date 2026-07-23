image_alpha = lerp(image_alpha,0,0.025);

if(image_alpha <= 0.05){
	instance_destroy();	
}