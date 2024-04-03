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

function backround_set_index(_arr){
	var _lay_id = layer_get_id("Backround")
	var _back_id = layer_background_get_id(_lay_id)
	
	layer_background_index(_back_id, _arr)
}
function chatterbox_update(){
	node = ChatterboxGetCurrent(chatterbox)
	text = ChatterboxGetContent(chatterbox,0)
}