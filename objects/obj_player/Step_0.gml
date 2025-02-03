//Gravity
ySpeed+=0.1;
xSpeed=0;

//Basic Movements
if keyboard_check(ord("D")){
	xSpeed+=1;
}
if keyboard_check(ord("A")){
	xSpeed-=1;
}

if (place_meeting(x,y+1,obj_ground) or place_meeting(x,y+1,obj_brokenground)){
	ySpeed=0;
	if (keyboard_check(ord("W"))or keyboard_check(vk_space)){
		ySpeed=-2;
	}
}
if(place_meeting(x+1,y,obj_ground)or place_meeting(x-1,y,obj_ground)){
	xSpeed=0;
}

move_and_collide(xSpeed,ySpeed,obj_ground);
move_and_collide(xSpeed,ySpeed,obj_brokenground)

//spike collision
if place_meeting(x,y,obj_spike){
	room_restart()
}

/*if place_meeting(x,y+1, BrokenGround){
	timer = timer + 1
	if (timer = 60){
		instance_destroy(BrokenGround)
	}
}*/