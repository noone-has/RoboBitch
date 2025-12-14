// Inherit the parent event
event_inherited();

//hahaha these variable names are crazy
//dw im just testing....
dialog.add(spr_ANGRY, "I AM VERY ANGRY!!!")
dialog.add(spr_Player, "hi i am the player :DDD")
dialog.add(spr_ANGRY, "I AM GOING TO FUCKING MURDER YOU RAAHHHHH!!!!!11!!1!!!!1111!1!")
dialog.add(spr_Player, "aaaa help me D::")
dialog.add(spr_ANGRY, "RAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHHHHHHHHH")

dialog2 = new scr_Dialogue()
dialog2.add(spr_Player, "hi this is branch 1");
dialog2.add(spr_Player, "test test test test test test");

dialog3 = new scr_Dialogue()
dialog3.add(spr_Player, "greetings this is branch 2");
dialog3.add(spr_Player, "test test");



dialog3_1 = new scr_Dialogue()
dialog3_2 = new scr_Dialogue()

dialog3_1.add(spr_Player, "welcome to branch 1 of branch 2")
dialog3_1.add(spr_Player, "i hope this works")
dialog3_1.add(spr_Player, "if u see this it means the choices are working")

dialog3_2.add(spr_Player, "salute to branch 2 of branch 2")
dialog3_2.add(spr_Player, ".....")

dialog3.add_branch(dialog3_1, "go to branch 1")
dialog3.add_branch(dialog3_2, "go to branch 2")
dialog3._fallback_branch = 0;

dialog.add_branch(dialog2, "go to branch 1")
dialog.add_branch(dialog3, "go to branch 2")
dialog._fallback_branch = 1;
