// Inherit the parent event
event_inherited();

trigger_radius = 10000

//Main dialogue
dialog.add("Teacher", spr_teacher, "Wow! You actually made it in time.")
dialog.add("Teacher", spr_teacher, $"Good job {global.PlayerName}!")
dialog.add("Teacher", spr_teacher, "Welcome to Haze.")

on_dialog_end = function(descriptor)
	{

	}

