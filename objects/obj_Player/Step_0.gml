// Input
rightKey = keyboard_check(ord("D")) || keyboard_check(vk_right)
leftKey =  keyboard_check(ord("A")) || keyboard_check(vk_left)
upKey =    keyboard_check(ord("W")) || keyboard_check(vk_up)
downKey =  keyboard_check(ord("S")) || keyboard_check(vk_down)

// Movement
var horInput = rightKey - leftKey;
var verInput = downKey - upKey;
moveDir = point_direction(0, 0, horInput, verInput);

var Spd = 0;
var ifInput = point_distance(0, 0, horInput, verInput);
ifInput = clamp(ifInput, 0, 1);
Spd = moveSpd * ifInput;

xSpd += lengthdir_x(Spd, moveDir)*acceleration;
ySpd += lengthdir_y(Spd, moveDir)*acceleration;

xSpd = clamp(xSpd, -maxSpd, maxSpd)
ySpd = clamp(ySpd, -maxSpd, maxSpd)

var isMovingX = horInput != 0
var isMovingY = verInput != 0

if(!isMovingX){
	if(xSpd < 0)
	{
		xSpd = clamp(xSpd + (moveSpd * decceleration), -infinity, 0)
	}
	if(xSpd > 0)
	{
		xSpd = clamp(xSpd - (moveSpd * decceleration), 0, infinity)
	}
}
if(!isMovingY){
	if(ySpd < 0)
	{
		ySpd = clamp(ySpd + (moveSpd * decceleration), -infinity, 0)

	}
	if(ySpd > 0)
	{
		ySpd = clamp(ySpd - (moveSpd * decceleration), 0, infinity)
	}
}


move_and_collide(xSpd,ySpd,all);


// SFX
if((isMovingX || isMovingY) && !audio_is_playing(sfx_footstep_grass1)){
	
	step_snd_offset -= delta_time
	if(step_snd_offset <= 0){	
		var pitch = random_range(0.8, 1.22)
		var gain = random_range(0.9, 1.1)
		var offset = random_range(0, 0.1)
		step_snd_offset = offset
		audio_play_sound(sfx_footstep_grass1, 1, false, gain * global.AudioVolume, 0, pitch)
	}
}


