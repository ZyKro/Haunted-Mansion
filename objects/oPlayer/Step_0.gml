player_inputs();

if run_key {
    spd = sprintSpd;
}else spd = walkspd;
    
interact_with_object();

xmove = (key_right - key_left)*spd;
ymove = (key_down - key_up)*spd;

//fixing faster diagonal movment
dir = point_direction(0, 0, sign(xmove), sign(ymove));
len_x = lengthdir_x(sign(xmove), dir);
len_y = lengthdir_y(sign(ymove), dir);

//debuging
collision = false;

//collision
if place_meeting(x+xmove, y, col_map) {
    while !place_meeting(x+xmove, y, col_map) {
        x += sign(xmove);
    }
    xmove = 0;
    collision = true;
}
x += xmove * abs(len_x);

if place_meeting(x, y+ymove, col_map) {
    while !place_meeting(x, y+ymove, col_map) {
        y += sign(ymove);
    }
    ymove = 0;
    collision = true;
}
y += ymove * abs(len_y);



//changing image index
if (xmove > 0) 
{
    sprDir = sprRight;
    xdir = 1;
}
else if (xmove < 0) 
{
    sprDir = sprLeft;
    xdir = -1;
}
if (ymove > 0) 
{
    sprDir = sprDown;
    ydir = 1; 
}
else if (ymove < 0) 
{
    sprDir = sprUp;
    ydir = -1;
}
image_index = sprDir;

//toggle visible layers
if keyboard_check_pressed(ord("V")) {
    _tog = !_tog;
    layer_set_visible(layer_id, _tog);
}