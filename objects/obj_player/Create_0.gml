ySpeed=0;
xSpeed=0;
isJumping = false;

camera = camera_create_view(0, 0, 640, 360, 0, obj_player, -1, -1, 640, 360);
view_enabled = true;
view_set_camera(0, camera);