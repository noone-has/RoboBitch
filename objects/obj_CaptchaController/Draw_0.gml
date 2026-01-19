if(global.showCaptha){
	layer_set_visible("PhoneLayer", true)
	layer_set_visible("CaptchaLayer", true)
	if(showVerifiedCheck){
		draw_sprite_stretched(spr_CaptchaTick, 0, x+90, y+250, 310, 300)
	}
}
else if (global.showDigiroster){
	layer_set_visible("CaptchaLayer", false)
	layer_set_visible("DigiRosterLayer", true)
}