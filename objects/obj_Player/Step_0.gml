// Input
rightKey = keyboard_check(ord("D")) || keyboard_check(vk_right)
leftKey =  keyboard_check(ord("A")) || keyboard_check(vk_left)
upKey =    keyboard_check(ord("W")) || keyboard_check(vk_up)
downKey =  keyboard_check(ord("S")) || keyboard_check(vk_down)

if (!global.should_show_dialog && !global.is_making_choice){movement();}

//Animation of robot:
//Animation plays once when button A & D gets pressed.
if(rightKey){
	if(animationTimer <= 0){
		sprite_index += 1
	}
}

//Freeze on last fram (image index 16) when holding it in.
//On button release, reverse animation (image speed -1).
//Switching between button A & D shall not restart the   animation, but play it from last frame.

//Add animation with wheel spin after main animation plays once.
//Add rare animation that happens sometimes.
