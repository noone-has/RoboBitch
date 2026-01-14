if(lastState == global.SequenceState)
{
	return;
}
lastState = global.SequenceState

//The SequenceState has changed
switch (global.SequenceState)
{
	case SequenceStates.BusArriving:
		instance_deactivate_object(ArrowBus);
		alarm[0] = 3*room_speed
	break;

	case SequenceStates.BusLeaving:
		layer_sequence_create("Sequences", -384, 704, sq_Bus2)
		instance_create_layer(0, 0, "Instances", obj_Player)
		instance_activate_object(ArrowBus);
	break;
	
	case SequenceStates.DenizMariaExit:
		instance_deactivate_object(ArrowMaria);
		instance_deactivate_object(ArrowDeniz);
		instance_activate_object(ArrowEntrance);
	break;
	
	case SequenceStates.WelcomeExit:
		instance_deactivate_object(ArrowEntrance);
	break;
	
	case SequenceStates.StartCupGame:
		instance_deactivate_layer(ArrowStartCupGame)
	break;
	
}
