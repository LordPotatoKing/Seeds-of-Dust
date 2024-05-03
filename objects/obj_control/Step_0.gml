/// @description Navagate text and options
// You can write your code in this editor

var _count = ChatterboxGetOptionCount(chatterbox)

if ChatterboxIsWaiting(chatterbox) and keyboard_check_pressed(vk_space) and !global.midTransition
{
	time_char_for_text = 0;
	ChatterboxContinue(chatterbox)
	chatterbox_update()
}
else if _count
{
	var _key = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up)
	repeat(1 + (ChatterboxGetOptionConditionBool(chatterbox,wrap(option_index + _key, 0, _count-1))==false))
	{
		option_index = wrap(option_index + _key, 0, _count-1)
	}
	if keyboard_check_pressed(vk_enter)
	{
		ChatterboxSelect(chatterbox,option_index)
		option_index = 0
		
		chatterbox_update()
	}
}

if ChatterboxIsStopped(chatterbox)
{
	instance_destroy()
}