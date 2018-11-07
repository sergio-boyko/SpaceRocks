/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_enter)){
	switch(room){
		case rStartGame:
			room_goto(rPlayGame);
			break;
		case rWinGame:
		case rOverGame:
			game_restart();
			break;
	}	
}
if(room == rPlayGame){
	if(score >= 1000){
		room_goto(rWinGame);
		audio_play_sound(sndWin, 1, false);
	}
	if(lives <= 0) {
		room_goto(rOverGame);
		audio_play_sound(sndLose, 1, false);
	}
}