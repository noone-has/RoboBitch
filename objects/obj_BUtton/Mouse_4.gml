switch (button_id) 
{ 
	// Start game
	case 0:	
		room_goto_next() layer_set_visible("MainMenuLayer", false)
		global.SequenceState = SequenceStates.BusArriving;
	break;
	// Settings 
	case 1: layer_set_visible("MainMenuLayer", false) 
			layer_set_visible("PauseLayer", false); 
			layer_set_visible("SettingsLayer", true) break;
	// Quit game
	case 2: game_end();
	// Fullscreen Checkbox
	case 3: global.isFullscreen = !global.isFullscreen; break;
	// Resume game
	case 4: 
	layer_set_visible("PauseLayer", false);
	global.paused = !global.paused 
	with (obj_GameController)
	{
	  scr_Pause();
	}
	break;
	case 5: 
	// Back 
	case 6: 
		if (room == rm_TitleScreen)
		{
		layer_set_visible("MainMenuLayer", true);
		layer_set_visible("SettingsLayer", false);
		} 
		else 
		{
		layer_set_visible("PauseLayer", true);
		layer_set_visible("SettingsLayer", false);
		} 
	break; 
}