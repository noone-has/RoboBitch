switch (tick_id) 
{ 
	// Fullscreen tick
	case 0: image_alpha = global.isFullscreen break;
	case 1: 
		if(global.ControlScheme) { sprite_index = spr_Keyboard }
		else { sprite_index = spr_Mouse }
	break;
	
}
