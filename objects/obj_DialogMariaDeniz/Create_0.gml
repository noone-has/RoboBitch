// Inherit the parent event
event_inherited();

trigger_radius = 10000

//Main dialogue
dialog.add(spr_Player, "(Who are these kids?)")
dialog.add(spr_Player, "Do you want a hit?") //maria/deniz
dialog.add(spr_Player, "Isn't that tabacco?")
dialog.add(spr_Player, "yeah") //maria/deniz
dialog.add(spr_Player, "You want a hit or not?")

//Say yes to smoking
dialog_SmokingYes = new scr_Dialogue()
dialog_SmokingYes.add(spr_Player, "(You take a hit)")
dialog_SmokingYes.add(spr_Player, "Let's go to Appie") //maria/deniz

//Say no to smoking
dialog_SmokingNo = new scr_Dialogue()
dialog_SmokingNo.add(spr_Player, "Okay dork.") //maria/deniz



dialog.add_branch(dialog_SmokingYes, "Agree to take a hit")
dialog.add_branch(dialog_SmokingNo, "Don't take a hit")