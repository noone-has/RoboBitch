// Inherit the parent event
event_inherited();

trigger_radius = 170

//Main dialogue
dialog.add("Buddy", spr_BuddyPortrait, $"Hi I'm your buddy. You must be {global.PlayerName}")
dialog.add("Buddy", spr_BuddyPortrait, "Your teacher told me the room for your class got changed.")
dialog.add("Buddy", spr_BuddyPortrait, "It's now in 6.97")
dialog.add(global.PlayerName, spr_Unamused, "Ugh... Is anything scheduled properly here?")
dialog.add("Buddy", spr_BuddyPortrait, "Hah! No.")
dialog.add("Buddy", spr_BuddyPortrait, $"You're late! Better start running, see ya {global.PlayerName}.")

on_dialog_end = function(descriptor)
{
	global.NewPlayerX = 240;
	global.NewPlayerY = 777;
	global.SequenceState += 1;
	room_goto(rm_RunGame)
}

