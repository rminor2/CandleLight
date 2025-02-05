ySpeed=0;
xSpeed=0;
isJumping = false;

camera = camera_create_view(0, 0, 500, 500, 0, obj_player, -1, -1, 500, 500);
view_enabled = true;
view_set_camera(0, camera);