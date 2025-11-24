var dx = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var dy = keyboard_check(ord("S")) - keyboard_check(ord("W"))

player_speed = 5

dx*=player_speed
dy*=player_speed

var moving = (dx != 0 || dy != 0)
if(moving && !audio_is_playing(footstep_grass1)){
	
	step_snd_offset -= delta_time
	if(step_snd_offset <= 0){	
		var pitch = random_range(0.8, 1.22)
		var gain = random_range(0.9, 1.1)
		var offset = random_range(0, 0.1)
		step_snd_offset = offset
		audio_play_sound(footstep_grass1, 1, false, gain, 0, pitch)
	}
}


move_and_collide(dx, dy, all)