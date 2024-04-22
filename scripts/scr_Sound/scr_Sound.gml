// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sound_music(_music=""){
switch (_music) {
    case "snd_test": audio_play_sound(snd_test,0,false); break;
	/*
	case "": ; break;
	case "": ; break;
	case "": ; break;
	case "": ; break;*/
    default: audio_stop_all(); break;
}
}
function sound_effect(_effect=""){
switch (_effect) {
    case "snd_test": audio_play_sound(snd_test,0,false); break;
	/*case "": ; break;
	case "": ; break;
	case "": ; break;
	case "": ; break;*/
    default: audio_stop_all(); break;
}
}