// Inherit the parent event
event_inherited();

trigger_radius = 170

//Main dialogue
dialog.add("Buddy", spr_BuddyPortrait, "Hi i'm your buddy.")
dialog.add("Buddy", spr_BuddyPortrait, "Your teacher told me the room for your class got changed.")
dialog.add("Buddy", spr_BuddyPortrait, "It's now in 6.97")

on_dialog_end = function(descriptor)
{
	global.NewPlayerX = 240;
	global.NewPlayerY = 777;
	global.SequenceState += 1;
	room_goto(rm_RunGame)
}

