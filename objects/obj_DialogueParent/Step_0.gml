if(global.should_show_dialog == false){
	
	if(dialog.is_finished()){
		//if the dialog is finished and no branches just destroy it
		if(dialog.is_dead_end()){
			layer_set_visible("DialogueLayer", false)
			on_dialog_end(dialog.descriptor)
			instance_destroy()
		}
		
		//if its not a dead end determine which branch to pick
		else{ //now we are waiting for the player to make a choice in the dialogue
			is_making_choice = true
			//check if the pressed key is a number from 0-9
			if(struct_exists(choice_keys, keyboard_lastchar)){
				
				var branch_index = struct_get(choice_keys, keyboard_lastchar)
				
				if(dialog.get_branch(branch_index) != false){//the requested branch exists
					dialog = dialog.get_branch(branch_index)
					on_branch_select(dialog.descriptor)
					is_making_choice = false
				}
			}
		}
		
		return;
	}
	
	if(collision_circle(x, y, trigger_radius, obj_Player, false, true)){
		current_dialog = dialog.pop()
		global.should_show_dialog = true	
	}
}

else{
	if(keyboard_check_released(key_next)){
		global.should_show_dialog = false
		alpha = 0
	}
}
