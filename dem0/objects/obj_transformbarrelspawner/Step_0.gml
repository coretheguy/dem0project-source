if ((!place_meeting(x, y, obj_transformbarrel)) && ((!instance_exists(obj_transformbarrel)) && ((obj_player.barrel == 0))))
    instance_create(x, y, obj_transformbarrel)

// || (!instance_exists(obj_barrelfloat))