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
	isJumping = false;
	if (keyboard_check(ord("W"))or keyboard_check(vk_space)){
		ySpeed=-2;
		isJumping = true;
	}
}
if(place_meeting(x+1,y,obj_ground) or place_meeting(x-1,y,obj_ground)){
	xSpeed=0;
}
if(place_meeting(x+1,y,obj_brokenground) or place_meeting(x-1,y,obj_brokenground)){
	xSpeed=0;
}

if (xSpeed > 0) {
    image_xscale = 1;
} else if (xSpeed < 0) {
    image_xscale = -1;
}

if (isJumping) {
    image_index = 2; 
    image_speed = 0;
} 

if (xSpeed != 0 || ySpeed != 0) {
    image_speed = 1;
} else {
    image_index = 0;
	image_speed = 0;
}

move_and_collide(xSpeed,ySpeed,obj_ground);
move_and_collide(xSpeed,ySpeed,obj_brokenground)

//spike collision
if place_meeting(x,y,obj_spike){
	room_restart()
}

// Get camera size
var cam_width = camera_get_view_width(view_get_camera(0));
var cam_height = camera_get_view_height(view_get_camera(0));

// Get room size
var room_w = room_width;
var room_h = room_height;

// Get desired camera position (centered on player)
var cam_x = x - cam_width / 2;
var cam_y = y - cam_height / 2;

// Clamp to room boundaries
cam_x = clamp(cam_x, 0, room_w - cam_width);
cam_y = clamp(cam_y, 0, room_h - cam_height);

// Update camera position
camera_set_view_pos(view_get_camera(0), cam_x, cam_y);

// Check if player is outside room boundaries
if (x < 0 || x > room_width || y < 0 || y > room_height) {
    room_restart();
}

