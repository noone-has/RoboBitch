//Randomize the fucking randomizer because gamemaker doesnt fucking do it itself >:(((
//faking faking fak u blady no fak u blady
randomise()

// Menu Visibility
var layers = layer_get_all();
for (var i = 0; i < array_length(layers); i++) 
{
	var currentLayer = layer_get_id(layers[i]);
	var name = layer_get_name(currentLayer);
	layer_set_visible(name, false) 
}
layer_set_visible("MainMenuLayer", true) 

// Cursor
window_set_cursor(cr_none);
cursor_sprite = spr_Cursor1;

// Global Variables
global.isFullscreen = 1;
global.AudioVolume = 1;
global.MusicVolume = 1;
global.PlayerName = "Player";
// Pause 
global.paused = false;
scr_Pause();


