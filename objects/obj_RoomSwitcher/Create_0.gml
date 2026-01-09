enum triggers {
	Radius,
	Manual
}

activate = function(){
	
	//-1 is the value for infinite uses.
	if(uses <= 0 && uses != -1){return;}
	
	room_goto(target_room)
	global.NewPlayerX = targetX;
	global.NewPlayerY = targetY;
	show_debug_message($"switched room to {target_room}")
	
	//uses wont slip into -1 because this doesnt run when its already 0
	uses--;
}

//hide the door icon
visible = false;