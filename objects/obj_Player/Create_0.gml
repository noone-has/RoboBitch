// SFX
snd_step = sfx_footstep_grass1;
step_snd_offset = 0;

// Movement
moveSpd = 8;
xSpd = 0
ySpd = 0
maxSpd = 8;
acceleration = 0.1;
decceleration = 0.1;

//For the point and click movement
moving = false;

// Camera
/*halfViewWidth = camera_get_view_width(view_camera[0]) / 2;
halfViewHeight = camera_get_view_height(view_camera[0]) / 2;*/



TopDownMovement = function(){
	// Input
	rightKey = keyboard_check(ord("D")) || keyboard_check(vk_right)
	leftKey =  keyboard_check(ord("A")) || keyboard_check(vk_left)
	upKey =    keyboard_check(ord("W")) || keyboard_check(vk_up)
	downKey =  keyboard_check(ord("S")) || keyboard_check(vk_down)

	//Movement
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
}

PointAndClickMovement = function(){
	if(mouse_check_button_pressed(1)){
		nextPoint = new Position(mouse_x - sprite_width/2, mouse_y - sprite_height/2);
		
		//get the difference(delta) on both axis
		dx = nextPoint.getX() - x;
		dy = nextPoint.getY() - y;
		
		//get a direction vector
		directionToNextPoint = new Position(dx, dy)
		directionToNextPoint.normalize()
		
		moving = true;
	}
	
	if(moving){
		
		move_and_collide(directionToNextPoint.getX()*moveSpd, directionToNextPoint.getY()*moveSpd, other)
	
		//check if the player is close to the new position
		if(point_distance(x, y, nextPoint.getX(), nextPoint.getY()) < 5){
			moving = false
			//make sure the player is EXACTLY at the new position
			x = nextPoint.getX();
			y = nextPoint.getY();
		}
	}
}

//later we can set this movement var with game logic and switch between movement systems that way
//important when setting movement to not use the brackets for the function
movement = PointAndClickMovement
//movement = TopDownMovement