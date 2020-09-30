if global.panic = 0
{
	if !audio_is_playing(mu_volcano)
	{
		audio_stop_all()
		audio_play_sound(mu_volcano, 3, 1)
	}
}
global.level = "volcano"