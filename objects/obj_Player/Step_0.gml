// Input
rightKey = keyboard_check(ord("D")) || keyboard_check(vk_right)
leftKey =  keyboard_check(ord("A")) || keyboard_check(vk_left)
upKey =    keyboard_check(ord("W")) || keyboard_check(vk_up)
downKey =  keyboard_check(ord("S")) || keyboard_check(vk_down)


if (!global.should_show_dialog && !global.is_making_choice){movement();}


//Animation of robot:

if(directionChanged){
	image_xscale *= -1
	
	directionChanged = false;
}

/*
if(swapping){
	image_speed = -animationSpeed
	sprite_index = spr_WalkStart;
	
	if(image_index >= 12 && image_speed == -animationSpeed){
		image_index = 3
		image_speed = animationSpeed;
	}
	else if(image_index >= 15){
		image_speed = 0;
		image_index = 15;
		swapping = false;
	}
}
*/

else if(looping){
	sprite_index = spr_WalkLoop;
	image_speed = -animationSpeed; //reverse animation because the loop is reversed
	
	if(!isMovingX){
		looping = false;
		sprite_index = spr_WalkStart
		image_index = 15;
		swapping = true;
	}
}

else if(isMovingX){
	sprite_index = spr_WalkStart
	image_speed = animationSpeed;
	
	if(image_index >= image_number - 1){
		sprite_index = spr_WalkLoop;
		image_speed = -animationSpeed; //reverse animation because the loop is reversed
		looping = true;
	}
}

else{
	sprite_index = spr_WalkStart
	image_speed = -animationSpeed;
	
	if(image_index <= 0){
		image_speed = 0;
		image_index = 0;
	}
}



//Animation plays once when button A & D gets pressed.
//Freeze on last fram (image index 16) when holding it in.
//On button release, reverse animation (image speed -1).
//Switching between button A & D shall not restart the   animation, but play it from last frame.

//Add animation with wheel spin after main animation plays once.
//Add rare animation that happens sometimes.
