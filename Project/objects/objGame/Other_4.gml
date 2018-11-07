/// @description Insert description here
// You can write your code in this editor
if(room == rPlayGame){
	if(audio_is_playing(sndSong)){
		audio_stop_sound(sndSong);
	}
	audio_play_sound(sndSong, 2, true);
	repeat(6){
		var xx = choose(
			irandom_range(0, room_width*0.3),
			irandom_range(room_width*0.7, room_width)
		);
		var yy = choose(
			irandom_range(0, room_height*0.3),
			irandom_range(room_height*0.7, room_height)
		);
		instance_create_layer(xx, yy, "iPlay", objAsteroid);
	}
	alarm[0] = 60;
}