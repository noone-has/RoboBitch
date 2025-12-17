enum triggers {
	Radius,
	Manual
}

trigger_radius = 70

activate = function(){
	room_goto(target_room)
	with(obj_Player) {x = targetX; y = targetY;}
}