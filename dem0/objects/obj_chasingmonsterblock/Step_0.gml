if ((place_meeting((x + 8), y, obj_chasingmonsterdark) || place_meeting((x - 8), y, obj_chasingmonsterdark)))
{
	with obj_chasingmonsterdark //there should be only one of these guys in a single room so uh
	{
		attack = 1
		alarm[1] = 25
		attacked = 1
		hsp = 0
	}
    instance_destroy()
    audio_sound_gain(sfx_break, 0.7, 0)
    if (!audio_is_playing(sfx_break))
        audio_play_sound(sfx_break, 1, false)
}