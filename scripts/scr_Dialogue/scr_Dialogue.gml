function scr_Dialogue() constructor{
	
	_dialogs = [];
	_branches = [];
	_fallback_branch = 0;
	choice_context = [];
	
	add = function(_sprite, _message){
		//add a struct to the dialogs array with a sprite and the message
		array_push(_dialogs, {
			sprite: _sprite,
			message: _message
		})
	}
	
	pop = function(){
		//return and remove the first dialog in the queue
		var _t = array_first(_dialogs)
		array_delete(_dialogs, 0, 1)
		
		return _t
	}
	
	count = function(){
		return array_length(_dialogs)
	}
	
	is_finished = function(){
		//return bool thats true when count <= 0
		return (count() <= 0);
	}
	
	add_branch = function(_dialog, _choice_context){
		array_push(_branches, _dialog)
		array_push(choice_context, _choice_context)
	}
	
	//dead end means there are no connecting branches
	is_dead_end = function(){
		var has_branches = (array_length(_branches) == 0)
		return has_branches
	}
	
	get_branch = function(i = -1){
		var branch_index = _fallback_branch
		if(i != -1){ //if an i was given,
			branch_index = i;
		}
		if(branch_index > array_length(_branches)-1){
			//getting the branch failed
			show_debug_message("GETTING BRANCH FAILED")
			return false
		}
		return array_get(_branches, branch_index);
	}
}