if global.panic = 1
{
ds_list_add(global.saveroom, id)
global.seconds += 30
instance_destroy()
instance_create(x, y, obj_plus30)
audio_play_sound(sfx_collect, 0.7, 0)
instance_create(x, y, obj_clockcollected)
}