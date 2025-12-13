window_set_fullscreen(global.isFullscreen);
if (keyboard_check_pressed(vk_escape))
{
	if (room == rm_TitleScreen)
	{
		layer_set_visible("MainMenuLayer", true);
		layer_set_visible("SettingsLayer", false);
	}
	else
	{
		global.paused = !global.paused
		scr_Pause();
	}
}

