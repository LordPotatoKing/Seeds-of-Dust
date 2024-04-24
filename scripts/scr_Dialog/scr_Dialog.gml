// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function wrap(_val,_min,_max){
	if _val > _max return _min;
	else if _val < _min return _max;
	else return _val;
}

function draw_rectangle_center(_x,_y,_width,_height,_outline,_color,_alpha){
	var _old_color = draw_get_color()
	var _old_alpha = draw_get_alpha()
	
	draw_set_color(_color)
	draw_set_alpha(_alpha)
	
	// _width = 50
	// _height = 50
	
	draw_rectangle(_x - _width /2, _y - _height /2, _x + _width /2, _y + _height /2, _outline)
	
	draw_set_color(_old_color)
	draw_set_alpha(_old_alpha)
}

/*
function background_set_index(_arr){
	var _lay_id = layer_get_id("Background")
	var _back_id = layer_background_get_id(_lay_id)
	
	// Assuming _arr is an array with a single element
    var _index = _arr[0];
    layer_background_index(_back_id, _index);
}
*/


function my_room_set(_room_name) {
	show_debug_message("Helloooo This is a debug message");
	show_debug_message("my_room_set", _room_name);
	show_debug_message(_room_name[0]);
	show_debug_message("----------");
	switch (_room_name[0])
	{
	    case "rm_brooklyn": room_goto(rm_brooklyn); break;
	    case "rm_city": room_goto(rm_city); break;
	    case "rm_garden": room_goto(rm_garden); break;
		case "rm_mushroom_grove": room_goto(rm_mushroom_grove); break;
		case "rm_petrafied_forest": room_goto(rm_petrafied_forest); break;
		case "rm_underground": room_goto(rm_underground); break;
	}
}


function chatterbox_update(){
	node = ChatterboxGetCurrent(chatterbox)
	text = ChatterboxGetContent(chatterbox,0)
}