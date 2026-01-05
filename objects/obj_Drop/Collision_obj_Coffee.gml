// Increase score
global.CupGameScore += 1;

// Respawn the drop at the top, not in the right 1/4 of the room
if (global.CupGameScore <= 10)
{
var min_x = sprite_width / 2;
var max_x = room_width * 0.85 - sprite_width / 2;

x = irandom_range(min_x, max_x);
y = -sprite_height;
}
