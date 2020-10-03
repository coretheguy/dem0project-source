if ds_list_find_index(global.saveroom, id) != -1
{
	instance_destroy()
	instance_create(x, y + 32, obj_ice)
}