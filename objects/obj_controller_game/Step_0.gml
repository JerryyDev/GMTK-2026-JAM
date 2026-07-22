if(global.index_resolution > 1){
	global.index_resolution = 1;	
}else if(global.index_resolution < 0){
	global.index_resolution = 0;
}

if(global.index_resolution == 0 && mudei_res == false){
	MudarResolucao(1980,1080);
	mudei_res = true;
	
	alarm[0] = 2;
}

if(global.index_resolution == 1 && mudei_res == false){
	MudarResolucao(1280,720);
	mudei_res = true;
	
	alarm[0] = 2;
}
