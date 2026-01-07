tilesNeeded = 9;
tilesPressed = 0;
verified = false

verify = function(){
	if(tilesPressed >= tilesNeeded){
		verified = true;
		
		if(alarm[0]<0){
			alarm[0] = 3*room_speed
		}
	}
}