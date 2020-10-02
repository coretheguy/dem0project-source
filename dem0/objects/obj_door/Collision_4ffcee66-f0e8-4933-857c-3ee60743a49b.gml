with (obj_player)
{
    if ((state == 0) && (key_up && (y == (other.y + 50)))) && global.newdoors = 1
    {
		sprite_index = spr_player_lookdoor
        other.visited = 1
        image_index = 0
        state = 56
        instance_create(x, y, obj_fadeout)
    }
	if state = 56 && global.newdoors = 1
	{
		other.time2++
		if other.time2 > 10
		{
			targetRoom = other.targetRoom
			y = other.target_y
			x = other.target_x
			other.time2 = 0
		}
	}
	if ((state == 0) && (key_up && (y == (other.y + 50)))) && global.newdoors = 2
    {
		lastroom_x = other.x
        lastroom_y = other.y
        lastroom = room
		sprite_index = spr_player_lookdoor
        other.visited = 1
        image_index = 0
        state = 56
		obj_player.targetDoor = other.targetDoor
		obj_player.targetRoom = other.targetRoom
        instance_create(x, y, obj_fadeout)
    }
}

