if global.panic = 0
{
	if !audio_is_playing(music_freezer)
	{
		audio_stop_all()
		audio_play_sound(music_freezer, 3, 1)
	}
}