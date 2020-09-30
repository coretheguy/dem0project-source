

if !audio_is_playing(music_scary)
{
	audio_stop_all()
	audio_play_sound(music_scary, 3, 1)
}