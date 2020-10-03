if global.frozen = 0
	instance_destroy()
	
if ds_list_find_index(global.saveroom, id) != -1
	instance_destroy()