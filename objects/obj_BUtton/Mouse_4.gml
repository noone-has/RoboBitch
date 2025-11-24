switch (button_id) 
{ 
	// Start game
	case 0: room_goto_next() layer_set_visible("MainMenuLayer", false) break;
	// Settings 
	case 1: break;
	// Quit game
	case 2: game_end();
}