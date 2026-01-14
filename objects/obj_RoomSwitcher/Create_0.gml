enum triggers {
	Radius,
	Manual
}

activate = function(){
	
	if(Disabler != noone){
		if(Disabler == true){
			return;
		}
	}
	
	room_goto(target_room)
	global.NewPlayerX = targetX;
	global.NewPlayerY = targetY;
	show_debug_message($"switched room to {target_room}")

}

//hide the door icon
visible = false;