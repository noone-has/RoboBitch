// Input
rightKey = keyboard_check(ord("D")) || keyboard_check(vk_right)
leftKey =  keyboard_check(ord("A")) || keyboard_check(vk_left)
upKey =    keyboard_check(ord("W")) || keyboard_check(vk_up)
downKey =  keyboard_check(ord("S")) || keyboard_check(vk_down)

// Movement
if (!global.should_show_dialog){movement();}

//TESTING ROOM INFO OBJECT
/*oRoomInfo = instance_id_get(obj_RoomInfoParent)
with(oRoomInfo){
	show_debug_message(roomName)
}*/