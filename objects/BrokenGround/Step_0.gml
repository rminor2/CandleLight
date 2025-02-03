/// @description Insert description here
// You can write your code in this editor


move_and_collide(xSpeed,ySpeed,obj_player)

if place_meeting(x,y+1,obj_player){
	timer = timer + 1
	if (timer = 60){
		instance_destroy()
	}
}