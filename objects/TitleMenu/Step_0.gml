up = keyboard_check_pressed(vk_up);
down = keyboard_check_pressed(vk_down);
accept = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter);

menu_lenght = array_length(option[menu_level]);

pos += down - up;
if pos >= menu_lenght {pos = 0;}
if pos < 0 {pos = menu_lenght- 1;}

if accept 
{
	var start_menu_level = menu_level;
	switch(menu_level)
	{
		case 0: switch(pos)	
		{
			case 0: room_goto_next() break;
			case 1: menu_level = 1; break;
			case 2: game_end() break;
		}
		break;
		case 1: switch(pos)
		{
			case 0: menu_level = 2; break;
			case 1: menu_level = 3; break;
			case 2: menu_level = 4; break;
			case 3: menu_level = 0; break;
		} 
		break;
		case 2: switch(pos)
		{
			case 0: break;
			case 1: if (fullscreen = 0) {fullscreen = 1;} else {fullscreen = 0;} break;
			case 2: menu_level = 1; break;
		}
		break;
		case 3: switch(pos)
		{
			case 0: break;
			case 1: menu_level = 1; break;
		}
		break;
		case 4: switch(pos)
		{
			case 0: break;
			case 1: menu_level = 1; break;
		} 
		break;
	}
	if start_menu_level != menu_level {pos=0;}
	menu_lenght = array_length(option[menu_level]);
}