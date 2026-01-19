tilesNeeded = 9;
tilesPressed = 0;
global.captchaVerified = false

verify = function(){
	if(tilesPressed >= tilesNeeded){
		global.captchaVerified = true;
		
		if(alarm[0]<0){
			alarm[0] = 3*room_speed
		}
	}
}