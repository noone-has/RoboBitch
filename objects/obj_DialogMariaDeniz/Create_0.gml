event_inherited();
trigger_radius = 10000

//Main dialogue
dialog.add(spr_Robot, "[The two girls were laughing and talking together about something you could not quite grasp. The moment you rolled in front of them, they turn to face you. They seemed surprisingly excited to see you.]")
dialog.add(spr_empty, "Oh sweet, a robot? Since when do we have those running around at school?!") //maria/deniz 
dialog.add(spr_empty, "No idea, actually. They look cool though.")//INSERT PRONOUN
dialog.add(spr_empty, "Say, robot, would you like a hit of this cigarette?")

//Say yes to smoking
dialog_SmokingYes = new scr_Dialogue()
dialog_SmokingYes.descriptor = "smoking_yes"
dialog_SmokingYes.add(spr_Robot, "Sure, why not")
dialog_SmokingYes.add(spr_Robot, "[As you try to take a hit from the offered cigarette, a mean looking teacher happens to walk by. She does not look happy.]")
dialog_SmokingYes.add(spr_empty, "What is the meaning of this? Do you not see the sign behind you? This is absolutely unacceptable! Get out of here now!")

//Say no to smoking
dialog_SmokingNo = new scr_Dialogue()
dialog_SmokingNo.descriptor = "smoking_no"
dialog_SmokingNo.add(spr_Robot, "Uhm.. No thank you. I was wondering if you girls could help me find my classes.") //maria/deniz
dialog_SmokingNo.add(spr_empty, "But of course we can. Lucky for you, I happen to have a map of the school in my bag. You can have it")
dialog_SmokingNo.add(spr_empty, "[The kind girl hands you her map, it’s quite big]")
dialog_SmokingNo.add(spr_empty, "By the way, I am Marla, and this is Dennis. What is your name?")
dialog_SmokingNo.add(spr_Robot, "(playername).")
dialog_SmokingNo.add(spr_empty, "[The girl laughs wholeheartedly]")
dialog_SmokingNo.add(spr_empty, "Even their name is awesome. I hope we get to see more robots rolling around here soon.")
dialog_SmokingNo.add(spr_empty, "[She takes another drag of her cigarette, blowing it out in the opposite direction]")
dialog_SmokingNo.add(spr_empty, "If you ever need our help, don’t be afraid to reach out to us.")
dialog_SmokingNo.add(spr_empty, "Though, there’s plenty of other students around here who are also willing to help you out. As long as you’re nice to them.")
dialog_SmokingNo.add(spr_empty, "[Marla nods her head in agreement]")
dialog_SmokingNo.add(spr_empty, "She’s right. Get out there and explore a little.")
dialog_SmokingNo.add(spr_empty, "You’ll definitely find your way around with that map for now. Good luck, (playername)!")

dialog.add_branch(dialog_SmokingYes, "Take a hit")
dialog.add_branch(dialog_SmokingNo, "Don't take a hit")

on_dialog_end = function(descriptor){
	if(descriptor == "smoking_yes"){
		room_goto(rm_endscreen)
	}
	if(descriptor == "smoking_no"){
		global.NewPlayerX = 596;
		global.NewPlayerY = 596;
		global.GameStateDict[GameStates.BenchVisited] = true;
		room_goto(rm_outside)	
	}
}
