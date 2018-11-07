/// @description Insert description here
// You can write your code in this editor
score += 10;
audio_play_sound(sndDie, 1, false);
instance_destroy();

with other {
	instance_destroy();
	if(sprite_index == sprAsteroidHuge) {
		repeat(2){
			var newAsteroid = instance_create_layer(x, y, "iPlay", objAsteroid);
			newAsteroid.sprite_index = sprAsteroidMed;
		}
	} else if(sprite_index == sprAsteroidMed) {
		repeat(2){
			var newAsteroid = instance_create_layer(x, y, "iPlay", objAsteroid);
			newAsteroid.sprite_index = sprAsteroidSmall;
		}
	}
	
	repeat(10) {
		instance_create_layer(x, y, "iPlay", objDebris);
			
	}
}