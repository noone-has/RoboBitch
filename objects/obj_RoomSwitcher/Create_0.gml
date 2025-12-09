enum triggers {
	Radius,
	Manual
}

trigger_radius = 70

activate = function(){
	room_goto(target_room)
}