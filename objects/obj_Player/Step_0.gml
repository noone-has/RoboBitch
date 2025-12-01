// Input
rightKey = keyboard_check(ord("D")) || keyboard_check(vk_right)
leftKey = keyboard_check(ord("A")) || keyboard_check(vk_left)
upKey = keyboard_check(ord("W")) ||  keyboard_check(vk_up)
downKey = keyboard_check(ord("S")) ||  keyboard_check(vk_down)

// Movement
var horInput = rightKey - leftKey;
var verInput = downKey - upKey;
moveDir = point_direction(0, 0, horInput, verInput);

var Spd = 0;
var ifInput = point_distance(0, 0, horInput, verInput);
ifInput = clamp(ifInput, 0, 1);
Spd = moveSpd * ifInput;

xSpd = lengthdir_x(Spd, moveDir);
ySpd = lengthdir_y(Spd, moveDir);

move_and_collide(xSpd,ySpd,all);
// SFX
var isMoving = ((horInput != 0 || verInput != 0) && (xSpd != 0 || ySpd != 0))
if(isMoving && !audio_is_playing(sfx_footstep_grass1)){
	
	step_snd_offset -= delta_time
	if(step_snd_offset <= 0){	
		var pitch = random_range(0.8, 1.22)
		var gain = random_range(0.9, 1.1)
		var offset = random_range(0, 0.1)
		step_snd_offset = offset
		audio_play_sound(sfx_footstep_grass1, 1, false, gain * global.AudioVolume, 0, pitch)
	}
}


