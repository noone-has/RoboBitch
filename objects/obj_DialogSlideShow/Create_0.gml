// Inherit the parent event
event_inherited();

trigger_radius = 10000

dialog.add("test", DEPspr_ANGRY, "hi this is a test", spr_Agartha)
dialog.add("test", DEPspr_ANGRY, "agartha should still be showing")
dialog.add("test", DEPspr_ANGRY, "now it should be appie", spr_Appie)
dialog.add("test", DEPspr_ANGRY, "1")
dialog.add("test", DEPspr_ANGRY, "2")
dialog.add("test", DEPspr_ANGRY, "3")
dialog.add("test", DEPspr_ANGRY, "now it should be bakerspace", spr_Bakerspace)


on_dialog_end = function(descriptor){
	room_goto(rm_BusStop)
}