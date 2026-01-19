// Inherit the parent event
event_inherited();

trigger_radius = 10000

dialog.add(global.PlayerName, spr_Normal, "Hmm...")
dialog.add(global.PlayerName, spr_Normal, "Which room is my class?")
dialog.add(global.PlayerName, spr_Normal, "Let me check Degirister...")
dialog.add(global.PlayerName, spr_Distraught, "Whats this?")
dialog.add(global.PlayerName, spr_Angry, "A captcha!??")

on_dialog_end = function(descriptor){
	layer_set_visible("PhoneLayer", true)
	layer_set_visible("CaptchaLayer", true)
	instance_destroy()
}