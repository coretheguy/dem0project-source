if global.panic = 0
{
audio_stop_all()
audio_sound_gain(music_castle, 3, 0)
if (!audio_is_playing(music_castle))
    audio_play_sound(music_castle, 6, true)
}