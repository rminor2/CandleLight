// Gravity
ySpeed += 0.1;
xSpeed = 0;

// Basic Movements
if (state == "chasing") {
    xSpeed = 1.5; // Move right
    sprite_index = spr_dog;
    image_xscale = -1; // Flip chasing sprite

    // If the dog collides with the player, game over
    if (place_meeting(x, y, obj_player)) {
        room_goto(rm_gameover);
    }
}

// Ground collision (matches obj_player)
if (place_meeting(x, y + 1, obj_ground) or place_meeting(x, y + 1, obj_brokenground)) {
    ySpeed = 0; // Stop falling
}

// If no ground below, allow falling
if (!place_meeting(x, y + 1, obj_ground) and !place_meeting(x, y + 1, obj_brokenground)) {
    ySpeed += 0.1; // Apply falling acceleration
}

// Stop movement if blocked (matches obj_player)
if (place_meeting(x + 1, y, obj_ground) or place_meeting(x - 1, y, obj_ground)) {
    xSpeed = 0;
}
if (place_meeting(x + 1, y, obj_brokenground) or place_meeting(x - 1, y, obj_brokenground)) {
    xSpeed = 0;
}

// Move dog
move_and_collide(xSpeed, ySpeed, obj_ground);
move_and_collide(xSpeed, ySpeed, obj_brokenground);

// If the dog lands on spikes, delete it
if (place_meeting(x, y, obj_spike)) {
    instance_destroy();
}

// Ensure the sleeping state doesn't move
if (state == "sleeping") {
    xSpeed = 0;
    sprite_index = spr_sleepdog;
    image_xscale = 1; // Keep sleeping sprite normal
}