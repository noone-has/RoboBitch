// Menu Visibility
layer_set_visible("MainMenuLayer", true) 
layer_set_visible("SettingsLayer", false)
layer_set_visible("DialogueLayer", false)

// Cursor
window_set_cursor(cr_none);
cursor_sprite = spr_Cursor;

// Global Variables
global.isFullscreen = 1;
global.AudioVolume = 1;
global.MusicVolume = 1;

// Pause 
global.paused = false;
scr_Pause();

enum SequenceStates{
	BusArriving,
	BusLeaving,
	Cutscene3,
}

global.SequenceState = SequenceStates.BusArriving;