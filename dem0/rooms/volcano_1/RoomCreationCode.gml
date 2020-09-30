if global.panic = 0
{
	if !audio_is_playing(mu_volcano) && global.frozen = 0
	{
		audio_stop_all()
		audio_play_sound(mu_volcano, 3, 1)
	}
}
global.level = "volcano"