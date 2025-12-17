if(lastState == global.SequenceState)
{
	return;
}
//ELSE
lastState = global.SequenceState

switch (global.SequenceState)
{
	case SequenceStates.BusArriving: 
		layer_sequence_create("Sequences", 1184, 704, sq_Bus1)
	break;	

	case SequenceStates.BusLeaving:
		layer_sequence_create("Sequences", -384, 704, sq_Bus2)
		instance_create_layer(1400, 700, "Instances", obj_Player) 
	break;
}
