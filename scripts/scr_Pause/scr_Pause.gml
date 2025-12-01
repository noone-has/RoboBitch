function scr_Pause()
{
	if(global.paused)
	{
		instance_deactivate_all(true);
		layer_set_visible("PauseLayer", true);
	}
	else
	{
		instance_activate_all();
		layer_set_visible("PauseLayer", false);
		layer_set_visible("SettingsLayer", false);
	}
}

