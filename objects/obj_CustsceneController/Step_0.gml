if(lastState == global.SequenceState)
{
	return;
}
lastState = global.SequenceState

//The SequenceState has changed
switch (global.SequenceState)
{
	case SequenceStates.BusArriving:
		alarm[0] = 3*room_speed
	break;

	case SequenceStates.BusLeaving:
		layer_sequence_create("Sequences", -384, 704, sq_Bus2)
		instance_create_layer(0, 0, "Instances", obj_Player)
	break;
}
