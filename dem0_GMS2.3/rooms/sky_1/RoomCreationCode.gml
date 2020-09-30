if global.panic = 0
{
audio_sound_gain(music_clouds, 3, 0)
if (!audio_is_playing(music_clouds))
{
	audio_stop_all()
    audio_play_sound(music_clouds, 6, true)
}
}