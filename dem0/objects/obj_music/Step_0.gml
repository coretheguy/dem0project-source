audio_master_gain(0.5)
if ((global.panic == 1)) && room != rm_boss
{
	if (global.level != "sewer" && global.level != "clouds" && global.level != "volcano") && !audio_is_playing(music_escapetheme)
	{
	audio_stop_all()
    global.curplaying = audio_play_sound(music_escapetheme, 1, false)
	}
	if global.level == "sewer" && !audio_is_playing(music_sewerescape)
	{
	audio_stop_all()
    global.curplaying = audio_play_sound(music_sewerescape, 1, false)
	}
	if global.level == "clouds" && !audio_is_playing(music_cloudsescape)
	{
	audio_stop_all()
    global.curplaying = audio_play_sound(music_cloudsescape, 1, false)
	}
	if global.level = "volcano" && !audio_is_playing(mu_freezerescape)
	{
	audio_stop_all()
    global.curplaying = audio_play_sound(mu_freezerescape, 1, false)
	}
}
else if (global.panic == 0)
{
    if ((room == rank_room) && ((!audio_is_playing(music_victory)) && (played == 0)))
    {
		audio_stop_all()
        played = 1
        global.curplaying = audio_play_sound(music_victory, 1, false)
    }
}
	if audio_is_playing(zone1_theme)
		audio_stop_sound(zone1_theme)
	
if global.hiddensound = 1
	audio_sound_pitch(global.curplaying, 1 + (obj_player.movespeed / 10))

