// Inherit the parent event
event_inherited();

trigger_radius = 10000

//Main dialogue
dialog.add(DEPspr_Player, "(Who are these kids?)")
dialog.add(DEPspr_Player, "Do you want a hit?") //maria/deniz
dialog.add(DEPspr_Player, "Isn't that tabacco?")
dialog.add(DEPspr_Player, "yeah") //maria/deniz
dialog.add(DEPspr_Player, "You want a hit or not?")

//Say yes to smoking
dialog_SmokingYes = new scr_Dialogue()
dialog_SmokingYes.add(DEPspr_Player, "(You take a hit)")
dialog_SmokingYes.add(DEPspr_Player, "Let's go to Appie") //maria/deniz

//Say no to smoking
dialog_SmokingNo = new scr_Dialogue()
dialog_SmokingNo.descriptor = "smoking_no"
dialog_SmokingNo.add(DEPspr_Player, "Okay dork.") //maria/deniz

dialog.add_branch(dialog_SmokingYes, "Agree to take a hit")
dialog.add_branch(dialog_SmokingNo, "Don't take a hit")

on_dialog_end = function(descriptor){
	if(descriptor == "smoking_no"){
		room_goto(rm_outside)
	}
}

