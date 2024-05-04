// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function sound_music(_arguments){
	show_debug_message($"music:{_arguments[0]},loop:{_arguments[1]}")
	var _loop_=false
	var _music=_arguments[0]
	var _loop =_arguments[1]
  

    if _loop !="true"{
        _loop_ = false;
    } else {
        _loop_ = true;
    }
	
if _music != global._prev_music{
	switch (_music) {
	    case "City"		:audio_play_sound(snd_floating_cities	,0,_loop_);show_debug_message($"playing {_music}, Loop={_loop_}"); break;
		case "Valley"	:audio_play_sound(snd_enchanted_valley	,0,_loop_);show_debug_message($"playing {_music}, Loop={_loop_}"); break;
		case "Hope"		:audio_play_sound(snd_lasting_hope		,0,_loop_);show_debug_message($"playing {_music}, Loop={_loop_}"); break;
		case "Gloom"	:audio_play_sound(snd_oppressive_gloom	,0,_loop_);show_debug_message($"playing {_music}, Loop={_loop_}"); break;
		case "Loop"		:audio_play_sound(snd_heartbeet			,0,_loop_);show_debug_message($"playing {_music}, Loop={_loop_}"); break;
	    default: audio_play_sound(snd_waa,0,true); break;
	}
	global._prev_music=_music
}
else{
	show_debug_message("music already playing")
}
}

function sound_effect(_arguments) {
	show_debug_message($"effect:{_arguments[0]},loop:{_arguments[1]}")
	var _loop_=0
	var _effect=_arguments[0]
	var _loop = _arguments[1]
    //show_debug_message($"Effect:{_effect}, Loop={_loop}")

    if _loop !="true"{
        _loop_ = false;
    } else {
        _loop_ = true;
    }
if _effect != global._prev_effect{
    switch (_effect) {
        case "Bugs"	: audio_play_sound(snd_bugs,		 0, _loop_); show_debug_message($"playing {_effect}, Loop={_loop_}"); break;
        case "Camp"	: audio_play_sound(snd_campfire,	 0, _loop_); show_debug_message($"playing {_effect}, Loop={_loop_}"); break;
        case "Cave"	: audio_play_sound(snd_cave,		 0, _loop_); show_debug_message($"playing {_effect}, Loop={_loop_}"); break;
        case "Crows": audio_play_sound(snd_crows,		 0, _loop_); show_debug_message($"playing {_effect}, Loop={_loop_}"); break;
        case "Rain"	: audio_play_sound(snd_rain,		 0, _loop_); show_debug_message($"playing {_effect}, Loop={_loop_}"); break;
        case "Loop"	: audio_play_sound(snd_heartbeet,	 0, _loop_); show_debug_message($"playing {_effect}, Loop={_loop_}"); break;
        default		: audio_play_sound(snd_waa,			 0, true);	show_debug_message("waa"); break; // Set loop to true for default case
    }
	_effect=global._prev_effect
}
else{
	show_debug_message("effect already playing")
}
}


function audio_stop_sound(_sound){
	show_debug_message($"Sound stoping:{_sound}")
	var _soundsw =  _sound[0]
	
	switch(_soundsw){
		case "City"		:audio_sound_gain(snd_floating_cities	,0,500); break;
		case "Valley"	:audio_sound_gain(snd_enchanted_valley	,0,500); break;
		case "Hope"		:audio_sound_gain(snd_lasting_hope		,0,500); break;
		case "Gloom"	:audio_sound_gain(snd_oppressive_gloom	,0,500); break;
		case "Bugs"		:audio_sound_gain(snd_bugs				,0,500); break;
		case "Camp"		:audio_sound_gain(snd_campfire			,0,500); break;
		case "Cave"		:audio_sound_gain(snd_cave				,0,500); break;
		case "Crows"	:audio_sound_gain(snd_crows				,0,500); break;
		case "Rain"		:audio_sound_gain(snd_rain				,0,500); break;
		default: audio_stop_all();break;
	}
}