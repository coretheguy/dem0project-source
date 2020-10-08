if place_meeting(x, y, obj_player)
    visited = 1
if (!(ds_list_find_index(global.saveroom, id) == -1))
{
	with instance_create(x, y, obj_door)
	{
		targetDoor = other.targetDoor
		targetRoom = other.targetRoom
		target_x = other.target_x
		target_y = other.target_y
	}
    instance_destroy()
}
