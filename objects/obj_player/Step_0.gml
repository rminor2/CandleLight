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

if place_meeting(x,y+1,obj_ground){
	ySpeed=0;
	if keyboard_check(ord("W")){
		ySpeed=-2;
	}
}

move_and_collide(xSpeed,ySpeed,obj_ground);