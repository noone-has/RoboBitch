// Inherit the parent event
event_inherited();

trigger_radius = 10000

dialog.add("test", DEPspr_ANGRY, "hi this is a test")
dialog.add("test", DEPspr_ANGRY, "agartha should still be showing")
dialog.add("test", DEPspr_ANGRY, "now it should be appie")

/*slide stuff
slides = ds_map_create()
ds_map_add(slides, 0, spr_Agartha)
ds_map_add(slides, 2, spr_Appie)

on_dialog_end = function(descriptor){
	room_goto(rm_BusStop)
}
*/