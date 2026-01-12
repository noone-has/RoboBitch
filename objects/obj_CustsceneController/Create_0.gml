//The switch in step should always run at the beginning.
//Setting this to -1 makes it so this is not equal to any SequenceState
//so the switch will always run at the beginning
lastState = -1
global.NewPlayerX = 900;
global.NewPlayerY = 700;

//Add new cutscenes to this and execute the logic in obj_CutsceneController
enum SequenceStates{
	BusArriving,
	BusLeaving,
	Cutscene3,
}

