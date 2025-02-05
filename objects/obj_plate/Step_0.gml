// When player steps on the plate
if place_meeting(x, y, obj_player) && !triggered {
    triggered = true;
    
    // Find the dog object and wake it up
    with(obj_dog) {
        state = "chasing";
    }
}