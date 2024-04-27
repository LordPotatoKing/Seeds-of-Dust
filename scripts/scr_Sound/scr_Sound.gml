// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function sound_music(_music="",_loop=false){
show_debug_message($"Music:{_music}")
	switch (_music) {
	    case "City"		:audio_play_sound(snd_floating_cities	,0,_loop)	; break;
		case "Valley"	:audio_play_sound(snd_enchanted_valley	,0,_loop)	; break;
		case "Hope"		:audio_play_sound(snd_lasting_hope		,0,_loop)	; break;
		case "Gloom"	:audio_play_sound(snd_oppressive_gloom	,0,_loop)	; break;
	    default: audio_stop_all(); break;
	}
}

function sound_effect(_effect="",_loop=false){
	show_debug_message($"Effect:{_effect}")
	switch (_effect) {
	    case "Bugs"		:audio_play_sound(snd_bugs		,0,_loop)	; break;
		case "Camp"		:audio_play_sound(snd_campfire	,0,_loop)	; break;
		case "Cave"		:audio_play_sound(snd_cave		,0,_loop)	; break;
		case "Crows"	:audio_play_sound(snd_crows		,0,_loop)	; break;
		case "Rain"		:audio_play_sound(snd_rain		,0,_loop)	; break;
	    default: audio_stop_all(); break;
	}
}
function audio_stop_sound(_sound){
	show_debug_message($"Sound stoping:{_sound}")
	switch(_sound){
		case "City"		:audio_stop_sound(snd_floating_cities	); break;
		case "Valley"	:audio_stop_sound(snd_enchanted_valley	); break;
		case "Hope"		:audio_stop_sound(snd_lasting_hope		); break;
		case "Gloom"	:audio_stop_sound(snd_oppressive_gloom	); break;
		case "Bugs"		:audio_stop_sound(snd_bugs				); break;
		case "Camp"		:audio_stop_sound(snd_campfire			); break;
		case "Cave"		:audio_stop_sound(snd_cave				); break;
		case "Crows"	:audio_stop_sound(snd_crows				); break;
		case "Rain"		:audio_stop_sound(snd_rain				); break;
		default: audio_stop_all();break;
	}
}