if (cantcollect == 0)
{
    global.collect += 10
    global.pizzameter += 1
    instance_create(x, y, obj_10)
    audio_sound_gain(sfx_collect, 0.7, 0)
	if global.machsound = 1
    audio_play_sound(sfx_collect, 1, false)
	if global.machsound = 2
	audio_play_sound(sfx_golfcollect, 1, false)
	if global.machsound = 3
	audio_play_sound(sfx_sagecollect, 1, false)
	ds_list_add(global.saveroom, id)
    instance_destroy()
}