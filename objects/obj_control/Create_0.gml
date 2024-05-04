/// @description Initialize Chatterbox and set varubles
// You can write your code in this editor



ChatterboxLoadFromFile("yarnwithpuzzles6.yarn")				// load file

// ChatterboxAddFunction("bg", background_set_index)	//Add function to change backround

ChatterboxAddFunction("rm",				my_room_set)			//Add function to change backround
ChatterboxAddFunction("set_left_npc",	set_left_npc)
ChatterboxAddFunction("set_right_npc",	set_right_npc)
ChatterboxAddFunction("effect",			sound_effect)
ChatterboxAddFunction("music",			sound_music)
ChatterboxAddFunction("audio_stop",		audio_stop_sound)
//ChatterboxAddFunction("item",			item_config)


chatterbox=ChatterboxCreate()						//create a chatterbox
ChatterboxJump(chatterbox,"Start")					//go to "start" box
chatterbox_update()									//Get current node and node text

option_index = 0									//Initialize index

time_char_for_text = 1;

_l_size = [0.7,0.75]								//Chariture sprite scale [large,small]
_r_size = [0.7,0.75]
_l_color = [c_ltgray,c_white]						//Chariture sprite blend [dark,bright]
_r_color = [c_ltgray,c_white]
	
global._left_npc	=""
global._right_npc	=""
global._prev_music	=""
global._prev_effect	=""
