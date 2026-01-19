//movement of the cup
move_x = 0
move_y = 0

if (global.CupGameBegin = true)
	{
		//mousement movement
		if(mouse_check_button(mb_left)){
			if(mouse_x - x < 0){
				move_x = -moveSpeed;
			}
			if(mouse_x - x > 0){
				move_x = moveSpeed;
			}
		}

		//keyboard movement
		if keyboard_check(vk_right) or keyboard_check(ord("D"))
			{
				move_x = moveSpeed
			}
	
		if keyboard_check(vk_left) or keyboard_check(ord("A"))
			{
				move_x = -moveSpeed
			}
	

		// delay after score is 10, trigger alarm once
		if (global.CupGameScore >= 10 && alarm[0] < 0)
		{
			audio_play_sound(sfx_positive, 7, false, global.AudioVolume);
		    alarm[0] = 2 * room_speed;
		}

		//collision
		move_and_collide(move_x, 0, cm_CupGame)
	}