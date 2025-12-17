switch (button_id) 
{ 
	case Buttons.Start:	
		room_goto_next() layer_set_visible("MainMenuLayer", false)
		global.SequenceState = SequenceStates.BusArriving;
	break; 
	
	case Buttons.Settings:
		layer_set_visible("MainMenuLayer", false) 
		layer_set_visible("PauseLayer", false); 
		layer_set_visible("SettingsLayer", true)
	break;
	
	case Buttons.Quit:
		game_end();
	break;
	
	case
		Buttons.Fullscreen: global.isFullscreen = !global.isFullscreen;
	break;
	
	case Buttons.Resume: 
		layer_set_visible("PauseLayer", false);
		global.paused = !global.paused 
		with (obj_GameController)
		{
		  scr_Pause();
		}
	break;
	
	case Buttons.Empty: 
	break; 
	
	case Buttons.Back: 
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