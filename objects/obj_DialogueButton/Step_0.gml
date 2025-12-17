if(struct_exists(choice_keys, keyboard_lastchar) && global.is_making_choice)
{
	global.DialogueChoice = struct_get(choice_keys, keyboard_lastchar)
	layer_set_visible("DialogueOptionsLayer", false)
}