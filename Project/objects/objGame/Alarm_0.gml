/// @description Insert description here
// You can write your code in this editor
if(room != rPlayGame){
	exit;
}
if(choose(0, 1) == 0){
	var xx = choose(0, room_width);
	var yy = irandom_range(0, room_height);
} else {
	var xx = irandom_range(0, room_width);
	var yy = choose(0, room_height);
}
instance_create_layer(xx, yy, "iPlay", objAsteroid);

alarm[0] = 4 * room_speed;