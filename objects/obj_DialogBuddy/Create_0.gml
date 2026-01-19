// Inherit the parent event
event_inherited();

trigger_radius = 200

//Main dialogue
dialog.add("Buddy", spr_buddy, "You gotta hurry the fuck up.")
dialog.add("Buddy", spr_buddy, "I recommend you to run...")
dialog.add("Buddy", spr_buddy, "RUN, NOW, RUN!")

on_dialog_end = function(descriptor)
	{
		global.NewPlayerX = 240;
		global.NewPlayerY = 777;
		global.SequenceState += 1;
		room_goto(rm_RunGame)
	}

