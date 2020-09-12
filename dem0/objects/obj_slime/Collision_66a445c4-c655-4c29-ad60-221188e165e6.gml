instance_destroy()
ds_list_add(global.saveroom, id)
instance_create(x, y, obj_10)
global.collect += 10
		with (instance_create(x, y, obj_slimedead))
	{
		hsp = obj_player.hsp
		vsp = -10
	}
	    audio_sound_gain(sfx_enemyhit, 0.7, 0)
    audio_play_sound(sfx_enemyhit, 1, false)