// Inherit the parent event
event_inherited();

trigger_radius = 10000

//Main dialogue
dialog.add("Teacher", spr_teacher, $"Oh hello there! You must be {global.PlayerName}.")
dialog.add("Teacher", spr_teacher, "Sit where you like!")
dialog.add(global.PlayerName, spr_Sad, "Am I in trouble for being late..?")
dialog.add("Teacher", spr_teacher, "Ha! Noone cares about that here. Don't worry your little metal head about it.")
dialog.add(global.PlayerName, spr_Unamused, "Oh my god.")

on_dialog_end = function(descriptor)
	{
		game_restart()
	}

