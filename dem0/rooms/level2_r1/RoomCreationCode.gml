if global.panic = 0 && !audio_is_playing(music_sewer)
{
	audio_stop_all()
	global.curplaying = audio_play_sound(music_sewer, 1, 1)
}