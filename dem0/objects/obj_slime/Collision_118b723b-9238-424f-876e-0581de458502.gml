if obj_runonball.rolling = 1 || obj_runonmetalball.rolling = 1
{
instance_destroy()
ds_list_add(global.saveroom, id)
instance_create(x, y, obj_10)
global.collect += 10
		with (instance_create(x, y, obj_slimedead))
	{
		hsp = obj_player.xscale * 10
		vsp = -10
	}
			    audio_sound_gain(sfx_punch1, 0.7, 0)
    audio_play_sound(sfx_punch1, 1, false)
}