// Inherit the parent event
event_inherited();

trigger_radius = 170

//Main dialogue
dialog.add("Buddy", spr_buddy, "Welcome newcomer.")
dialog.add("Buddy", spr_buddy, "You're already late! Get your ass to class.")

on_dialog_end = function(descriptor)
	{
		global.NewPlayerX = 240;
		global.NewPlayerY = 777;
		global.SequenceState += 1;
		room_goto(rm_RunGame)
	}

