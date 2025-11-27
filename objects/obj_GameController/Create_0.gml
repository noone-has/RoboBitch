// Menu Visibility
layer_set_visible("MainMenuLayer", true) 
layer_set_visible("SettingsLayer", false)
layer_set_visible("DialogueLayer", false)

// Cursor
window_set_cursor(cr_none);
cursor_sprite = Cursor;

//  Global Variables
global.isFullscreen = 1;
global.AudioVolume = 1;
global.MusicVolume = 1;

// Pause 
paused = false;

Pause = function() 
{
	if(paused)
	{
		instance_deactivate_all(true);
		layer_set_visible("PauseLayer", true);
	}
	else
	{
		instance_activate_all();
		layer_set_visible("PauseLayer", false);
	}
}
Pause();

