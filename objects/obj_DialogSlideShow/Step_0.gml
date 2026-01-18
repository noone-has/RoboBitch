// Inherit the parent event
event_inherited();

currentDialogIndex = dialog.current_dialog_index;

if(ds_map_exists(slides, currentDialogIndex)){
	sprite_index = ds_map_find_value(slides, currentDialogIndex)
}
