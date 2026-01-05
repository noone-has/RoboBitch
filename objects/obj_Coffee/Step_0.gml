//movement of the cup
move_x = 0
move_y = 0

if keyboard_check(vk_right) or keyboard_check(ord("D"))
	{
		move_x = 7.5
	}
	
if keyboard_check(vk_left) or keyboard_check(ord("A"))
	{
		move_x = -7.5
	}

// delay after score is 10, trigger alarm once
if (global.CupGameScore >= 10 && alarm[0] < 0)
{
    alarm[0] = 1 * room_speed;
}

//collision
move_and_collide(move_x, 0, cm_CoffeeCollision)
	
	


