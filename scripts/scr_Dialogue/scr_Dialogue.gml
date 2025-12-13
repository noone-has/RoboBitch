function scr_Dialogue() constructor{
	
	_dialogs = [];
	_branches = [];
	_fallback_branch = 0;
	//dead end means there are no connecting branches
	_dead_end = false;
	
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
	
	add_branch = function(_dialog){
		array_push(_branches, _dialog)
	}
	
	set_dead_end = function(value){
		_dead_end = value
	}
	
	is_dead_end = function(){
		var has_branches = (array_length(_branches) == 0)
		return has_branches || _dead_end
	}
	
	get_branch = function(){
		return array_get(_branches, _fallback_branch); //TODO: make this have logic
	}
}