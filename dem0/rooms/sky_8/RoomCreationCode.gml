if global.panic = 0
{
audio_stop_all()
audio_sound_gain(mu_freefall, 3, 0)
if (!audio_is_playing(mu_freefall))
    audio_play_sound(mu_freefall, 6, true)
}