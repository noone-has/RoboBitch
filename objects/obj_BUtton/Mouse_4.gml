switch (button_id) 
{ 
	// Start game
	case 0: room_goto_next() layer_set_visible("MainMenuLayer", false) break;
	// Settings 
	case 1: layer_set_visible("MainMenuLayer", false) layer_set_visible("SettingsLayer", true) break;
	// Quit game
	case 2: game_end();
	// Fullscreen Checkbox
	case 3: break;
	// Music Slider
	case 4: break;
	// Sound Slider
	case 5: break;
	// Back 
	case 6: layer_set_visible("MainMenuLayer", true) layer_set_visible("SettingsLayer", false) break;
}