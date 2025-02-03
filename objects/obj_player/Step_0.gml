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

if (place_meeting(x,y+1,Ground) or place_meeting(x,y+1,BrokenGround)){
	ySpeed=0;
	if (keyboard_check(ord("W"))or keyboard_check(vk_space)){
		ySpeed=-2;
	}
}
move_and_collide(xSpeed,ySpeed,Ground);
move_and_collide(xSpeed,ySpeed,BrokenGround)

//spike collision
if place_meeting(x,y,Spike){
	room_restart()
}

/*if place_meeting(x,y+1, BrokenGround){
	timer = timer + 1
	if (timer = 60){
		instance_destroy(BrokenGround)
	}
}*/