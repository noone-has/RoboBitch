// Inherit the parent event
event_inherited();

//hahaha these variable names are crazy
//dw im just testing....
//get fucking jumpscared ivan holy shit you are going to kill me xD
dialog.add(DEPspr_ANGRY, "I AM VERY ANGRY!!!")
dialog.add(DEPspr_Player, "hi i am the player :DDD")
dialog.add(DEPspr_ANGRY, "I AM GOING TO FUCKING MURDER YOU RAAHHHHH!!!!!11!!1!!!!1111!1!")
dialog.add(DEPspr_Player, "aaaa help me D::")
dialog.add(DEPspr_ANGRY, "RAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHHHHHHHHH")

dialog2 = new scr_Dialogue()
dialog2.add(DEPspr_Player, "hi this is branch 1");
dialog2.add(DEPspr_Player, "test test test test test test");

dialog3 = new scr_Dialogue()
dialog3.add(DEPspr_Player, "greetings this is branch 2");
dialog3.add(DEPspr_Player, "test test");



dialog3_1 = new scr_Dialogue()
dialog3_2 = new scr_Dialogue()

dialog3_1.add(DEPspr_Player, "welcome to branch 1 of branch 2")
dialog3_1.add(DEPspr_Player, "i hope this works")
dialog3_1.add(DEPspr_Player, "if u see this it means the choices are working")

dialog3_2.add(DEPspr_Player, "salute to branch 2 of branch 2")
dialog3_2.add(DEPspr_Player, ".....")


//wordle saga
dialog_wordle = new scr_Dialogue()
dialog_wordle.add(DEPspr_Player, "do you know what todays wordle is??")
dialog_wordle.add(DEPspr_ANGRY, "why would i tell you...")
dialog_wordle.add(DEPspr_Player, "pretty please :3")
dialog_wordle.add(DEPspr_ANGRY, "okay fine....")
dialog_wordle.add(DEPspr_ANGRY, "the word is...")
dialog_wordle.add(DEPspr_ANGRY, "beans")

dialog_wordleDoubt = new scr_Dialogue()
dialog_wordleDoubt.add(DEPspr_Player, "dont fucking believe you")
dialog_wordleDoubt.add(DEPspr_ANGRY, "okay figure it out yourself then >:(")

dialog_wordleThanks = new scr_Dialogue()
dialog_wordleThanks.add(DEPspr_Player, "tanks bro")
dialog_wordleThanks.add(DEPspr_ANGRY, "np )")

dialog3.add_branch(dialog3_1, "go to branch 1")
dialog3.add_branch(dialog3_2, "go to branch 2")

dialog_wordle.add_branch(dialog_wordleThanks, "thank him")
dialog_wordle.add_branch(dialog_wordleDoubt, "doubt")

dialog.add_branch(dialog2, "go to branch 1")
dialog.add_branch(dialog3, "go to branch 2")
dialog.add_branch(dialog_wordle, "ask about todays wordle")
