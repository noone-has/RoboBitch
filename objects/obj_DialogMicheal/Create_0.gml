// Inherit the parent event
event_inherited();

trigger_radius = 10000

//Main dialogue
dialog.add("Teacher", spr_Micheal, "Welcome newcomer.")
dialog.add("Teacher", spr_Micheal, "You're already late! Get your ass to class.")

on_dialog_end = function(descriptor)
	{
		global.NewPlayerX = 240;
		global.NewPlayerY = 777;
		global.SequenceState += 1;
		room_goto(rm_inside)
	}

