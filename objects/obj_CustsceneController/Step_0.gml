
switch (global.SequenceState)
{
	case 0: 
		if(room ==  rm_BusStop)
		layer_sequence_create("Sequences", 1184, 704, sq_Bus1)
		break;	

	case 1: 
		if(room ==  rm_CardSwipeMG)
		room_goto(rm_BusStop) 
		layer_sequence_create("Sequences", -384, 704, sq_Bus2) 
		instance_create_layer(1600, 900, "Instances", obj_Player) 
		break;

	case 2: break;

	case 3: break;
}