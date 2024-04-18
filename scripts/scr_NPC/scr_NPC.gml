// function for drawing the NPCs to there respective rooms
// Given room name and charecters.
/*
var _npc_gardener=spr_npcs[0]
var _npc_cheese=spr_npcs[1]
var _npc_mc=spr_npcs[2]
var _npc_hot_souce=spr_npcs[3]
var _npc_brooklyn=spr_npcs[4]
*/
function draw_npc(_left_npc,_right_npc){
	if is_string(_left_npc) and is_string(_right_npc){
	switch _left_npc{
		case "Gardener"	: npc_1_index = 0; break;
		case "Cheese"	: npc_1_index = 1; break;
		case "You"		: npc_1_index = 2 ;break;
		case "Hot Sauce": npc_1_index = 3; break;
		case "Brooklyn"	: npc_1_index = 4; break;
		case "N/A"		: npc_1_index = 5; break;
		default			: npc_1_index = 5; break;
	}
	switch _right_npc{
		case "Gardener"	: npc_2_index = 0; break;
		case "Cheese"	: npc_2_index = 1; break;
		case "You"		: npc_2_index = 2; break;
		case "Hot Sauce": npc_2_index = 3; break;
		case "Brooklyn"	: npc_2_index = 4; break;
		case "N/A"		: npc_2_index = 5; break;
		default			: npc_2_index = 5; break;
	}
		if IsChatterbox(chatterbox) and text != undefined
		{
			var _margin_char = 200
			var _left = (ChatterboxGetContentSpeaker(chatterbox,0)==_left_npc)
			var _right = (ChatterboxGetContentSpeaker(chatterbox,0)==_right_npc)
			
	
				draw_sprite_ext(spr_npcs,npc_1_index, _margin_char ,				room_height,
					_l_size[_left], _l_size[_left], 0, _l_color[_left],1)
				draw_sprite_ext(spr_npcs,npc_2_index, room_width - _margin_char ,	room_height, 
					_r_size[_right], _r_size[_right], 0, _r_color[_right],1)
		}
	else{
		show_debug_message("NPC's need to be strings")
	}
	}
}
function set_left_npc(_set_left_npc=""){
	show_debug_message("set_left_npc");
	show_debug_message(_set_left_npc);
	
	global._left_npc = _set_left_npc[0]
	return global._left_npc
}
function set_right_npc(_set_right_npc=""){
	show_debug_message("set_right_npc");
	show_debug_message(_set_right_npc);
	
	global._right_npc = _set_right_npc[0]
	return  global._right_npc
}