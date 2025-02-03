/// @description Insert description here
// You can write your code in this editor


move_and_collide(xsp,ysp,Player)

if place_meeting(x,y+1,Player){
	timer = timer + 1
	if (timer = 50){
		instance_destroy()
	}
}