

if(is_being_dragged == true){
	
	if(mouse_x < x) {amount_current = 0} //if the mouse is behind the slider, set the slider value to 0
	
	else{
			var xx = abs(x - mouse_x)
		var amount = xx / sprite_width
	
		amount = clamp(amount, 0, 1)
		amount_current = amount * 100
	}
}