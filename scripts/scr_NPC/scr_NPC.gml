// function for drawing the NPCs to there respective rooms
// Given room name and charecter.

var _npc_gardener=spr_npcs[0]
var _npc_cheese=spr_npcs[1]
var _npc_mc=spr_npcs[2]
var _npc_hot_souce=spr_npcs[3]
var _npc_brooklyn=spr_npcs[4]

function draw_npc(_rm_name,_npc_1,_npc_2){
	if is_string(_npc_1) and is_string(_npc_2){
	switch _npc_1{
		case "Gardener"	: npc_1_index = spr_npcs[0]
		case "Cheese"	: npc_1_index = spr_npcs[1]
		case "MC"		: npc_1_index = spr_npcs[3]
		case "Hot Sauce": npc_1_index = spr_npcs[4]
		case "Brooklyn"	: npc_1_index = spr_npcs[5]
	}
	switch _npc_2{
		case "Gardener"	: npc_2_index = spr_npcs[0]
		case "Cheese"	: npc_2_index = spr_npcs[1]
		case "MC"		: npc_2_index = spr_npcs[3]
		case "Hot Sauce": npc_2_index = spr_npcs[4]
		case "Brooklyn"	: npc_2_index = spr_npcs[5]
	}
		if IsChatterbox(chatterbox) and text != undefined 
		{
			var _margin_char = 200
			var _me = (ChatterboxGetContentSpeaker(chatterbox,0)=="You")
	
			draw_sprite_ext(spr_npcs,npc_1_index, _margin_char ,				room_height,
				size[_me], size[_me], 0, color[_me],1)
			draw_sprite_ext(spr_npcs,npc_2_index, room_width - _margin_char ,	room_height, 
				size[!_me], size[!_me], 0, color[!_me],1)
	
		}
	else{
		show_debug_message("NPC's need to be strings")
	}
	}
}