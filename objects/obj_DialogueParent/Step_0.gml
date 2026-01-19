

if(global.should_show_dialog == false){
	
	if(dialog.is_finished()){
		//if the dialog is finished and no branches just destroy it
		if(dialog.is_dead_end()){
			layer_set_visible("DialogueLayer", false)
			on_dialog_end(dialog.descriptor)
			global.isInDialogue = false;
			instance_destroy()
		}
		
		//if its not a dead end determine which branch to pick
		else{ //now we are waiting for the player to make a choice in the dialogue
			global.is_making_choice = true
			var branch_index = global.DialogueChoice;
			
			if(dialog.get_branch(branch_index) != false){//the requested branch exists
				dialog = dialog.get_branch(branch_index)
				on_branch_select(dialog.descriptor)
				// i cant instantiate an int without giving it a value so ill just set this to 99 ://
				global.DialogueChoice = 99;
				global.is_making_choice = false
			}
		}
		return;
	}
	if(collision_circle(x, y, trigger_radius, obj_Player, false, true)){
		current_dialog = dialog.pop()
		global.should_show_dialog = true
		global.isInDialogue = true;
	}
}
else{
	if((keyboard_check_pressed(vk_space) && global.ControlScheme) || (mouse_check_button_pressed(mb_left) && !global.ControlScheme)){
		global.should_show_dialog = false
		alpha = 0
	}
}