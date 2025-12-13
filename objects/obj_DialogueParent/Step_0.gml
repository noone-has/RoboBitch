if(should_show_dialog == false){
	layer_set_visible("DialogueLayer", false)
	
	if(dialog.is_finished()){
		
		if(dialog.is_dead_end()){
			instance_destroy()
			return
		}
		
		else{
			dialog = dialog.get_branch()
		}
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
