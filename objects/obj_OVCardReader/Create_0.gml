//these are in milli's
targetSwipeTime = 135
targetSwipeTimeThreshold = 15
busTimer = 60000

failMessages = ["NO", "You flunk", "Better luck next time", "Bus leaving soon...", "Better hurry up :)"]
guaranteedFails = 3
swipeStarted = false
swipeStartedTimeStamp = 0
readerStatus = "Swipe to scan card."
done = false;
transitioningTime = 1000
layer_set_visible("CardSwipeLayer", true)
checkingRadius = 140

swipePosition = new scr_Position(x, y)