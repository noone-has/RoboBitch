window_set_fullscreen(global.isFullscreen);
if ((keyboard_check_pressed(vk_escape)) && (room == !room_Title_screen))
{
	global.paused = !global.paused
	Pause();
}
