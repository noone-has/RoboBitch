// Inherit the parent event
event_inherited();


currentDialogIndex = dialog.current_dialog_index;

if(current_dialog.background != noone){
	sprite_index = current_dialog.background
}

if(currentDialogIndex = 16)
{
	with(obj_GameController)
	{
		settingName = true;
	}
	
	layer_set_visible("InsertNameLayer", true);
}
else
{
	with(obj_GameController)
	{
		settingName = false;
	}
	layer_set_visible("InsertNameLayer", false);
}

if(currentDialogIndex < 4)
{
	layer_set_visible("ContinueLayer", true);
}
else
{
	layer_set_visible("ContinueLayer", false);	
}