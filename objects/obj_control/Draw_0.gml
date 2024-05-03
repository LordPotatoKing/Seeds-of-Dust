/// @description Draw Sprites, Text,
// You can write your code in this editor

draw_set_font(fnt_dialog)
draw_set_valign(fa_middle)

var _margin_text = 120 // Horazontal text Margin (uses pixle coordenates)
var _margin_char = 200 // Horazontal character margin
var _roomname = room_get_name(room);

if IsChatterbox(chatterbox) and text != undefined and _roomname != "rm_map"
{
	/*
	var _me = (ChatterboxGetContentSpeaker(chatterbox,0)=="You")
	
	draw_sprite_ext(spr_npcs,2, _margin_char ,				room_height, size[_me], size[_me], 0, color[_me],1)
	draw_sprite_ext(spr_npcs,1, room_width - _margin_char ,	room_height, size[!_me], size[!_me], 0, color[!_me],1)
	*/
	
	
	draw_npc(global._left_npc,global._right_npc)
	var _yy = _margin_text  // room_height - (_margin_text /2)
	
	draw_rectangle_center(room_width/2, _yy, room_width, _margin_text,false,c_black,0.5)
	
	// draw_set_halign(_me ? fa_left : fa_right)
	// var _xx = me ? _margin_text : room_width - _margin_text;
	var _xx = _margin_text;
	// draw_text(_xx,_yy,text)
	//draw_text_ext(_xx,_yy,text, 40, room_width - (_margin_text * 2))
	// scribble("" + text).draw()
	
	//draw_text_scribble_ext(x, y, string, width, [charCount])
	
	// This draw_set_halign(fa_left) Fixed the text so it is not drawen off the screen
	draw_set_halign(fa_left)
	time_char_for_text += 4;
	draw_text_scribble_ext(_xx,_yy, text, room_width - (_margin_text * 2), time_char_for_text)
	
	///Create
	// typist = scribble_typist();
	// typist.in(1, 0);

	///Draw
	// scribble(text).draw(_xx,_yy, typist);
	
	if ChatterboxGetOptionCount(chatterbox)
	{
		draw_set_halign(fa_center)
		
		var _width = 400;
		var _height = 80; // old value was 64 for one line
		
		for (var _i = 0; _i < ChatterboxGetOptionCount(chatterbox); _i++;)
		{
			if ChatterboxGetOptionConditionBool(chatterbox,_i)
			{
				_xx =  room_width/2 
				_yy = (room_height / 6) * (_i+2)
				
				draw_rectangle_center(_xx, _yy, _width*5, _height,false,c_black,0.75)
				
				var _icon = ""
				if (option_index == _i) _icon = ">>"
				var _option = ChatterboxGetOption(chatterbox, _i)
				
				draw_text_scribble_ext(_xx,_yy, _icon+_option, room_width - (_margin_text * 2))
	
				
//				draw_text(_xx,_yy,_icon+_option);
			}
		}
	}
}
