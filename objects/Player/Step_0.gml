/// @description Insert description here
// You can write your code in this editor

//gravity
ysp += 0.1
xsp = 0

if keyboard_check(vk_left){
	xsp = -1
}

if keyboard_check(vk_right){
	xsp = +1.5
}

//stop gravity
if place_meeting(x,y+1, Ground){
	ysp = 0
	//jump
	if keyboard_check(vk_space){
		ysp = -2
	}
}


//ground collision
move_and_collide(xsp,ysp,Ground)

if place_meeting(x,y+1, BrokenGround){
	ysp = 0
	//jump
	if keyboard_check(vk_space){
		ysp = -2
	}
}

move_and_collide(xsp,ysp,BrokenGround)

//spike collision
if place_meeting(x,y,Spike){
	room_restart()
}