/*if(mouse_x > x) 
	{
	 var xx = abs(x - mouse_x);
	 var amount = xx / sprite_width;
	 amount = clamp(amount, 0, 1);
	 amount_current = amount * 100;
	}
	else
	{
	 amount_current = 0;
	}
}
var knobAmount = currentAmount / maxAmount;
var knobX = x + (sprite_width * knobAmount);*/


draw_sprite_ext(spr_SliderKnob,0,x,y,3,3,0,c_white,1)