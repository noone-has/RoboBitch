// Inherit the parent event
event_inherited();

//Main dialogue
dialog.add(spr_Micheal, "Welcome newcomer.")
dialog.add(spr_Micheal, "You're already late! Get your ass to class.")

on_dialog_end = function(descriptor)
	{
		global.NewPlayerX = 240;
		global.NewPlayerY = 777;
		room_goto(rm_inside)
	}

