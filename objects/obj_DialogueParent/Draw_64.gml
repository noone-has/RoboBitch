if(global.should_show_dialog == true){
	show_dialog(current_dialog.sprite, current_dialog.message)
}

/*if(is_making_choice){
	var text = ""
	for(i = 0; i < array_length(dialog.choice_context); i++){
		text += string(i+1) + ": " + dialog.choice_context[i] + "\n"
	}
	show_dialog(spr_Robot, text)
*/
	
if(global.is_making_choice)
{
	layer_set_visible("DialogueOptionsLayer", true)
	for(i = 0; i < array_length(dialog.choice_context); i++)
	{
		var textID = layer_text_get_id("DialogueOptionsLayer", $"DialogueOption{(i+1)}Text");
		var text = dialog.choice_context[i];
		layer_text_text(textID, $"{text}");
	}
}


