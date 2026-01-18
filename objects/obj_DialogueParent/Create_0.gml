dialog = new scr_Dialogue()

key_next = vk_space;

global.should_show_dialog = false
global.is_making_choice = false

//this is for the dialogue drawer/renderer
is_making_choice = false

current_dialog = {}

alpha = 0

trigger_radius = 20

//used to execute logic when a branch gets selected
//you can overwrite these in children
on_branch_select = function(descriptor){
	return;
}

on_dialog_end = function(descriptor){
	return;
}

show_dialog = function(character_sprite, text, character_name)
{
	show_debug_message("enabling DialogueLayer (show_dialog)")
	layer_set_visible("DialogueLayer", true)
	var textID = layer_text_get_id("DialogueLayer", "DialogueText");
	layer_text_text(textID, text)

	var nameID = layer_text_get_id("DialogueLayer", "DialogueName");
	layer_text_text(nameID, character_name)
	
	with(obj_DialogueCharacter){
		sprite_index = other.current_dialog.sprite
	}
	
	alpha = lerp(alpha, 1, 0.06)
	image_alpha = alpha
}

	