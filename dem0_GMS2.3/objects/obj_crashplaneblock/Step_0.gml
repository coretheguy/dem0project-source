if (place_meeting(x, (y + 1), obj_player) && (!instance_exists(obj_crashingplane)))
    with instance_create(obj_player.x, obj_player.y, obj_crashingplane)
		depth = 810