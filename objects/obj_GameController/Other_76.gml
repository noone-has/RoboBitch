if (event_data[? "event_type"] == "sequence event")
{
    switch (event_data[? "message"])
    {
        case "bus1":
		room_goto(rm_CardSwipeMG)      
        break;
	}
}