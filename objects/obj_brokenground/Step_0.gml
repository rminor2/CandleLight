if place_meeting(x,y-1, obj_player){
	trigger = true;
}

if (trigger){
	timer = timer + 1;
	if (timer == 20 ){
		instance_destroy()
	}
}