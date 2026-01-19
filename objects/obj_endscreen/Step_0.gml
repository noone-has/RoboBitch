if (keyboard_check(vk_anykey) || mouse_check_button(mb_left)) && (CanRestartRoom == true)
	{
		room_goto(global.LastRoom)
	}