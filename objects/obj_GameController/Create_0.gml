//Randomize the fucking randomizer because gamemaker doesnt fucking do it itself >:(((
//faking faking fak u blady no fak u blady
randomise()

// Menu Visibility
if(room == rm_TitleScreen){
	var layers = layer_get_all();

	var exclude = ["MainMenuLayer", "Effect1", "Instances", "Sequences", "Background"] //<< These layers wont be disabled at start

	for (var i = 0; i < array_length(layers); i++) 
	{
		var currentLayer = layers[i];
		var name = layer_get_name(currentLayer);
		if(array_contains(exclude, name)){ continue; } //go to next iteration if layer should not be disabled
	
		layer_set_visible(currentLayer, false) 
	}
}

// Cursor
window_set_cursor(cr_none);
cursor_sprite = spr_Cursor1;

// Global Variables
global.isFullscreen = 1;
global.AudioVolume = 1;
global.MusicVolume = 1;
global.PlayerName = "[Player Name]";
global.ControlScheme = true;

// Pause 
global.paused = false;
scr_Pause();
