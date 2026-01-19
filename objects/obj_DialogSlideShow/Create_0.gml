// Inherit the parent event
event_inherited();

trigger_radius = 10000

dialog.add("", spr_Robot, "1", Slide1)
dialog.add("", spr_Robot, "2", Slide2)
dialog.add("", spr_Robot, "3", Slide3)


on_dialog_end = function(descriptor){
	with(obj_GameController){
		settingName = true;
	}
}