//movement of the drop
y += 10

// not spawn again after score is 10
if (global.CupGameScore >= 10)
	{
		y = 0
		visible = false;
	}

// Step event
if (y > room_height)
{
    var min_x = sprite_width / 2;
	var max_x = room_width * 0.70 - sprite_width / 2;

	x = irandom_range(min_x, max_x);
	y = -sprite_height;
}