

if(should_show_dialog == true){
	var text_x = 30
	var text_y = 18
	var height = 32
	var border = 5
	var padding = 16
	
	height = string_height(current_dialog.message)
	
	if(sprite_get_height(current_dialog.sprite) > height) {
		height = sprite_get_height(current_dialog.sprite)
	}
	
	height += padding*2
	text_x = sprite_get_width(current_dialog.sprite) + (padding * 2)
	
	image_alpha = alpha
	//draw_set_alpha(alpha)
	
	//DRAW THE BOX
	draw_sprite_ext(spr_Dialogue_body_after, 0, 0, 0, 5, 5, 0, c_white, 1)
	
	//DRAW SPRITE
	if(current_dialog.sprite != -1){
		draw_sprite(current_dialog.sprite, 0, border*3, border*3)
	}
	
	//DRAW THE TEXT
	draw_set_color(c_white)
	draw_text_ext(text_x, text_y, current_dialog.message, 16, display_get_gui_width() - 192)
	
	alpha = lerp(alpha, 1, 0.06)
}