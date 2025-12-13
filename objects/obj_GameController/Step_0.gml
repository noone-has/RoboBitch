window_set_fullscreen(global.isFullscreen);
if (keyboard_check_pressed(vk_escape))
{
	if (room == rm_TitleScreen)
	{
		layer_set_visible("MainMenuLayer", true);
		layer_set_visible("SettingsLayer", false);
	}
	else
	{
		global.paused = !global.paused
		scr_Pause();
	}
}

switch (global.SequenceState)
{
	
case 0: 
	instance_create_layer(1184, 704, "Instances", sq_Bus) 
break;	

case 1: 
	room_goto(rm_BusStop) 
	instance_create_layer(-384, 704, "Instances", sq_Bus) 
	instance_create_layer(448, 736, "Instances",obj_Player) 
break;

case 2: break;

case 3: break;
}
