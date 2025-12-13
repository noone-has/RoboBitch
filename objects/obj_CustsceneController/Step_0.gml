
switch (global.SequenceState)
{
	case 0: 
		if(room ==  rm_BusStop) && (check1 = true)
		{
		layer_sequence_create("Sequences", 1184, 704, sq_Bus1);
		check1 = false;
		}
		break;	

	case 1: 
		if (room == rm_CardSwipeMG) && (check2 = true)
		{
		room_goto(rm_BusStop) 
		layer_sequence_create("Sequences", -384, 704, sq_Bus2) 
		instance_create_layer(1600, 900, "Instances", obj_Player) 
		check2 = false;
		}
		break;

	case 2: break;

	case 3: break;
}