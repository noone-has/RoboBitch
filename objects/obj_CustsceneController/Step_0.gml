
switch (global.SequenceState)
{
	
case 0: 
	layer_sequence_create(1184, 704, "Sequences", sq_Bus1) 
break;	

case 1: 
	room_goto(rm_BusStop) 
	layer_sequence_create(-384, 704, "Sequences", sq_Bus2) 
	instance_create_layer(448, 736, "Instances", obj_Player) 
break;

case 2: break;

case 3: break;
}