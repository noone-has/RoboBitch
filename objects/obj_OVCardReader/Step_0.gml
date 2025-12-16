var swipePointX = swipePosition.getX()
var swipePointY = swipePosition.getY()

//				convert to milli's
busTimer -= delta_time/1000

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
			readerStatus = "TOO SLOW"
			targetSwipeTimeThreshold += 5
		}
		if(!slowEnough){
			readerStatus = "TOO FAST"
			targetSwipeTimeThreshold += 5
		}
		
		if(fastEnough && slowEnough){
			readerStatus = "YAY YOU DID IT :D !"
			done = true;
			doneTimeStamp = current_time
		}
	}
}
if(done){
	if(current_time - doneTimeStamp > transitioningTime){
		room_goto(rm_BusStop)
		global.SequenceState = SequenceStates.BusLeaving;
	}
}