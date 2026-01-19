tilesNeeded = 9;
tilesPressed = 0;
global.showCaptha = true
global.showDigiroster = false;
showVerifiedCheck = false

global.isOnPhone = true;

verify = function(){
	if(tilesPressed >= tilesNeeded){
		showVerifiedCheck = true;
		if(alarm[0]<0){
			alarm[0] = 1*room_speed
		}
	}
}