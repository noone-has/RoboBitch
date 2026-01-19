dialog = new scr_Dialogue()


global.should_show_dialog = false
global.is_making_choice = false

//this is for the dialogue drawer/renderer
is_making_choice = false

current_dialog = {}

alpha = 0
global.isInDialogue = false;
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
	layer_set_visible("DialogueLayer", true)
	var textID = layer_text_get_id("DialogueLayer", "DialogueText");
	layer_text_text(textID, text)

	var nameID = layer_text_get_id("DialogueLayer", "DialogueName");
	layer_text_text(nameID, character_name)
	
	with(obj_DialogueCharacter){
		sprite_index = other.current_dialog.sprite
	}
}