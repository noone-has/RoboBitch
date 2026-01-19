event_inherited();
trigger_radius = 10000

//Main dialogue
dialog.add(" ", spr_Normal, "[The two girls were laughing and talking together about something you couldn't quite grasp. The moment you rolled in front of them, they turn to face you. They seemed surprisingly excited to see you.]")
dialog.add(" ", spr_Normal, "[The moment you rolled in front of them, they turn to face you. They seemed surprisingly excited to see you.]")
dialog.add("Dennis",spr_DennisPortrait, "Oh sweet, a robot? Since when do we have those running around at school?!", noone, vl_oh_sweet_a_robot) 
dialog.add("Marla", spr_MarlaPortrait, "No idea, actually. They look cool though.")
dialog.add("Marla", spr_MarlaPortrait, "Say, robot, would you like a hit of this cigarette?", noone, vl_Take_a_hit)

//Say yes to smoking
dialog_SmokingYes = new scr_Dialogue()
dialog_SmokingYes.descriptor = "smoking_yes"
dialog_SmokingYes.add(global.PlayerName, spr_Robot, "Sure, why not")
dialog_SmokingYes.add(global.PlayerName, spr_Robot, "[As you try to take a hit from the offered cigarette, a mean looking teacher happens to walk by. She does not look happy.]")
dialog_SmokingYes.add("", spr_empty, "What is the meaning of this? Do you not see the sign behind you? This is absolutely unacceptable! Get out of here now!")

//Say no to smoking
dialog_SmokingNo = new scr_Dialogue()
dialog_SmokingNo.descriptor = "smoking_no"
dialog_SmokingNo.add(global.PlayerName, spr_Happy, "U-uhm.. No thank you. I was wondering if you girls could help me find my classes.") 
dialog_SmokingNo.add("Marla", spr_MarlaPortrait, "But of course we can. Lucky for you, I happen to have a map of the school in my bag. You can have it")
dialog_SmokingNo.add("",spr_empty, "[The kind girl hands you her map, it’s quite big]")
dialog_SmokingNo.add("Marla", spr_MarlaPortrait, "By the way, I am Marla, and this is Dennis. What is your name?", noone, vl_Whats_your_name)
dialog_SmokingNo.add(global.PlayerName, spr_Robot, $"I'm {global.PlayerName}. {global.PlayerName} the robot!")	
dialog_SmokingNo.add("",spr_empty, "[The girl laughs wholeheartedly]")
dialog_SmokingNo.add("Dennis", spr_DennisPortrait, "Even your name is awesome. I hope we get to see more robots rolling around here soon.")
dialog_SmokingNo.add("Dennis", spr_DennisPortrait, "[She takes another drag of her cigarette, blowing it out in the opposite direction]")
dialog_SmokingNo.add("Dennis", spr_DennisPortrait, "If you ever need our help, don’t be afraid to reach out to us.", noone, vl_if_u_ever_need_our_help_3)
dialog_SmokingNo.add("Dennis", spr_DennisPortrait, "Though, there’s plenty of other students around here who are also willing to help you out. As long as you’re nice to them.")
dialog_SmokingNo.add("Marla", spr_MarlaPortrait, "[Marla nods her head in agreement]")
dialog_SmokingNo.add("Marla", spr_MarlaPortrait, "She’s right. Get out there and explore a little.")
dialog_SmokingNo.add("Marla", spr_MarlaPortrait, $"You’ll definitely find your way around with that map for now. Good luck, {global.PlayerName}!")


dialog.add_branch(dialog_SmokingYes, "Take a hit")
dialog.add_branch(dialog_SmokingNo, "Don't take a hit")


on_dialog_end = function(descriptor){
	if(descriptor == "smoking_yes"){
		room_goto(rm_endscreen)
	}
	if(descriptor == "smoking_no"){
		global.NewPlayerX = 700;
		global.NewPlayerY = 600;
		global.GameStateDict[GameStates.BenchVisited] = true;
		room_goto(rm_outside)	
	}
}

