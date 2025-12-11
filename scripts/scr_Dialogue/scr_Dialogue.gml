function scr_Dialogue() constructor{
	
	_dialogs = [];
	_branches = [];
	//dead end means there are no connecting branches
	dead_end = false;
	
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
		//if count = 0, the dialog is finished
		return (count() <= 0);
	}
	
	add_branch = function(_dialog){
		array_push(_branches, {
			dialogue: _dialog
		})
	}
	
	set_dead_end = function(value){
		dead_end = value
	}
	
	get_next_branch = function(){
		return array_first(_branches); //TODO: make this have logic
	}
}