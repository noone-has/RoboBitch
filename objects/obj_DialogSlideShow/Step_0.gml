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
}
else
{
	with(obj_GameController)
	{
		settingName = false;
	}
}