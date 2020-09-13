instance_destroy()
ds_list_add(global.saveroom, id)
instance_create(x, y, obj_40)
global.collect += 40
		with (instance_create(x, y, obj_slimedead))
	{
		hsp = obj_player.xscale * 10
		vsp = -10
	}
			    audio_sound_gain(sfx_punch1, 0.7, 0)
    audio_play_sound(sfx_punch1, 1, false)