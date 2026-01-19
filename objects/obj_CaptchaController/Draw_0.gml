if(global.captchaVerified){
	layer_set_visible("PhoneLayer", true)
	layer_set_visible("CaptchaLayer", false)
	layer_set_visible("DigiRosterLayer", true)
	draw_sprite_stretched(spr_CaptchaTick, 0, x+90, y+250, 310, 300)
}