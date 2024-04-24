// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function sound_music(_music="",_loop=false){
switch (_music) {
    case "City"		:audio_play_sound(snd_floating_cities	,0,_loop)	; break;
	case "Valley"	:audio_play_sound(snd_enchanted_valley	,0,_loop)	; break;
	case "Hope"		:audio_play_sound(snd_lasting_hope		,0,_loop)	; break;
	case "Gloom"	:audio_play_sound(snd_oppressive_gloom	,0,_loop)	; break;
    default: audio_stop_all(); break;
}
}

function sound_effect(_effect="",_loop=false){
switch (_effect) {
    case "Bugs"		:audio_play_sound(snd_bugs		,0,_loop)	; break;
	case "Camp"		:audio_play_sound(snd_campfire	,0,_loop)	; break;
	case "Cave"		:audio_play_sound(snd_cave		,0,_loop)	; break;
	case "Crows"	:audio_play_sound(snd_crows		,0,_loop)	; break;
	case "Rain"		:audio_play_sound(snd_rain		,0,_loop)	; break;
    default: audio_stop_all(); break;
}
}