if (global.stop_running = false)
	{
	
		//falling down
		if (falling_down = true)
			{
				y += 7
			}
	
		if (y >= room_height)
			{
				y = -sprite_height + 7;
			}
	}