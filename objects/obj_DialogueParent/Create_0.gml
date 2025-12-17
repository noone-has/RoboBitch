dialog = new scr_Dialogue()

key_next = vk_enter || vk_space;

global.should_show_dialog = false
global.is_making_choice = false

//this is for the dialogue drawer/renderer
is_making_choice = false

current_dialog = {}

alpha = 0

trigger_radius = 20

//used to execute logic when a branch gets selected
on_branch_select = function(descriptor){
	return;
}

on_dialog_end = function(descriptor){
	return;
}

show_dialog = function(character_sprite, text)
{
	layer_set_visible("DialogueLayer", true)
	var textID = layer_text_get_id("DialogueLayer", "DialogueText");
	layer_text_text(textID, text)
	alpha = lerp(alpha, 1, 0.06)
	image_alpha = alpha
}


/*
show_dialog = function(character_sprite, text){
	var text_x = 0
	var text_y = 65
	var height = 32
	var border = 5
	var padding = 80
	
	height = string_height(text)
	
	if(sprite_get_height(character_sprite) > height) {
		height = sprite_get_height(character_sprite)
	}
	
	height += padding*2
	text_x = sprite_get_width(character_sprite) + (padding * 2)
	
	image_alpha = alpha
	//draw_set_alpha(alpha)
	
	//ENABLE THE DIALOGUE LAYER
	layer_set_visible("DialogueLayer", true)
	
	//SET THE CHARACTER SPRITE

	
	//DRAW THE TEXT
	draw_set_color(c_white)
	
	draw_text_ext(text_x, text_y, text, 16, display_get_gui_width() - 192)
	
	alpha = lerp(alpha, 1, 0.06)
}
*/


	
	
	
