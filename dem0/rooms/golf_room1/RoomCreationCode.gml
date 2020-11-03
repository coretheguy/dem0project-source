if global.panic = 0
{
	if !audio_is_playing(music_onepizzaatatime) && global.frozen = 0
	{
		audio_stop_all()
		global.curplaying = audio_play_sound(music_onepizzaatatime, 3, 1)
	}
}
global.level = "golf"