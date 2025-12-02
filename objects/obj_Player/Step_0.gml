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

move_and_collide(xSpd,ySpd,all);

//this is really fuxked but it works
var isMovingX = horInput != 0
var isMovingY = verInput != 0

if(!isMovingX){
	if(xSpd < 0){
		xSpd += moveSpd * acceleration
		if(xSpd >= 0 ){
			xSpd = 0
		}
	}
	if(xSpd > 0){
		xSpd -= moveSpd * acceleration
		if(xSpd <= 0 ){
			xSpd = 0
		}
	}
}
if(!isMovingY){
	if(ySpd < 0){
		ySpd += moveSpd * acceleration
		if(ySpd >= 0 ){
			ySpd = 0
		}
	}
	if(ySpd > 0){
		ySpd -= moveSpd * acceleration
		if(ySpd <= 0 ){
			ySpd = 0
		}
	}
}

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


//CAMERA
var camera = view_camera[0]
// adding the width/height to get the center of the camera
var cam_x = camera_get_view_x(camera) + camera_get_view_width(camera)/2 
var cam_y = camera_get_view_y(camera) + camera_get_view_height(camera)/2

distance_from_camera_center = point_distance(x, y, cam_x, cam_y);

var max_distance_from_camera = point_distance(camera_get_view_x(camera), camera_get_view_y(camera), cam_x, cam_y)
max_distance_from_camera -= camera_distance_cutoff

var distance_scaled = distance_from_camera_center / max_distance_from_camera

var cam_speed = lerp(camera_speed_min, camera_speed_max, distance_scaled);

camera_set_view_speed(camera, cam_speed, cam_speed)