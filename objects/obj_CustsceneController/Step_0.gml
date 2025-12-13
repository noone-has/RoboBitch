show_debug_message(global.SequenceState)
if(lastState == global.SequenceState)
{
	return;
}
//ELSE
lastState = global.SequenceState
show_debug_message("I TRIGGERED")
switch (global.SequenceState)
{
	case SequenceStates.BusArriving: 
		show_debug_message("im 0")
		layer_sequence_create("Sequences", 1184, 704, sq_Bus1)
		break;	

	case SequenceStates.BusLeaving:
		
		layer_sequence_create("Sequences", -384, 704, sq_Bus2)
		instance_create_layer(1600, 900, "Instances", obj_Player) 
		break;

	case 2: break;

	case 3: break;
}