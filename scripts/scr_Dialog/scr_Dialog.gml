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
	
	//switch (_room_name[0])
	//{
	//    case "rm_brooklyn": room_goto(rm_brooklyn); break;
	//    case "rm_city": room_goto(rm_city); break;
	//    case "rm_garden": room_goto(rm_garden); break;
	//	case "rm_mushroom_grove": room_goto(rm_mushroom_grove); break;
	//	case "rm_petrified_forest": room_goto(rm_petrified_forest); break;
	//	case "rm_underground": room_goto(rm_underground); break;
	//}
	
	switch (_room_name[0])
	{
	    case "rm_brooklyn": my_room_goto(rm_brooklyn); break;
	    case "rm_city": my_room_goto(rm_city); break;
	    case "rm_garden": my_room_goto(rm_garden); break;
		case "rm_mushroom_grove": my_room_goto(rm_mushroom_grove); break;
		case "rm_petrified_forest": my_room_goto(rm_petrified_forest); break;
		case "rm_underground": my_room_goto(rm_underground); break;
		case "rm_the_end": my_room_goto(rm_the_end); break;
	}
}

function my_room_goto(rm_next_room) {
	show_debug_message(" Calling TransitionStart");
	TransitionStart(rm_next_room, sq_FadeOut, sq_FadeIn);
	show_debug_message("----------");
}


function chatterbox_update(){
	node = ChatterboxGetCurrent(chatterbox)
	text = ChatterboxGetContent(chatterbox,0)
}

function item_config(_item_gained) {
    var _item_list = ds_list_create();
    ds_list_add(_item_list, _item_gained);

    var _sprite_index = 0;

    switch (ds_list_size(_item_list)) {
        case 1:
            switch (ds_list_find_value(_item_list, 0)) {
                case "Book": _sprite_index = 1; break;
                case "Shovel": _sprite_index = 2; break;
                case "Sheers": _sprite_index = 3; break;
            }
            break;
        case 2:
            if (ds_list_find_index(_item_list, "Book") != -1 && ds_list_find_index(_item_list, "Shovel") != -1) {
                _sprite_index = 4;
            } else if (ds_list_find_index(_item_list, "Shovel") != -1 && ds_list_find_index(_item_list, "Sheers") != -1) {
                _sprite_index = 5;
            }
            break;
        case 3:
            if (ds_list_find_index(_item_list, "Book") != -1 && ds_list_find_index(_item_list, "Shovel") != -1 && ds_list_find_index(_item_list, "Sheers") != -1) {
                _sprite_index = 6;
            }
            break;
    }

    draw_sprite(spr_icon_bar, _sprite_index, 30, 340);
    
    ds_list_destroy(_item_list); // Cleanup the list
}
