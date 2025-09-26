function player_inputs(){
    
    key_left = keyboard_check(vk_left);
    key_down = keyboard_check(vk_down);
    key_right = keyboard_check(vk_right);
    key_up = keyboard_check(vk_up);
    run_key = keyboard_check(vk_shift);
    interact_key = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("X"));
    
}

function interact_with_object() {
    var dx, dy;
    dx = xdir*6;
    dy = ydir*6;
    if interact_key && place_meeting(x+dx, y+dy, oInteractable) {
        show_message("Success!");
    }
    
    
}