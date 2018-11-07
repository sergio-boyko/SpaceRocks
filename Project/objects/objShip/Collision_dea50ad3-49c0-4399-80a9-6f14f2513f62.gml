/// @description Insert description here
// You can write your code in this editor
lives--;
with objGame {
	alarm[1] = room_speed;
}
audio_play_sound(sndDie, 1, false);

instance_destroy();

repeat(10) {
	instance_create_layer(x, y, "iPlay", objDebris);
}