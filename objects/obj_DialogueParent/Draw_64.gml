if(global.should_show_dialog == true){
	show_dialog(current_dialog.sprite, current_dialog.message)
}

if(is_making_choice){
	var text = ""
	for(i = 0; i < array_length(dialog.choice_context); i++){
		text += string(i+1) + ": " + dialog.choice_context[i] + "\n"
	}
	show_dialog(spr_Robot, text)
}