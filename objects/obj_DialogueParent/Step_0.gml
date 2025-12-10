if(should_show_dialog == false){
	layer_set_visible("DialogueLayer", false)
	if(dialog.is_finished()){
		instance_destroy()
		return
	}
	
	if(collision_circle(x, y, trigger_radius, obj_Player, false, true)){
		current_dialog = dialog.pop()
		should_show_dialog = true	
	}
}

else{
	if(keyboard_check_released(key_next)){
		should_show_dialog = false
		alpha = 0
	}
}
