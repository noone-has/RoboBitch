// Inherit the parent event
event_inherited();

trigger_radius = 10000

//Main dialogue
dialog.add(spr_Robot, "(Who are these kids?)")
dialog.add(spr_Micheal, "Do you want a hit?") //maria/deniz
dialog.add(spr_Shock, "Isn't that tabacco?")
dialog.add(spr_Micheal, "yeah") //maria/deniz
dialog.add(spr_Micheal, "You want a hit or not?")

//Say yes to smoking
dialog_SmokingYes = new scr_Dialogue()
dialog_SmokingYes.descriptor = "smoking_yes"
dialog_SmokingYes.add(spr_Robot, "(You take a hit)")

//Say no to smoking
dialog_SmokingNo = new scr_Dialogue()
dialog_SmokingNo.descriptor = "smoking_no"
dialog_SmokingNo.add(spr_Micheal, "Okay dork.") //maria/deniz

dialog.add_branch(dialog_SmokingYes, "Agree to take a hit")
dialog.add_branch(dialog_SmokingNo, "Don't take a hit")

on_dialog_end = function(descriptor){
	if(descriptor == "smoking_yes"){
		global.NewPlayerX = 450;
		global.NewPlayerY = 320;
		room_goto(rm_endscreen)
	}
}

