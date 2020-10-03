if global.panic = 1
	instance_destroy()
	
if (place_meeting(x + 1, y, obj_player) || place_meeting(x - 1, y, obj_player)) && obj_player.state = 102
{
	ds_list_add(global.saveroom, id)
	scr_sound(sfx_break)
	instance_destroy()
	instance_create(x + 32, y + 32, obj_icicledebris)
	instance_create(x + 32, y + 32, obj_icicledebris)
	instance_create(x + 32, y + 32, obj_icicledebris)
	instance_create(x + 32, y + 32, obj_icicledebris)
	instance_create(x + 32, y + 32, obj_icicledebris)
	instance_create(x + 32, y + 32, obj_icicledebris)
	instance_create(x + 32, y + 32, obj_icicledebris)
	instance_create(x + 32, y + 32, obj_icicledebris)
	instance_create(x + 32, y + 32, obj_icicledebris)
	instance_create(x + 32, y + 32, obj_icicledebris)
}