key_left = keyboard_check(vk_left);
key_down = keyboard_check(vk_down);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);

var xmove = (key_right - key_left)*spd;
var ymove = (key_down - key_up)*spd;


//collision
if place_meeting(x+xmove, y, col_map) {
    while !place_meeting(x+xmove, y, col_map) {
        x += sign(xmove);
    }
    xmove = 0;
}
x += xmove;

if place_meeting(x, y+ymove, col_map) {
    while !place_meeting(x, y+ymove, col_map) {
        y += sign(ymove);
    }
    ymove = 0;
}
y += ymove;


//changing image index
if (xmove > 0) sprDir = sprRight;
    else if (xmove < 0) sprDir = sprLeft;
        
if (ymove > 0) sprDir = sprDown;
    else if (ymove < 0) sprDir = sprUp;
        
image_index = sprDir;