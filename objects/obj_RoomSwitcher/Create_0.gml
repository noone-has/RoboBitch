enum triggers {
	Radius,
	Manual
}

activate = function(){	
	room_goto(target_room)
	global.NewPlayerX = targetX;
	global.NewPlayerY = targetY;
	show_debug_message($"switched room to {target_room}")
}

visible = false;
