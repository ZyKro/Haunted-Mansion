spd = 1;
walkspd = 1;
sprintSpd = 1.6;

image_speed = 0;

xdir = 0;
ydir = 0;

//image index directions, temporary
sprDir = 0;

sprDown = 0;
sprRight = 1;
sprUp = 2;
sprLeft = 3;

layer_id = layer_get_id("tCol");
col_map = layer_tilemap_get_id(layer_id);

//debug
collision = false;
_tog = true;