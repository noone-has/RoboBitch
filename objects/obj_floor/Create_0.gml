falling_down = false;
alarm[0] = 3 * room_speed;

if (instance_number(obj_floor) < 2)
	{
		instance_create_layer(x, y - sprite_height, layer, obj_floor);
	}