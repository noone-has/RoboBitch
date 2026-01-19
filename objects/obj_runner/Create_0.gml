depth = -100

alarm[1] = 25*room_speed

walktothetop = false;


/* fyi all object rerun create code when you enter a new room
thats why this code works :p*/
// Room location

// SFX
snd_step = sfx_GrassFootstep;
step_snd_offset = 0;

// Movement
moveSpd = 8;
xSpd = 0
ySpd = 0
maxSpd = 10;
acceleration = 0.1;
decceleration = 0.1;

//Room switching logic
targetX = 0;
targetY = 0;

//For the point and click movement
moving = false;

TopDownMovement = function(){
	//Get inputs 
	var horInput = rightKey - leftKey;
	//Get the vector made from the two inputs
	moveDir = point_direction(0, 0, horInput, 0);

	var Spd = 0;
	var ifInput = point_distance(0, 0, horInput, 0);
	ifInput = clamp(ifInput, 0, 1);
	Spd = moveSpd * ifInput;

	xSpd += lengthdir_x(Spd, moveDir)*acceleration;

	xSpd = clamp(xSpd, -maxSpd, maxSpd)

	var isMovingX = horInput != 0
	
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

	move_and_collide(xSpd,ySpd,all);
}

PointAndClickMovement = function(){
	if(mouse_check_button_pressed(1)){
		nextPoint = new scr_Position(mouse_x - sprite_width/2, mouse_y - sprite_height/2);
		
		if(point_distance(nextPoint.getX(), nextPoint.getY(), x, y) < 5) { return; }
		
		moving = true;
	}
	
	if(moving){
		//get the difference(delta) on both axis
		var dx = nextPoint.getX() - x;
		
		//get a direction vector
		directionToNextPoint = new scr_Position(dx, dy)
		directionToNextPoint.normalize()
		
		var move_x = directionToNextPoint.getX()*moveSpd
		
		show_debug_message(string(move_x) + ";" + string(0))
		
		move_and_collide(move_x, 0, all)
	
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
//movement = PointAndClickMovement
movement = TopDownMovement

