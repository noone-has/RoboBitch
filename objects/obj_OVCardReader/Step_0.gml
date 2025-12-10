var swipePointX = swipePosition.getX()
var swipePointY = swipePosition.getY()


if(collision_circle(swipePointX, swipePointY, checkingRadius, obj_OVCard, false, true) && !swipeStarted){
	swipeStarted = true
	swipeStartedTimeStamp = current_time
}

if(swipeStarted){
	if(!collision_circle(swipePointX, swipePointY, checkingRadius, obj_OVCard, false, true)){
		swipeStarted = false
		
		var timeSinceFirstSwipe = (current_time - swipeStartedTimeStamp)
		show_debug_message(timeSinceFirstSwipe)
	
		var fastEnough = (timeSinceFirstSwipe < targetSwipeTime + targetSwipeTimeThreshold)
		var slowEnough = (timeSinceFirstSwipe > targetSwipeTime - targetSwipeTimeThreshold)
	
		if(!fastEnough){
			show_debug_message("TOO SLOW")
			readerStatus = "TOO SLOW"
		}
		if(!slowEnough){
			show_debug_message("TOO FAST")
			readerStatus = "TOO FAST"
		}
		
		if(fastEnough && slowEnough){
			show_debug_message("YAYYY")
			readerStatus = "YAY YOU DID IT :D !"
		}
	}
}

