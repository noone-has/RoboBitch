


if(should_show_dialog == false){
	layer_set_visible("Dialogue", false)
	if(dialog.count() <= 0){
		instance_destroy()
		return
	}
	
	if(collision_circle(x, y, trigger_radius, all, false, true)){
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
