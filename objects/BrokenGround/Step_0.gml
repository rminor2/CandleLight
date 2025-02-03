if place_meeting(x,y+1,obj_player){
	instance_destroy();
	timer = timer + 1
	if (timer = 60){
		instance_destroy()
	}
}