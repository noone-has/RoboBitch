// Inherit the parent event
event_inherited();

trigger_radius = 10000

dialog.add("?", spr_Rando, "Another failed invention...", Slide1)
dialog.add("?", spr_Rando, "This stupid thing...", Slide1)
dialog.add("?", spr_Rando, "Why can't you just work?!", Slide1)
dialog.add("?", spr_Rando, "What a waste.", Slide2)
dialog.add("", spr_empty, "You get tossed into the dumpster, left to be forgotten. Not like the engineer cared.. You were just another failed test subject to him after all.", Slide2)
dialog.add("", spr_empty, "You lay there completely disassembled. It was only a matter of time before you’d join the scrapheap. Your life was already done for.", Slide2)
dialog.add("", spr_empty, "Or so it seemed..", Slide2)
dialog.add("!", spr_Rando2, "A woman happened to walk that same day, a robot arm sticking out of a dumpster catching her attention.", Slide3)
dialog.add("", spr_Rando2, "As she opened the dumpster, she saw you laying there, your parts scattered inside.", Slide4)
dialog.add("?", spr_Rando2, "Poor thing..", Slide4)
dialog.add("", spr_Rando2, "Without hesitation, the sympathetic woman gathered all of you, driven by the urge to rebuild you. ", Slide4)
dialog.add("", spr_Rando2, "While you were the engineer’s trash, you were her treasure.", Slide4)
dialog.add("", spr_Rando2, "The woman spent several days at home rebuilding and reprogramming you, determined to bring you back to life.", Slide5)
dialog.add("", spr_Rando2, "And there you were, in all your glory.", Slide6)
dialog.add("", spr_Rando2, "She was proud of how you turned out. You were able to function at last.", Slide6)
dialog.add("MOTHER", spr_Rando2, "There. Your name will be..", Slide6)
dialog.add("MOTHER", spr_Robot, $"{global.PlayerName}...", Slide6)
dialog.add("", spr_Rando2, "The woman hands you a yellow card with a huge smile on her face.", Slide7)
dialog.add("MOTHER", spr_Rando2, "You’re gonna go out there and do great things with your new life. Even if you’re a robot.. I know you’ll fit right in.", Slide7)
dialog.add("", spr_Rando2, "She sends you off on the bus to the Haze University, where new adventures await you.", Slide7)

on_dialog_end = function(descriptor){
room_goto(rm_BusStop)
}