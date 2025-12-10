draw_sprite_stretched(sprite_index, image_index, x, y, sprite_width, sprite_height)

var knob_amount = amount_current / amount_max;
var knob_position_x = x + (sprite_width * knob_amount)

var slider_knob_frame_index = 0; // used for determining which knob sprite to use (empty, hovering, dragging)
if(is_being_hovered)//order matters here
{ 
	slider_knob_frame_index = 1;
}
if(is_being_dragged)
{
	slider_knob_frame_index = 2;
}

draw_sprite_stretched(spr_Knob, slider_knob_frame_index, knob_position_x, y, sprite_height, sprite_height)